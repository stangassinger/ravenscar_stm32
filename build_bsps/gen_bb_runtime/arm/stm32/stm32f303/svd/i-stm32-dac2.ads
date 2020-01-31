--
--  Copyright (C) 2020, AdaCore
--

--  This spec has been automatically generated from STM32F3x8.svd

pragma Ada_2012;
pragma Style_Checks (Off);

with System;

package Interfaces.STM32.DAC2 is
   pragma Preelaborate;
   pragma No_Elaboration_Code_All;

   ---------------
   -- Registers --
   ---------------

   subtype CR_EN1_Field is Interfaces.STM32.Bit;
   subtype CR_BOFF1_Field is Interfaces.STM32.Bit;
   subtype CR_TEN1_Field is Interfaces.STM32.Bit;
   subtype CR_TSEL1_Field is Interfaces.STM32.UInt3;
   subtype CR_WAVE2_Field is Interfaces.STM32.Bit;
   subtype CR_WAVE1_Field is Interfaces.STM32.Bit;
   --  CR_MAMP array element
   subtype CR_MAMP_Element is Interfaces.STM32.Bit;

   --  CR_MAMP array
   type CR_MAMP_Field_Array is array (10 .. 13) of CR_MAMP_Element
     with Component_Size => 1, Size => 4;

   --  Type definition for CR_MAMP
   type CR_MAMP_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  MAMP as a value
            Val : Interfaces.STM32.UInt4;
         when True =>
            --  MAMP as an array
            Arr : CR_MAMP_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for CR_MAMP_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   subtype CR_DMAEN1_Field is Interfaces.STM32.Bit;
   subtype CR_DMAUDRIE1_Field is Interfaces.STM32.Bit;

   --  control register
   type CR_Register is record
      --  DAC channel1 enable
      EN1            : CR_EN1_Field := 16#0#;
      --  DAC channel1 output buffer disable
      BOFF1          : CR_BOFF1_Field := 16#0#;
      --  DAC channel1 trigger enable
      TEN1           : CR_TEN1_Field := 16#0#;
      --  DAC channel1 trigger selection
      TSEL1          : CR_TSEL1_Field := 16#0#;
      --  WAVE2
      WAVE2          : CR_WAVE2_Field := 16#0#;
      --  DAC channel1 noise/triangle wave generation enable
      WAVE1          : CR_WAVE1_Field := 16#0#;
      --  MAMP10
      MAMP           : CR_MAMP_Field := (As_Array => False, Val => 16#0#);
      --  DAC channel1 DMA enable
      DMAEN1         : CR_DMAEN1_Field := 16#0#;
      --  DAC channel1 DMA Underrun Interrupt enable
      DMAUDRIE1      : CR_DMAUDRIE1_Field := 16#0#;
      --  unspecified
      Reserved_14_31 : Interfaces.STM32.UInt18 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CR_Register use record
      EN1            at 0 range 0 .. 0;
      BOFF1          at 0 range 1 .. 1;
      TEN1           at 0 range 2 .. 2;
      TSEL1          at 0 range 3 .. 5;
      WAVE2          at 0 range 6 .. 6;
      WAVE1          at 0 range 7 .. 7;
      MAMP           at 0 range 8 .. 11;
      DMAEN1         at 0 range 12 .. 12;
      DMAUDRIE1      at 0 range 13 .. 13;
      Reserved_14_31 at 0 range 14 .. 31;
   end record;

   subtype SWTRIGR_SWTRIG1_Field is Interfaces.STM32.Bit;

   --  software trigger register
   type SWTRIGR_Register is record
      --  Write-only. DAC channel1 software trigger
      SWTRIG1       : SWTRIGR_SWTRIG1_Field := 16#0#;
      --  unspecified
      Reserved_1_31 : Interfaces.STM32.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SWTRIGR_Register use record
      SWTRIG1       at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   subtype DHR12R1_DACC1DHR_Field is Interfaces.STM32.UInt12;

   --  channel1 12-bit right-aligned data holding register
   type DHR12R1_Register is record
      --  DAC channel1 12-bit right-aligned data
      DACC1DHR       : DHR12R1_DACC1DHR_Field := 16#0#;
      --  unspecified
      Reserved_12_31 : Interfaces.STM32.UInt20 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DHR12R1_Register use record
      DACC1DHR       at 0 range 0 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   subtype DHR12L1_DACC1DHR_Field is Interfaces.STM32.UInt12;

   --  DAC channel1 12-bit left aligned data holding register
   type DHR12L1_Register is record
      --  unspecified
      Reserved_0_3   : Interfaces.STM32.UInt4 := 16#0#;
      --  DAC channel1 12-bit left-aligned data
      DACC1DHR       : DHR12L1_DACC1DHR_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : Interfaces.STM32.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DHR12L1_Register use record
      Reserved_0_3   at 0 range 0 .. 3;
      DACC1DHR       at 0 range 4 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype DHR8R1_DACC1DHR_Field is Interfaces.STM32.Byte;

   --  DAC channel1 8-bit right aligned data holding register
   type DHR8R1_Register is record
      --  DAC channel1 8-bit right-aligned data
      DACC1DHR      : DHR8R1_DACC1DHR_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : Interfaces.STM32.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DHR8R1_Register use record
      DACC1DHR      at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype DOR1_DACC1DOR_Field is Interfaces.STM32.UInt12;

   --  DAC channel1 data output register
   type DOR1_Register is record
      --  Read-only. DAC channel1 data output
      DACC1DOR       : DOR1_DACC1DOR_Field;
      --  unspecified
      Reserved_12_31 : Interfaces.STM32.UInt20;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DOR1_Register use record
      DACC1DOR       at 0 range 0 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   subtype SR_DMAUDR1_Field is Interfaces.STM32.Bit;

   --  DAC status register
   type SR_Register is record
      --  unspecified
      Reserved_0_12  : Interfaces.STM32.UInt13 := 16#0#;
      --  DAC channel1 DMA underrun flag
      DMAUDR1        : SR_DMAUDR1_Field := 16#0#;
      --  unspecified
      Reserved_14_31 : Interfaces.STM32.UInt18 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SR_Register use record
      Reserved_0_12  at 0 range 0 .. 12;
      DMAUDR1        at 0 range 13 .. 13;
      Reserved_14_31 at 0 range 14 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Digital-to-analog converter
   type DAC2_Peripheral is record
      --  control register
      CR      : aliased CR_Register;
      --  software trigger register
      SWTRIGR : aliased SWTRIGR_Register;
      --  channel1 12-bit right-aligned data holding register
      DHR12R1 : aliased DHR12R1_Register;
      --  DAC channel1 12-bit left aligned data holding register
      DHR12L1 : aliased DHR12L1_Register;
      --  DAC channel1 8-bit right aligned data holding register
      DHR8R1  : aliased DHR8R1_Register;
      --  DAC channel1 data output register
      DOR1    : aliased DOR1_Register;
      --  DAC status register
      SR      : aliased SR_Register;
   end record
     with Volatile;

   for DAC2_Peripheral use record
      CR      at 16#0# range 0 .. 31;
      SWTRIGR at 16#4# range 0 .. 31;
      DHR12R1 at 16#8# range 0 .. 31;
      DHR12L1 at 16#C# range 0 .. 31;
      DHR8R1  at 16#10# range 0 .. 31;
      DOR1    at 16#2C# range 0 .. 31;
      SR      at 16#34# range 0 .. 31;
   end record;

   --  Digital-to-analog converter
   DAC2_Periph : aliased DAC2_Peripheral
     with Import, Address => DAC2_Base;

end Interfaces.STM32.DAC2;
