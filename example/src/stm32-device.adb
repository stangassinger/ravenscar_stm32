with System; use System;


with Interfaces.STM32.RCC; use Interfaces.STM32.RCC;

package body STM32.Device is


   ------------------
   -- Enable_Clock --
   ------------------

   procedure Enable_Clock (This : aliased in out GPIO_Port) is
   begin
      if This'Address = GPIOA_Base then
         RCC_Periph.AHBENR.IOPAEN := 16#1#;
      elsif This'Address = GPIOB_Base then
         RCC_Periph.AHBENR.IOPBEN := 16#1#;
      elsif This'Address = GPIOC_Base then
         RCC_Periph.AHBENR.IOPCEN := 16#1#;
      elsif This'Address = GPIOD_Base then
         RCC_Periph.AHBENR.IOPDEN := 16#1#;
      elsif This'Address = GPIOE_Base then
         RCC_Periph.AHBENR.IOPEEN := 16#1#;
      elsif This'Address = GPIOF_Base then
         RCC_Periph.AHBENR.IOPFEN := 16#1#;
      else
         raise Unknown_Device;
      end if;
   end Enable_Clock;

   ------------------
   -- Enable_Clock --
   ------------------

   procedure Enable_Clock (Point : GPIO_Point)
   is
   begin
      Enable_Clock (Point.Periph.all);
   end Enable_Clock;

   ------------------
   -- Enable_Clock --
   ------------------

   procedure Enable_Clock (Points : GPIO_Points)
   is
   begin
      for Point of Points loop
         Enable_Clock (Point.Periph.all);
      end loop;
   end Enable_Clock;
end STM32.Device;
