--  with System; use System;

with STM32_SVD.RCC; use STM32_SVD.RCC;

package body STM32.Device is


   ------------------
   -- Enable_Clock --
   ------------------

   procedure Enable_Clock (This : aliased in out GPIO_Port) is
   begin
      if This'Address = GPIOA_Base then
         RCC_Periph.AHB1ENR.GPIOAEN := True;
      elsif This'Address = GPIOB_Base then
         RCC_Periph.AHB1ENR.GPIOBEN := True;
      elsif This'Address = GPIOC_Base then
         RCC_Periph.AHB1ENR.GPIOCEN := True;
      elsif This'Address = GPIOD_Base then
         RCC_Periph.AHB1ENR.GPIODEN := True;
      elsif This'Address = GPIOE_Base then
         RCC_Periph.AHB1ENR.GPIOEEN := True;
      elsif This'Address = GPIOF_Base then
         RCC_Periph.AHB1ENR.GPIOFEN := True;
      elsif This'Address = GPIOG_Base then
         RCC_Periph.AHB1ENR.GPIOGEN := True;
      elsif This'Address = GPIOH_Base then
         RCC_Periph.AHB1ENR.GPIOHEN := True;
      elsif This'Address = GPIOI_Base then
         RCC_Periph.AHB1ENR.GPIOIEN := True;
      elsif This'Address = GPIOJ_Base then
         RCC_Periph.AHB1ENR.GPIOJEN := True;
      elsif This'Address = GPIOK_Base then
         RCC_Periph.AHB1ENR.GPIOKEN := True;
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
