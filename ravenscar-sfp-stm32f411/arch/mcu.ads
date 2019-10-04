
------------------------------------------------------------------------------
-- MCU package for STM32F411                                                --
-- john.caffyn@btconnect.com                                                --
------------------------------------------------------------------------------

with Interfaces;

package MCU is

   pragma Preelaborate;

   BIT0  : constant := 16#0000_0001#;
   BIT1  : constant := 16#0000_0002#;
   BIT2  : constant := 16#0000_0004#;
   BIT3  : constant := 16#0000_0008#;
   BIT4  : constant := 16#0000_0010#;
   BIT5  : constant := 16#0000_0020#;
   BIT6  : constant := 16#0000_0040#;
   BIT7  : constant := 16#0000_0080#;
   BIT8  : constant := 16#0000_0100#;
   BIT9  : constant := 16#0000_0200#;
   BIT10 : constant := 16#0000_0400#;
   BIT11 : constant := 16#0000_0800#;
   BIT12 : constant := 16#0000_1000#;
   BIT13 : constant := 16#0000_2000#;
   BIT14 : constant := 16#0000_4000#;
   BIT15 : constant := 16#0000_8000#;
   BIT16 : constant := 16#0001_0000#;
   BIT17 : constant := 16#0002_0000#;
   BIT18 : constant := 16#0004_0000#;
   BIT19 : constant := 16#0008_0000#;
   BIT20 : constant := 16#0010_0000#;
   BIT21 : constant := 16#0020_0000#;
   BIT22 : constant := 16#0040_0000#;
   BIT23 : constant := 16#0080_0000#;
   BIT24 : constant := 16#0100_0000#;
   BIT25 : constant := 16#0200_0000#;
   BIT26 : constant := 16#0400_0000#;
   BIT27 : constant := 16#0800_0000#;
   BIT28 : constant := 16#1000_0000#;
   BIT29 : constant := 16#2000_0000#;
   BIT30 : constant := 16#4000_0000#;
   BIT31 : constant := 16#8000_0000#;

   type RCC_Registers is record
      CR        : Interfaces.Unsigned_32;
      PLLCFGR   : Interfaces.Unsigned_32;
      CFGR      : Interfaces.Unsigned_32;
      CIR       : Interfaces.Unsigned_32;
      AHB1RSTR  : Interfaces.Unsigned_32;
      AHB2RSTR  : Interfaces.Unsigned_32;
      APB2RSTR  : Interfaces.Unsigned_32;
      AHB1ENR   : Interfaces.Unsigned_32;
      AHB2ENR   : Interfaces.Unsigned_32;
      APB1ENR   : Interfaces.Unsigned_32;
      APB2ENR   : Interfaces.Unsigned_32;
      AHB1LPENR : Interfaces.Unsigned_32;
      AHB2LPENR : Interfaces.Unsigned_32;
      APB1LPENR : Interfaces.Unsigned_32;
      APB2LPENR : Interfaces.Unsigned_32;
      BDCR      : Interfaces.Unsigned_32;
      CSR       : Interfaces.Unsigned_32;
   end record;

   for RCC_Registers use record
      CR        at 16#00# range 0 .. 31;
      PLLCFGR   at 16#04# range 0 .. 31;
      CFGR      at 16#08# range 0 .. 31;
      CIR       at 16#0C# range 0 .. 31;
      AHB1RSTR  at 16#10# range 0 .. 31;
      AHB2RSTR  at 16#14# range 0 .. 31;
      APB2RSTR  at 16#24# range 0 .. 31;
      AHB1ENR   at 16#30# range 0 .. 31;
      AHB2ENR   at 16#34# range 0 .. 31;
      APB1ENR   at 16#40# range 0 .. 31;
      APB2ENR   at 16#44# range 0 .. 31;
      AHB1LPENR at 16#50# range 0 .. 31;
      AHB2LPENR at 16#54# range 0 .. 31;
      APB1LPENR at 16#60# range 0 .. 31;
      APB2LPENR at 16#64# range 0 .. 31;
      BDCR      at 16#70# range 0 .. 31;
      CSR       at 16#74# range 0 .. 31;
   end record;

   RCC_Base_Addr : constant := 16#4002_3800#;

------------------------------------------------------------------------------
-- STM32F411 USART base addresses                                           --
------------------------------------------------------------------------------

   USART1_Base_Addr : constant := 16#4001_1000#;
   USART2_Base_Addr : constant := 16#4000_4400#;
   USART6_Base_Addr : constant := 16#4001_1400#;

------------------------------------------------------------------------------
-- STM32F411 Clocking procedures.                                           --
------------------------------------------------------------------------------

   type MCU_Peripheral is (GPIO_A, GPIO_B, GPIO_C, GPIO_D, GPIO_E, GPIO_H,
                           USART_1, USART_2, USART_6,
                           I2C_1, I2C_2, I2C_3,
                           SPI_1, SPI_2, SPI_3, SPI_4, SPI_5);

   procedure Enable_Clocking (P : MCU_Peripheral);

end MCU;
