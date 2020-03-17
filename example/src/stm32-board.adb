------------------------------------------------------------------------------
--                                                                          --
--  This file is based on:                                                  --
--                                                                          --
--   @file    stm32f429i_discovery.c                                        --
--   @author  MCD Application Team                                          --
--   @version V1.1.0                                                        --
--   @date    19-June-2019                                                  --
--   @brief  This file provides set of firmware functions to manage Leds    --
--           and push-button available on STM32F429I-Discovery Kit from     --
--           STMicroelectronics.                                            --
--                                                                          --
--   COPYRIGHT(c) 2014 STMicroelectronics                                   --
------------------------------------------------------------------------------

with  STM32.Device;

package body STM32.Board is

   ------------------
   -- All_LEDs_Off --
   ------------------

--     procedure All_LEDs_Off is
--     begin
--        Clear (All_LEDs);
--     end All_LEDs_Off;
--
--     -----------------
--     -- All_LEDs_On --
--     -----------------
--
--     procedure All_LEDs_On is
--     begin
--        Set (All_LEDs);
--     end All_LEDs_On;

   ---------------------
   -- Initialize_LEDs --
   ---------------------

   procedure Initialize_LEDs is
   begin
         STM32.Device.Enable_Clock (All_LEDs);

--        Configure_IO
--          (All_LEDs,
--           (Mode        => Mode_Out,
--            Output_Type => Push_Pull,
--            Speed       => Speed_100MHz,
--            Resistors   => Floating));
   end Initialize_LEDs;

   ------------------------
   -- Initialize_Gyro_IO --
   ------------------------

--     procedure Initialize_Gyro_IO is
--        --  See the STM32F429 Discovery kit User Manual (UM1670) pages 21 and 23.
--     begin
--        Enable_Clock (Gyro_SPI);
--        Enable_Clock (NCS_MEMS_SPI & SPI5_SCK & SPI5_MISO & SPI5_MOSI);
--
--        Init_Chip_Select : declare
--           Config : GPIO_Port_Configuration;
--        begin
--           Config := (Mode        => Mode_Out,
--                      Speed       => Speed_25MHz,
--                      Output_Type => Push_Pull,
--                      Resistors   => Pull_Up);
--
--           Configure_IO (NCS_MEMS_SPI, Config);
--        end Init_Chip_Select;
--
--        Init_SPI_IO_Pins : declare
--           Config : GPIO_Port_Configuration;
--        begin
--           Config := (Mode           => Mode_AF,
--                      AF             => GPIO_AF_SPI5_5,
--                      AF_Speed       => Speed_100MHz,
--                      AF_Output_Type => Push_Pull,
--                      Resistors      => Floating);
--
--           Configure_IO (SPI5_SCK & SPI5_MISO & SPI5_MOSI, Config);
--        end Init_SPI_IO_Pins;
--
--        Init_SPI_Port : declare
--           Config : SPI_Configuration;
--        begin
--           Config :=
--             (Direction           => D2Lines_FullDuplex,
--              Mode                => Master,
--              Data_Size           => HAL.SPI.Data_Size_8b,
--              Clock_Polarity      => Low,
--              Clock_Phase         => P1Edge,
--              Slave_Management    => Software_Managed,
--              Baud_Rate_Prescaler => BRP_32,
--              First_Bit           => MSB,
--              CRC_Poly            => 7);
--
--           Configure (Gyro_SPI, Config);
--
--           STM32.SPI.Enable (Gyro_SPI);
--        end Init_SPI_Port;
--
--        Gyro.Initialize
--          (Port        => Gyro_SPI'Access,
--           Chip_Select => NCS_MEMS_SPI'Access);
--
--        if Gyro.Device_Id /= L3GD20.I_Am_L3GD20 then
--           raise Program_Error with "No L3GD20 found";
--        end if;
--     end Initialize_Gyro_IO;
--
--     --------------------------------
--     -- Configure_User_Button_GPIO --
--     --------------------------------
--
--     procedure Configure_User_Button_GPIO is
--     begin
--        Enable_Clock (User_Button_Point);
--        User_Button_Point.Configure_IO ((Mode_In, Resistors => Floating));
--     end Configure_User_Button_GPIO;

end STM32.Board;
