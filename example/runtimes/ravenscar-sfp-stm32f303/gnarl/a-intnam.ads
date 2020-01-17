--
--  Copyright (C) 2020, AdaCore
--

--  This spec has been automatically generated from STM32F3x8.svd

--  This is a version for the STM32F3x8 MCU
package Ada.Interrupts.Names is

   --  All identifiers in this unit are implementation defined

   pragma Implementation_Defined;

   ----------------
   -- Interrupts --
   ----------------

   --  System tick
   Sys_Tick_Interrupt          : constant Interrupt_ID := -1;

   --  Window Watchdog interrupt
   WWDG_Interrupt              : constant Interrupt_ID := 0;

   --  Power voltage detector through EXTI line detection interrupt
   PVD_Interrupt               : constant Interrupt_ID := 1;

   --  Tamper and TimeStamp interrupts
   TAMP_STAMP_Interrupt        : constant Interrupt_ID := 2;

   --  RTC Wakeup interrupt through the EXTI line
   RTC_WKUP_Interrupt          : constant Interrupt_ID := 3;

   --  Flash global interrupt
   FLASH_Interrupt             : constant Interrupt_ID := 4;

   --  RCC global interrupt
   RCC_Interrupt               : constant Interrupt_ID := 5;

   --  EXTI Line0 interrupt
   EXTI0_Interrupt             : constant Interrupt_ID := 6;

   --  EXTI Line3 interrupt
   EXTI1_Interrupt             : constant Interrupt_ID := 7;

   --  EXTI Line2 and Touch sensing interrupts
   EXTI2_TSC_Interrupt         : constant Interrupt_ID := 8;

   --  EXTI Line3 interrupt
   EXTI3_Interrupt             : constant Interrupt_ID := 9;

   --  EXTI Line4 interrupt
   EXTI4_Interrupt             : constant Interrupt_ID := 10;

   --  DMA1 channel 1 interrupt
   DMA1_CH1_Interrupt          : constant Interrupt_ID := 11;

   --  DMA1 channel 2 interrupt
   DMA1_CH2_Interrupt          : constant Interrupt_ID := 12;

   --  DMA1 channel 3 interrupt
   DMA1_CH3_Interrupt          : constant Interrupt_ID := 13;

   --  DMA1 channel 4 interrupt
   DMA1_CH4_Interrupt          : constant Interrupt_ID := 14;

   --  DMA1 channel 5 interrupt
   DMA1_CH5_Interrupt          : constant Interrupt_ID := 15;

   --  DMA1 channel 6 interrupt
   DMA1_CH6_Interrupt          : constant Interrupt_ID := 16;

   --  DMA1 channel 7 interrupt
   DMA1_CH7_Interrupt          : constant Interrupt_ID := 17;

   --  ADC1 interrupt
   ADC1_Interrupt              : constant Interrupt_ID := 18;

   --  USB high priority/CAN_TX interrupt
   CAN_TX_Interrupt            : constant Interrupt_ID := 19;

   --  USB low priority/CAN_RXD interrupt
   CAN_RXD_Interrupt           : constant Interrupt_ID := 20;

   --  CAN_RXI interrupt
   CAN_RXI_Interrupt           : constant Interrupt_ID := 21;

   --  CAN_SCE interrupt
   CAN_SCE_Interrupt           : constant Interrupt_ID := 22;

   --  EXTI Line5 to Line9 interrupts
   EXTI9_5_Interrupt           : constant Interrupt_ID := 23;

   --  Timer 15 global interrupt
   TIM15_Interrupt             : constant Interrupt_ID := 24;

   --  Timer 16 global interrupt
   TIM16_Interrupt             : constant Interrupt_ID := 25;

   --  Timer 17 global interrupt
   TIM17_Interrupt             : constant Interrupt_ID := 26;

   --  Timer 18 global interrupt/DAC3 underrun interrupt
   TIM18_DAC3_Interrupt        : constant Interrupt_ID := 27;

   --  Timer 2 global interrupt
   TIM2_Interrupt              : constant Interrupt_ID := 28;

   --  Timer 3 global interrupt
   TIM3_Interrupt              : constant Interrupt_ID := 29;

   --  Timer 4 global interrupt
   TIM4_Interrupt              : constant Interrupt_ID := 30;

   --  I2C1_EV global interrupt/EXTI Line[3:2] interrupts
   I2C1_EV_Interrupt           : constant Interrupt_ID := 31;

   --  I2C1_ER
   I2C1_ER_Interrupt           : constant Interrupt_ID := 32;

   --  I2C2_EV global interrupt/EXTI Line[4:2] interrupts
   I2C2_EV_Interrupt           : constant Interrupt_ID := 33;

   --  I2C2_ER
   I2C2_ER_Interrupt           : constant Interrupt_ID := 34;

   --  SPI1 global interrupt
   SPI1_Interrupt              : constant Interrupt_ID := 35;

   --  SPI2 global interrupt
   SPI2_Interrupt              : constant Interrupt_ID := 36;

   --  USART1 global interrupt/EXTI25 (USART1 wakeup event)
   USART1_Interrupt            : constant Interrupt_ID := 37;

   --  USART2 global interrupt/EXTI26 (USART1 wakeup event)
   USART2_Interrupt            : constant Interrupt_ID := 38;

   --  USART3 global interrupt/EXTI28 (USART1 wakeup event)
   USART3_Interrupt            : constant Interrupt_ID := 39;

   --  EXTI Line[15:10] interrupts
   EXTI15_10_Interrupt         : constant Interrupt_ID := 40;

   --  RTC alarm interrupt
   RTC_ALARM_IT_Interrupt      : constant Interrupt_ID := 41;

   --  Timer 12 global interrupt
   TIM12_Interrupt             : constant Interrupt_ID := 43;

   --  Timer 13 global interrupt
   TIM13_Interrupt             : constant Interrupt_ID := 44;

   --  Timer 14 global interrupt
   TIM14_Interrupt             : constant Interrupt_ID := 45;

   --  TIM8 capture compare interrupt
   TIM8_CC_Interrupt           : constant Interrupt_ID := 46;

   --  ADC3 global interrupt
   ADC3_Interrupt              : constant Interrupt_ID := 47;

   --  FSMC global interrupt
   FMC_Interrupt               : constant Interrupt_ID := 48;

   --  Timer 5 global interrupt
   TIM5_Interrupt              : constant Interrupt_ID := 50;

   --  SPI3 global interrupt
   SPI3_Interrupt              : constant Interrupt_ID := 51;

   --  UART4 global and EXTI Line 34 interrupts
   UART4_EXTI34_Interrupt      : constant Interrupt_ID := 52;

   --  UART5 global and EXTI Line 35 interrupts
   UART5_EXTI35_Interrupt      : constant Interrupt_ID := 53;

   --  TIM6 global, DAC1 Cahnnel1 and Cahnnel2 underrun error Interrupts
   TIM6_DAC1_Interrupt         : constant Interrupt_ID := 54;

   --  Timer 7 global interrupt
   TIM7_Interrupt              : constant Interrupt_ID := 55;

   --  DMA2 channel1 global interrupt
   DMA2_Channel1_Interrupt     : constant Interrupt_ID := 56;

   --  DMA2 channel2 global interrupt
   DMA2_Channel2_Interrupt     : constant Interrupt_ID := 57;

   --  DMA2 channel3 global interrupt
   DMA2_Channel3_Interrupt     : constant Interrupt_ID := 58;

   --  DMA2 channel4 global interrupt
   DMA2_Channel4_Interrupt     : constant Interrupt_ID := 59;

   --  DMA2 channel5 global interrupt
   DMA2_Channel5_Interrupt     : constant Interrupt_ID := 60;

   --  ADC sigma delta 1 (SDADC1) global interrupt
   ADC_SD1_Interrupt           : constant Interrupt_ID := 61;

   --  ADC sigma delta 2 (SDADC2) global interrupt
   ADC_SD2_Interrupt           : constant Interrupt_ID := 62;

   --  ADC sigma delta 3 (SDADC3) global interrupt
   ADC_SD3_Interrupt           : constant Interrupt_ID := 63;

   --  COMP7 interrupt combined with EXTI Line 33
   COMP7_Interrupt             : constant Interrupt_ID := 66;

   --  I2C3 Event interrupt
   I2C3_EV_Interrupt           : constant Interrupt_ID := 72;

   --  I2C3 Error interrupt
   I2C3_ER_Interrupt           : constant Interrupt_ID := 73;

   --  USB high priority interrupt
   USB_HP_Interrupt            : constant Interrupt_ID := 74;

   --  USB low priority interrupt
   USB_LP_Interrupt            : constant Interrupt_ID := 75;

   --  USB wakeup interrupt
   USB_WAKEUP_Interrupt        : constant Interrupt_ID := 76;

   --  TIM20 Break interrupt
   TIM20_BRK_Interrupt         : constant Interrupt_ID := 77;

   --  Timer 19 global interrupt
   TIM19_Interrupt             : constant Interrupt_ID := 78;

   --  TIM20 Trigger and Commutation interrupt
   TIM20_TRG_COM_Interrupt     : constant Interrupt_ID := 79;

   --  TIM20 Capture Compare interrupt
   TIM20_CC_Interrupt          : constant Interrupt_ID := 80;

   --  FPU global interrupt
   FPU_Interrupt               : constant Interrupt_ID := 81;

end Ada.Interrupts.Names;
