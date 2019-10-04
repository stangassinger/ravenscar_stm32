------------------------------------------------------------------------------
-- MCU package for STM32F411                                                --
-- john.caffyn@btconnect.com                                                --
------------------------------------------------------------------------------

with System;

package body MCU is

   use type Interfaces.Unsigned_32;

   procedure Enable_Clocking (P : MCU_Peripheral) is
      RCC : RCC_Registers with Volatile,
                               Address => System'To_Address (RCC_Base_Addr);
   begin

      case P is

         when GPIO_A  => RCC.AHB1ENR := RCC.AHB1ENR or BIT0;
         when GPIO_B  => RCC.AHB1ENR := RCC.AHB1ENR or BIT1;
         when GPIO_C  => RCC.AHB1ENR := RCC.AHB1ENR or BIT2;
         when GPIO_D  => RCC.AHB1ENR := RCC.AHB1ENR or BIT3;
         when GPIO_E  => RCC.AHB1ENR := RCC.AHB1ENR or BIT4;
         when GPIO_H  => RCC.AHB1ENR := RCC.AHB1ENR or BIT7;

         when USART_1 => RCC.APB2ENR := RCC.APB2ENR or BIT4;
         when USART_2 => RCC.APB1ENR := RCC.APB1ENR or BIT17;
         when USART_6 => RCC.APB2ENR := RCC.APB2ENR or BIT5;

         when I2C_1   => RCC.APB1ENR := RCC.APB1ENR or BIT21;
         when I2C_2   => RCC.APB1ENR := RCC.APB1ENR or BIT22;
         when I2C_3   => RCC.APB1ENR := RCC.APB1ENR or BIT23;

         when SPI_1   => RCC.APB2ENR := RCC.APB2ENR or BIT12;
         when SPI_2   => RCC.APB1ENR := RCC.APB1ENR or BIT14;
         when SPI_3   => RCC.APB1ENR := RCC.APB1ENR or BIT15;
         when SPI_4   => RCC.APB2ENR := RCC.APB2ENR or BIT13;
         when SPI_5   => RCC.APB2ENR := RCC.APB2ENR or BIT20;

      end case;

   end Enable_Clocking;

end MCU;