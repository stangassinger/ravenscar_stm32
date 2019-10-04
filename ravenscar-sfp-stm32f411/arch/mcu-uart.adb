------------------------------------------------------------------------------
-- MCU.UART package for STM32F411                                           --
-- john.caffyn@btconnect.com                                                --
------------------------------------------------------------------------------

package body MCU.UART is

   CR1_OVER8  : constant := BIT15;
   CR1_UE     : constant := BIT13;
   CR1_M      : constant := BIT12;
   CR1_WAKE   : constant := BIT11;
   CR1_PCE    : constant := BIT10;
   CR1_PS     : constant := BIT9;
   CR1_PEIE   : constant := BIT8;
   CR1_TXEIE  : constant := BIT7;
   CR1_TCIE   : constant := BIT6;
   CR1_RXNEIE : constant := BIT5;
   CR1_IDLEIE : constant := BIT4;
   CR1_TE     : constant := BIT3;
   CR1_RE     : constant := BIT2;
   CR1_RWU    : constant := BIT1;
   CR1_SBK    : constant := BIT0;
   pragma Unreferenced (CR1_SBK, CR1_RWU, CR1_IDLEIE, CR1_RXNEIE);
   pragma Unreferenced (CR1_PS, CR1_PCE, CR1_OVER8, CR1_M, CR1_WAKE);
   pragma Unreferenced (CR1_PEIE, CR1_TXEIE, CR1_TCIE);

   SR_CTS     : constant := BIT9;
   SR_LBD     : constant := BIT8;
   SR_TXE     : constant := BIT7;
   SR_TC      : constant := BIT6;
   SR_RXNE    : constant := BIT5;
   SR_IDLE    : constant := BIT4;
   SR_ORE     : constant := BIT3;
   SR_NF      : constant := BIT2;
   SR_FE      : constant := BIT1;
   SR_PE      : constant := BIT0;
   pragma Unreferenced (SR_PE, SR_FE, SR_NF, SR_ORE, SR_IDLE);
   pragma Unreferenced (SR_LBD, SR_CTS, SR_TC);

   use type Interfaces.Unsigned_32;

   procedure Put (U : in out UART_IO; C : Character) is
   begin

      loop -- Wait for TX buffer to be empty ...
         exit when Tx_Ready (U);
      end loop;

      U.Regs.DR := Interfaces.Unsigned_32 (Character'Pos (C));

   end Put;

   function Get (U : UART_IO) return Character is
   begin
      return Character'Val (U.Regs.DR);
   end Get;

   function Tx_Ready (U : UART_IO) return Boolean is
   begin
      return (U.Regs.SR and SR_TXE) /= 0;
   end Tx_Ready;

   function Rx_Ready (U : UART_IO) return Boolean is
   begin
      return (U.Regs.SR and SR_RXNE) /= 0;
   end Rx_Ready;

   procedure Put_Line (U : in out UART_IO; S : String) is
   begin
      for i in S'Range loop
         Put (U, S (i));
      end loop;

      Put (U, ASCII.CR);
      Put (U, ASCII.LF);
   end Put_Line;

   procedure Configure (U        : in out UART_IO;
                        DataBits :        USART_Data_Bits;
                        StopBits :        USART_Stop_Bits;
                        ParityOn :        Boolean := False;
                        Parity   :        USART_Parity := Odd) is
   begin
      null;
   end Configure;

   procedure Enable (U : in out UART_IO) is
   begin
      U.Regs.CR1 := CR1_UE or CR1_TE or CR1_RE;
   end Enable;

   procedure Set_Baud_Rate (U     : in out UART_IO;
                            Baud  :        Positive;
                            Clock :        Positive) is

      Int_Div  : Positive := (25 * Clock) / (4 * Baud);
      Frac_Div : constant Natural := Int_Div rem 100;
      DIV_Frac : Interfaces.Unsigned_32;

   begin

      Int_Div := Int_Div / 100; -- Remove 2 decimal places
      DIV_Frac := Interfaces.Unsigned_32 (((Frac_Div * 16) + 50) / 100 mod 16);

      U.Regs.BRR := (Interfaces.Unsigned_32 (Int_Div) * 2**4) or DIV_Frac;

   end Set_Baud_Rate;

end MCU.UART;
