--
--  Copyright (C) 2019, AdaCore
--

--  This spec has been automatically generated from stm32f303.svd

pragma Ada_2012;
pragma Style_Checks (Off);

with System;

package Interfaces.STM32.USB_FS is
   pragma Preelaborate;
   pragma No_Elaboration_Code_All;

   ---------------
   -- Registers --
   ---------------

   subtype USB_EP0R_EA_Field is Interfaces.STM32.UInt4;
   subtype USB_EP0R_STAT_TX_Field is Interfaces.STM32.UInt2;
   subtype USB_EP0R_DTOG_TX_Field is Interfaces.STM32.Bit;
   subtype USB_EP0R_CTR_TX_Field is Interfaces.STM32.Bit;
   subtype USB_EP0R_EP_KIND_Field is Interfaces.STM32.Bit;
   subtype USB_EP0R_EP_TYPE_Field is Interfaces.STM32.UInt2;
   subtype USB_EP0R_SETUP_Field is Interfaces.STM32.Bit;
   subtype USB_EP0R_STAT_RX_Field is Interfaces.STM32.UInt2;
   subtype USB_EP0R_DTOG_RX_Field is Interfaces.STM32.Bit;
   subtype USB_EP0R_CTR_RX_Field is Interfaces.STM32.Bit;

   --  endpoint 0 register
   type USB_EP0R_Register is record
      --  Endpoint address
      EA             : USB_EP0R_EA_Field := 16#0#;
      --  Status bits, for transmission transfers
      STAT_TX        : USB_EP0R_STAT_TX_Field := 16#0#;
      --  Data Toggle, for transmission transfers
      DTOG_TX        : USB_EP0R_DTOG_TX_Field := 16#0#;
      --  Correct Transfer for transmission
      CTR_TX         : USB_EP0R_CTR_TX_Field := 16#0#;
      --  Endpoint kind
      EP_KIND        : USB_EP0R_EP_KIND_Field := 16#0#;
      --  Endpoint type
      EP_TYPE        : USB_EP0R_EP_TYPE_Field := 16#0#;
      --  Read-only. Setup transaction completed
      SETUP          : USB_EP0R_SETUP_Field := 16#0#;
      --  Status bits, for reception transfers
      STAT_RX        : USB_EP0R_STAT_RX_Field := 16#0#;
      --  Data Toggle, for reception transfers
      DTOG_RX        : USB_EP0R_DTOG_RX_Field := 16#0#;
      --  Correct transfer for reception
      CTR_RX         : USB_EP0R_CTR_RX_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : Interfaces.STM32.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for USB_EP0R_Register use record
      EA             at 0 range 0 .. 3;
      STAT_TX        at 0 range 4 .. 5;
      DTOG_TX        at 0 range 6 .. 6;
      CTR_TX         at 0 range 7 .. 7;
      EP_KIND        at 0 range 8 .. 8;
      EP_TYPE        at 0 range 9 .. 10;
      SETUP          at 0 range 11 .. 11;
      STAT_RX        at 0 range 12 .. 13;
      DTOG_RX        at 0 range 14 .. 14;
      CTR_RX         at 0 range 15 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype USB_EP1R_EA_Field is Interfaces.STM32.UInt4;
   subtype USB_EP1R_STAT_TX_Field is Interfaces.STM32.UInt2;
   subtype USB_EP1R_DTOG_TX_Field is Interfaces.STM32.Bit;
   subtype USB_EP1R_CTR_TX_Field is Interfaces.STM32.Bit;
   subtype USB_EP1R_EP_KIND_Field is Interfaces.STM32.Bit;
   subtype USB_EP1R_EP_TYPE_Field is Interfaces.STM32.UInt2;
   subtype USB_EP1R_SETUP_Field is Interfaces.STM32.Bit;
   subtype USB_EP1R_STAT_RX_Field is Interfaces.STM32.UInt2;
   subtype USB_EP1R_DTOG_RX_Field is Interfaces.STM32.Bit;
   subtype USB_EP1R_CTR_RX_Field is Interfaces.STM32.Bit;

   --  endpoint 1 register
   type USB_EP1R_Register is record
      --  Endpoint address
      EA             : USB_EP1R_EA_Field := 16#0#;
      --  Status bits, for transmission transfers
      STAT_TX        : USB_EP1R_STAT_TX_Field := 16#0#;
      --  Data Toggle, for transmission transfers
      DTOG_TX        : USB_EP1R_DTOG_TX_Field := 16#0#;
      --  Correct Transfer for transmission
      CTR_TX         : USB_EP1R_CTR_TX_Field := 16#0#;
      --  Endpoint kind
      EP_KIND        : USB_EP1R_EP_KIND_Field := 16#0#;
      --  Endpoint type
      EP_TYPE        : USB_EP1R_EP_TYPE_Field := 16#0#;
      --  Read-only. Setup transaction completed
      SETUP          : USB_EP1R_SETUP_Field := 16#0#;
      --  Status bits, for reception transfers
      STAT_RX        : USB_EP1R_STAT_RX_Field := 16#0#;
      --  Data Toggle, for reception transfers
      DTOG_RX        : USB_EP1R_DTOG_RX_Field := 16#0#;
      --  Correct transfer for reception
      CTR_RX         : USB_EP1R_CTR_RX_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : Interfaces.STM32.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for USB_EP1R_Register use record
      EA             at 0 range 0 .. 3;
      STAT_TX        at 0 range 4 .. 5;
      DTOG_TX        at 0 range 6 .. 6;
      CTR_TX         at 0 range 7 .. 7;
      EP_KIND        at 0 range 8 .. 8;
      EP_TYPE        at 0 range 9 .. 10;
      SETUP          at 0 range 11 .. 11;
      STAT_RX        at 0 range 12 .. 13;
      DTOG_RX        at 0 range 14 .. 14;
      CTR_RX         at 0 range 15 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype USB_EP2R_EA_Field is Interfaces.STM32.UInt4;
   subtype USB_EP2R_STAT_TX_Field is Interfaces.STM32.UInt2;
   subtype USB_EP2R_DTOG_TX_Field is Interfaces.STM32.Bit;
   subtype USB_EP2R_CTR_TX_Field is Interfaces.STM32.Bit;
   subtype USB_EP2R_EP_KIND_Field is Interfaces.STM32.Bit;
   subtype USB_EP2R_EP_TYPE_Field is Interfaces.STM32.UInt2;
   subtype USB_EP2R_SETUP_Field is Interfaces.STM32.Bit;
   subtype USB_EP2R_STAT_RX_Field is Interfaces.STM32.UInt2;
   subtype USB_EP2R_DTOG_RX_Field is Interfaces.STM32.Bit;
   subtype USB_EP2R_CTR_RX_Field is Interfaces.STM32.Bit;

   --  endpoint 2 register
   type USB_EP2R_Register is record
      --  Endpoint address
      EA             : USB_EP2R_EA_Field := 16#0#;
      --  Status bits, for transmission transfers
      STAT_TX        : USB_EP2R_STAT_TX_Field := 16#0#;
      --  Data Toggle, for transmission transfers
      DTOG_TX        : USB_EP2R_DTOG_TX_Field := 16#0#;
      --  Correct Transfer for transmission
      CTR_TX         : USB_EP2R_CTR_TX_Field := 16#0#;
      --  Endpoint kind
      EP_KIND        : USB_EP2R_EP_KIND_Field := 16#0#;
      --  Endpoint type
      EP_TYPE        : USB_EP2R_EP_TYPE_Field := 16#0#;
      --  Read-only. Setup transaction completed
      SETUP          : USB_EP2R_SETUP_Field := 16#0#;
      --  Status bits, for reception transfers
      STAT_RX        : USB_EP2R_STAT_RX_Field := 16#0#;
      --  Data Toggle, for reception transfers
      DTOG_RX        : USB_EP2R_DTOG_RX_Field := 16#0#;
      --  Correct transfer for reception
      CTR_RX         : USB_EP2R_CTR_RX_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : Interfaces.STM32.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for USB_EP2R_Register use record
      EA             at 0 range 0 .. 3;
      STAT_TX        at 0 range 4 .. 5;
      DTOG_TX        at 0 range 6 .. 6;
      CTR_TX         at 0 range 7 .. 7;
      EP_KIND        at 0 range 8 .. 8;
      EP_TYPE        at 0 range 9 .. 10;
      SETUP          at 0 range 11 .. 11;
      STAT_RX        at 0 range 12 .. 13;
      DTOG_RX        at 0 range 14 .. 14;
      CTR_RX         at 0 range 15 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype USB_EP3R_EA_Field is Interfaces.STM32.UInt4;
   subtype USB_EP3R_STAT_TX_Field is Interfaces.STM32.UInt2;
   subtype USB_EP3R_DTOG_TX_Field is Interfaces.STM32.Bit;
   subtype USB_EP3R_CTR_TX_Field is Interfaces.STM32.Bit;
   subtype USB_EP3R_EP_KIND_Field is Interfaces.STM32.Bit;
   subtype USB_EP3R_EP_TYPE_Field is Interfaces.STM32.UInt2;
   subtype USB_EP3R_SETUP_Field is Interfaces.STM32.Bit;
   subtype USB_EP3R_STAT_RX_Field is Interfaces.STM32.UInt2;
   subtype USB_EP3R_DTOG_RX_Field is Interfaces.STM32.Bit;
   subtype USB_EP3R_CTR_RX_Field is Interfaces.STM32.Bit;

   --  endpoint 3 register
   type USB_EP3R_Register is record
      --  Endpoint address
      EA             : USB_EP3R_EA_Field := 16#0#;
      --  Status bits, for transmission transfers
      STAT_TX        : USB_EP3R_STAT_TX_Field := 16#0#;
      --  Data Toggle, for transmission transfers
      DTOG_TX        : USB_EP3R_DTOG_TX_Field := 16#0#;
      --  Correct Transfer for transmission
      CTR_TX         : USB_EP3R_CTR_TX_Field := 16#0#;
      --  Endpoint kind
      EP_KIND        : USB_EP3R_EP_KIND_Field := 16#0#;
      --  Endpoint type
      EP_TYPE        : USB_EP3R_EP_TYPE_Field := 16#0#;
      --  Read-only. Setup transaction completed
      SETUP          : USB_EP3R_SETUP_Field := 16#0#;
      --  Status bits, for reception transfers
      STAT_RX        : USB_EP3R_STAT_RX_Field := 16#0#;
      --  Data Toggle, for reception transfers
      DTOG_RX        : USB_EP3R_DTOG_RX_Field := 16#0#;
      --  Correct transfer for reception
      CTR_RX         : USB_EP3R_CTR_RX_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : Interfaces.STM32.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for USB_EP3R_Register use record
      EA             at 0 range 0 .. 3;
      STAT_TX        at 0 range 4 .. 5;
      DTOG_TX        at 0 range 6 .. 6;
      CTR_TX         at 0 range 7 .. 7;
      EP_KIND        at 0 range 8 .. 8;
      EP_TYPE        at 0 range 9 .. 10;
      SETUP          at 0 range 11 .. 11;
      STAT_RX        at 0 range 12 .. 13;
      DTOG_RX        at 0 range 14 .. 14;
      CTR_RX         at 0 range 15 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype USB_EP4R_EA_Field is Interfaces.STM32.UInt4;
   subtype USB_EP4R_STAT_TX_Field is Interfaces.STM32.UInt2;
   subtype USB_EP4R_DTOG_TX_Field is Interfaces.STM32.Bit;
   subtype USB_EP4R_CTR_TX_Field is Interfaces.STM32.Bit;
   subtype USB_EP4R_EP_KIND_Field is Interfaces.STM32.Bit;
   subtype USB_EP4R_EP_TYPE_Field is Interfaces.STM32.UInt2;
   subtype USB_EP4R_SETUP_Field is Interfaces.STM32.Bit;
   subtype USB_EP4R_STAT_RX_Field is Interfaces.STM32.UInt2;
   subtype USB_EP4R_DTOG_RX_Field is Interfaces.STM32.Bit;
   subtype USB_EP4R_CTR_RX_Field is Interfaces.STM32.Bit;

   --  endpoint 4 register
   type USB_EP4R_Register is record
      --  Endpoint address
      EA             : USB_EP4R_EA_Field := 16#0#;
      --  Status bits, for transmission transfers
      STAT_TX        : USB_EP4R_STAT_TX_Field := 16#0#;
      --  Data Toggle, for transmission transfers
      DTOG_TX        : USB_EP4R_DTOG_TX_Field := 16#0#;
      --  Correct Transfer for transmission
      CTR_TX         : USB_EP4R_CTR_TX_Field := 16#0#;
      --  Endpoint kind
      EP_KIND        : USB_EP4R_EP_KIND_Field := 16#0#;
      --  Endpoint type
      EP_TYPE        : USB_EP4R_EP_TYPE_Field := 16#0#;
      --  Read-only. Setup transaction completed
      SETUP          : USB_EP4R_SETUP_Field := 16#0#;
      --  Status bits, for reception transfers
      STAT_RX        : USB_EP4R_STAT_RX_Field := 16#0#;
      --  Data Toggle, for reception transfers
      DTOG_RX        : USB_EP4R_DTOG_RX_Field := 16#0#;
      --  Correct transfer for reception
      CTR_RX         : USB_EP4R_CTR_RX_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : Interfaces.STM32.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for USB_EP4R_Register use record
      EA             at 0 range 0 .. 3;
      STAT_TX        at 0 range 4 .. 5;
      DTOG_TX        at 0 range 6 .. 6;
      CTR_TX         at 0 range 7 .. 7;
      EP_KIND        at 0 range 8 .. 8;
      EP_TYPE        at 0 range 9 .. 10;
      SETUP          at 0 range 11 .. 11;
      STAT_RX        at 0 range 12 .. 13;
      DTOG_RX        at 0 range 14 .. 14;
      CTR_RX         at 0 range 15 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype USB_EP5R_EA_Field is Interfaces.STM32.UInt4;
   subtype USB_EP5R_STAT_TX_Field is Interfaces.STM32.UInt2;
   subtype USB_EP5R_DTOG_TX_Field is Interfaces.STM32.Bit;
   subtype USB_EP5R_CTR_TX_Field is Interfaces.STM32.Bit;
   subtype USB_EP5R_EP_KIND_Field is Interfaces.STM32.Bit;
   subtype USB_EP5R_EP_TYPE_Field is Interfaces.STM32.UInt2;
   subtype USB_EP5R_SETUP_Field is Interfaces.STM32.Bit;
   subtype USB_EP5R_STAT_RX_Field is Interfaces.STM32.UInt2;
   subtype USB_EP5R_DTOG_RX_Field is Interfaces.STM32.Bit;
   subtype USB_EP5R_CTR_RX_Field is Interfaces.STM32.Bit;

   --  endpoint 5 register
   type USB_EP5R_Register is record
      --  Endpoint address
      EA             : USB_EP5R_EA_Field := 16#0#;
      --  Status bits, for transmission transfers
      STAT_TX        : USB_EP5R_STAT_TX_Field := 16#0#;
      --  Data Toggle, for transmission transfers
      DTOG_TX        : USB_EP5R_DTOG_TX_Field := 16#0#;
      --  Correct Transfer for transmission
      CTR_TX         : USB_EP5R_CTR_TX_Field := 16#0#;
      --  Endpoint kind
      EP_KIND        : USB_EP5R_EP_KIND_Field := 16#0#;
      --  Endpoint type
      EP_TYPE        : USB_EP5R_EP_TYPE_Field := 16#0#;
      --  Read-only. Setup transaction completed
      SETUP          : USB_EP5R_SETUP_Field := 16#0#;
      --  Status bits, for reception transfers
      STAT_RX        : USB_EP5R_STAT_RX_Field := 16#0#;
      --  Data Toggle, for reception transfers
      DTOG_RX        : USB_EP5R_DTOG_RX_Field := 16#0#;
      --  Correct transfer for reception
      CTR_RX         : USB_EP5R_CTR_RX_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : Interfaces.STM32.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for USB_EP5R_Register use record
      EA             at 0 range 0 .. 3;
      STAT_TX        at 0 range 4 .. 5;
      DTOG_TX        at 0 range 6 .. 6;
      CTR_TX         at 0 range 7 .. 7;
      EP_KIND        at 0 range 8 .. 8;
      EP_TYPE        at 0 range 9 .. 10;
      SETUP          at 0 range 11 .. 11;
      STAT_RX        at 0 range 12 .. 13;
      DTOG_RX        at 0 range 14 .. 14;
      CTR_RX         at 0 range 15 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype USB_EP6R_EA_Field is Interfaces.STM32.UInt4;
   subtype USB_EP6R_STAT_TX_Field is Interfaces.STM32.UInt2;
   subtype USB_EP6R_DTOG_TX_Field is Interfaces.STM32.Bit;
   subtype USB_EP6R_CTR_TX_Field is Interfaces.STM32.Bit;
   subtype USB_EP6R_EP_KIND_Field is Interfaces.STM32.Bit;
   subtype USB_EP6R_EP_TYPE_Field is Interfaces.STM32.UInt2;
   subtype USB_EP6R_SETUP_Field is Interfaces.STM32.Bit;
   subtype USB_EP6R_STAT_RX_Field is Interfaces.STM32.UInt2;
   subtype USB_EP6R_DTOG_RX_Field is Interfaces.STM32.Bit;
   subtype USB_EP6R_CTR_RX_Field is Interfaces.STM32.Bit;

   --  endpoint 6 register
   type USB_EP6R_Register is record
      --  Endpoint address
      EA             : USB_EP6R_EA_Field := 16#0#;
      --  Status bits, for transmission transfers
      STAT_TX        : USB_EP6R_STAT_TX_Field := 16#0#;
      --  Data Toggle, for transmission transfers
      DTOG_TX        : USB_EP6R_DTOG_TX_Field := 16#0#;
      --  Correct Transfer for transmission
      CTR_TX         : USB_EP6R_CTR_TX_Field := 16#0#;
      --  Endpoint kind
      EP_KIND        : USB_EP6R_EP_KIND_Field := 16#0#;
      --  Endpoint type
      EP_TYPE        : USB_EP6R_EP_TYPE_Field := 16#0#;
      --  Read-only. Setup transaction completed
      SETUP          : USB_EP6R_SETUP_Field := 16#0#;
      --  Status bits, for reception transfers
      STAT_RX        : USB_EP6R_STAT_RX_Field := 16#0#;
      --  Data Toggle, for reception transfers
      DTOG_RX        : USB_EP6R_DTOG_RX_Field := 16#0#;
      --  Correct transfer for reception
      CTR_RX         : USB_EP6R_CTR_RX_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : Interfaces.STM32.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for USB_EP6R_Register use record
      EA             at 0 range 0 .. 3;
      STAT_TX        at 0 range 4 .. 5;
      DTOG_TX        at 0 range 6 .. 6;
      CTR_TX         at 0 range 7 .. 7;
      EP_KIND        at 0 range 8 .. 8;
      EP_TYPE        at 0 range 9 .. 10;
      SETUP          at 0 range 11 .. 11;
      STAT_RX        at 0 range 12 .. 13;
      DTOG_RX        at 0 range 14 .. 14;
      CTR_RX         at 0 range 15 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype USB_EP7R_EA_Field is Interfaces.STM32.UInt4;
   subtype USB_EP7R_STAT_TX_Field is Interfaces.STM32.UInt2;
   subtype USB_EP7R_DTOG_TX_Field is Interfaces.STM32.Bit;
   subtype USB_EP7R_CTR_TX_Field is Interfaces.STM32.Bit;
   subtype USB_EP7R_EP_KIND_Field is Interfaces.STM32.Bit;
   subtype USB_EP7R_EP_TYPE_Field is Interfaces.STM32.UInt2;
   subtype USB_EP7R_SETUP_Field is Interfaces.STM32.Bit;
   subtype USB_EP7R_STAT_RX_Field is Interfaces.STM32.UInt2;
   subtype USB_EP7R_DTOG_RX_Field is Interfaces.STM32.Bit;
   subtype USB_EP7R_CTR_RX_Field is Interfaces.STM32.Bit;

   --  endpoint 7 register
   type USB_EP7R_Register is record
      --  Endpoint address
      EA             : USB_EP7R_EA_Field := 16#0#;
      --  Status bits, for transmission transfers
      STAT_TX        : USB_EP7R_STAT_TX_Field := 16#0#;
      --  Data Toggle, for transmission transfers
      DTOG_TX        : USB_EP7R_DTOG_TX_Field := 16#0#;
      --  Correct Transfer for transmission
      CTR_TX         : USB_EP7R_CTR_TX_Field := 16#0#;
      --  Endpoint kind
      EP_KIND        : USB_EP7R_EP_KIND_Field := 16#0#;
      --  Endpoint type
      EP_TYPE        : USB_EP7R_EP_TYPE_Field := 16#0#;
      --  Read-only. Setup transaction completed
      SETUP          : USB_EP7R_SETUP_Field := 16#0#;
      --  Status bits, for reception transfers
      STAT_RX        : USB_EP7R_STAT_RX_Field := 16#0#;
      --  Data Toggle, for reception transfers
      DTOG_RX        : USB_EP7R_DTOG_RX_Field := 16#0#;
      --  Correct transfer for reception
      CTR_RX         : USB_EP7R_CTR_RX_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : Interfaces.STM32.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for USB_EP7R_Register use record
      EA             at 0 range 0 .. 3;
      STAT_TX        at 0 range 4 .. 5;
      DTOG_TX        at 0 range 6 .. 6;
      CTR_TX         at 0 range 7 .. 7;
      EP_KIND        at 0 range 8 .. 8;
      EP_TYPE        at 0 range 9 .. 10;
      SETUP          at 0 range 11 .. 11;
      STAT_RX        at 0 range 12 .. 13;
      DTOG_RX        at 0 range 14 .. 14;
      CTR_RX         at 0 range 15 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype USB_CNTR_FRES_Field is Interfaces.STM32.Bit;
   subtype USB_CNTR_PDWN_Field is Interfaces.STM32.Bit;
   subtype USB_CNTR_LPMODE_Field is Interfaces.STM32.Bit;
   subtype USB_CNTR_FSUSP_Field is Interfaces.STM32.Bit;
   subtype USB_CNTR_RESUME_Field is Interfaces.STM32.Bit;
   subtype USB_CNTR_ESOFM_Field is Interfaces.STM32.Bit;
   subtype USB_CNTR_SOFM_Field is Interfaces.STM32.Bit;
   subtype USB_CNTR_RESETM_Field is Interfaces.STM32.Bit;
   subtype USB_CNTR_SUSPM_Field is Interfaces.STM32.Bit;
   subtype USB_CNTR_WKUPM_Field is Interfaces.STM32.Bit;
   subtype USB_CNTR_ERRM_Field is Interfaces.STM32.Bit;
   subtype USB_CNTR_PMAOVRM_Field is Interfaces.STM32.Bit;
   subtype USB_CNTR_CTRM_Field is Interfaces.STM32.Bit;

   --  control register
   type USB_CNTR_Register is record
      --  Force USB Reset
      FRES           : USB_CNTR_FRES_Field := 16#1#;
      --  Power down
      PDWN           : USB_CNTR_PDWN_Field := 16#1#;
      --  Low-power mode
      LPMODE         : USB_CNTR_LPMODE_Field := 16#0#;
      --  Force suspend
      FSUSP          : USB_CNTR_FSUSP_Field := 16#0#;
      --  Resume request
      RESUME         : USB_CNTR_RESUME_Field := 16#0#;
      --  unspecified
      Reserved_5_7   : Interfaces.STM32.UInt3 := 16#0#;
      --  Expected start of frame interrupt mask
      ESOFM          : USB_CNTR_ESOFM_Field := 16#0#;
      --  Start of frame interrupt mask
      SOFM           : USB_CNTR_SOFM_Field := 16#0#;
      --  USB reset interrupt mask
      RESETM         : USB_CNTR_RESETM_Field := 16#0#;
      --  Suspend mode interrupt mask
      SUSPM          : USB_CNTR_SUSPM_Field := 16#0#;
      --  Wakeup interrupt mask
      WKUPM          : USB_CNTR_WKUPM_Field := 16#0#;
      --  Error interrupt mask
      ERRM           : USB_CNTR_ERRM_Field := 16#0#;
      --  Packet memory area over / underrun interrupt mask
      PMAOVRM        : USB_CNTR_PMAOVRM_Field := 16#0#;
      --  Correct transfer interrupt mask
      CTRM           : USB_CNTR_CTRM_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : Interfaces.STM32.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for USB_CNTR_Register use record
      FRES           at 0 range 0 .. 0;
      PDWN           at 0 range 1 .. 1;
      LPMODE         at 0 range 2 .. 2;
      FSUSP          at 0 range 3 .. 3;
      RESUME         at 0 range 4 .. 4;
      Reserved_5_7   at 0 range 5 .. 7;
      ESOFM          at 0 range 8 .. 8;
      SOFM           at 0 range 9 .. 9;
      RESETM         at 0 range 10 .. 10;
      SUSPM          at 0 range 11 .. 11;
      WKUPM          at 0 range 12 .. 12;
      ERRM           at 0 range 13 .. 13;
      PMAOVRM        at 0 range 14 .. 14;
      CTRM           at 0 range 15 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype ISTR_EP_ID_Field is Interfaces.STM32.UInt4;
   subtype ISTR_DIR_Field is Interfaces.STM32.Bit;
   subtype ISTR_ESOF_Field is Interfaces.STM32.Bit;
   subtype ISTR_SOF_Field is Interfaces.STM32.Bit;
   subtype ISTR_RESET_Field is Interfaces.STM32.Bit;
   subtype ISTR_SUSP_Field is Interfaces.STM32.Bit;
   subtype ISTR_WKUP_Field is Interfaces.STM32.Bit;
   subtype ISTR_ERR_Field is Interfaces.STM32.Bit;
   subtype ISTR_PMAOVR_Field is Interfaces.STM32.Bit;
   subtype ISTR_CTR_Field is Interfaces.STM32.Bit;

   --  interrupt status register
   type ISTR_Register is record
      --  Read-only. Endpoint Identifier
      EP_ID          : ISTR_EP_ID_Field := 16#0#;
      --  Read-only. Direction of transaction
      DIR            : ISTR_DIR_Field := 16#0#;
      --  unspecified
      Reserved_5_7   : Interfaces.STM32.UInt3 := 16#0#;
      --  Expected start frame
      ESOF           : ISTR_ESOF_Field := 16#0#;
      --  start of frame
      SOF            : ISTR_SOF_Field := 16#0#;
      --  reset request
      RESET          : ISTR_RESET_Field := 16#0#;
      --  Suspend mode request
      SUSP           : ISTR_SUSP_Field := 16#0#;
      --  Wakeup
      WKUP           : ISTR_WKUP_Field := 16#0#;
      --  Error
      ERR            : ISTR_ERR_Field := 16#0#;
      --  Packet memory area over / underrun
      PMAOVR         : ISTR_PMAOVR_Field := 16#0#;
      --  Read-only. Correct transfer
      CTR            : ISTR_CTR_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : Interfaces.STM32.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ISTR_Register use record
      EP_ID          at 0 range 0 .. 3;
      DIR            at 0 range 4 .. 4;
      Reserved_5_7   at 0 range 5 .. 7;
      ESOF           at 0 range 8 .. 8;
      SOF            at 0 range 9 .. 9;
      RESET          at 0 range 10 .. 10;
      SUSP           at 0 range 11 .. 11;
      WKUP           at 0 range 12 .. 12;
      ERR            at 0 range 13 .. 13;
      PMAOVR         at 0 range 14 .. 14;
      CTR            at 0 range 15 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype FNR_FN_Field is Interfaces.STM32.UInt11;
   subtype FNR_LSOF_Field is Interfaces.STM32.UInt2;
   subtype FNR_LCK_Field is Interfaces.STM32.Bit;
   subtype FNR_RXDM_Field is Interfaces.STM32.Bit;
   subtype FNR_RXDP_Field is Interfaces.STM32.Bit;

   --  frame number register
   type FNR_Register is record
      --  Read-only. Frame number
      FN             : FNR_FN_Field;
      --  Read-only. Lost SOF
      LSOF           : FNR_LSOF_Field;
      --  Read-only. Locked
      LCK            : FNR_LCK_Field;
      --  Read-only. Receive data - line status
      RXDM           : FNR_RXDM_Field;
      --  Read-only. Receive data + line status
      RXDP           : FNR_RXDP_Field;
      --  unspecified
      Reserved_16_31 : Interfaces.STM32.UInt16;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FNR_Register use record
      FN             at 0 range 0 .. 10;
      LSOF           at 0 range 11 .. 12;
      LCK            at 0 range 13 .. 13;
      RXDM           at 0 range 14 .. 14;
      RXDP           at 0 range 15 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  DADDR_ADD array element
   subtype DADDR_ADD_Element is Interfaces.STM32.Bit;

   --  DADDR_ADD array
   type DADDR_ADD_Field_Array is array (1 .. 7) of DADDR_ADD_Element
     with Component_Size => 1, Size => 7;

   --  Type definition for DADDR_ADD
   type DADDR_ADD_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  ADD as a value
            Val : Interfaces.STM32.UInt7;
         when True =>
            --  ADD as an array
            Arr : DADDR_ADD_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 7;

   for DADDR_ADD_Field use record
      Val at 0 range 0 .. 6;
      Arr at 0 range 0 .. 6;
   end record;

   subtype DADDR_EF_Field is Interfaces.STM32.Bit;

   --  device address
   type DADDR_Register is record
      --  Device address
      ADD           : DADDR_ADD_Field := (As_Array => False, Val => 16#0#);
      --  Enable function
      EF            : DADDR_EF_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : Interfaces.STM32.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DADDR_Register use record
      ADD           at 0 range 0 .. 6;
      EF            at 0 range 7 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype BTABLE_BTABLE_Field is Interfaces.STM32.UInt13;

   --  Buffer table address
   type BTABLE_Register is record
      --  unspecified
      Reserved_0_2   : Interfaces.STM32.UInt3 := 16#0#;
      --  Buffer table
      BTABLE         : BTABLE_BTABLE_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : Interfaces.STM32.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for BTABLE_Register use record
      Reserved_0_2   at 0 range 0 .. 2;
      BTABLE         at 0 range 3 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Universal serial bus full-speed device interface
   type USB_FS_Peripheral is record
      --  endpoint 0 register
      USB_EP0R : aliased USB_EP0R_Register;
      --  endpoint 1 register
      USB_EP1R : aliased USB_EP1R_Register;
      --  endpoint 2 register
      USB_EP2R : aliased USB_EP2R_Register;
      --  endpoint 3 register
      USB_EP3R : aliased USB_EP3R_Register;
      --  endpoint 4 register
      USB_EP4R : aliased USB_EP4R_Register;
      --  endpoint 5 register
      USB_EP5R : aliased USB_EP5R_Register;
      --  endpoint 6 register
      USB_EP6R : aliased USB_EP6R_Register;
      --  endpoint 7 register
      USB_EP7R : aliased USB_EP7R_Register;
      --  control register
      USB_CNTR : aliased USB_CNTR_Register;
      --  interrupt status register
      ISTR     : aliased ISTR_Register;
      --  frame number register
      FNR      : aliased FNR_Register;
      --  device address
      DADDR    : aliased DADDR_Register;
      --  Buffer table address
      BTABLE   : aliased BTABLE_Register;
   end record
     with Volatile;

   for USB_FS_Peripheral use record
      USB_EP0R at 16#0# range 0 .. 31;
      USB_EP1R at 16#4# range 0 .. 31;
      USB_EP2R at 16#8# range 0 .. 31;
      USB_EP3R at 16#C# range 0 .. 31;
      USB_EP4R at 16#10# range 0 .. 31;
      USB_EP5R at 16#14# range 0 .. 31;
      USB_EP6R at 16#18# range 0 .. 31;
      USB_EP7R at 16#1C# range 0 .. 31;
      USB_CNTR at 16#40# range 0 .. 31;
      ISTR     at 16#44# range 0 .. 31;
      FNR      at 16#48# range 0 .. 31;
      DADDR    at 16#4C# range 0 .. 31;
      BTABLE   at 16#50# range 0 .. 31;
   end record;

   --  Universal serial bus full-speed device interface
   USB_FS_Periph : aliased USB_FS_Peripheral
     with Import, Address => USB_FS_Base;

end Interfaces.STM32.USB_FS;
