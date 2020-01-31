--
--  Copyright (C) 2020, AdaCore
--

--  This spec has been automatically generated from STM32F3x8.svd

pragma Ada_2012;
pragma Style_Checks (Off);

with System;

package Interfaces.STM32.SDADC is
   pragma Preelaborate;
   pragma No_Elaboration_Code_All;

   ---------------
   -- Registers --
   ---------------

   subtype CR1_EOCALIE_Field is Interfaces.STM32.Bit;
   subtype CR1_JEOCIE_Field is Interfaces.STM32.Bit;
   subtype CR1_JOVRIE_Field is Interfaces.STM32.Bit;
   subtype CR1_REOCIE_Field is Interfaces.STM32.Bit;
   subtype CR1_ROVRIE_Field is Interfaces.STM32.Bit;
   subtype CR1_REFV_Field is Interfaces.STM32.UInt2;
   subtype CR1_SLOWCK_Field is Interfaces.STM32.Bit;
   subtype CR1_SBI_Field is Interfaces.STM32.Bit;
   subtype CR1_PDI_Field is Interfaces.STM32.Bit;
   subtype CR1_JSYNC_Field is Interfaces.STM32.Bit;
   subtype CR1_RSYNC_Field is Interfaces.STM32.Bit;
   subtype CR1_JDMAEN_Field is Interfaces.STM32.Bit;
   subtype CR1_RDMAEN_Field is Interfaces.STM32.Bit;
   subtype CR1_INIT_Field is Interfaces.STM32.Bit;

   --  control register 1
   type CR1_Register is record
      --  End of calibration interrupt enable
      EOCALIE        : CR1_EOCALIE_Field := 16#0#;
      --  Injected end of conversion interrupt enable
      JEOCIE         : CR1_JEOCIE_Field := 16#0#;
      --  Injected data overrun interrupt enable
      JOVRIE         : CR1_JOVRIE_Field := 16#0#;
      --  Regular end of conversion interrupt enable
      REOCIE         : CR1_REOCIE_Field := 16#0#;
      --  Regular data overrun interrupt enable
      ROVRIE         : CR1_ROVRIE_Field := 16#0#;
      --  unspecified
      Reserved_5_7   : Interfaces.STM32.UInt3 := 16#0#;
      --  Reference voltage selection
      REFV           : CR1_REFV_Field := 16#0#;
      --  Slow clock mode enable
      SLOWCK         : CR1_SLOWCK_Field := 16#0#;
      --  Enter Standby mode when idle
      SBI            : CR1_SBI_Field := 16#0#;
      --  Enter power down mode when idle
      PDI            : CR1_PDI_Field := 16#0#;
      --  unspecified
      Reserved_13_13 : Interfaces.STM32.Bit := 16#0#;
      --  Launch a injected conversion synchronously with SDADC1
      JSYNC          : CR1_JSYNC_Field := 16#0#;
      --  Launch regular conversion synchronously with SDADC1
      RSYNC          : CR1_RSYNC_Field := 16#0#;
      --  DMA channel enabled to read data for the injected channel group
      JDMAEN         : CR1_JDMAEN_Field := 16#0#;
      --  DMA channel enabled to read data for the regular channel
      RDMAEN         : CR1_RDMAEN_Field := 16#0#;
      --  unspecified
      Reserved_18_30 : Interfaces.STM32.UInt13 := 16#0#;
      --  Initialization mode request
      INIT           : CR1_INIT_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CR1_Register use record
      EOCALIE        at 0 range 0 .. 0;
      JEOCIE         at 0 range 1 .. 1;
      JOVRIE         at 0 range 2 .. 2;
      REOCIE         at 0 range 3 .. 3;
      ROVRIE         at 0 range 4 .. 4;
      Reserved_5_7   at 0 range 5 .. 7;
      REFV           at 0 range 8 .. 9;
      SLOWCK         at 0 range 10 .. 10;
      SBI            at 0 range 11 .. 11;
      PDI            at 0 range 12 .. 12;
      Reserved_13_13 at 0 range 13 .. 13;
      JSYNC          at 0 range 14 .. 14;
      RSYNC          at 0 range 15 .. 15;
      JDMAEN         at 0 range 16 .. 16;
      RDMAEN         at 0 range 17 .. 17;
      Reserved_18_30 at 0 range 18 .. 30;
      INIT           at 0 range 31 .. 31;
   end record;

   subtype CR2_ADON_Field is Interfaces.STM32.Bit;
   subtype CR2_CALIBCNT_Field is Interfaces.STM32.UInt2;
   subtype CR2_STARTCALIB_Field is Interfaces.STM32.Bit;
   subtype CR2_JCONT_Field is Interfaces.STM32.Bit;
   subtype CR2_JDS_Field is Interfaces.STM32.Bit;
   subtype CR2_JEXTSEL_Field is Interfaces.STM32.UInt4;
   subtype CR2_JEXTEN_Field is Interfaces.STM32.UInt2;
   subtype CR2_JSWSTART_Field is Interfaces.STM32.Bit;
   subtype CR2_RCH_Field is Interfaces.STM32.UInt4;
   subtype CR2_RCONT_Field is Interfaces.STM32.Bit;
   subtype CR2_RSWSTART_Field is Interfaces.STM32.Bit;
   subtype CR2_FAST_Field is Interfaces.STM32.Bit;

   --  control register 2
   type CR2_Register is record
      --  SDADC enable
      ADON           : CR2_ADON_Field := 16#0#;
      --  Number of calibration sequences to be performed (number of valid
      --  configurations)
      CALIBCNT       : CR2_CALIBCNT_Field := 16#0#;
      --  unspecified
      Reserved_3_3   : Interfaces.STM32.Bit := 16#0#;
      --  Start calibration
      STARTCALIB     : CR2_STARTCALIB_Field := 16#0#;
      --  Continuous mode selection for injected conversions
      JCONT          : CR2_JCONT_Field := 16#0#;
      --  Delay start of injected conversions.
      JDS            : CR2_JDS_Field := 16#0#;
      --  unspecified
      Reserved_7_7   : Interfaces.STM32.Bit := 16#0#;
      --  Trigger signal selection for launching injected conversions
      JEXTSEL        : CR2_JEXTSEL_Field := 16#0#;
      --  unspecified
      Reserved_12_12 : Interfaces.STM32.Bit := 16#0#;
      --  Trigger enable and trigger edge selection for injected conversions
      JEXTEN         : CR2_JEXTEN_Field := 16#0#;
      --  Start a conversion of the injected group of channels
      JSWSTART       : CR2_JSWSTART_Field := 16#0#;
      --  Regular channel selection
      RCH            : CR2_RCH_Field := 16#0#;
      --  unspecified
      Reserved_20_21 : Interfaces.STM32.UInt2 := 16#0#;
      --  Continuous mode selection for regular conversions
      RCONT          : CR2_RCONT_Field := 16#0#;
      --  Software start of a conversion on the regular channel
      RSWSTART       : CR2_RSWSTART_Field := 16#0#;
      --  Fast conversion mode selection
      FAST           : CR2_FAST_Field := 16#0#;
      --  unspecified
      Reserved_25_31 : Interfaces.STM32.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CR2_Register use record
      ADON           at 0 range 0 .. 0;
      CALIBCNT       at 0 range 1 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      STARTCALIB     at 0 range 4 .. 4;
      JCONT          at 0 range 5 .. 5;
      JDS            at 0 range 6 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      JEXTSEL        at 0 range 8 .. 11;
      Reserved_12_12 at 0 range 12 .. 12;
      JEXTEN         at 0 range 13 .. 14;
      JSWSTART       at 0 range 15 .. 15;
      RCH            at 0 range 16 .. 19;
      Reserved_20_21 at 0 range 20 .. 21;
      RCONT          at 0 range 22 .. 22;
      RSWSTART       at 0 range 23 .. 23;
      FAST           at 0 range 24 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   subtype ISR_EOCALF_Field is Interfaces.STM32.Bit;
   subtype ISR_JEOCF_Field is Interfaces.STM32.Bit;
   subtype ISR_JOVRF_Field is Interfaces.STM32.Bit;
   subtype ISR_REOCF_Field is Interfaces.STM32.Bit;
   subtype ISR_ROVRF_Field is Interfaces.STM32.Bit;
   subtype ISR_CALIBIP_Field is Interfaces.STM32.Bit;
   subtype ISR_JCIP_Field is Interfaces.STM32.Bit;
   subtype ISR_RCIP_Field is Interfaces.STM32.Bit;
   subtype ISR_STABIP_Field is Interfaces.STM32.Bit;
   subtype ISR_INITRDY_Field is Interfaces.STM32.Bit;

   --  interrupt and status register
   type ISR_Register is record
      --  Read-only. End of calibration flag
      EOCALF         : ISR_EOCALF_Field;
      --  Read-only. End of injected conversion flag
      JEOCF          : ISR_JEOCF_Field;
      --  Read-only. Injected conversion overrun flag
      JOVRF          : ISR_JOVRF_Field;
      --  Read-only. End of regular conversion flag
      REOCF          : ISR_REOCF_Field;
      --  Read-only. Regular conversion overrun flag
      ROVRF          : ISR_ROVRF_Field;
      --  unspecified
      Reserved_5_11  : Interfaces.STM32.UInt7;
      --  Read-only. Calibration in progress status
      CALIBIP        : ISR_CALIBIP_Field;
      --  Read-only. Injected conversion in progress status
      JCIP           : ISR_JCIP_Field;
      --  Read-only. Regular conversion in progress status
      RCIP           : ISR_RCIP_Field;
      --  Read-only. Stabilization in progress status
      STABIP         : ISR_STABIP_Field;
      --  unspecified
      Reserved_16_30 : Interfaces.STM32.UInt15;
      --  Read-only. Initialization mode is ready
      INITRDY        : ISR_INITRDY_Field;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ISR_Register use record
      EOCALF         at 0 range 0 .. 0;
      JEOCF          at 0 range 1 .. 1;
      JOVRF          at 0 range 2 .. 2;
      REOCF          at 0 range 3 .. 3;
      ROVRF          at 0 range 4 .. 4;
      Reserved_5_11  at 0 range 5 .. 11;
      CALIBIP        at 0 range 12 .. 12;
      JCIP           at 0 range 13 .. 13;
      RCIP           at 0 range 14 .. 14;
      STABIP         at 0 range 15 .. 15;
      Reserved_16_30 at 0 range 16 .. 30;
      INITRDY        at 0 range 31 .. 31;
   end record;

   subtype CLRISR_CLREOCALF_Field is Interfaces.STM32.Bit;
   subtype CLRISR_CLRJOVRF_Field is Interfaces.STM32.Bit;
   subtype CLRISR_CLRROVRF_Field is Interfaces.STM32.Bit;

   --  interrupt and status clear register
   type CLRISR_Register is record
      --  Clear the end of calibration flag
      CLREOCALF     : CLRISR_CLREOCALF_Field := 16#0#;
      --  unspecified
      Reserved_1_1  : Interfaces.STM32.Bit := 16#0#;
      --  Clear the injected conversion overrun flag
      CLRJOVRF      : CLRISR_CLRJOVRF_Field := 16#0#;
      --  unspecified
      Reserved_3_3  : Interfaces.STM32.Bit := 16#0#;
      --  Clear the regular conversion overrun flag
      CLRROVRF      : CLRISR_CLRROVRF_Field := 16#0#;
      --  unspecified
      Reserved_5_31 : Interfaces.STM32.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CLRISR_Register use record
      CLREOCALF     at 0 range 0 .. 0;
      Reserved_1_1  at 0 range 1 .. 1;
      CLRJOVRF      at 0 range 2 .. 2;
      Reserved_3_3  at 0 range 3 .. 3;
      CLRROVRF      at 0 range 4 .. 4;
      Reserved_5_31 at 0 range 5 .. 31;
   end record;

   subtype JCHGR_JCHG_Field is Interfaces.STM32.UInt9;

   --  injected channel group selection register
   type JCHGR_Register is record
      --  Injected channel group selection
      JCHG          : JCHGR_JCHG_Field := 16#1#;
      --  unspecified
      Reserved_9_31 : Interfaces.STM32.UInt23 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JCHGR_Register use record
      JCHG          at 0 range 0 .. 8;
      Reserved_9_31 at 0 range 9 .. 31;
   end record;

   subtype CONF0R_OFFSET0_Field is Interfaces.STM32.UInt12;
   subtype CONF0R_GAIN0_Field is Interfaces.STM32.UInt3;
   subtype CONF0R_SE0_Field is Interfaces.STM32.UInt2;
   subtype CONF0R_COMMON0_Field is Interfaces.STM32.UInt2;

   --  configuration 0 register
   type CONF0R_Register is record
      --  Twelve-bit calibration offset for configuration 0
      OFFSET0        : CONF0R_OFFSET0_Field := 16#0#;
      --  unspecified
      Reserved_12_19 : Interfaces.STM32.Byte := 16#0#;
      --  Gain setting for configuration 0
      GAIN0          : CONF0R_GAIN0_Field := 16#0#;
      --  unspecified
      Reserved_23_25 : Interfaces.STM32.UInt3 := 16#0#;
      --  Single-ended mode for configuration 0
      SE0            : CONF0R_SE0_Field := 16#0#;
      --  unspecified
      Reserved_28_29 : Interfaces.STM32.UInt2 := 16#0#;
      --  Common mode for configuration 0
      COMMON0        : CONF0R_COMMON0_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CONF0R_Register use record
      OFFSET0        at 0 range 0 .. 11;
      Reserved_12_19 at 0 range 12 .. 19;
      GAIN0          at 0 range 20 .. 22;
      Reserved_23_25 at 0 range 23 .. 25;
      SE0            at 0 range 26 .. 27;
      Reserved_28_29 at 0 range 28 .. 29;
      COMMON0        at 0 range 30 .. 31;
   end record;

   subtype CONF1R_OFFSET1_Field is Interfaces.STM32.UInt12;
   subtype CONF1R_GAIN1_Field is Interfaces.STM32.UInt3;
   subtype CONF1R_SE1_Field is Interfaces.STM32.UInt2;
   subtype CONF1R_COMMON1_Field is Interfaces.STM32.UInt2;

   --  configuration 1 register
   type CONF1R_Register is record
      --  Twelve-bit calibration offset for configuration 1
      OFFSET1        : CONF1R_OFFSET1_Field := 16#0#;
      --  unspecified
      Reserved_12_19 : Interfaces.STM32.Byte := 16#0#;
      --  Gain setting for configuration 1
      GAIN1          : CONF1R_GAIN1_Field := 16#0#;
      --  unspecified
      Reserved_23_25 : Interfaces.STM32.UInt3 := 16#0#;
      --  Single-ended mode for configuration 1
      SE1            : CONF1R_SE1_Field := 16#0#;
      --  unspecified
      Reserved_28_29 : Interfaces.STM32.UInt2 := 16#0#;
      --  Common mode for configuration 1
      COMMON1        : CONF1R_COMMON1_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CONF1R_Register use record
      OFFSET1        at 0 range 0 .. 11;
      Reserved_12_19 at 0 range 12 .. 19;
      GAIN1          at 0 range 20 .. 22;
      Reserved_23_25 at 0 range 23 .. 25;
      SE1            at 0 range 26 .. 27;
      Reserved_28_29 at 0 range 28 .. 29;
      COMMON1        at 0 range 30 .. 31;
   end record;

   subtype CONF2R_OFFSET2_Field is Interfaces.STM32.UInt12;
   subtype CONF2R_GAIN2_Field is Interfaces.STM32.UInt3;
   subtype CONF2R_SE2_Field is Interfaces.STM32.UInt2;
   subtype CONF2R_COMMON2_Field is Interfaces.STM32.UInt2;

   --  configuration 2 register
   type CONF2R_Register is record
      --  Twelve-bit calibration offset for configuration 2
      OFFSET2        : CONF2R_OFFSET2_Field := 16#0#;
      --  unspecified
      Reserved_12_19 : Interfaces.STM32.Byte := 16#0#;
      --  Gain setting for configuration 2
      GAIN2          : CONF2R_GAIN2_Field := 16#0#;
      --  unspecified
      Reserved_23_25 : Interfaces.STM32.UInt3 := 16#0#;
      --  Single-ended mode for configuration 2
      SE2            : CONF2R_SE2_Field := 16#0#;
      --  unspecified
      Reserved_28_29 : Interfaces.STM32.UInt2 := 16#0#;
      --  Common mode for configuration 2
      COMMON2        : CONF2R_COMMON2_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CONF2R_Register use record
      OFFSET2        at 0 range 0 .. 11;
      Reserved_12_19 at 0 range 12 .. 19;
      GAIN2          at 0 range 20 .. 22;
      Reserved_23_25 at 0 range 23 .. 25;
      SE2            at 0 range 26 .. 27;
      Reserved_28_29 at 0 range 28 .. 29;
      COMMON2        at 0 range 30 .. 31;
   end record;

   subtype CONFCHR1_CONFCH0_Field is Interfaces.STM32.UInt2;
   subtype CONFCHR1_CONFCH1_Field is Interfaces.STM32.UInt2;
   subtype CONFCHR1_CONFCH2_Field is Interfaces.STM32.UInt2;
   subtype CONFCHR1_CONFCH3_Field is Interfaces.STM32.UInt2;
   subtype CONFCHR1_CONFCH4_Field is Interfaces.STM32.UInt2;
   subtype CONFCHR1_CONFCH5_Field is Interfaces.STM32.UInt2;
   subtype CONFCHR1_CONFCH6_Field is Interfaces.STM32.UInt2;
   subtype CONFCHR1_CONFCH7_Field is Interfaces.STM32.UInt2;

   --  channel configuration register 1
   type CONFCHR1_Register is record
      --  CONFCH0
      CONFCH0        : CONFCHR1_CONFCH0_Field := 16#0#;
      --  unspecified
      Reserved_2_3   : Interfaces.STM32.UInt2 := 16#0#;
      --  CONFCH1
      CONFCH1        : CONFCHR1_CONFCH1_Field := 16#0#;
      --  unspecified
      Reserved_6_7   : Interfaces.STM32.UInt2 := 16#0#;
      --  CONFCH2
      CONFCH2        : CONFCHR1_CONFCH2_Field := 16#0#;
      --  unspecified
      Reserved_10_11 : Interfaces.STM32.UInt2 := 16#0#;
      --  CONFCH3
      CONFCH3        : CONFCHR1_CONFCH3_Field := 16#0#;
      --  unspecified
      Reserved_14_15 : Interfaces.STM32.UInt2 := 16#0#;
      --  CONFCH4
      CONFCH4        : CONFCHR1_CONFCH4_Field := 16#0#;
      --  unspecified
      Reserved_18_19 : Interfaces.STM32.UInt2 := 16#0#;
      --  CONFCH5
      CONFCH5        : CONFCHR1_CONFCH5_Field := 16#0#;
      --  unspecified
      Reserved_22_23 : Interfaces.STM32.UInt2 := 16#0#;
      --  CONFCH6
      CONFCH6        : CONFCHR1_CONFCH6_Field := 16#0#;
      --  unspecified
      Reserved_26_27 : Interfaces.STM32.UInt2 := 16#0#;
      --  CONFCH7
      CONFCH7        : CONFCHR1_CONFCH7_Field := 16#0#;
      --  unspecified
      Reserved_30_31 : Interfaces.STM32.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CONFCHR1_Register use record
      CONFCH0        at 0 range 0 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      CONFCH1        at 0 range 4 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      CONFCH2        at 0 range 8 .. 9;
      Reserved_10_11 at 0 range 10 .. 11;
      CONFCH3        at 0 range 12 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
      CONFCH4        at 0 range 16 .. 17;
      Reserved_18_19 at 0 range 18 .. 19;
      CONFCH5        at 0 range 20 .. 21;
      Reserved_22_23 at 0 range 22 .. 23;
      CONFCH6        at 0 range 24 .. 25;
      Reserved_26_27 at 0 range 26 .. 27;
      CONFCH7        at 0 range 28 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   subtype CONFCHR2_CONFCH8_Field is Interfaces.STM32.UInt2;

   --  channel configuration register 2
   type CONFCHR2_Register is record
      --  Channel 8 configuration
      CONFCH8       : CONFCHR2_CONFCH8_Field := 16#0#;
      --  unspecified
      Reserved_2_31 : Interfaces.STM32.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CONFCHR2_Register use record
      CONFCH8       at 0 range 0 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   subtype JDATAR_JDATA_Field is Interfaces.STM32.UInt16;
   subtype JDATAR_JDATACH_Field is Interfaces.STM32.UInt4;

   --  data register for injected group
   type JDATAR_Register is record
      --  Read-only. Injected group conversion data
      JDATA          : JDATAR_JDATA_Field;
      --  unspecified
      Reserved_16_24 : Interfaces.STM32.UInt9;
      --  Read-only. Injected channel most recently converted
      JDATACH        : JDATAR_JDATACH_Field;
      --  unspecified
      Reserved_29_31 : Interfaces.STM32.UInt3;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JDATAR_Register use record
      JDATA          at 0 range 0 .. 15;
      Reserved_16_24 at 0 range 16 .. 24;
      JDATACH        at 0 range 25 .. 28;
      Reserved_29_31 at 0 range 29 .. 31;
   end record;

   subtype RDATAR_RDATA_Field is Interfaces.STM32.UInt16;

   --  data register for the regular channel
   type RDATAR_Register is record
      --  Read-only. Regular channel conversion data
      RDATA          : RDATAR_RDATA_Field;
      --  unspecified
      Reserved_16_31 : Interfaces.STM32.UInt16;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RDATAR_Register use record
      RDATA          at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  JDATA12R_JDATA array element
   subtype JDATA12R_JDATA_Element is Interfaces.STM32.UInt16;

   --  JDATA12R_JDATA array
   type JDATA12R_JDATA_Field_Array is array (1 .. 2)
     of JDATA12R_JDATA_Element
     with Component_Size => 16, Size => 32;

   --  SDADC1 and SDADC2 injected data register
   type JDATA12R_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  JDATA as a value
            Val : Interfaces.STM32.UInt32;
         when True =>
            --  JDATA as an array
            Arr : JDATA12R_JDATA_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JDATA12R_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  RDATA12R_RDATA array element
   subtype RDATA12R_RDATA_Element is Interfaces.STM32.UInt16;

   --  RDATA12R_RDATA array
   type RDATA12R_RDATA_Field_Array is array (1 .. 2)
     of RDATA12R_RDATA_Element
     with Component_Size => 16, Size => 32;

   --  SDADC1 and SDADC2 regular data register
   type RDATA12R_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  RDATA as a value
            Val : Interfaces.STM32.UInt32;
         when True =>
            --  RDATA as an array
            Arr : RDATA12R_RDATA_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RDATA12R_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  JDATA13R_JDATA array element
   subtype JDATA13R_JDATA_Element is Interfaces.STM32.UInt16;

   --  JDATA13R_JDATA array
   type JDATA13R_JDATA_Field_Array is array (1 .. 2)
     of JDATA13R_JDATA_Element
     with Component_Size => 16, Size => 32;

   --  SDADC1 and SDADC3 injected data register
   type JDATA13R_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  JDATA as a value
            Val : Interfaces.STM32.UInt32;
         when True =>
            --  JDATA as an array
            Arr : JDATA13R_JDATA_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JDATA13R_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  RDATA13R_RDATA array element
   subtype RDATA13R_RDATA_Element is Interfaces.STM32.UInt16;

   --  RDATA13R_RDATA array
   type RDATA13R_RDATA_Field_Array is array (1 .. 2)
     of RDATA13R_RDATA_Element
     with Component_Size => 16, Size => 32;

   --  SDADC1 and SDADC3 regular data register
   type RDATA13R_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  RDATA as a value
            Val : Interfaces.STM32.UInt32;
         when True =>
            --  RDATA as an array
            Arr : RDATA13R_RDATA_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RDATA13R_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Sigma-delta analog-to-digital converter
   type SDADC_Peripheral is record
      --  control register 1
      CR1      : aliased CR1_Register;
      --  control register 2
      CR2      : aliased CR2_Register;
      --  interrupt and status register
      ISR      : aliased ISR_Register;
      --  interrupt and status clear register
      CLRISR   : aliased CLRISR_Register;
      --  injected channel group selection register
      JCHGR    : aliased JCHGR_Register;
      --  configuration 0 register
      CONF0R   : aliased CONF0R_Register;
      --  configuration 1 register
      CONF1R   : aliased CONF1R_Register;
      --  configuration 2 register
      CONF2R   : aliased CONF2R_Register;
      --  channel configuration register 1
      CONFCHR1 : aliased CONFCHR1_Register;
      --  channel configuration register 2
      CONFCHR2 : aliased CONFCHR2_Register;
      --  data register for injected group
      JDATAR   : aliased JDATAR_Register;
      --  data register for the regular channel
      RDATAR   : aliased RDATAR_Register;
      --  SDADC1 and SDADC2 injected data register
      JDATA12R : aliased JDATA12R_Register;
      --  SDADC1 and SDADC2 regular data register
      RDATA12R : aliased RDATA12R_Register;
      --  SDADC1 and SDADC3 injected data register
      JDATA13R : aliased JDATA13R_Register;
      --  SDADC1 and SDADC3 regular data register
      RDATA13R : aliased RDATA13R_Register;
   end record
     with Volatile;

   for SDADC_Peripheral use record
      CR1      at 16#0# range 0 .. 31;
      CR2      at 16#4# range 0 .. 31;
      ISR      at 16#8# range 0 .. 31;
      CLRISR   at 16#C# range 0 .. 31;
      JCHGR    at 16#14# range 0 .. 31;
      CONF0R   at 16#20# range 0 .. 31;
      CONF1R   at 16#24# range 0 .. 31;
      CONF2R   at 16#28# range 0 .. 31;
      CONFCHR1 at 16#40# range 0 .. 31;
      CONFCHR2 at 16#44# range 0 .. 31;
      JDATAR   at 16#60# range 0 .. 31;
      RDATAR   at 16#64# range 0 .. 31;
      JDATA12R at 16#70# range 0 .. 31;
      RDATA12R at 16#74# range 0 .. 31;
      JDATA13R at 16#78# range 0 .. 31;
      RDATA13R at 16#7C# range 0 .. 31;
   end record;

   --  Sigma-delta analog-to-digital converter
   SDADC1_Periph : aliased SDADC_Peripheral
     with Import, Address => SDADC1_Base;

   --  Sigma-delta analog-to-digital converter
   SDADC2_Periph : aliased SDADC_Peripheral
     with Import, Address => SDADC2_Base;

   --  Sigma-delta analog-to-digital converter
   SDADC3_Periph : aliased SDADC_Peripheral
     with Import, Address => SDADC3_Base;

end Interfaces.STM32.SDADC;
