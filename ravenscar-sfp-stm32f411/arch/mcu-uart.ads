------------------------------------------------------------------------------
-- MCU.UART package for STM32F411                                           --
-- john.caffyn@btconnect.com                                                --
------------------------------------------------------------------------------

with System.Storage_Elements;
with System.Address_To_Access_Conversions;
with Interfaces;

package MCU.UART is

   pragma Preelaborate;

   package SSE renames System.Storage_Elements;

   type UART_IO (Base_Addr : SSE.Integer_Address) is private;

   type USART_Over_Sampling is (Over_Sample_8, Over_Sample_16);

   type USART_Parity is (Odd, Even);

   type USART_Stop_Bits is (One, Half, Two);

   subtype USART_Data_Bits is Positive range 8 .. 9;

   procedure Put (U : in out UART_IO; C : Character);

   function Get (U : UART_IO) return Character;

   function Tx_Ready (U : UART_IO) return Boolean;

   function Rx_Ready (U : UART_IO) return Boolean;

   procedure Put_Line (U : in out UART_IO; S : String);

   procedure Enable (U : in out UART_IO);

   procedure Configure (U        : in out UART_IO;
                        DataBits :        USART_Data_Bits;
                        StopBits :        USART_Stop_Bits;
                        ParityOn :        Boolean := False;
                        Parity   :        USART_Parity := Odd);

   procedure Set_Baud_Rate (U     : in out UART_IO;
                            Baud  :        Positive;
                            Clock :        Positive);

private

   type USART_Registers is record
      SR   : Interfaces.Unsigned_32;
      DR   : Interfaces.Unsigned_32;
      BRR  : Interfaces.Unsigned_32;
      CR1  : Interfaces.Unsigned_32;
      CR2  : Interfaces.Unsigned_32;
      CR3  : Interfaces.Unsigned_32;
      GTPR : Interfaces.Unsigned_32;
   end record;

   for USART_Registers use record
      SR   at 16#00# range 0 .. 31;
      DR   at 16#04# range 0 .. 31;
      BRR  at 16#08# range 0 .. 31;
      CR1  at 16#0C# range 0 .. 31;
      CR2  at 16#10# range 0 .. 31;
      CR3  at 16#14# range 0 .. 31;
      GTPR at 16#18# range 0 .. 31;
   end record;

   pragma Volatile (USART_Registers);

   package RegPtr is new
      System.Address_To_Access_Conversions (USART_Registers);

   type UART_IO (Base_Addr : SSE.Integer_Address) is record
      Regs : RegPtr.Object_Pointer :=
                RegPtr.To_Pointer (SSE.To_Address (Base_Addr));
   end record;

end MCU.UART;
