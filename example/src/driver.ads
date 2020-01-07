--  This file provides the declaration for the task controlling
package Driver is

   task Controller with
     Storage_Size => (1 * 128);

   task Worker with
     Storage_Size => (1 * 128);


end Driver;
