with Driver;               pragma Unreferenced (Driver);
--  The Driver package contains the task that actually controls the app so
--  although it is not referenced directly in the main procedure, we need it
--  in the closure of the context clauses so that it will be included in the
--  executable.

--  with Last_Chance_Handler;  pragma Unreferenced (Last_Chance_Handler);
--  The "last chance handler" is the user-defined routine that is called when
--  an exception is propagated. We need it in the executable, therefore it
--  must be somewhere in the closure of the context clauses.

with Ada.Real_Time; use Ada.Real_Time;
with Ada.Text_IO;
procedure Blinky is

   Period       : constant Time_Span := Milliseconds (200);  -- arbitrary
   Next_Release : Time               := Clock;

begin
   --  STM32.Board.Initialize_LEDs;
   Ada.Text_IO.Put_Line ("xxxxxxxxx");
   loop
      --  Toggle (All_LEDs);
      Ada.Text_IO.Put_Line ("YYYY");
      Next_Release := Next_Release + Period;
      delay until Next_Release;
   end loop;
end Blinky;
