with MCU.GPIO;
with Ada.Real_Time; use Ada.Real_Time;

procedure Program is
   NT : Ada.Real_Time.Time;
begin

   loop
      NT :=  Ada.Real_Time.Clock + Ada.Real_Time.Milliseconds(1000);
      MCU.GPIO.Blink_Board_LED;
      delay until NT;
   end loop;

end Program;
