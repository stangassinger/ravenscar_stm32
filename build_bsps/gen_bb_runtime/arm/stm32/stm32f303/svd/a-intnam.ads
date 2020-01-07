--
--  Copyright (C) 2020, AdaCore
--

--  This spec has been automatically generated from STM32F30x.svd

--  This is a version for the STM32F30x MCU
package Ada.Interrupts.Names is

   --  All identifiers in this unit are implementation defined

   pragma Implementation_Defined;

   ----------------
   -- Interrupts --
   ----------------

   --  System tick
   Sys_Tick_Interrupt            : constant Interrupt_ID := -1;

   --  Window Watchdog interrupt
   WWDG_Interrupt                : constant Interrupt_ID := 0;

   --  PVD through EXTI line detection interrupt
   PVD_Interrupt                 : constant Interrupt_ID := 1;

   --  Tamper and TimeStamp interrupts
   TAMP_STAMP_Interrupt          : constant Interrupt_ID := 2;

   --  RTC Wakeup interrupt through the EXTI line
   RTC_WKUP_Interrupt            : constant Interrupt_ID := 3;

   --  Flash global interrupt
   FLASH_Interrupt               : constant Interrupt_ID := 4;

   --  RCC global interrupt
   RCC_Interrupt                 : constant Interrupt_ID := 5;

   --  EXTI Line0 interrupt
   EXTI0_Interrupt               : constant Interrupt_ID := 6;

   --  EXTI Line3 interrupt
   EXTI1_Interrupt               : constant Interrupt_ID := 7;

   --  EXTI Line2 and Touch sensing interrupts
   EXTI2_TSC_Interrupt           : constant Interrupt_ID := 8;

   --  EXTI Line3 interrupt
   EXTI3_Interrupt               : constant Interrupt_ID := 9;

   --  EXTI Line4 interrupt
   EXTI4_Interrupt               : constant Interrupt_ID := 10;

   --  DMA1 channel 1 interrupt
   DMA1_CH1_Interrupt            : constant Interrupt_ID := 11;

   --  DMA1 channel 2 interrupt
   DMA1_CH2_Interrupt            : constant Interrupt_ID := 12;

   --  DMA1 channel 3 interrupt
   DMA1_CH3_Interrupt            : constant Interrupt_ID := 13;

   --  DMA1 channel 4 interrupt
   DMA1_CH4_Interrupt            : constant Interrupt_ID := 14;

   --  DMA1 channel 5 interrupt
   DMA1_CH5_Interrupt            : constant Interrupt_ID := 15;

   --  DMA1 channel 6 interrupt
   DMA1_CH6_Interrupt            : constant Interrupt_ID := 16;

   --  DMA1 channel 7interrupt
   DMA1_CH7_Interrupt            : constant Interrupt_ID := 17;

   --  ADC1 and ADC2 global interrupt
   ADC1_2_Interrupt              : constant Interrupt_ID := 18;

   --  USB High Priority/CAN_TX interrupts
   USB_HP_CAN_TX_Interrupt       : constant Interrupt_ID := 19;

   --  USB Low Priority/CAN_RX0 interrupts
   USB_LP_CAN_RX0_Interrupt      : constant Interrupt_ID := 20;

   --  CAN_RX1 interrupt
   CAN_RX1_Interrupt             : constant Interrupt_ID := 21;

   --  CAN_SCE interrupt
   CAN_SCE_Interrupt             : constant Interrupt_ID := 22;

   --  EXTI Line5 to Line9 interrupts
   EXTI9_5_Interrupt             : constant Interrupt_ID := 23;

   --  TIM1 Break/TIM15 global interruts
   TIM1_BRK_TIM15_Interrupt      : constant Interrupt_ID := 24;

   --  TIM1 Update/TIM16 global interrupts
   TIM1_UP_TIM16_Interrupt       : constant Interrupt_ID := 25;

   --  TIM1 trigger and commutation/TIM17 interrupts
   TIM1_TRG_COM_TIM17_Interrupt  : constant Interrupt_ID := 26;

   --  TIM1 capture compare interrupt
   TIM1_CC_Interrupt             : constant Interrupt_ID := 27;

   --  TIM2 global interrupt
   TIM2_Interrupt                : constant Interrupt_ID := 28;

   --  TIM3 global interrupt
   TIM3_Interrupt                : constant Interrupt_ID := 29;

   --  TIM4 global interrupt
   TIM4_Interrupt                : constant Interrupt_ID := 30;

   --  I2C1 event interrupt and EXTI Line23 interrupt
   I2C1_EV_EXTI23_Interrupt      : constant Interrupt_ID := 31;

   --  I2C1 error interrupt
   I2C1_ER_Interrupt             : constant Interrupt_ID := 32;

   --  I2C2 event interrupt & EXTI Line24 interrupt
   I2C2_EV_EXTI24_Interrupt      : constant Interrupt_ID := 33;

   --  I2C2 error interrupt
   I2C2_ER_Interrupt             : constant Interrupt_ID := 34;

   --  SPI1 global interrupt
   SPI1_Interrupt                : constant Interrupt_ID := 35;

   --  SPI2 global interrupt
   SPI2_Interrupt                : constant Interrupt_ID := 36;

   --  USART1 global interrupt and EXTI Line 25 interrupt
   USART1_EXTI25_Interrupt       : constant Interrupt_ID := 37;

   --  USART2 global interrupt and EXTI Line 26 interrupt
   USART2_EXTI26_Interrupt       : constant Interrupt_ID := 38;

   --  USART3 global interrupt and EXTI Line 28 interrupt
   USART3_EXTI28_Interrupt       : constant Interrupt_ID := 39;

   --  EXTI Line15 to Line10 interrupts
   EXTI15_10_Interrupt           : constant Interrupt_ID := 40;

   --  RTC alarm interrupt
   RTCAlarm_Interrupt            : constant Interrupt_ID := 41;

   --  USB wakeup from Suspend
   USB_WKUP_Interrupt            : constant Interrupt_ID := 42;

   --  TIM8 break interrupt
   TIM8_BRK_Interrupt            : constant Interrupt_ID := 43;

   --  TIM8 update interrupt
   TIM8_UP_Interrupt             : constant Interrupt_ID := 44;

   --  TIM8 Trigger and commutation interrupts
   TIM8_TRG_COM_Interrupt        : constant Interrupt_ID := 45;

   --  TIM8 capture compare interrupt
   TIM8_CC_Interrupt             : constant Interrupt_ID := 46;

   --  ADC3 global interrupt
   ADC3_Interrupt                : constant Interrupt_ID := 47;

   --  SPI3 global interrupt
   SPI3_Interrupt                : constant Interrupt_ID := 51;

   --  UART4 global and EXTI Line 34 interrupts
   UART4_EXTI34_Interrupt        : constant Interrupt_ID := 52;

   --  UART5 global and EXTI Line 35 interrupts
   UART5_EXTI35_Interrupt        : constant Interrupt_ID := 53;

   --  TIM6 global and DAC12 underrun interrupts
   TIM6_DACUNDER_Interrupt       : constant Interrupt_ID := 54;

   --  TIM7 global interrupt
   TIM7_Interrupt                : constant Interrupt_ID := 55;

   --  DMA2 channel1 global interrupt
   DMA2_CH1_Interrupt            : constant Interrupt_ID := 56;

   --  DMA2 channel2 global interrupt
   DMA2_CH2_Interrupt            : constant Interrupt_ID := 57;

   --  DMA2 channel3 global interrupt
   DMA2_CH3_Interrupt            : constant Interrupt_ID := 58;

   --  DMA2 channel4 global interrupt
   DMA2_CH4_Interrupt            : constant Interrupt_ID := 59;

   --  DMA2 channel5 global interrupt
   DMA2_CH5_Interrupt            : constant Interrupt_ID := 60;

   --  ADC4 global interrupt
   ADC4_Interrupt                : constant Interrupt_ID := 61;

   --  COMP1 & COMP2 & COMP3 interrupts combined with EXTI Lines 21, 22 and 29
   --  interrupts
   COMP123_Interrupt             : constant Interrupt_ID := 64;

   --  COMP4 & COMP5 & COMP6 interrupts combined with EXTI Lines 30, 31 and 32
   --  interrupts
   COMP456_Interrupt             : constant Interrupt_ID := 65;

   --  COMP7 interrupt combined with EXTI Line 33 interrupt
   COMP7_Interrupt               : constant Interrupt_ID := 66;

   --  USB High priority interrupt
   USB_HP_Interrupt              : constant Interrupt_ID := 74;

   --  USB Low priority interrupt
   USB_LP_Interrupt              : constant Interrupt_ID := 75;

   --  USB wakeup from Suspend and EXTI Line 18
   USB_WKUP_EXTI_Interrupt       : constant Interrupt_ID := 76;

   --  FPU global interrupt
   FPU_Interrupt                 : constant Interrupt_ID := 81;

end Ada.Interrupts.Names;
