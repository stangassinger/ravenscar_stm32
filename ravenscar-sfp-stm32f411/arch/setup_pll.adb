------------------------------------------------------------------------------
--                                                                          --
--                         GNAT RUN-TIME COMPONENTS                         --
--                                                                          --
--          Copyright (C) 2012-2015, Free Software Foundation, Inc.         --
--                                                                          --
-- GNAT is free software;  you can  redistribute it  and/or modify it under --
-- terms of the  GNU General Public License as published  by the Free Soft- --
-- ware  Foundation;  either version 3,  or (at your option) any later ver- --
-- sion.  GNAT is distributed in the hope that it will be useful, but WITH- --
-- OUT ANY WARRANTY;  without even the  implied warranty of MERCHANTABILITY --
-- or FITNESS FOR A PARTICULAR PURPOSE.                                     --
--                                                                          --
--                                                                          --
--                                                                          --
--                                                                          --
--                                                                          --
-- You should have received a copy of the GNU General Public License and    --
-- a copy of the GCC Runtime Library Exception along with this program;     --
-- see the files COPYING3 and COPYING.RUNTIME respectively.  If not, see    --
-- <http://www.gnu.org/licenses/>.                                          --
--                                                                          --
-- GNAT was originally developed  by the GNAT team at  New York University. --
-- Extensive contributions were provided by Ada Core Technologies Inc.      --
--                                                                          --
------------------------------------------------------------------------------

------------------------------------------------------------------------------
-- STM32F411 running at 96MHz                                               --
------------------------------------------------------------------------------

pragma Ada_2012; -- To work around pre-commit check?
pragma Restrictions (No_Elaboration_Code);

with System;

procedure Setup_Pll is

   --  The STM32F411 on Nucleo uses internal 16MHz clock
   --  The PLL output is set to 96MHz from the internal HSI

   --  http://stm32f4-discovery.com/2015/01/
   --  properly-set-clock-speed-stm32f4xx-devices/
   --  for the Nucleo STM32F411 for 96MHz CPU clock using internal 16MHz HSI

   PLL_M : constant := 16;  -- divider for crystal
   PLL_N : constant := 384; -- multiplier for PLLM
   PLL_P : constant := 4;   -- divider for PLLN
   PLL_Q : constant := 8;   -- divider for PLLN to get 48MHz

   pragma Unreferenced (PLL_P);

   PLL_N_Bits : constant := PLL_N * 2**6;
   PLL_Q_Bits : constant := PLL_Q * 2**24;
   PLL_P_Bits : constant := 16#0001_0000#; -- For PLL_P = 4

   --  APB1_Prescale : constant := 2;   -- for 48MHz clock
   --  APB2_Prescale : constant := 1;   -- for 96MHz clock

   type Word is mod 2**32;
   for Word'Size use 32;

   CR      : Word with Volatile, Address => System'To_Address (16#4002_3800#);
   CIR     : Word with Volatile, Address => System'To_Address (16#4002_380C#);
   CFGR    : Word with Volatile, Address => System'To_Address (16#4002_3808#);
   PLLCFGR : Word with Volatile, Address => System'To_Address (16#4002_3804#);
   APB1ENR : Word with Volatile, Address => System'To_Address (16#4002_3840#);
   AHB1ENR : Word with Volatile, Address => System'To_Address (16#4002_3830#);

   --  Flash ACR register ...
   ACR     : Word with Volatile, Address => System'To_Address (16#4002_3C00#);

   --  Taken from stm32f4xx.h

   RCC_CFGR_SWS_PLL : constant := 16#0000_0008#; -- PLL used as system clock
   RCC_CFGR_HPRE_DIV1 : constant := 16#0000_0000#; -- SYSCLK not divided
   RCC_CFGR_PPRE2_DIV2 : constant := 16#0000_8000#; -- HCLK divided by 2
   RCC_CFGR_PPRE1_DIV4 : constant := 16#0000_1400#; -- HCLK divided by 4
   RCC_CR_PLLON : constant := 16#0100_0000#;
   RCC_CFGR_SWS : constant := 16#0000_000C#; -- System Clock Switch Status
   RCC_CR_PLLRDY : constant := 16#0200_0000#;
   RCC_APB1ENR_PWREN : constant := 16#1000_0000#;
   PWR_CR_VOS : constant := 16#4000#; -- Regulator volts scaling O/P selection
   RCC_PLLCFGR_PLLSRC_HSI : constant := 16#0000_0000#;
   FLASH_ACR_ICEN : constant := 16#0000_0200#;
   FLASH_ACR_DCEN : constant := 16#0000_0400#;
   FLASH_ACR_LATENCY_3WS : constant := 16#0000_0003#;
   RCC_CFGR_SW : constant := 16#0000_0003#; -- System clock Switch
   RCC_CFGR_SW_PLL : constant := 16#0000_0002#; -- PLL selected as system clock
   RCC_CR_HSION : constant := 16#0000_0001#;

   procedure Initialize_Clocks;
   procedure Reset_Clocks;

------------------------------------------------------------------------------
-- Initialize_Clocks                                                        --
------------------------------------------------------------------------------

   procedure Initialize_Clocks is
   begin
      APB1ENR := APB1ENR or RCC_APB1ENR_PWREN;

      CR := CR or PWR_CR_VOS;

      CFGR := CFGR or RCC_CFGR_HPRE_DIV1;

      CFGR := CFGR or RCC_CFGR_PPRE2_DIV2;

      CFGR := CFGR or RCC_CFGR_PPRE1_DIV4;

      PLLCFGR := PLL_M or PLL_N_Bits or PLL_P_Bits or PLL_Q_Bits or
                 RCC_PLLCFGR_PLLSRC_HSI;

      CR := CR or RCC_CR_PLLON;

      loop -- Wait till the main PLL is ready
         exit when (CR and RCC_CR_PLLRDY) /= 0;
      end loop;

      --  Set Flash prefetch, Instruction cache, Data cache and wait state */
      ACR := FLASH_ACR_ICEN or FLASH_ACR_DCEN or FLASH_ACR_LATENCY_3WS;

      --  Select the main PLL as system clock source ..
      CFGR := CFGR and not RCC_CFGR_SW;
      CFGR := CFGR or RCC_CFGR_SW_PLL;

      loop -- Wait till the main PLL is used as system clock source
         exit when (CFGR and RCC_CFGR_SWS) = RCC_CFGR_SWS_PLL;
      end loop;
   end Initialize_Clocks;

------------------------------------------------------------------------------
-- Reset_Clocks                                                             --
------------------------------------------------------------------------------

   procedure Reset_Clocks is
   begin
      --  Taken from system_stm32f4xx.c

      CR := CR or RCC_CR_HSION;

      CFGR := 16#00000000#; -- Reset CFGR register

      CR := CR and 16#FEF6_FFFF#; -- Reset HSEON, CSSON and PLLON bits

      PLLCFGR := 16#2400_3010#; -- Reset PLLCFGR register

      CR := CR and 16#FFFB_FFFF#; -- Reset HSEBYP bit

      CIR := 16#00000000#; -- Disable all interrupts

   end Reset_Clocks;

begin
   Reset_Clocks;
   Initialize_Clocks;
end Setup_Pll;
