--  with STM32.Board;   use STM32.Board;

--  with STM32.GPIO;    use STM32.GPIO;
--  with Ada.Real_Time; use Ada.Real_Time;
with Ada.Text_IO;
procedure Blinky is

--     Period : constant Time_Span := Milliseconds (200);  -- arbitrary
--
--     Next_Release : Time := Clock;

begin
--   STM32.Board.Initialize_LEDs;
   Ada.Text_IO.Put_Line ("xxxxxxxxx");
   loop
      --  Toggle (All_LEDs);
      Ada.Text_IO.Put_Line ("YYYYYYYYYYYYYYYYYYYYYYYYYYY");
      --  Next_Release := Next_Release + Period;
      --  delay until Next_Release;
   end loop;
end Blinky;
