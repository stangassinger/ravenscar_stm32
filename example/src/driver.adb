with Ada.Real_Time;     use Ada.Real_Time;
with Ada.Text_IO; use Ada.Text_IO;

package body Driver is



   task body Controller is
      Period       : constant Time_Span := Milliseconds (75);  -- arbitrary
      Next_Release : Time := Clock;

   begin


      loop
         Put_Line ("using controller ...");
         Next_Release := Next_Release + Period;
         delay until Next_Release;
      end loop;
   end Controller;


   task body Worker is
      Period       : constant Time_Span := Milliseconds (375);  -- arbitrary
      Next_Release : Time := Clock;

   begin


      loop
         Put_Line ("using worker ...");
         Next_Release := Next_Release + Period;
         delay until Next_Release;
      end loop;
   end Worker;

end Driver;
