------------------------------------------------------------------------------
-- MCU.GPIO package for STM32F411                                           --
-- john.caffyn@btconnect.com                                                --
------------------------------------------------------------------------------

with Interfaces;

package MCU.GPIO is

   pragma Preelaborate;

   subtype Port_Name is MCU_Peripheral range GPIO_A .. GPIO_H;

   type Pin_Number is range 0 .. 15;

   type Alternate_Function is range 0 .. 15;

   type Pin_Mode is (Input, Output, Alt_Function, Analog);

   type Pin_Speed is (Low, Medium, Fast, High);

   type Pin_Output_Type is (push_pull, open_drain);

   type Pin_Pullup_Pulldown is (None, Pull_Up, Pull_Down, Reserved);

   procedure Set_Mode (Port     : Port_Name;
                       Pin      : Pin_Number;
                       Mode     : Pin_Mode;
                       AF_Value : Alternate_Function := 0);

   procedure Set_GPIO_Pull_Up_Down (Port     : Port_Name;
                                    Pin      : Pin_Number;
                                    PullUpDn : Pin_Pullup_Pulldown);

   procedure Set_GPIO_Output_Type (Port   : Port_Name;
                                   Pin    : Pin_Number;
                                   Output : Pin_Output_Type);

   procedure Set_GPIO_Speed (Port : Port_Name;
                             Pin  : Pin_Number;
                             Speed : Pin_Speed);

   procedure Write (Port       : Port_Name;
                    Value      : Interfaces.Unsigned_32;
                    OutputMask : Interfaces.Unsigned_32);

   procedure Blink_Board_LED;

end MCU.GPIO;
