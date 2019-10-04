------------------------------------------------------------------------------
-- MCU.GPIO package for STM32F411                                           --
-- john.caffyn@btconnect.com                                                --
------------------------------------------------------------------------------

with System;

package body MCU.GPIO is

   type Base_Addr_Array is array (Port_Name) of System.Address;

   GPIO_Base_Addr : constant Base_Addr_Array :=
      (GPIO_A => System'To_Address (16#4002_0000#),
       GPIO_B => System'To_Address (16#4002_0400#),
       GPIO_C => System'To_Address (16#4002_0800#),
       GPIO_D => System'To_Address (16#4002_0C00#),
       GPIO_E => System'To_Address (16#4002_1000#),
       GPIO_H => System'To_Address (16#4002_1C00#));

   type Mode_Register is array (Pin_Number) of Pin_Mode;
   for Mode_Register'Component_Size use 2;

   type Speed_Register is array (Pin_Number) of Pin_Speed;
   for Speed_Register'Component_Size use 2;

   subtype AF_Reg_Index is Pin_Number range 0 .. 7;
   type Alt_Func_Register is array (AF_Reg_Index) of Alternate_Function;
   for Alt_Func_Register'Component_Size use 4;

   type Output_Type_Register is array (Pin_Number) of Pin_Output_Type;
   for Output_Type_Register'Component_Size use 1;

   type Pull_Up_Down_Register is array (Pin_Number) of Pin_Pullup_Pulldown;
   for Pull_Up_Down_Register'Component_Size use 2;

   type GPIO_Registers is record
      MODER   : Mode_Register;
      OTYPER  : Output_Type_Register;
      PUPDR   : Pull_Up_Down_Register;
      IDR     : Interfaces.Unsigned_32;
      ODR     : Interfaces.Unsigned_32;
      AFRL    : Alt_Func_Register;
      AFRH    : Alt_Func_Register;
      OSPEEDR : Speed_Register;
   end record;

   for GPIO_Registers use record
      MODER   at 16#00# range 0 .. 31;
      OTYPER  at 16#04# range 0 .. 15;
      OSPEEDR at 16#08# range 0 .. 31;
      PUPDR   at 16#0C# range 0 .. 31;
      IDR     at 16#10# range 0 .. 31;
      ODR     at 16#14# range 0 .. 31;
      AFRL    at 16#20# range 0 .. 31;
      AFRH    at 16#24# range 0 .. 31;
   end record;

------------------------------------------------------------------------------
-- Blink_Board_LED                                                          --
------------------------------------------------------------------------------

   procedure Blink_Board_LED is
      Mask    : constant := 2**5;
      Counter : Natural := 0;
      pragma Volatile (Counter);
   begin
      Enable_Clocking (GPIO_A);

      Set_Mode (GPIO_A, 5, Output);

      Write (GPIO_A, Mask, Mask);

      loop
         Counter := Counter + 1;
         exit when Counter > 1_000_000;
      end loop;

      Write (GPIO_A, 0, Mask);

      Counter := 0;
      loop
         Counter := Counter + 1;
         exit when Counter > 1_000_000;
      end loop;
   end Blink_Board_LED;

------------------------------------------------------------------------------
-- Set_Mode                                                                 --
------------------------------------------------------------------------------

   procedure Set_Mode (Port     : Port_Name;
                       Pin      : Pin_Number;
                       Mode     : Pin_Mode;
                       AF_Value : Alternate_Function := 0) is
      GPIO_Regs : GPIO_Registers with Volatile;
      for GPIO_Regs'Address use GPIO_Base_Addr (Port);
      MODER  : Mode_Register;
      AF_Reg : Alt_Func_Register;
   begin
      MODER := GPIO_Regs.MODER;
      MODER (Pin) := Mode;
      GPIO_Regs.MODER := MODER;

      if Pin < 8 then
         AF_Reg := GPIO_Regs.AFRL;
         AF_Reg (Pin) := AF_Value;
         GPIO_Regs.AFRL := AF_Reg;
      else
         AF_Reg := GPIO_Regs.AFRH;
         AF_Reg (Pin - 8) := AF_Value;
         GPIO_Regs.AFRH := AF_Reg;
      end if;
   end Set_Mode;

   procedure Set_GPIO_Pull_Up_Down (Port     : Port_Name;
                                    Pin      : Pin_Number;
                                    PullUpDn : Pin_Pullup_Pulldown) is
      GPIO_Regs : GPIO_Registers with Volatile;
      for GPIO_Regs'Address use GPIO_Base_Addr (Port);
      PUPDR : Pull_Up_Down_Register;
   begin
      PUPDR := GPIO_Regs.PUPDR;
      PUPDR (Pin) := PullUpDn;
      GPIO_Regs.PUPDR := PUPDR;
   end Set_GPIO_Pull_Up_Down;

   procedure Set_GPIO_Output_Type (Port   : Port_Name;
                                   Pin    : Pin_Number;
                                   Output : Pin_Output_Type) is
      GPIO_Regs : GPIO_Registers with Volatile;
      for GPIO_Regs'Address use GPIO_Base_Addr (Port);
      OTYPER : Output_Type_Register;
   begin
      OTYPER := GPIO_Regs.OTYPER;
      OTYPER (Pin) := Output;
      GPIO_Regs.OTYPER := OTYPER;
   end Set_GPIO_Output_Type;

   procedure Set_GPIO_Speed (Port  : Port_Name;
                             Pin   : Pin_Number;
                             Speed : Pin_Speed) is
      GPIO_Regs : GPIO_Registers with Volatile;
      for GPIO_Regs'Address use GPIO_Base_Addr (Port);
      OSPEEDR : Speed_Register;
   begin
      OSPEEDR := GPIO_Regs.OSPEEDR;
      OSPEEDR (Pin) := Speed;
      GPIO_Regs.OSPEEDR := OSPEEDR;
   end Set_GPIO_Speed;

   procedure Write (Port       : Port_Name;
                    Value      : Interfaces.Unsigned_32;
                    OutputMask : Interfaces.Unsigned_32) is
      GPIO_Regs : GPIO_Registers with Volatile;
      for GPIO_Regs'Address use GPIO_Base_Addr (Port);

      use type Interfaces.Unsigned_32;
   begin
      GPIO_Regs.ODR := (GPIO_Regs.ODR and not OutputMask) or Value;
   end Write;

end MCU.GPIO;
