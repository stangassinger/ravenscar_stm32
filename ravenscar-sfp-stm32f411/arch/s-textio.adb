------------------------------------------------------------------------------
--                                                                          --
--                         GNAT RUN-TIME COMPONENTS                         --
--                                                                          --
--                       S Y S T E M . T E X T _ I O                        --
--                                                                          --
--                                 B o d y                                  --
--                                                                          --
--          Copyright (C) 1992-2015, Free Software Foundation, Inc.         --
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
--  Minimal version of Text_IO body for use on STM32F411, using USART2      --
------------------------------------------------------------------------------

with MCU;      use MCU;
with MCU.GPIO; use MCU.GPIO;

with System.BB.Parameters;

with Interfaces;

package body System.Text_IO is

   UART_Base : constant := MCU.USART2_Base_Addr;

   SR  : Interfaces.Unsigned_32 with Volatile,
         Address => System'To_Address (UART_Base + 16#00#);
   DR  : Interfaces.Unsigned_32 with Volatile,
         Address => System'To_Address (UART_Base + 16#04#);
   BRR : Interfaces.Unsigned_32 with Volatile,
         Address => System'To_Address (UART_Base + 16#08#);
   CR1 : Interfaces.Unsigned_32 with Volatile,
         Address => System'To_Address (UART_Base + 16#0C#);

   use type Interfaces.Unsigned_32;

   procedure Set_Baud_Rate (Baud  : Positive;
                            Clock : Positive);

   ---------
   -- Get --
   ---------

   function Get return Character is
   begin
      return Character'Val (DR);
   end Get;

   procedure Set_Baud_Rate (Baud  : Positive;
                            Clock : Positive) is

      Mantissa : Interfaces.Unsigned_32;
      Fraction : Interfaces.Unsigned_32;
      BR       : Natural;
   begin

      --  Create number with fraction part ...
      BR := Clock / (16 * (Baud / 100));

      Mantissa := Interfaces.Unsigned_32 (BR / 100);

      Fraction := Interfaces.Unsigned_32 (BR mod 100);

      --  Now scale Fraction ...

      Fraction := 15 * Fraction / 100;

      BRR := (Mantissa * BIT4) or Fraction;

   end Set_Baud_Rate;

   ----------------
   -- Initialize --
   ----------------

   procedure Initialize is
      CRLF : constant String := ASCII.CR & ASCII.LF;
      Welcome : constant String := "STM32F411 GNAT GPL 2015" & CRLF;
   begin
      Initialized := True;

      MCU.Enable_Clocking (USART_2);
      MCU.Enable_Clocking (GPIO_A);

      --  Configure all USART2 pins for use with
      --  JTAG virtual serial port ...

      MCU.GPIO.Set_Mode (GPIO_A, 0, Alt_Function, 7);
      MCU.GPIO.Set_Mode (GPIO_A, 1, Alt_Function, 7);
      MCU.GPIO.Set_Mode (GPIO_A, 2, Alt_Function, 7);
      MCU.GPIO.Set_Mode (GPIO_A, 3, Alt_Function, 7);
      MCU.GPIO.Set_Mode (GPIO_A, 4, Alt_Function, 7);

      Set_GPIO_Speed (GPIO_A, 2, High);
      Set_GPIO_Pull_Up_Down (GPIO_A, 3, None);

      --  Configure UART ...

      Set_Baud_Rate (115_200, System.BB.Parameters.APB1_Frequency);

      CR1 := CR1 or BIT2 or BIT3 or BIT13;

      for i in Welcome'Range loop
         loop
            exit when Is_Tx_Ready;
         end loop;
         Put (Welcome (i));
      end loop;

   end Initialize;

   -----------------
   -- Is_Rx_Ready --
   -----------------

   function Is_Rx_Ready return Boolean is
      SR_RXNE : constant := BIT5;
   begin
      return (SR and SR_RXNE) /= 0;
   end Is_Rx_Ready;

   -----------------
   -- Is_Tx_Ready --
   -----------------

   function Is_Tx_Ready return Boolean is
      SR_TXE : constant := BIT7;
   begin
      return (SR and SR_TXE) /= 0;
   end Is_Tx_Ready;

   ---------
   -- Put --
   ---------

   procedure Put (C : Character) is
   begin
      DR := Interfaces.Unsigned_32 (Character'Pos (C));
   end Put;

   ----------------------------
   -- Use_Cr_Lf_For_New_Line --
   ----------------------------

   function Use_Cr_Lf_For_New_Line return Boolean is (True);

end System.Text_IO;
