--
--  Copyright (C) 2019, AdaCore
--

--  This spec has been automatically generated from stm32f303.svd

pragma Ada_2012;
pragma Style_Checks (Off);

with System;

package Interfaces.STM32.SYSCFG_COMP_OPAMP is
   pragma Preelaborate;
   pragma No_Elaboration_Code_All;

   ---------------
   -- Registers --
   ---------------

   subtype SYSCFG_CFGR1_MEM_MODE_Field is Interfaces.STM32.UInt2;
   subtype SYSCFG_CFGR1_USB_IT_RMP_Field is Interfaces.STM32.Bit;
   subtype SYSCFG_CFGR1_TIM1_ITR_RMP_Field is Interfaces.STM32.Bit;
   subtype SYSCFG_CFGR1_DAC_TRIG_RMP_Field is Interfaces.STM32.Bit;
   subtype SYSCFG_CFGR1_ADC24_DMA_RMP_Field is Interfaces.STM32.Bit;
   subtype SYSCFG_CFGR1_TIM16_DMA_RMP_Field is Interfaces.STM32.Bit;
   subtype SYSCFG_CFGR1_TIM17_DMA_RMP_Field is Interfaces.STM32.Bit;
   subtype SYSCFG_CFGR1_TIM6_DAC1_DMA_RMP_Field is Interfaces.STM32.Bit;
   subtype SYSCFG_CFGR1_TIM7_DAC2_DMA_RMP_Field is Interfaces.STM32.Bit;
   subtype SYSCFG_CFGR1_I2C_PB6_FM_Field is Interfaces.STM32.Bit;
   subtype SYSCFG_CFGR1_I2C_PB7_FM_Field is Interfaces.STM32.Bit;
   subtype SYSCFG_CFGR1_I2C_PB8_FM_Field is Interfaces.STM32.Bit;
   subtype SYSCFG_CFGR1_I2C_PB9_FM_Field is Interfaces.STM32.Bit;
   subtype SYSCFG_CFGR1_I2C1_FM_Field is Interfaces.STM32.Bit;
   subtype SYSCFG_CFGR1_I2C2_FM_Field is Interfaces.STM32.Bit;
   subtype SYSCFG_CFGR1_ENCODER_MODE_Field is Interfaces.STM32.UInt2;
   subtype SYSCFG_CFGR1_FPU_IT_Field is Interfaces.STM32.UInt6;

   --  configuration register 1
   type SYSCFG_CFGR1_Register is record
      --  Memory mapping selection bits
      MEM_MODE          : SYSCFG_CFGR1_MEM_MODE_Field := 16#0#;
      --  unspecified
      Reserved_2_4      : Interfaces.STM32.UInt3 := 16#0#;
      --  USB interrupt remap
      USB_IT_RMP        : SYSCFG_CFGR1_USB_IT_RMP_Field := 16#0#;
      --  Timer 1 ITR3 selection
      TIM1_ITR_RMP      : SYSCFG_CFGR1_TIM1_ITR_RMP_Field := 16#0#;
      --  DAC trigger remap (when TSEL = 001)
      DAC_TRIG_RMP      : SYSCFG_CFGR1_DAC_TRIG_RMP_Field := 16#0#;
      --  ADC24 DMA remapping bit
      ADC24_DMA_RMP     : SYSCFG_CFGR1_ADC24_DMA_RMP_Field := 16#0#;
      --  unspecified
      Reserved_9_10     : Interfaces.STM32.UInt2 := 16#0#;
      --  TIM16 DMA request remapping bit
      TIM16_DMA_RMP     : SYSCFG_CFGR1_TIM16_DMA_RMP_Field := 16#0#;
      --  TIM17 DMA request remapping bit
      TIM17_DMA_RMP     : SYSCFG_CFGR1_TIM17_DMA_RMP_Field := 16#0#;
      --  TIM6 and DAC1 DMA request remapping bit
      TIM6_DAC1_DMA_RMP : SYSCFG_CFGR1_TIM6_DAC1_DMA_RMP_Field := 16#0#;
      --  TIM7 and DAC2 DMA request remapping bit
      TIM7_DAC2_DMA_RMP : SYSCFG_CFGR1_TIM7_DAC2_DMA_RMP_Field := 16#0#;
      --  unspecified
      Reserved_15_15    : Interfaces.STM32.Bit := 16#0#;
      --  Fast Mode Plus (FM+) driving capability activation bits.
      I2C_PB6_FM        : SYSCFG_CFGR1_I2C_PB6_FM_Field := 16#0#;
      --  Fast Mode Plus (FM+) driving capability activation bits.
      I2C_PB7_FM        : SYSCFG_CFGR1_I2C_PB7_FM_Field := 16#0#;
      --  Fast Mode Plus (FM+) driving capability activation bits.
      I2C_PB8_FM        : SYSCFG_CFGR1_I2C_PB8_FM_Field := 16#0#;
      --  Fast Mode Plus (FM+) driving capability activation bits.
      I2C_PB9_FM        : SYSCFG_CFGR1_I2C_PB9_FM_Field := 16#0#;
      --  I2C1 Fast Mode Plus
      I2C1_FM           : SYSCFG_CFGR1_I2C1_FM_Field := 16#0#;
      --  I2C2 Fast Mode Plus
      I2C2_FM           : SYSCFG_CFGR1_I2C2_FM_Field := 16#0#;
      --  Encoder mode
      ENCODER_MODE      : SYSCFG_CFGR1_ENCODER_MODE_Field := 16#0#;
      --  unspecified
      Reserved_24_25    : Interfaces.STM32.UInt2 := 16#0#;
      --  Interrupt enable bits from FPU
      FPU_IT            : SYSCFG_CFGR1_FPU_IT_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SYSCFG_CFGR1_Register use record
      MEM_MODE          at 0 range 0 .. 1;
      Reserved_2_4      at 0 range 2 .. 4;
      USB_IT_RMP        at 0 range 5 .. 5;
      TIM1_ITR_RMP      at 0 range 6 .. 6;
      DAC_TRIG_RMP      at 0 range 7 .. 7;
      ADC24_DMA_RMP     at 0 range 8 .. 8;
      Reserved_9_10     at 0 range 9 .. 10;
      TIM16_DMA_RMP     at 0 range 11 .. 11;
      TIM17_DMA_RMP     at 0 range 12 .. 12;
      TIM6_DAC1_DMA_RMP at 0 range 13 .. 13;
      TIM7_DAC2_DMA_RMP at 0 range 14 .. 14;
      Reserved_15_15    at 0 range 15 .. 15;
      I2C_PB6_FM        at 0 range 16 .. 16;
      I2C_PB7_FM        at 0 range 17 .. 17;
      I2C_PB8_FM        at 0 range 18 .. 18;
      I2C_PB9_FM        at 0 range 19 .. 19;
      I2C1_FM           at 0 range 20 .. 20;
      I2C2_FM           at 0 range 21 .. 21;
      ENCODER_MODE      at 0 range 22 .. 23;
      Reserved_24_25    at 0 range 24 .. 25;
      FPU_IT            at 0 range 26 .. 31;
   end record;

   subtype SYSCFG_RCR_PAGE0_WP_Field is Interfaces.STM32.Bit;
   subtype SYSCFG_RCR_PAGE1_WP_Field is Interfaces.STM32.Bit;
   subtype SYSCFG_RCR_PAGE2_WP_Field is Interfaces.STM32.Bit;
   subtype SYSCFG_RCR_PAGE3_WP_Field is Interfaces.STM32.Bit;
   subtype SYSCFG_RCR_PAGE4_WP_Field is Interfaces.STM32.Bit;
   subtype SYSCFG_RCR_PAGE5_WP_Field is Interfaces.STM32.Bit;
   subtype SYSCFG_RCR_PAGE6_WP_Field is Interfaces.STM32.Bit;
   subtype SYSCFG_RCR_PAGE7_WP_Field is Interfaces.STM32.Bit;

   --  CCM SRAM protection register
   type SYSCFG_RCR_Register is record
      --  CCM SRAM page write protection bit
      PAGE0_WP      : SYSCFG_RCR_PAGE0_WP_Field := 16#0#;
      --  CCM SRAM page write protection bit
      PAGE1_WP      : SYSCFG_RCR_PAGE1_WP_Field := 16#0#;
      --  CCM SRAM page write protection bit
      PAGE2_WP      : SYSCFG_RCR_PAGE2_WP_Field := 16#0#;
      --  CCM SRAM page write protection bit
      PAGE3_WP      : SYSCFG_RCR_PAGE3_WP_Field := 16#0#;
      --  CCM SRAM page write protection bit
      PAGE4_WP      : SYSCFG_RCR_PAGE4_WP_Field := 16#0#;
      --  CCM SRAM page write protection bit
      PAGE5_WP      : SYSCFG_RCR_PAGE5_WP_Field := 16#0#;
      --  CCM SRAM page write protection bit
      PAGE6_WP      : SYSCFG_RCR_PAGE6_WP_Field := 16#0#;
      --  CCM SRAM page write protection bit
      PAGE7_WP      : SYSCFG_RCR_PAGE7_WP_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : Interfaces.STM32.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SYSCFG_RCR_Register use record
      PAGE0_WP      at 0 range 0 .. 0;
      PAGE1_WP      at 0 range 1 .. 1;
      PAGE2_WP      at 0 range 2 .. 2;
      PAGE3_WP      at 0 range 3 .. 3;
      PAGE4_WP      at 0 range 4 .. 4;
      PAGE5_WP      at 0 range 5 .. 5;
      PAGE6_WP      at 0 range 6 .. 6;
      PAGE7_WP      at 0 range 7 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  SYSCFG_EXTICR1_EXTI array element
   subtype SYSCFG_EXTICR1_EXTI_Element is Interfaces.STM32.UInt4;

   --  SYSCFG_EXTICR1_EXTI array
   type SYSCFG_EXTICR1_EXTI_Field_Array is array (0 .. 3)
     of SYSCFG_EXTICR1_EXTI_Element
     with Component_Size => 4, Size => 16;

   --  Type definition for SYSCFG_EXTICR1_EXTI
   type SYSCFG_EXTICR1_EXTI_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  EXTI as a value
            Val : Interfaces.STM32.UInt16;
         when True =>
            --  EXTI as an array
            Arr : SYSCFG_EXTICR1_EXTI_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for SYSCFG_EXTICR1_EXTI_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  external interrupt configuration register 1
   type SYSCFG_EXTICR1_Register is record
      --  EXTI 0 configuration bits
      EXTI           : SYSCFG_EXTICR1_EXTI_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_16_31 : Interfaces.STM32.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SYSCFG_EXTICR1_Register use record
      EXTI           at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  SYSCFG_EXTICR2_EXTI array element
   subtype SYSCFG_EXTICR2_EXTI_Element is Interfaces.STM32.UInt4;

   --  SYSCFG_EXTICR2_EXTI array
   type SYSCFG_EXTICR2_EXTI_Field_Array is array (4 .. 7)
     of SYSCFG_EXTICR2_EXTI_Element
     with Component_Size => 4, Size => 16;

   --  Type definition for SYSCFG_EXTICR2_EXTI
   type SYSCFG_EXTICR2_EXTI_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  EXTI as a value
            Val : Interfaces.STM32.UInt16;
         when True =>
            --  EXTI as an array
            Arr : SYSCFG_EXTICR2_EXTI_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for SYSCFG_EXTICR2_EXTI_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  external interrupt configuration register 2
   type SYSCFG_EXTICR2_Register is record
      --  EXTI 4 configuration bits
      EXTI           : SYSCFG_EXTICR2_EXTI_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_16_31 : Interfaces.STM32.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SYSCFG_EXTICR2_Register use record
      EXTI           at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  SYSCFG_EXTICR3_EXTI array element
   subtype SYSCFG_EXTICR3_EXTI_Element is Interfaces.STM32.UInt4;

   --  SYSCFG_EXTICR3_EXTI array
   type SYSCFG_EXTICR3_EXTI_Field_Array is array (8 .. 11)
     of SYSCFG_EXTICR3_EXTI_Element
     with Component_Size => 4, Size => 16;

   --  Type definition for SYSCFG_EXTICR3_EXTI
   type SYSCFG_EXTICR3_EXTI_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  EXTI as a value
            Val : Interfaces.STM32.UInt16;
         when True =>
            --  EXTI as an array
            Arr : SYSCFG_EXTICR3_EXTI_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for SYSCFG_EXTICR3_EXTI_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  external interrupt configuration register 3
   type SYSCFG_EXTICR3_Register is record
      --  EXTI 8 configuration bits
      EXTI           : SYSCFG_EXTICR3_EXTI_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_16_31 : Interfaces.STM32.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SYSCFG_EXTICR3_Register use record
      EXTI           at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  SYSCFG_EXTICR4_EXTI array element
   subtype SYSCFG_EXTICR4_EXTI_Element is Interfaces.STM32.UInt4;

   --  SYSCFG_EXTICR4_EXTI array
   type SYSCFG_EXTICR4_EXTI_Field_Array is array (12 .. 15)
     of SYSCFG_EXTICR4_EXTI_Element
     with Component_Size => 4, Size => 16;

   --  Type definition for SYSCFG_EXTICR4_EXTI
   type SYSCFG_EXTICR4_EXTI_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  EXTI as a value
            Val : Interfaces.STM32.UInt16;
         when True =>
            --  EXTI as an array
            Arr : SYSCFG_EXTICR4_EXTI_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for SYSCFG_EXTICR4_EXTI_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  external interrupt configuration register 4
   type SYSCFG_EXTICR4_Register is record
      --  EXTI 12 configuration bits
      EXTI           : SYSCFG_EXTICR4_EXTI_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_16_31 : Interfaces.STM32.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SYSCFG_EXTICR4_Register use record
      EXTI           at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype SYSCFG_CFGR2_LOCUP_LOCK_Field is Interfaces.STM32.Bit;
   subtype SYSCFG_CFGR2_SRAM_PARITY_LOCK_Field is Interfaces.STM32.Bit;
   subtype SYSCFG_CFGR2_PVD_LOCK_Field is Interfaces.STM32.Bit;
   subtype SYSCFG_CFGR2_BYP_ADD_PAR_Field is Interfaces.STM32.Bit;
   subtype SYSCFG_CFGR2_SRAM_PEF_Field is Interfaces.STM32.Bit;

   --  configuration register 2
   type SYSCFG_CFGR2_Register is record
      --  Cortex-M0 LOCKUP bit enable bit
      LOCUP_LOCK       : SYSCFG_CFGR2_LOCUP_LOCK_Field := 16#0#;
      --  SRAM parity lock bit
      SRAM_PARITY_LOCK : SYSCFG_CFGR2_SRAM_PARITY_LOCK_Field := 16#0#;
      --  PVD lock enable bit
      PVD_LOCK         : SYSCFG_CFGR2_PVD_LOCK_Field := 16#0#;
      --  unspecified
      Reserved_3_3     : Interfaces.STM32.Bit := 16#0#;
      --  Bypass address bit 29 in parity calculation
      BYP_ADD_PAR      : SYSCFG_CFGR2_BYP_ADD_PAR_Field := 16#0#;
      --  unspecified
      Reserved_5_7     : Interfaces.STM32.UInt3 := 16#0#;
      --  SRAM parity flag
      SRAM_PEF         : SYSCFG_CFGR2_SRAM_PEF_Field := 16#0#;
      --  unspecified
      Reserved_9_31    : Interfaces.STM32.UInt23 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SYSCFG_CFGR2_Register use record
      LOCUP_LOCK       at 0 range 0 .. 0;
      SRAM_PARITY_LOCK at 0 range 1 .. 1;
      PVD_LOCK         at 0 range 2 .. 2;
      Reserved_3_3     at 0 range 3 .. 3;
      BYP_ADD_PAR      at 0 range 4 .. 4;
      Reserved_5_7     at 0 range 5 .. 7;
      SRAM_PEF         at 0 range 8 .. 8;
      Reserved_9_31    at 0 range 9 .. 31;
   end record;

   subtype COMP1_CSR_COMP1EN_Field is Interfaces.STM32.Bit;
   subtype COMP1_CSR_COMP1_INP_DAC_Field is Interfaces.STM32.Bit;
   subtype COMP1_CSR_COMP1MODE_Field is Interfaces.STM32.UInt2;
   subtype COMP1_CSR_COMP1INSEL_Field is Interfaces.STM32.UInt3;
   subtype COMP1_CSR_COMP1_OUT_SEL_Field is Interfaces.STM32.UInt4;
   subtype COMP1_CSR_COMP1POL_Field is Interfaces.STM32.Bit;
   subtype COMP1_CSR_COMP1HYST_Field is Interfaces.STM32.UInt2;
   subtype COMP1_CSR_COMP1_BLANKING_Field is Interfaces.STM32.UInt3;
   subtype COMP1_CSR_COMP1OUT_Field is Interfaces.STM32.Bit;
   subtype COMP1_CSR_COMP1LOCK_Field is Interfaces.STM32.Bit;

   --  control and status register
   type COMP1_CSR_Register is record
      --  Comparator 1 enable
      COMP1EN        : COMP1_CSR_COMP1EN_Field := 16#0#;
      --  COMP1_INP_DAC
      COMP1_INP_DAC  : COMP1_CSR_COMP1_INP_DAC_Field := 16#0#;
      --  Comparator 1 mode
      COMP1MODE      : COMP1_CSR_COMP1MODE_Field := 16#0#;
      --  Comparator 1 inverting input selection
      COMP1INSEL     : COMP1_CSR_COMP1INSEL_Field := 16#0#;
      --  unspecified
      Reserved_7_9   : Interfaces.STM32.UInt3 := 16#0#;
      --  Comparator 1 output selection
      COMP1_OUT_SEL  : COMP1_CSR_COMP1_OUT_SEL_Field := 16#0#;
      --  unspecified
      Reserved_14_14 : Interfaces.STM32.Bit := 16#0#;
      --  Comparator 1 output polarity
      COMP1POL       : COMP1_CSR_COMP1POL_Field := 16#0#;
      --  Comparator 1 hysteresis
      COMP1HYST      : COMP1_CSR_COMP1HYST_Field := 16#0#;
      --  Comparator 1 blanking source
      COMP1_BLANKING : COMP1_CSR_COMP1_BLANKING_Field := 16#0#;
      --  unspecified
      Reserved_21_29 : Interfaces.STM32.UInt9 := 16#0#;
      --  Read-only. Comparator 1 output
      COMP1OUT       : COMP1_CSR_COMP1OUT_Field := 16#0#;
      --  Comparator 1 lock
      COMP1LOCK      : COMP1_CSR_COMP1LOCK_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for COMP1_CSR_Register use record
      COMP1EN        at 0 range 0 .. 0;
      COMP1_INP_DAC  at 0 range 1 .. 1;
      COMP1MODE      at 0 range 2 .. 3;
      COMP1INSEL     at 0 range 4 .. 6;
      Reserved_7_9   at 0 range 7 .. 9;
      COMP1_OUT_SEL  at 0 range 10 .. 13;
      Reserved_14_14 at 0 range 14 .. 14;
      COMP1POL       at 0 range 15 .. 15;
      COMP1HYST      at 0 range 16 .. 17;
      COMP1_BLANKING at 0 range 18 .. 20;
      Reserved_21_29 at 0 range 21 .. 29;
      COMP1OUT       at 0 range 30 .. 30;
      COMP1LOCK      at 0 range 31 .. 31;
   end record;

   subtype COMP2_CSR_COMP2EN_Field is Interfaces.STM32.Bit;
   subtype COMP2_CSR_COMP2MODE_Field is Interfaces.STM32.UInt2;
   subtype COMP2_CSR_COMP2INSEL_Field is Interfaces.STM32.UInt3;
   subtype COMP2_CSR_COMP2INPSEL_Field is Interfaces.STM32.Bit;
   subtype COMP2_CSR_COMP2INMSEL_Field is Interfaces.STM32.Bit;
   subtype COMP2_CSR_COMP2_OUT_SEL_Field is Interfaces.STM32.UInt4;
   subtype COMP2_CSR_COMP2POL_Field is Interfaces.STM32.Bit;
   subtype COMP2_CSR_COMP2HYST_Field is Interfaces.STM32.UInt2;
   subtype COMP2_CSR_COMP2_BLANKING_Field is Interfaces.STM32.UInt3;
   subtype COMP2_CSR_COMP2LOCK_Field is Interfaces.STM32.Bit;

   --  control and status register
   type COMP2_CSR_Register is record
      --  Comparator 2 enable
      COMP2EN        : COMP2_CSR_COMP2EN_Field := 16#0#;
      --  unspecified
      Reserved_1_1   : Interfaces.STM32.Bit := 16#0#;
      --  Comparator 2 mode
      COMP2MODE      : COMP2_CSR_COMP2MODE_Field := 16#0#;
      --  Comparator 2 inverting input selection
      COMP2INSEL     : COMP2_CSR_COMP2INSEL_Field := 16#0#;
      --  Comparator 2 non inverted input selection
      COMP2INPSEL    : COMP2_CSR_COMP2INPSEL_Field := 16#0#;
      --  unspecified
      Reserved_8_8   : Interfaces.STM32.Bit := 16#0#;
      --  Comparator 1inverting input selection
      COMP2INMSEL    : COMP2_CSR_COMP2INMSEL_Field := 16#0#;
      --  Comparator 2 output selection
      COMP2_OUT_SEL  : COMP2_CSR_COMP2_OUT_SEL_Field := 16#0#;
      --  unspecified
      Reserved_14_14 : Interfaces.STM32.Bit := 16#0#;
      --  Comparator 2 output polarity
      COMP2POL       : COMP2_CSR_COMP2POL_Field := 16#0#;
      --  Comparator 2 hysteresis
      COMP2HYST      : COMP2_CSR_COMP2HYST_Field := 16#0#;
      --  Comparator 2 blanking source
      COMP2_BLANKING : COMP2_CSR_COMP2_BLANKING_Field := 16#0#;
      --  unspecified
      Reserved_21_30 : Interfaces.STM32.UInt10 := 16#0#;
      --  Comparator 2 lock
      COMP2LOCK      : COMP2_CSR_COMP2LOCK_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for COMP2_CSR_Register use record
      COMP2EN        at 0 range 0 .. 0;
      Reserved_1_1   at 0 range 1 .. 1;
      COMP2MODE      at 0 range 2 .. 3;
      COMP2INSEL     at 0 range 4 .. 6;
      COMP2INPSEL    at 0 range 7 .. 7;
      Reserved_8_8   at 0 range 8 .. 8;
      COMP2INMSEL    at 0 range 9 .. 9;
      COMP2_OUT_SEL  at 0 range 10 .. 13;
      Reserved_14_14 at 0 range 14 .. 14;
      COMP2POL       at 0 range 15 .. 15;
      COMP2HYST      at 0 range 16 .. 17;
      COMP2_BLANKING at 0 range 18 .. 20;
      Reserved_21_30 at 0 range 21 .. 30;
      COMP2LOCK      at 0 range 31 .. 31;
   end record;

   subtype COMP3_CSR_COMP3EN_Field is Interfaces.STM32.Bit;
   subtype COMP3_CSR_COMP3MODE_Field is Interfaces.STM32.UInt2;
   subtype COMP3_CSR_COMP3INSEL_Field is Interfaces.STM32.UInt3;
   subtype COMP3_CSR_COMP3INPSEL_Field is Interfaces.STM32.Bit;
   subtype COMP3_CSR_COMP3_OUT_SEL_Field is Interfaces.STM32.UInt4;
   subtype COMP3_CSR_COMP3POL_Field is Interfaces.STM32.Bit;
   subtype COMP3_CSR_COMP3HYST_Field is Interfaces.STM32.UInt2;
   subtype COMP3_CSR_COMP3_BLANKING_Field is Interfaces.STM32.UInt3;
   subtype COMP3_CSR_COMP3OUT_Field is Interfaces.STM32.Bit;
   subtype COMP3_CSR_COMP3LOCK_Field is Interfaces.STM32.Bit;

   --  control and status register
   type COMP3_CSR_Register is record
      --  Comparator 3 enable
      COMP3EN        : COMP3_CSR_COMP3EN_Field := 16#0#;
      --  unspecified
      Reserved_1_1   : Interfaces.STM32.Bit := 16#0#;
      --  Comparator 3 mode
      COMP3MODE      : COMP3_CSR_COMP3MODE_Field := 16#0#;
      --  Comparator 3 inverting input selection
      COMP3INSEL     : COMP3_CSR_COMP3INSEL_Field := 16#0#;
      --  Comparator 3 non inverted input selection
      COMP3INPSEL    : COMP3_CSR_COMP3INPSEL_Field := 16#0#;
      --  unspecified
      Reserved_8_9   : Interfaces.STM32.UInt2 := 16#0#;
      --  Comparator 3 output selection
      COMP3_OUT_SEL  : COMP3_CSR_COMP3_OUT_SEL_Field := 16#0#;
      --  unspecified
      Reserved_14_14 : Interfaces.STM32.Bit := 16#0#;
      --  Comparator 3 output polarity
      COMP3POL       : COMP3_CSR_COMP3POL_Field := 16#0#;
      --  Comparator 3 hysteresis
      COMP3HYST      : COMP3_CSR_COMP3HYST_Field := 16#0#;
      --  Comparator 3 blanking source
      COMP3_BLANKING : COMP3_CSR_COMP3_BLANKING_Field := 16#0#;
      --  unspecified
      Reserved_21_29 : Interfaces.STM32.UInt9 := 16#0#;
      --  Read-only. Comparator 3 output
      COMP3OUT       : COMP3_CSR_COMP3OUT_Field := 16#0#;
      --  Comparator 3 lock
      COMP3LOCK      : COMP3_CSR_COMP3LOCK_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for COMP3_CSR_Register use record
      COMP3EN        at 0 range 0 .. 0;
      Reserved_1_1   at 0 range 1 .. 1;
      COMP3MODE      at 0 range 2 .. 3;
      COMP3INSEL     at 0 range 4 .. 6;
      COMP3INPSEL    at 0 range 7 .. 7;
      Reserved_8_9   at 0 range 8 .. 9;
      COMP3_OUT_SEL  at 0 range 10 .. 13;
      Reserved_14_14 at 0 range 14 .. 14;
      COMP3POL       at 0 range 15 .. 15;
      COMP3HYST      at 0 range 16 .. 17;
      COMP3_BLANKING at 0 range 18 .. 20;
      Reserved_21_29 at 0 range 21 .. 29;
      COMP3OUT       at 0 range 30 .. 30;
      COMP3LOCK      at 0 range 31 .. 31;
   end record;

   subtype COMP4_CSR_COMP4EN_Field is Interfaces.STM32.Bit;
   subtype COMP4_CSR_COMP4MODE_Field is Interfaces.STM32.UInt2;
   subtype COMP4_CSR_COMP4INSEL_Field is Interfaces.STM32.UInt3;
   subtype COMP4_CSR_COMP4INPSEL_Field is Interfaces.STM32.Bit;
   subtype COMP4_CSR_COM4WINMODE_Field is Interfaces.STM32.Bit;
   subtype COMP4_CSR_COMP4_OUT_SEL_Field is Interfaces.STM32.UInt4;
   subtype COMP4_CSR_COMP4POL_Field is Interfaces.STM32.Bit;
   subtype COMP4_CSR_COMP4HYST_Field is Interfaces.STM32.UInt2;
   subtype COMP4_CSR_COMP4_BLANKING_Field is Interfaces.STM32.UInt3;
   subtype COMP4_CSR_COMP4OUT_Field is Interfaces.STM32.Bit;
   subtype COMP4_CSR_COMP4LOCK_Field is Interfaces.STM32.Bit;

   --  control and status register
   type COMP4_CSR_Register is record
      --  Comparator 4 enable
      COMP4EN        : COMP4_CSR_COMP4EN_Field := 16#0#;
      --  unspecified
      Reserved_1_1   : Interfaces.STM32.Bit := 16#0#;
      --  Comparator 4 mode
      COMP4MODE      : COMP4_CSR_COMP4MODE_Field := 16#0#;
      --  Comparator 4 inverting input selection
      COMP4INSEL     : COMP4_CSR_COMP4INSEL_Field := 16#0#;
      --  Comparator 4 non inverted input selection
      COMP4INPSEL    : COMP4_CSR_COMP4INPSEL_Field := 16#0#;
      --  unspecified
      Reserved_8_8   : Interfaces.STM32.Bit := 16#0#;
      --  Comparator 4 window mode
      COM4WINMODE    : COMP4_CSR_COM4WINMODE_Field := 16#0#;
      --  Comparator 4 output selection
      COMP4_OUT_SEL  : COMP4_CSR_COMP4_OUT_SEL_Field := 16#0#;
      --  unspecified
      Reserved_14_14 : Interfaces.STM32.Bit := 16#0#;
      --  Comparator 4 output polarity
      COMP4POL       : COMP4_CSR_COMP4POL_Field := 16#0#;
      --  Comparator 4 hysteresis
      COMP4HYST      : COMP4_CSR_COMP4HYST_Field := 16#0#;
      --  Comparator 4 blanking source
      COMP4_BLANKING : COMP4_CSR_COMP4_BLANKING_Field := 16#0#;
      --  unspecified
      Reserved_21_29 : Interfaces.STM32.UInt9 := 16#0#;
      --  Read-only. Comparator 4 output
      COMP4OUT       : COMP4_CSR_COMP4OUT_Field := 16#0#;
      --  Comparator 4 lock
      COMP4LOCK      : COMP4_CSR_COMP4LOCK_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for COMP4_CSR_Register use record
      COMP4EN        at 0 range 0 .. 0;
      Reserved_1_1   at 0 range 1 .. 1;
      COMP4MODE      at 0 range 2 .. 3;
      COMP4INSEL     at 0 range 4 .. 6;
      COMP4INPSEL    at 0 range 7 .. 7;
      Reserved_8_8   at 0 range 8 .. 8;
      COM4WINMODE    at 0 range 9 .. 9;
      COMP4_OUT_SEL  at 0 range 10 .. 13;
      Reserved_14_14 at 0 range 14 .. 14;
      COMP4POL       at 0 range 15 .. 15;
      COMP4HYST      at 0 range 16 .. 17;
      COMP4_BLANKING at 0 range 18 .. 20;
      Reserved_21_29 at 0 range 21 .. 29;
      COMP4OUT       at 0 range 30 .. 30;
      COMP4LOCK      at 0 range 31 .. 31;
   end record;

   subtype COMP5_CSR_COMP5EN_Field is Interfaces.STM32.Bit;
   subtype COMP5_CSR_COMP5MODE_Field is Interfaces.STM32.UInt2;
   subtype COMP5_CSR_COMP5INSEL_Field is Interfaces.STM32.UInt3;
   subtype COMP5_CSR_COMP5INPSEL_Field is Interfaces.STM32.Bit;
   subtype COMP5_CSR_COMP5_OUT_SEL_Field is Interfaces.STM32.UInt4;
   subtype COMP5_CSR_COMP5POL_Field is Interfaces.STM32.Bit;
   subtype COMP5_CSR_COMP5HYST_Field is Interfaces.STM32.UInt2;
   subtype COMP5_CSR_COMP5_BLANKING_Field is Interfaces.STM32.UInt3;
   subtype COMP5_CSR_COMP5OUT_Field is Interfaces.STM32.Bit;
   subtype COMP5_CSR_COMP5LOCK_Field is Interfaces.STM32.Bit;

   --  control and status register
   type COMP5_CSR_Register is record
      --  Comparator 5 enable
      COMP5EN        : COMP5_CSR_COMP5EN_Field := 16#0#;
      --  unspecified
      Reserved_1_1   : Interfaces.STM32.Bit := 16#0#;
      --  Comparator 5 mode
      COMP5MODE      : COMP5_CSR_COMP5MODE_Field := 16#0#;
      --  Comparator 5 inverting input selection
      COMP5INSEL     : COMP5_CSR_COMP5INSEL_Field := 16#0#;
      --  Comparator 5 non inverted input selection
      COMP5INPSEL    : COMP5_CSR_COMP5INPSEL_Field := 16#0#;
      --  unspecified
      Reserved_8_9   : Interfaces.STM32.UInt2 := 16#0#;
      --  Comparator 5 output selection
      COMP5_OUT_SEL  : COMP5_CSR_COMP5_OUT_SEL_Field := 16#0#;
      --  unspecified
      Reserved_14_14 : Interfaces.STM32.Bit := 16#0#;
      --  Comparator 5 output polarity
      COMP5POL       : COMP5_CSR_COMP5POL_Field := 16#0#;
      --  Comparator 5 hysteresis
      COMP5HYST      : COMP5_CSR_COMP5HYST_Field := 16#0#;
      --  Comparator 5 blanking source
      COMP5_BLANKING : COMP5_CSR_COMP5_BLANKING_Field := 16#0#;
      --  unspecified
      Reserved_21_29 : Interfaces.STM32.UInt9 := 16#0#;
      --  Read-only. Comparator51 output
      COMP5OUT       : COMP5_CSR_COMP5OUT_Field := 16#0#;
      --  Comparator 5 lock
      COMP5LOCK      : COMP5_CSR_COMP5LOCK_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for COMP5_CSR_Register use record
      COMP5EN        at 0 range 0 .. 0;
      Reserved_1_1   at 0 range 1 .. 1;
      COMP5MODE      at 0 range 2 .. 3;
      COMP5INSEL     at 0 range 4 .. 6;
      COMP5INPSEL    at 0 range 7 .. 7;
      Reserved_8_9   at 0 range 8 .. 9;
      COMP5_OUT_SEL  at 0 range 10 .. 13;
      Reserved_14_14 at 0 range 14 .. 14;
      COMP5POL       at 0 range 15 .. 15;
      COMP5HYST      at 0 range 16 .. 17;
      COMP5_BLANKING at 0 range 18 .. 20;
      Reserved_21_29 at 0 range 21 .. 29;
      COMP5OUT       at 0 range 30 .. 30;
      COMP5LOCK      at 0 range 31 .. 31;
   end record;

   subtype COMP6_CSR_COMP6EN_Field is Interfaces.STM32.Bit;
   subtype COMP6_CSR_COMP6MODE_Field is Interfaces.STM32.UInt2;
   subtype COMP6_CSR_COMP6INSEL_Field is Interfaces.STM32.UInt3;
   subtype COMP6_CSR_COMP6INPSEL_Field is Interfaces.STM32.Bit;
   subtype COMP6_CSR_COM6WINMODE_Field is Interfaces.STM32.Bit;
   subtype COMP6_CSR_COMP6_OUT_SEL_Field is Interfaces.STM32.UInt4;
   subtype COMP6_CSR_COMP6POL_Field is Interfaces.STM32.Bit;
   subtype COMP6_CSR_COMP6HYST_Field is Interfaces.STM32.UInt2;
   subtype COMP6_CSR_COMP6_BLANKING_Field is Interfaces.STM32.UInt3;
   subtype COMP6_CSR_COMP6OUT_Field is Interfaces.STM32.Bit;
   subtype COMP6_CSR_COMP6LOCK_Field is Interfaces.STM32.Bit;

   --  control and status register
   type COMP6_CSR_Register is record
      --  Comparator 6 enable
      COMP6EN        : COMP6_CSR_COMP6EN_Field := 16#0#;
      --  unspecified
      Reserved_1_1   : Interfaces.STM32.Bit := 16#0#;
      --  Comparator 6 mode
      COMP6MODE      : COMP6_CSR_COMP6MODE_Field := 16#0#;
      --  Comparator 6 inverting input selection
      COMP6INSEL     : COMP6_CSR_COMP6INSEL_Field := 16#0#;
      --  Comparator 6 non inverted input selection
      COMP6INPSEL    : COMP6_CSR_COMP6INPSEL_Field := 16#0#;
      --  unspecified
      Reserved_8_8   : Interfaces.STM32.Bit := 16#0#;
      --  Comparator 6 window mode
      COM6WINMODE    : COMP6_CSR_COM6WINMODE_Field := 16#0#;
      --  Comparator 6 output selection
      COMP6_OUT_SEL  : COMP6_CSR_COMP6_OUT_SEL_Field := 16#0#;
      --  unspecified
      Reserved_14_14 : Interfaces.STM32.Bit := 16#0#;
      --  Comparator 6 output polarity
      COMP6POL       : COMP6_CSR_COMP6POL_Field := 16#0#;
      --  Comparator 6 hysteresis
      COMP6HYST      : COMP6_CSR_COMP6HYST_Field := 16#0#;
      --  Comparator 6 blanking source
      COMP6_BLANKING : COMP6_CSR_COMP6_BLANKING_Field := 16#0#;
      --  unspecified
      Reserved_21_29 : Interfaces.STM32.UInt9 := 16#0#;
      --  Read-only. Comparator 6 output
      COMP6OUT       : COMP6_CSR_COMP6OUT_Field := 16#0#;
      --  Comparator 6 lock
      COMP6LOCK      : COMP6_CSR_COMP6LOCK_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for COMP6_CSR_Register use record
      COMP6EN        at 0 range 0 .. 0;
      Reserved_1_1   at 0 range 1 .. 1;
      COMP6MODE      at 0 range 2 .. 3;
      COMP6INSEL     at 0 range 4 .. 6;
      COMP6INPSEL    at 0 range 7 .. 7;
      Reserved_8_8   at 0 range 8 .. 8;
      COM6WINMODE    at 0 range 9 .. 9;
      COMP6_OUT_SEL  at 0 range 10 .. 13;
      Reserved_14_14 at 0 range 14 .. 14;
      COMP6POL       at 0 range 15 .. 15;
      COMP6HYST      at 0 range 16 .. 17;
      COMP6_BLANKING at 0 range 18 .. 20;
      Reserved_21_29 at 0 range 21 .. 29;
      COMP6OUT       at 0 range 30 .. 30;
      COMP6LOCK      at 0 range 31 .. 31;
   end record;

   subtype COMP7_CSR_COMP7EN_Field is Interfaces.STM32.Bit;
   subtype COMP7_CSR_COMP7MODE_Field is Interfaces.STM32.UInt2;
   subtype COMP7_CSR_COMP7INSEL_Field is Interfaces.STM32.UInt3;
   subtype COMP7_CSR_COMP7INPSEL_Field is Interfaces.STM32.Bit;
   subtype COMP7_CSR_COMP7_OUT_SEL_Field is Interfaces.STM32.UInt4;
   subtype COMP7_CSR_COMP7POL_Field is Interfaces.STM32.Bit;
   subtype COMP7_CSR_COMP7HYST_Field is Interfaces.STM32.UInt2;
   subtype COMP7_CSR_COMP7_BLANKING_Field is Interfaces.STM32.UInt3;
   subtype COMP7_CSR_COMP7OUT_Field is Interfaces.STM32.Bit;
   subtype COMP7_CSR_COMP7LOCK_Field is Interfaces.STM32.Bit;

   --  control and status register
   type COMP7_CSR_Register is record
      --  Comparator 7 enable
      COMP7EN        : COMP7_CSR_COMP7EN_Field := 16#0#;
      --  unspecified
      Reserved_1_1   : Interfaces.STM32.Bit := 16#0#;
      --  Comparator 7 mode
      COMP7MODE      : COMP7_CSR_COMP7MODE_Field := 16#0#;
      --  Comparator 7 inverting input selection
      COMP7INSEL     : COMP7_CSR_COMP7INSEL_Field := 16#0#;
      --  Comparator 7 non inverted input selection
      COMP7INPSEL    : COMP7_CSR_COMP7INPSEL_Field := 16#0#;
      --  unspecified
      Reserved_8_9   : Interfaces.STM32.UInt2 := 16#0#;
      --  Comparator 7 output selection
      COMP7_OUT_SEL  : COMP7_CSR_COMP7_OUT_SEL_Field := 16#0#;
      --  unspecified
      Reserved_14_14 : Interfaces.STM32.Bit := 16#0#;
      --  Comparator 7 output polarity
      COMP7POL       : COMP7_CSR_COMP7POL_Field := 16#0#;
      --  Comparator 7 hysteresis
      COMP7HYST      : COMP7_CSR_COMP7HYST_Field := 16#0#;
      --  Comparator 7 blanking source
      COMP7_BLANKING : COMP7_CSR_COMP7_BLANKING_Field := 16#0#;
      --  unspecified
      Reserved_21_29 : Interfaces.STM32.UInt9 := 16#0#;
      --  Read-only. Comparator 7 output
      COMP7OUT       : COMP7_CSR_COMP7OUT_Field := 16#0#;
      --  Comparator 7 lock
      COMP7LOCK      : COMP7_CSR_COMP7LOCK_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for COMP7_CSR_Register use record
      COMP7EN        at 0 range 0 .. 0;
      Reserved_1_1   at 0 range 1 .. 1;
      COMP7MODE      at 0 range 2 .. 3;
      COMP7INSEL     at 0 range 4 .. 6;
      COMP7INPSEL    at 0 range 7 .. 7;
      Reserved_8_9   at 0 range 8 .. 9;
      COMP7_OUT_SEL  at 0 range 10 .. 13;
      Reserved_14_14 at 0 range 14 .. 14;
      COMP7POL       at 0 range 15 .. 15;
      COMP7HYST      at 0 range 16 .. 17;
      COMP7_BLANKING at 0 range 18 .. 20;
      Reserved_21_29 at 0 range 21 .. 29;
      COMP7OUT       at 0 range 30 .. 30;
      COMP7LOCK      at 0 range 31 .. 31;
   end record;

   subtype OPAMP1_CSR_OPAMP1_EN_Field is Interfaces.STM32.Bit;
   subtype OPAMP1_CSR_FORCE_VP_Field is Interfaces.STM32.Bit;
   subtype OPAMP1_CSR_VP_SEL_Field is Interfaces.STM32.UInt2;
   subtype OPAMP1_CSR_VM_SEL_Field is Interfaces.STM32.UInt2;
   subtype OPAMP1_CSR_TCM_EN_Field is Interfaces.STM32.Bit;
   subtype OPAMP1_CSR_VMS_SEL_Field is Interfaces.STM32.Bit;
   subtype OPAMP1_CSR_VPS_SEL_Field is Interfaces.STM32.UInt2;
   subtype OPAMP1_CSR_CALON_Field is Interfaces.STM32.Bit;
   subtype OPAMP1_CSR_CALSEL_Field is Interfaces.STM32.UInt2;
   subtype OPAMP1_CSR_PGA_GAIN_Field is Interfaces.STM32.UInt4;
   subtype OPAMP1_CSR_USER_TRIM_Field is Interfaces.STM32.Bit;
   subtype OPAMP1_CSR_TRIMOFFSETP_Field is Interfaces.STM32.UInt5;
   subtype OPAMP1_CSR_TRIMOFFSETN_Field is Interfaces.STM32.UInt5;
   subtype OPAMP1_CSR_TSTREF_Field is Interfaces.STM32.Bit;
   subtype OPAMP1_CSR_OUTCAL_Field is Interfaces.STM32.Bit;
   subtype OPAMP1_CSR_LOCK_Field is Interfaces.STM32.Bit;

   --  control register
   type OPAMP1_CSR_Register is record
      --  OPAMP1 enable
      OPAMP1_EN    : OPAMP1_CSR_OPAMP1_EN_Field := 16#0#;
      --  FORCE_VP
      FORCE_VP     : OPAMP1_CSR_FORCE_VP_Field := 16#0#;
      --  OPAMP1 Non inverting input selection
      VP_SEL       : OPAMP1_CSR_VP_SEL_Field := 16#0#;
      --  unspecified
      Reserved_4_4 : Interfaces.STM32.Bit := 16#0#;
      --  OPAMP1 inverting input selection
      VM_SEL       : OPAMP1_CSR_VM_SEL_Field := 16#0#;
      --  Timer controlled Mux mode enable
      TCM_EN       : OPAMP1_CSR_TCM_EN_Field := 16#0#;
      --  OPAMP1 inverting input secondary selection
      VMS_SEL      : OPAMP1_CSR_VMS_SEL_Field := 16#0#;
      --  OPAMP1 Non inverting input secondary selection
      VPS_SEL      : OPAMP1_CSR_VPS_SEL_Field := 16#0#;
      --  Calibration mode enable
      CALON        : OPAMP1_CSR_CALON_Field := 16#0#;
      --  Calibration selection
      CALSEL       : OPAMP1_CSR_CALSEL_Field := 16#0#;
      --  Gain in PGA mode
      PGA_GAIN     : OPAMP1_CSR_PGA_GAIN_Field := 16#0#;
      --  User trimming enable
      USER_TRIM    : OPAMP1_CSR_USER_TRIM_Field := 16#0#;
      --  Offset trimming value (PMOS)
      TRIMOFFSETP  : OPAMP1_CSR_TRIMOFFSETP_Field := 16#0#;
      --  Offset trimming value (NMOS)
      TRIMOFFSETN  : OPAMP1_CSR_TRIMOFFSETN_Field := 16#0#;
      --  TSTREF
      TSTREF       : OPAMP1_CSR_TSTREF_Field := 16#0#;
      --  Read-only. OPAMP 1 ouput status flag
      OUTCAL       : OPAMP1_CSR_OUTCAL_Field := 16#0#;
      --  OPAMP 1 lock
      LOCK         : OPAMP1_CSR_LOCK_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for OPAMP1_CSR_Register use record
      OPAMP1_EN    at 0 range 0 .. 0;
      FORCE_VP     at 0 range 1 .. 1;
      VP_SEL       at 0 range 2 .. 3;
      Reserved_4_4 at 0 range 4 .. 4;
      VM_SEL       at 0 range 5 .. 6;
      TCM_EN       at 0 range 7 .. 7;
      VMS_SEL      at 0 range 8 .. 8;
      VPS_SEL      at 0 range 9 .. 10;
      CALON        at 0 range 11 .. 11;
      CALSEL       at 0 range 12 .. 13;
      PGA_GAIN     at 0 range 14 .. 17;
      USER_TRIM    at 0 range 18 .. 18;
      TRIMOFFSETP  at 0 range 19 .. 23;
      TRIMOFFSETN  at 0 range 24 .. 28;
      TSTREF       at 0 range 29 .. 29;
      OUTCAL       at 0 range 30 .. 30;
      LOCK         at 0 range 31 .. 31;
   end record;

   subtype OPAMP2_CSR_OPAMP2EN_Field is Interfaces.STM32.Bit;
   subtype OPAMP2_CSR_FORCE_VP_Field is Interfaces.STM32.Bit;
   subtype OPAMP2_CSR_VP_SEL_Field is Interfaces.STM32.UInt2;
   subtype OPAMP2_CSR_VM_SEL_Field is Interfaces.STM32.UInt2;
   subtype OPAMP2_CSR_TCM_EN_Field is Interfaces.STM32.Bit;
   subtype OPAMP2_CSR_VMS_SEL_Field is Interfaces.STM32.Bit;
   subtype OPAMP2_CSR_VPS_SEL_Field is Interfaces.STM32.UInt2;
   subtype OPAMP2_CSR_CALON_Field is Interfaces.STM32.Bit;
   subtype OPAMP2_CSR_CAL_SEL_Field is Interfaces.STM32.UInt2;
   subtype OPAMP2_CSR_PGA_GAIN_Field is Interfaces.STM32.UInt4;
   subtype OPAMP2_CSR_USER_TRIM_Field is Interfaces.STM32.Bit;
   subtype OPAMP2_CSR_TRIMOFFSETP_Field is Interfaces.STM32.UInt5;
   subtype OPAMP2_CSR_TRIMOFFSETN_Field is Interfaces.STM32.UInt5;
   subtype OPAMP2_CSR_TSTREF_Field is Interfaces.STM32.Bit;
   subtype OPAMP2_CSR_OUTCAL_Field is Interfaces.STM32.Bit;
   subtype OPAMP2_CSR_LOCK_Field is Interfaces.STM32.Bit;

   --  control register
   type OPAMP2_CSR_Register is record
      --  OPAMP2 enable
      OPAMP2EN     : OPAMP2_CSR_OPAMP2EN_Field := 16#0#;
      --  FORCE_VP
      FORCE_VP     : OPAMP2_CSR_FORCE_VP_Field := 16#0#;
      --  OPAMP2 Non inverting input selection
      VP_SEL       : OPAMP2_CSR_VP_SEL_Field := 16#0#;
      --  unspecified
      Reserved_4_4 : Interfaces.STM32.Bit := 16#0#;
      --  OPAMP2 inverting input selection
      VM_SEL       : OPAMP2_CSR_VM_SEL_Field := 16#0#;
      --  Timer controlled Mux mode enable
      TCM_EN       : OPAMP2_CSR_TCM_EN_Field := 16#0#;
      --  OPAMP2 inverting input secondary selection
      VMS_SEL      : OPAMP2_CSR_VMS_SEL_Field := 16#0#;
      --  OPAMP2 Non inverting input secondary selection
      VPS_SEL      : OPAMP2_CSR_VPS_SEL_Field := 16#0#;
      --  Calibration mode enable
      CALON        : OPAMP2_CSR_CALON_Field := 16#0#;
      --  Calibration selection
      CAL_SEL      : OPAMP2_CSR_CAL_SEL_Field := 16#0#;
      --  Gain in PGA mode
      PGA_GAIN     : OPAMP2_CSR_PGA_GAIN_Field := 16#0#;
      --  User trimming enable
      USER_TRIM    : OPAMP2_CSR_USER_TRIM_Field := 16#0#;
      --  Offset trimming value (PMOS)
      TRIMOFFSETP  : OPAMP2_CSR_TRIMOFFSETP_Field := 16#0#;
      --  Offset trimming value (NMOS)
      TRIMOFFSETN  : OPAMP2_CSR_TRIMOFFSETN_Field := 16#0#;
      --  TSTREF
      TSTREF       : OPAMP2_CSR_TSTREF_Field := 16#0#;
      --  Read-only. OPAMP 2 ouput status flag
      OUTCAL       : OPAMP2_CSR_OUTCAL_Field := 16#0#;
      --  OPAMP 2 lock
      LOCK         : OPAMP2_CSR_LOCK_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for OPAMP2_CSR_Register use record
      OPAMP2EN     at 0 range 0 .. 0;
      FORCE_VP     at 0 range 1 .. 1;
      VP_SEL       at 0 range 2 .. 3;
      Reserved_4_4 at 0 range 4 .. 4;
      VM_SEL       at 0 range 5 .. 6;
      TCM_EN       at 0 range 7 .. 7;
      VMS_SEL      at 0 range 8 .. 8;
      VPS_SEL      at 0 range 9 .. 10;
      CALON        at 0 range 11 .. 11;
      CAL_SEL      at 0 range 12 .. 13;
      PGA_GAIN     at 0 range 14 .. 17;
      USER_TRIM    at 0 range 18 .. 18;
      TRIMOFFSETP  at 0 range 19 .. 23;
      TRIMOFFSETN  at 0 range 24 .. 28;
      TSTREF       at 0 range 29 .. 29;
      OUTCAL       at 0 range 30 .. 30;
      LOCK         at 0 range 31 .. 31;
   end record;

   subtype OPAMP3_CSR_OPAMP3EN_Field is Interfaces.STM32.Bit;
   subtype OPAMP3_CSR_FORCE_VP_Field is Interfaces.STM32.Bit;
   subtype OPAMP3_CSR_VP_SEL_Field is Interfaces.STM32.UInt2;
   subtype OPAMP3_CSR_VM_SEL_Field is Interfaces.STM32.UInt2;
   subtype OPAMP3_CSR_TCM_EN_Field is Interfaces.STM32.Bit;
   subtype OPAMP3_CSR_VMS_SEL_Field is Interfaces.STM32.Bit;
   subtype OPAMP3_CSR_VPS_SEL_Field is Interfaces.STM32.UInt2;
   subtype OPAMP3_CSR_CALON_Field is Interfaces.STM32.Bit;
   subtype OPAMP3_CSR_CALSEL_Field is Interfaces.STM32.UInt2;
   subtype OPAMP3_CSR_PGA_GAIN_Field is Interfaces.STM32.UInt4;
   subtype OPAMP3_CSR_USER_TRIM_Field is Interfaces.STM32.Bit;
   subtype OPAMP3_CSR_TRIMOFFSETP_Field is Interfaces.STM32.UInt5;
   subtype OPAMP3_CSR_TRIMOFFSETN_Field is Interfaces.STM32.UInt5;
   subtype OPAMP3_CSR_TSTREF_Field is Interfaces.STM32.Bit;
   subtype OPAMP3_CSR_OUTCAL_Field is Interfaces.STM32.Bit;
   subtype OPAMP3_CSR_LOCK_Field is Interfaces.STM32.Bit;

   --  control register
   type OPAMP3_CSR_Register is record
      --  OPAMP3 enable
      OPAMP3EN     : OPAMP3_CSR_OPAMP3EN_Field := 16#0#;
      --  FORCE_VP
      FORCE_VP     : OPAMP3_CSR_FORCE_VP_Field := 16#0#;
      --  OPAMP3 Non inverting input selection
      VP_SEL       : OPAMP3_CSR_VP_SEL_Field := 16#0#;
      --  unspecified
      Reserved_4_4 : Interfaces.STM32.Bit := 16#0#;
      --  OPAMP3 inverting input selection
      VM_SEL       : OPAMP3_CSR_VM_SEL_Field := 16#0#;
      --  Timer controlled Mux mode enable
      TCM_EN       : OPAMP3_CSR_TCM_EN_Field := 16#0#;
      --  OPAMP3 inverting input secondary selection
      VMS_SEL      : OPAMP3_CSR_VMS_SEL_Field := 16#0#;
      --  OPAMP3 Non inverting input secondary selection
      VPS_SEL      : OPAMP3_CSR_VPS_SEL_Field := 16#0#;
      --  Calibration mode enable
      CALON        : OPAMP3_CSR_CALON_Field := 16#0#;
      --  Calibration selection
      CALSEL       : OPAMP3_CSR_CALSEL_Field := 16#0#;
      --  Gain in PGA mode
      PGA_GAIN     : OPAMP3_CSR_PGA_GAIN_Field := 16#0#;
      --  User trimming enable
      USER_TRIM    : OPAMP3_CSR_USER_TRIM_Field := 16#0#;
      --  Offset trimming value (PMOS)
      TRIMOFFSETP  : OPAMP3_CSR_TRIMOFFSETP_Field := 16#0#;
      --  Offset trimming value (NMOS)
      TRIMOFFSETN  : OPAMP3_CSR_TRIMOFFSETN_Field := 16#0#;
      --  TSTREF
      TSTREF       : OPAMP3_CSR_TSTREF_Field := 16#0#;
      --  Read-only. OPAMP 3 ouput status flag
      OUTCAL       : OPAMP3_CSR_OUTCAL_Field := 16#0#;
      --  OPAMP 3 lock
      LOCK         : OPAMP3_CSR_LOCK_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for OPAMP3_CSR_Register use record
      OPAMP3EN     at 0 range 0 .. 0;
      FORCE_VP     at 0 range 1 .. 1;
      VP_SEL       at 0 range 2 .. 3;
      Reserved_4_4 at 0 range 4 .. 4;
      VM_SEL       at 0 range 5 .. 6;
      TCM_EN       at 0 range 7 .. 7;
      VMS_SEL      at 0 range 8 .. 8;
      VPS_SEL      at 0 range 9 .. 10;
      CALON        at 0 range 11 .. 11;
      CALSEL       at 0 range 12 .. 13;
      PGA_GAIN     at 0 range 14 .. 17;
      USER_TRIM    at 0 range 18 .. 18;
      TRIMOFFSETP  at 0 range 19 .. 23;
      TRIMOFFSETN  at 0 range 24 .. 28;
      TSTREF       at 0 range 29 .. 29;
      OUTCAL       at 0 range 30 .. 30;
      LOCK         at 0 range 31 .. 31;
   end record;

   subtype OPAMP4_CSR_OPAMP4EN_Field is Interfaces.STM32.Bit;
   subtype OPAMP4_CSR_FORCE_VP_Field is Interfaces.STM32.Bit;
   subtype OPAMP4_CSR_VP_SEL_Field is Interfaces.STM32.UInt2;
   subtype OPAMP4_CSR_VM_SEL_Field is Interfaces.STM32.UInt2;
   subtype OPAMP4_CSR_TCM_EN_Field is Interfaces.STM32.Bit;
   subtype OPAMP4_CSR_VMS_SEL_Field is Interfaces.STM32.Bit;
   subtype OPAMP4_CSR_VPS_SEL_Field is Interfaces.STM32.UInt2;
   subtype OPAMP4_CSR_CALON_Field is Interfaces.STM32.Bit;
   subtype OPAMP4_CSR_CALSEL_Field is Interfaces.STM32.UInt2;
   subtype OPAMP4_CSR_PGA_GAIN_Field is Interfaces.STM32.UInt4;
   subtype OPAMP4_CSR_USER_TRIM_Field is Interfaces.STM32.Bit;
   subtype OPAMP4_CSR_TRIMOFFSETP_Field is Interfaces.STM32.UInt5;
   subtype OPAMP4_CSR_TRIMOFFSETN_Field is Interfaces.STM32.UInt5;
   subtype OPAMP4_CSR_TSTREF_Field is Interfaces.STM32.Bit;
   subtype OPAMP4_CSR_OUTCAL_Field is Interfaces.STM32.Bit;
   subtype OPAMP4_CSR_LOCK_Field is Interfaces.STM32.Bit;

   --  control register
   type OPAMP4_CSR_Register is record
      --  OPAMP4 enable
      OPAMP4EN     : OPAMP4_CSR_OPAMP4EN_Field := 16#0#;
      --  FORCE_VP
      FORCE_VP     : OPAMP4_CSR_FORCE_VP_Field := 16#0#;
      --  OPAMP4 Non inverting input selection
      VP_SEL       : OPAMP4_CSR_VP_SEL_Field := 16#0#;
      --  unspecified
      Reserved_4_4 : Interfaces.STM32.Bit := 16#0#;
      --  OPAMP4 inverting input selection
      VM_SEL       : OPAMP4_CSR_VM_SEL_Field := 16#0#;
      --  Timer controlled Mux mode enable
      TCM_EN       : OPAMP4_CSR_TCM_EN_Field := 16#0#;
      --  OPAMP4 inverting input secondary selection
      VMS_SEL      : OPAMP4_CSR_VMS_SEL_Field := 16#0#;
      --  OPAMP4 Non inverting input secondary selection
      VPS_SEL      : OPAMP4_CSR_VPS_SEL_Field := 16#0#;
      --  Calibration mode enable
      CALON        : OPAMP4_CSR_CALON_Field := 16#0#;
      --  Calibration selection
      CALSEL       : OPAMP4_CSR_CALSEL_Field := 16#0#;
      --  Gain in PGA mode
      PGA_GAIN     : OPAMP4_CSR_PGA_GAIN_Field := 16#0#;
      --  User trimming enable
      USER_TRIM    : OPAMP4_CSR_USER_TRIM_Field := 16#0#;
      --  Offset trimming value (PMOS)
      TRIMOFFSETP  : OPAMP4_CSR_TRIMOFFSETP_Field := 16#0#;
      --  Offset trimming value (NMOS)
      TRIMOFFSETN  : OPAMP4_CSR_TRIMOFFSETN_Field := 16#0#;
      --  TSTREF
      TSTREF       : OPAMP4_CSR_TSTREF_Field := 16#0#;
      --  Read-only. OPAMP 4 ouput status flag
      OUTCAL       : OPAMP4_CSR_OUTCAL_Field := 16#0#;
      --  OPAMP 4 lock
      LOCK         : OPAMP4_CSR_LOCK_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for OPAMP4_CSR_Register use record
      OPAMP4EN     at 0 range 0 .. 0;
      FORCE_VP     at 0 range 1 .. 1;
      VP_SEL       at 0 range 2 .. 3;
      Reserved_4_4 at 0 range 4 .. 4;
      VM_SEL       at 0 range 5 .. 6;
      TCM_EN       at 0 range 7 .. 7;
      VMS_SEL      at 0 range 8 .. 8;
      VPS_SEL      at 0 range 9 .. 10;
      CALON        at 0 range 11 .. 11;
      CALSEL       at 0 range 12 .. 13;
      PGA_GAIN     at 0 range 14 .. 17;
      USER_TRIM    at 0 range 18 .. 18;
      TRIMOFFSETP  at 0 range 19 .. 23;
      TRIMOFFSETN  at 0 range 24 .. 28;
      TSTREF       at 0 range 29 .. 29;
      OUTCAL       at 0 range 30 .. 30;
      LOCK         at 0 range 31 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  System configuration controller _Comparator and Operational amplifier
   type SYSCFG_COMP_OPAMP_Peripheral is record
      --  configuration register 1
      SYSCFG_CFGR1   : aliased SYSCFG_CFGR1_Register;
      --  CCM SRAM protection register
      SYSCFG_RCR     : aliased SYSCFG_RCR_Register;
      --  external interrupt configuration register 1
      SYSCFG_EXTICR1 : aliased SYSCFG_EXTICR1_Register;
      --  external interrupt configuration register 2
      SYSCFG_EXTICR2 : aliased SYSCFG_EXTICR2_Register;
      --  external interrupt configuration register 3
      SYSCFG_EXTICR3 : aliased SYSCFG_EXTICR3_Register;
      --  external interrupt configuration register 4
      SYSCFG_EXTICR4 : aliased SYSCFG_EXTICR4_Register;
      --  configuration register 2
      SYSCFG_CFGR2   : aliased SYSCFG_CFGR2_Register;
      --  control and status register
      COMP1_CSR      : aliased COMP1_CSR_Register;
      --  control and status register
      COMP2_CSR      : aliased COMP2_CSR_Register;
      --  control and status register
      COMP3_CSR      : aliased COMP3_CSR_Register;
      --  control and status register
      COMP4_CSR      : aliased COMP4_CSR_Register;
      --  control and status register
      COMP5_CSR      : aliased COMP5_CSR_Register;
      --  control and status register
      COMP6_CSR      : aliased COMP6_CSR_Register;
      --  control and status register
      COMP7_CSR      : aliased COMP7_CSR_Register;
      --  control register
      OPAMP1_CSR     : aliased OPAMP1_CSR_Register;
      --  control register
      OPAMP2_CSR     : aliased OPAMP2_CSR_Register;
      --  control register
      OPAMP3_CSR     : aliased OPAMP3_CSR_Register;
      --  control register
      OPAMP4_CSR     : aliased OPAMP4_CSR_Register;
   end record
     with Volatile;

   for SYSCFG_COMP_OPAMP_Peripheral use record
      SYSCFG_CFGR1   at 16#0# range 0 .. 31;
      SYSCFG_RCR     at 16#4# range 0 .. 31;
      SYSCFG_EXTICR1 at 16#8# range 0 .. 31;
      SYSCFG_EXTICR2 at 16#C# range 0 .. 31;
      SYSCFG_EXTICR3 at 16#10# range 0 .. 31;
      SYSCFG_EXTICR4 at 16#14# range 0 .. 31;
      SYSCFG_CFGR2   at 16#18# range 0 .. 31;
      COMP1_CSR      at 16#1C# range 0 .. 31;
      COMP2_CSR      at 16#20# range 0 .. 31;
      COMP3_CSR      at 16#24# range 0 .. 31;
      COMP4_CSR      at 16#28# range 0 .. 31;
      COMP5_CSR      at 16#2C# range 0 .. 31;
      COMP6_CSR      at 16#30# range 0 .. 31;
      COMP7_CSR      at 16#34# range 0 .. 31;
      OPAMP1_CSR     at 16#38# range 0 .. 31;
      OPAMP2_CSR     at 16#3C# range 0 .. 31;
      OPAMP3_CSR     at 16#40# range 0 .. 31;
      OPAMP4_CSR     at 16#44# range 0 .. 31;
   end record;

   --  System configuration controller _Comparator and Operational amplifier
   SYSCFG_COMP_OPAMP_Periph : aliased SYSCFG_COMP_OPAMP_Peripheral
     with Import, Address => SYSCFG_COMP_OPAMP_Base;

end Interfaces.STM32.SYSCFG_COMP_OPAMP;
