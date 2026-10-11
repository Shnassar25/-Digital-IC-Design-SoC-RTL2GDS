module SYS_TOP (
	REF_CLK, 
	UART_CLK, 
	RST, 
	RX_IN, 
	SCAN_CLK, 
	SCAN_RST, 
	TEST_MODE, 
	SE, 
	SI, 
	SO, 
	TX_OUT, 
	PAR_ERR, 
	STOP_ERR, 
	test_si6);
   input REF_CLK;
   input UART_CLK;
   input RST;
   input RX_IN;
   input SCAN_CLK;
   input SCAN_RST;
   input TEST_MODE;
   input SE;
   input [4:0] SI;
   output [4:0] SO;
   output TX_OUT;
   output PAR_ERR;
   output STOP_ERR;
   input test_si6;

   // Internal wires
   wire REF_CLK__L2_N0;
   wire REF_CLK__L1_N0;
   wire UART_CLK__L2_N0;
   wire UART_CLK__L1_N0;
   wire SCAN_CLK__L19_N0;
   wire SCAN_CLK__L18_N0;
   wire SCAN_CLK__L17_N0;
   wire SCAN_CLK__L16_N0;
   wire SCAN_CLK__L15_N1;
   wire SCAN_CLK__L15_N0;
   wire SCAN_CLK__L14_N0;
   wire SCAN_CLK__L13_N0;
   wire SCAN_CLK__L12_N0;
   wire SCAN_CLK__L11_N0;
   wire SCAN_CLK__L10_N0;
   wire SCAN_CLK__L9_N0;
   wire SCAN_CLK__L8_N0;
   wire SCAN_CLK__L7_N0;
   wire SCAN_CLK__L6_N0;
   wire SCAN_CLK__L5_N0;
   wire SCAN_CLK__L4_N0;
   wire SCAN_CLK__L3_N0;
   wire SCAN_CLK__L2_N0;
   wire SCAN_CLK__L1_N0;
   wire CLK_SCAN_REF__L5_N15;
   wire CLK_SCAN_REF__L5_N14;
   wire CLK_SCAN_REF__L5_N13;
   wire CLK_SCAN_REF__L5_N12;
   wire CLK_SCAN_REF__L5_N11;
   wire CLK_SCAN_REF__L5_N10;
   wire CLK_SCAN_REF__L5_N9;
   wire CLK_SCAN_REF__L5_N8;
   wire CLK_SCAN_REF__L5_N7;
   wire CLK_SCAN_REF__L5_N6;
   wire CLK_SCAN_REF__L5_N5;
   wire CLK_SCAN_REF__L5_N4;
   wire CLK_SCAN_REF__L5_N3;
   wire CLK_SCAN_REF__L5_N2;
   wire CLK_SCAN_REF__L5_N1;
   wire CLK_SCAN_REF__L5_N0;
   wire CLK_SCAN_REF__L4_N7;
   wire CLK_SCAN_REF__L4_N6;
   wire CLK_SCAN_REF__L4_N5;
   wire CLK_SCAN_REF__L4_N4;
   wire CLK_SCAN_REF__L4_N3;
   wire CLK_SCAN_REF__L4_N2;
   wire CLK_SCAN_REF__L4_N1;
   wire CLK_SCAN_REF__L4_N0;
   wire CLK_SCAN_REF__L3_N1;
   wire CLK_SCAN_REF__L3_N0;
   wire CLK_SCAN_REF__L2_N0;
   wire CLK_SCAN_REF__L1_N1;
   wire CLK_SCAN_REF__L1_N0;
   wire ALU_CLK__L3_N0;
   wire ALU_CLK__L2_N0;
   wire ALU_CLK__L1_N0;
   wire CLK_SCAN_UART__L18_N1;
   wire CLK_SCAN_UART__L18_N0;
   wire CLK_SCAN_UART__L17_N0;
   wire CLK_SCAN_UART__L16_N0;
   wire CLK_SCAN_UART__L15_N0;
   wire CLK_SCAN_UART__L14_N0;
   wire CLK_SCAN_UART__L13_N0;
   wire CLK_SCAN_UART__L12_N0;
   wire CLK_SCAN_UART__L11_N1;
   wire CLK_SCAN_UART__L11_N0;
   wire CLK_SCAN_UART__L10_N1;
   wire CLK_SCAN_UART__L10_N0;
   wire CLK_SCAN_UART__L9_N1;
   wire CLK_SCAN_UART__L9_N0;
   wire CLK_SCAN_UART__L8_N1;
   wire CLK_SCAN_UART__L8_N0;
   wire CLK_SCAN_UART__L7_N1;
   wire CLK_SCAN_UART__L7_N0;
   wire CLK_SCAN_UART__L6_N1;
   wire CLK_SCAN_UART__L6_N0;
   wire CLK_SCAN_UART__L5_N1;
   wire CLK_SCAN_UART__L5_N0;
   wire CLK_SCAN_UART__L4_N0;
   wire CLK_SCAN_UART__L3_N0;
   wire CLK_SCAN_UART__L2_N0;
   wire CLK_SCAN_UART__L1_N0;
   wire SO_3____SRC;
   wire n24__Exclude_0_NET;
   wire TX_CLK__L1_N0;
   wire n25__Exclude_0_NET;
   wire CLK_SCAN_UART_RX__L3_N1;
   wire CLK_SCAN_UART_RX__L3_N0;
   wire CLK_SCAN_UART_RX__L2_N0;
   wire CLK_SCAN_UART_RX__L1_N0;
   wire CLK_SCAN_UART_TX__L3_N3;
   wire CLK_SCAN_UART_TX__L3_N2;
   wire CLK_SCAN_UART_TX__L3_N1;
   wire CLK_SCAN_UART_TX__L3_N0;
   wire CLK_SCAN_UART_TX__L2_N0;
   wire CLK_SCAN_UART_TX__L1_N0;
   wire FE_OFN21_SE;
   wire FE_OFN20_SE;
   wire FE_OFN19_SE;
   wire FE_OFN18_SE;
   wire FE_OFN17_SE;
   wire FE_OFN16_SE;
   wire FE_OFN15_SE;
   wire FE_OFN14_SE;
   wire FE_OFN5_RST_SCAN_UART;
   wire FE_OFN4_RST_SCAN_REF;
   wire FE_OFN3_RST_SCAN_REF;
   wire FE_OFN2_RST_SCAN_REF;
   wire FE_OFN1_RST_SCAN_REF;
   wire FE_OFN0_RST_SCAN_REF;
   wire CLK_SCAN_REF;
   wire CLK_SCAN_UART;
   wire RX_CLK;
   wire CLK_SCAN_UART_RX;
   wire TX_CLK;
   wire CLK_SCAN_UART_TX;
   wire RST_SCAN;
   wire SYNC_REF_RST;
   wire RST_SCAN_REF;
   wire SYNC_UART_RST;
   wire RST_SCAN_UART;
   wire UART_TX_BUSY;
   wire UART_TX_BUSY_PULSE;
   wire _0_net_;
   wire ALU_CLK;
   wire CLK_GATE_EN;
   wire UART_RX_VALID;
   wire UART_RX_VALID_SYNC;
   wire WR_EN;
   wire RD_EN;
   wire RD_DATA_VALID;
   wire ALU_EN;
   wire ALU_OUT_VALID;
   wire UART_TX_VALID;
   wire FIFO_FULL;
   wire UART_TX_VALID_SYNC;
   wire n1;
   wire n2;
   wire n9;
   wire n13;
   wire n14;
   wire n19;
   wire n22;
   wire n23;
   wire n24;
   wire n25;
   wire [7:0] REG3_DIV_RATIO;
   wire [7:0] PRESCALE_RX;
   wire [7:0] REG2_UART_CONFIG;
   wire [7:0] UART_RX_OUT;
   wire [7:0] UART_RX_OUT_SYNC;
   wire [7:0] WR_DATA;
   wire [3:0] WR_ADDR;
   wire [7:0] RD_DATA;
   wire [7:0] REG0_A;
   wire [7:0] REG1_B;
   wire [3:0] ALU_FUN;
   wire [15:0] ALU_RESULT;
   wire [7:0] UART_TX_IN;
   wire [7:0] UART_TX_IN_SYNC;
   wire SYNOPSYS_UNCONNECTED__0;
   wire SYNOPSYS_UNCONNECTED__1;
   wire SYNOPSYS_UNCONNECTED__2;
   wire SYNOPSYS_UNCONNECTED__3;

   assign SO[1] = REG0_A[5] ;

   CLKINVX8M REF_CLK__L2_I0 (.Y(REF_CLK__L2_N0), 
	.A(REF_CLK__L1_N0));
   CLKINVX40M REF_CLK__L1_I0 (.Y(REF_CLK__L1_N0), 
	.A(REF_CLK));
   CLKINVX16M UART_CLK__L2_I0 (.Y(UART_CLK__L2_N0), 
	.A(UART_CLK__L1_N0));
   CLKINVX40M UART_CLK__L1_I0 (.Y(UART_CLK__L1_N0), 
	.A(UART_CLK));
   CLKINVX32M SCAN_CLK__L19_I0 (.Y(SCAN_CLK__L19_N0), 
	.A(SCAN_CLK__L18_N0));
   CLKINVX40M SCAN_CLK__L18_I0 (.Y(SCAN_CLK__L18_N0), 
	.A(SCAN_CLK__L17_N0));
   CLKBUFX40M SCAN_CLK__L17_I0 (.Y(SCAN_CLK__L17_N0), 
	.A(SCAN_CLK__L16_N0));
   CLKBUFX24M SCAN_CLK__L16_I0 (.Y(SCAN_CLK__L16_N0), 
	.A(SCAN_CLK__L15_N1));
   CLKBUFX24M SCAN_CLK__L15_I1 (.Y(SCAN_CLK__L15_N1), 
	.A(SCAN_CLK__L14_N0));
   CLKBUFX24M SCAN_CLK__L15_I0 (.Y(SCAN_CLK__L15_N0), 
	.A(SCAN_CLK__L14_N0));
   CLKBUFX24M SCAN_CLK__L14_I0 (.Y(SCAN_CLK__L14_N0), 
	.A(SCAN_CLK__L13_N0));
   CLKBUFX24M SCAN_CLK__L13_I0 (.Y(SCAN_CLK__L13_N0), 
	.A(SCAN_CLK__L12_N0));
   CLKBUFX24M SCAN_CLK__L12_I0 (.Y(SCAN_CLK__L12_N0), 
	.A(SCAN_CLK__L11_N0));
   CLKBUFX24M SCAN_CLK__L11_I0 (.Y(SCAN_CLK__L11_N0), 
	.A(SCAN_CLK__L10_N0));
   CLKBUFX24M SCAN_CLK__L10_I0 (.Y(SCAN_CLK__L10_N0), 
	.A(SCAN_CLK__L9_N0));
   CLKINVX40M SCAN_CLK__L9_I0 (.Y(SCAN_CLK__L9_N0), 
	.A(SCAN_CLK__L8_N0));
   CLKBUFX24M SCAN_CLK__L8_I0 (.Y(SCAN_CLK__L8_N0), 
	.A(SCAN_CLK__L7_N0));
   CLKBUFX24M SCAN_CLK__L7_I0 (.Y(SCAN_CLK__L7_N0), 
	.A(SCAN_CLK__L6_N0));
   CLKBUFX24M SCAN_CLK__L6_I0 (.Y(SCAN_CLK__L6_N0), 
	.A(SCAN_CLK__L5_N0));
   CLKBUFX24M SCAN_CLK__L5_I0 (.Y(SCAN_CLK__L5_N0), 
	.A(SCAN_CLK__L4_N0));
   CLKBUFX24M SCAN_CLK__L4_I0 (.Y(SCAN_CLK__L4_N0), 
	.A(SCAN_CLK__L3_N0));
   CLKINVX40M SCAN_CLK__L3_I0 (.Y(SCAN_CLK__L3_N0), 
	.A(SCAN_CLK__L2_N0));
   CLKINVX40M SCAN_CLK__L2_I0 (.Y(SCAN_CLK__L2_N0), 
	.A(SCAN_CLK__L1_N0));
   CLKINVX40M SCAN_CLK__L1_I0 (.Y(SCAN_CLK__L1_N0), 
	.A(SCAN_CLK));
   CLKINVX40M CLK_SCAN_REF__L5_I15 (.Y(CLK_SCAN_REF__L5_N15), 
	.A(CLK_SCAN_REF__L4_N7));
   CLKINVX40M CLK_SCAN_REF__L5_I14 (.Y(CLK_SCAN_REF__L5_N14), 
	.A(CLK_SCAN_REF__L4_N7));
   CLKINVX40M CLK_SCAN_REF__L5_I13 (.Y(CLK_SCAN_REF__L5_N13), 
	.A(CLK_SCAN_REF__L4_N6));
   CLKINVX40M CLK_SCAN_REF__L5_I12 (.Y(CLK_SCAN_REF__L5_N12), 
	.A(CLK_SCAN_REF__L4_N6));
   CLKINVX40M CLK_SCAN_REF__L5_I11 (.Y(CLK_SCAN_REF__L5_N11), 
	.A(CLK_SCAN_REF__L4_N5));
   CLKINVX40M CLK_SCAN_REF__L5_I10 (.Y(CLK_SCAN_REF__L5_N10), 
	.A(CLK_SCAN_REF__L4_N5));
   CLKINVX40M CLK_SCAN_REF__L5_I9 (.Y(CLK_SCAN_REF__L5_N9), 
	.A(CLK_SCAN_REF__L4_N4));
   CLKINVX40M CLK_SCAN_REF__L5_I8 (.Y(CLK_SCAN_REF__L5_N8), 
	.A(CLK_SCAN_REF__L4_N4));
   CLKINVX40M CLK_SCAN_REF__L5_I7 (.Y(CLK_SCAN_REF__L5_N7), 
	.A(CLK_SCAN_REF__L4_N3));
   CLKINVX40M CLK_SCAN_REF__L5_I6 (.Y(CLK_SCAN_REF__L5_N6), 
	.A(CLK_SCAN_REF__L4_N3));
   CLKINVX40M CLK_SCAN_REF__L5_I5 (.Y(CLK_SCAN_REF__L5_N5), 
	.A(CLK_SCAN_REF__L4_N2));
   CLKINVX40M CLK_SCAN_REF__L5_I4 (.Y(CLK_SCAN_REF__L5_N4), 
	.A(CLK_SCAN_REF__L4_N2));
   CLKINVX40M CLK_SCAN_REF__L5_I3 (.Y(CLK_SCAN_REF__L5_N3), 
	.A(CLK_SCAN_REF__L4_N1));
   CLKINVX40M CLK_SCAN_REF__L5_I2 (.Y(CLK_SCAN_REF__L5_N2), 
	.A(CLK_SCAN_REF__L4_N1));
   CLKINVX40M CLK_SCAN_REF__L5_I1 (.Y(CLK_SCAN_REF__L5_N1), 
	.A(CLK_SCAN_REF__L4_N0));
   CLKINVX40M CLK_SCAN_REF__L5_I0 (.Y(CLK_SCAN_REF__L5_N0), 
	.A(CLK_SCAN_REF__L4_N0));
   CLKINVX40M CLK_SCAN_REF__L4_I7 (.Y(CLK_SCAN_REF__L4_N7), 
	.A(CLK_SCAN_REF__L3_N1));
   CLKINVX40M CLK_SCAN_REF__L4_I6 (.Y(CLK_SCAN_REF__L4_N6), 
	.A(CLK_SCAN_REF__L3_N1));
   CLKINVX40M CLK_SCAN_REF__L4_I5 (.Y(CLK_SCAN_REF__L4_N5), 
	.A(CLK_SCAN_REF__L3_N1));
   CLKINVX40M CLK_SCAN_REF__L4_I4 (.Y(CLK_SCAN_REF__L4_N4), 
	.A(CLK_SCAN_REF__L3_N1));
   CLKINVX40M CLK_SCAN_REF__L4_I3 (.Y(CLK_SCAN_REF__L4_N3), 
	.A(CLK_SCAN_REF__L3_N0));
   CLKINVX40M CLK_SCAN_REF__L4_I2 (.Y(CLK_SCAN_REF__L4_N2), 
	.A(CLK_SCAN_REF__L3_N0));
   CLKINVX40M CLK_SCAN_REF__L4_I1 (.Y(CLK_SCAN_REF__L4_N1), 
	.A(CLK_SCAN_REF__L3_N0));
   CLKINVX40M CLK_SCAN_REF__L4_I0 (.Y(CLK_SCAN_REF__L4_N0), 
	.A(CLK_SCAN_REF__L3_N0));
   CLKINVX40M CLK_SCAN_REF__L3_I1 (.Y(CLK_SCAN_REF__L3_N1), 
	.A(CLK_SCAN_REF__L2_N0));
   CLKINVX40M CLK_SCAN_REF__L3_I0 (.Y(CLK_SCAN_REF__L3_N0), 
	.A(CLK_SCAN_REF__L2_N0));
   CLKINVX40M CLK_SCAN_REF__L2_I0 (.Y(CLK_SCAN_REF__L2_N0), 
	.A(CLK_SCAN_REF__L1_N0));
   BUFX16M CLK_SCAN_REF__L1_I1 (.Y(CLK_SCAN_REF__L1_N1), 
	.A(CLK_SCAN_REF));
   CLKBUFX12M CLK_SCAN_REF__L1_I0 (.Y(CLK_SCAN_REF__L1_N0), 
	.A(CLK_SCAN_REF));
   CLKINVX32M ALU_CLK__L3_I0 (.Y(ALU_CLK__L3_N0), 
	.A(ALU_CLK__L2_N0));
   BUFX14M ALU_CLK__L2_I0 (.Y(ALU_CLK__L2_N0), 
	.A(ALU_CLK__L1_N0));
   CLKINVX6M ALU_CLK__L1_I0 (.Y(ALU_CLK__L1_N0), 
	.A(ALU_CLK));
   CLKINVX24M CLK_SCAN_UART__L18_I1 (.Y(CLK_SCAN_UART__L18_N1), 
	.A(CLK_SCAN_UART__L17_N0));
   CLKINVX24M CLK_SCAN_UART__L18_I0 (.Y(CLK_SCAN_UART__L18_N0), 
	.A(CLK_SCAN_UART__L17_N0));
   CLKINVX40M CLK_SCAN_UART__L17_I0 (.Y(CLK_SCAN_UART__L17_N0), 
	.A(CLK_SCAN_UART__L16_N0));
   CLKBUFX40M CLK_SCAN_UART__L16_I0 (.Y(CLK_SCAN_UART__L16_N0), 
	.A(CLK_SCAN_UART__L15_N0));
   CLKBUFX40M CLK_SCAN_UART__L15_I0 (.Y(CLK_SCAN_UART__L15_N0), 
	.A(CLK_SCAN_UART__L14_N0));
   CLKBUFX24M CLK_SCAN_UART__L14_I0 (.Y(CLK_SCAN_UART__L14_N0), 
	.A(CLK_SCAN_UART__L13_N0));
   CLKBUFX24M CLK_SCAN_UART__L13_I0 (.Y(CLK_SCAN_UART__L13_N0), 
	.A(CLK_SCAN_UART__L12_N0));
   CLKBUFX24M CLK_SCAN_UART__L12_I0 (.Y(CLK_SCAN_UART__L12_N0), 
	.A(CLK_SCAN_UART__L11_N1));
   CLKBUFX24M CLK_SCAN_UART__L11_I1 (.Y(CLK_SCAN_UART__L11_N1), 
	.A(CLK_SCAN_UART__L10_N1));
   CLKBUFX24M CLK_SCAN_UART__L11_I0 (.Y(CLK_SCAN_UART__L11_N0), 
	.A(CLK_SCAN_UART__L10_N0));
   CLKBUFX24M CLK_SCAN_UART__L10_I1 (.Y(CLK_SCAN_UART__L10_N1), 
	.A(CLK_SCAN_UART__L9_N0));
   CLKBUFX24M CLK_SCAN_UART__L10_I0 (.Y(CLK_SCAN_UART__L10_N0), 
	.A(CLK_SCAN_UART__L9_N0));
   CLKBUFX24M CLK_SCAN_UART__L9_I1 (.Y(CLK_SCAN_UART__L9_N1), 
	.A(CLK_SCAN_UART__L8_N1));
   CLKBUFX24M CLK_SCAN_UART__L9_I0 (.Y(CLK_SCAN_UART__L9_N0), 
	.A(CLK_SCAN_UART__L8_N0));
   CLKBUFX24M CLK_SCAN_UART__L8_I1 (.Y(CLK_SCAN_UART__L8_N1), 
	.A(CLK_SCAN_UART__L7_N1));
   CLKBUFX24M CLK_SCAN_UART__L8_I0 (.Y(CLK_SCAN_UART__L8_N0), 
	.A(CLK_SCAN_UART__L7_N0));
   CLKBUFX24M CLK_SCAN_UART__L7_I1 (.Y(CLK_SCAN_UART__L7_N1), 
	.A(CLK_SCAN_UART__L6_N1));
   BUFX14M CLK_SCAN_UART__L7_I0 (.Y(CLK_SCAN_UART__L7_N0), 
	.A(CLK_SCAN_UART__L6_N0));
   CLKBUFX24M CLK_SCAN_UART__L6_I1 (.Y(CLK_SCAN_UART__L6_N1), 
	.A(CLK_SCAN_UART__L5_N1));
   CLKBUFX24M CLK_SCAN_UART__L6_I0 (.Y(CLK_SCAN_UART__L6_N0), 
	.A(CLK_SCAN_UART__L5_N0));
   CLKBUFX24M CLK_SCAN_UART__L5_I1 (.Y(CLK_SCAN_UART__L5_N1), 
	.A(CLK_SCAN_UART__L4_N0));
   BUFX14M CLK_SCAN_UART__L5_I0 (.Y(CLK_SCAN_UART__L5_N0), 
	.A(CLK_SCAN_UART__L4_N0));
   CLKBUFX24M CLK_SCAN_UART__L4_I0 (.Y(CLK_SCAN_UART__L4_N0), 
	.A(CLK_SCAN_UART__L3_N0));
   CLKBUFX20M CLK_SCAN_UART__L3_I0 (.Y(CLK_SCAN_UART__L3_N0), 
	.A(CLK_SCAN_UART__L2_N0));
   CLKBUFX20M CLK_SCAN_UART__L2_I0 (.Y(CLK_SCAN_UART__L2_N0), 
	.A(CLK_SCAN_UART__L1_N0));
   CLKBUFX40M CLK_SCAN_UART__L1_I0 (.Y(CLK_SCAN_UART__L1_N0), 
	.A(CLK_SCAN_UART));
   BUFX8M SO_3___Exclude_0 (.Y(SO[3]), 
	.A(SO_3____SRC));
   BUFX8M n24__Exclude_0 (.Y(n24__Exclude_0_NET), 
	.A(n24));
   CLKBUFX12M TX_CLK__L1_I0 (.Y(TX_CLK__L1_N0), 
	.A(TX_CLK));
   BUFX8M n25__Exclude_0 (.Y(n25__Exclude_0_NET), 
	.A(n25));
   CLKINVX32M CLK_SCAN_UART_RX__L3_I1 (.Y(CLK_SCAN_UART_RX__L3_N1), 
	.A(CLK_SCAN_UART_RX__L2_N0));
   CLKINVX32M CLK_SCAN_UART_RX__L3_I0 (.Y(CLK_SCAN_UART_RX__L3_N0), 
	.A(CLK_SCAN_UART_RX__L2_N0));
   CLKINVX32M CLK_SCAN_UART_RX__L2_I0 (.Y(CLK_SCAN_UART_RX__L2_N0), 
	.A(CLK_SCAN_UART_RX__L1_N0));
   BUFX16M CLK_SCAN_UART_RX__L1_I0 (.Y(CLK_SCAN_UART_RX__L1_N0), 
	.A(CLK_SCAN_UART_RX));
   CLKINVX24M CLK_SCAN_UART_TX__L3_I3 (.Y(CLK_SCAN_UART_TX__L3_N3), 
	.A(CLK_SCAN_UART_TX__L2_N0));
   CLKINVX24M CLK_SCAN_UART_TX__L3_I2 (.Y(CLK_SCAN_UART_TX__L3_N2), 
	.A(CLK_SCAN_UART_TX__L2_N0));
   CLKINVX24M CLK_SCAN_UART_TX__L3_I1 (.Y(CLK_SCAN_UART_TX__L3_N1), 
	.A(CLK_SCAN_UART_TX__L2_N0));
   CLKINVX24M CLK_SCAN_UART_TX__L3_I0 (.Y(CLK_SCAN_UART_TX__L3_N0), 
	.A(CLK_SCAN_UART_TX__L2_N0));
   CLKINVX40M CLK_SCAN_UART_TX__L2_I0 (.Y(CLK_SCAN_UART_TX__L2_N0), 
	.A(CLK_SCAN_UART_TX__L1_N0));
   BUFX16M CLK_SCAN_UART_TX__L1_I0 (.Y(CLK_SCAN_UART_TX__L1_N0), 
	.A(CLK_SCAN_UART_TX));
   BUFX4M FE_OFC21_SE (.Y(FE_OFN21_SE), 
	.A(FE_OFN15_SE));
   BUFX4M FE_OFC20_SE (.Y(FE_OFN20_SE), 
	.A(FE_OFN15_SE));
   CLKINVX6M FE_OFC19_SE (.Y(FE_OFN19_SE), 
	.A(FE_OFN14_SE));
   CLKINVX6M FE_OFC18_SE (.Y(FE_OFN18_SE), 
	.A(FE_OFN14_SE));
   INVX6M FE_OFC17_SE (.Y(FE_OFN17_SE), 
	.A(FE_OFN14_SE));
   CLKINVX6M FE_OFC16_SE (.Y(FE_OFN16_SE), 
	.A(FE_OFN14_SE));
   CLKINVX4M FE_OFC15_SE (.Y(FE_OFN15_SE), 
	.A(FE_OFN14_SE));
   CLKINVX1M FE_OFC14_SE (.Y(FE_OFN14_SE), 
	.A(SE));
   BUFX4M FE_OFC5_RST_SCAN_UART (.Y(FE_OFN5_RST_SCAN_UART), 
	.A(RST_SCAN_UART));
   CLKBUFX8M FE_OFC4_RST_SCAN_REF (.Y(FE_OFN4_RST_SCAN_REF), 
	.A(FE_OFN3_RST_SCAN_REF));
   CLKBUFX8M FE_OFC3_RST_SCAN_REF (.Y(FE_OFN3_RST_SCAN_REF), 
	.A(FE_OFN2_RST_SCAN_REF));
   BUFX4M FE_OFC2_RST_SCAN_REF (.Y(FE_OFN2_RST_SCAN_REF), 
	.A(FE_OFN1_RST_SCAN_REF));
   CLKBUFX8M FE_OFC1_RST_SCAN_REF (.Y(FE_OFN1_RST_SCAN_REF), 
	.A(FE_OFN0_RST_SCAN_REF));
   BUFX4M FE_OFC0_RST_SCAN_REF (.Y(FE_OFN0_RST_SCAN_REF), 
	.A(RST_SCAN_REF));
   TLATNCAX12M U0_TLATNCAX12M (.ECK(ALU_CLK), 
	.E(_0_net_), 
	.CK(CLK_SCAN_REF__L1_N1));
   OR2X2M U5 (.Y(_0_net_), 
	.B(n2), 
	.A(CLK_GATE_EN));
   INVX2M U6 (.Y(n1), 
	.A(UART_TX_VALID_SYNC));
   BUFX4M U7 (.Y(n2), 
	.A(TEST_MODE));
   mux2X1_1 mux_ref (.IN_0(REF_CLK__L2_N0), 
	.IN_1(SCAN_CLK__L15_N0), 
	.SEL(n2), 
	.OUT(CLK_SCAN_REF));
   mux2X1_4 mux_uart (.IN_0(UART_CLK__L2_N0), 
	.IN_1(SCAN_CLK__L2_N0), 
	.SEL(n2), 
	.OUT(CLK_SCAN_UART));
   mux2X1_3 mux_uart_rx (.IN_0(RX_CLK), 
	.IN_1(SCAN_CLK__L19_N0), 
	.SEL(n2), 
	.OUT(CLK_SCAN_UART_RX));
   mux2X1_2 mux_uart_tx (.IN_0(TX_CLK__L1_N0), 
	.IN_1(SCAN_CLK__L19_N0), 
	.SEL(n2), 
	.OUT(CLK_SCAN_UART_TX));
   mux2X1_0 mux_rst (.IN_0(RST), 
	.IN_1(SCAN_RST), 
	.SEL(n2), 
	.OUT(RST_SCAN));
   mux2X1_6 mux_rst_ref (.IN_0(SYNC_REF_RST), 
	.IN_1(SCAN_RST), 
	.SEL(n2), 
	.OUT(RST_SCAN_REF));
   mux2X1_5 mux_rst_uart (.IN_0(SYNC_UART_RST), 
	.IN_1(SCAN_RST), 
	.SEL(n2), 
	.OUT(RST_SCAN_UART));
   RST_SYNC_NUM_STAGES2_test_0 RST_SYNC_REF (.CLK_Rsync(CLK_SCAN_REF__L5_N6), 
	.RST_Rsync(RST_SCAN), 
	.SYNC_RST(SYNC_REF_RST), 
	.test_si(n23), 
	.test_se(FE_OFN15_SE));
   RST_SYNC_NUM_STAGES2_test_1 RST_SYNC_UART (.CLK_Rsync(CLK_SCAN_UART__L18_N0), 
	.RST_Rsync(RST_SCAN), 
	.SYNC_RST(SYNC_UART_RST), 
	.test_si(SYNC_REF_RST), 
	.test_se(FE_OFN15_SE));
   Clk_div_50_Div_Ratio8_test_0 CLK_DIV_TX (.i_ref_clk(CLK_SCAN_UART), 
	.i_rst_n(FE_OFN5_RST_SCAN_UART), 
	.i_clk_en(1'b1), 
	.i_div_ratio({ REG3_DIV_RATIO[7],
		REG3_DIV_RATIO[6],
		REG3_DIV_RATIO[5],
		REG3_DIV_RATIO[4],
		REG3_DIV_RATIO[3],
		REG3_DIV_RATIO[2],
		REG3_DIV_RATIO[1],
		REG3_DIV_RATIO[0] }), 
	.o_div_clk(TX_CLK), 
	.test_si2(n19), 
	.test_si1(n25__Exclude_0_NET), 
	.test_so2(SO_3____SRC), 
	.test_so1(n24), 
	.test_se(FE_OFN20_SE), 
	.n24__Exclude_0_NET(n24__Exclude_0_NET), 
	.SPCPT1_SO_3_(SO[3]), 
	.CLK_SCAN_UART__L18_N1(CLK_SCAN_UART__L18_N1), 
	.CLK_SCAN_UART__L4_N0(CLK_SCAN_UART__L4_N0), 
	.CLK_SCAN_UART__L9_N1(CLK_SCAN_UART__L9_N1));
   Clk_div_50_Div_Ratio8_test_1 CLK_DIV_RX (.i_ref_clk(CLK_SCAN_UART__L11_N0), 
	.i_rst_n(RST_SCAN_UART), 
	.i_clk_en(1'b1), 
	.i_div_ratio({ 1'b0,
		1'b0,
		1'b0,
		1'b0,
		PRESCALE_RX[3],
		PRESCALE_RX[2],
		PRESCALE_RX[1],
		PRESCALE_RX[0] }), 
	.o_div_clk(RX_CLK), 
	.test_si2(SI[3]), 
	.test_si1(SI[4]), 
	.test_so2(n19), 
	.test_so1(n25), 
	.test_se(FE_OFN15_SE), 
	.FE_OFN18_SE(FE_OFN18_SE), 
	.n25__Exclude_0_NET(n25__Exclude_0_NET), 
	.CLK_SCAN_UART__L18_N0(CLK_SCAN_UART__L18_N0), 
	.CLK_SCAN_UART__L3_N0(CLK_SCAN_UART__L3_N0), 
	.CLK_SCAN_UART__L6_N0(CLK_SCAN_UART__L6_N0));
   CLK_DIV_MUX_WIDTH8 MUX_RX (.IN({ REG2_UART_CONFIG[7],
		REG2_UART_CONFIG[6],
		REG2_UART_CONFIG[5],
		REG2_UART_CONFIG[4],
		REG2_UART_CONFIG[3],
		REG2_UART_CONFIG[2] }), 
	.OUT({ SYNOPSYS_UNCONNECTED__0,
		SYNOPSYS_UNCONNECTED__1,
		SYNOPSYS_UNCONNECTED__2,
		SYNOPSYS_UNCONNECTED__3,
		PRESCALE_RX[3],
		PRESCALE_RX[2],
		PRESCALE_RX[1],
		PRESCALE_RX[0] }));
   PULSE_GEN_test_1 pulse_gen_busy (.clk(CLK_SCAN_UART_TX__L3_N0), 
	.rst(RST_SCAN_UART), 
	.lvl_sig(UART_TX_BUSY), 
	.pulse_sig(UART_TX_BUSY_PULSE), 
	.test_si(n14), 
	.test_so(n13), 
	.test_se(FE_OFN15_SE), 
	.CLK_SCAN_UART_TX__L3_N2(CLK_SCAN_UART_TX__L3_N2));
   Data_SYNC_NUM_STAGES2_BUS_WIDTH8_test_1 D_SYNC (.CLK(CLK_SCAN_REF__L5_N1), 
	.RST(FE_OFN1_RST_SCAN_REF), 
	.ASYNC({ UART_RX_OUT[7],
		UART_RX_OUT[6],
		UART_RX_OUT[5],
		UART_RX_OUT[4],
		UART_RX_OUT[3],
		UART_RX_OUT[2],
		UART_RX_OUT[1],
		UART_RX_OUT[0] }), 
	.BUS_EN(UART_RX_VALID), 
	.ENABLE_PULSE(UART_RX_VALID_SYNC), 
	.SYNC_BUS({ UART_RX_OUT_SYNC[7],
		UART_RX_OUT_SYNC[6],
		UART_RX_OUT_SYNC[5],
		UART_RX_OUT_SYNC[4],
		UART_RX_OUT_SYNC[3],
		UART_RX_OUT_SYNC[2],
		UART_RX_OUT_SYNC[1],
		UART_RX_OUT_SYNC[0] }), 
	.test_si(n24__Exclude_0_NET), 
	.test_so(n23), 
	.test_se(FE_OFN17_SE), 
	.FE_OFN4_RST_SCAN_REF(FE_OFN4_RST_SCAN_REF), 
	.CLK_SCAN_REF__L5_N14(CLK_SCAN_REF__L5_N14));
   REG_file_WIDTH8_NO_OF_REG16_ADDR4_test_1 reg_file (.CLK_regfile(CLK_SCAN_REF__L5_N1), 
	.RST_regfile(FE_OFN2_RST_SCAN_REF), 
	.WrData({ WR_DATA[7],
		WR_DATA[6],
		WR_DATA[5],
		WR_DATA[4],
		WR_DATA[3],
		WR_DATA[2],
		WR_DATA[1],
		WR_DATA[0] }), 
	.Address({ WR_ADDR[3],
		WR_ADDR[2],
		WR_ADDR[1],
		WR_ADDR[0] }), 
	.WrEn(WR_EN), 
	.RdEn(RD_EN), 
	.RdData({ RD_DATA[7],
		RD_DATA[6],
		RD_DATA[5],
		RD_DATA[4],
		RD_DATA[3],
		RD_DATA[2],
		RD_DATA[1],
		RD_DATA[0] }), 
	.RdData_Valid(RD_DATA_VALID), 
	.REG0({ REG0_A[7],
		REG0_A[6],
		REG0_A[5],
		REG0_A[4],
		REG0_A[3],
		REG0_A[2],
		REG0_A[1],
		REG0_A[0] }), 
	.REG1({ REG1_B[7],
		REG1_B[6],
		REG1_B[5],
		REG1_B[4],
		REG1_B[3],
		REG1_B[2],
		REG1_B[1],
		REG1_B[0] }), 
	.REG2({ REG2_UART_CONFIG[7],
		REG2_UART_CONFIG[6],
		REG2_UART_CONFIG[5],
		REG2_UART_CONFIG[4],
		REG2_UART_CONFIG[3],
		REG2_UART_CONFIG[2],
		REG2_UART_CONFIG[1],
		REG2_UART_CONFIG[0] }), 
	.REG3({ REG3_DIV_RATIO[7],
		REG3_DIV_RATIO[6],
		REG3_DIV_RATIO[5],
		REG3_DIV_RATIO[4],
		REG3_DIV_RATIO[3],
		REG3_DIV_RATIO[2],
		REG3_DIV_RATIO[1],
		REG3_DIV_RATIO[0] }), 
	.test_si3(test_si6), 
	.test_si2(SI[0]), 
	.test_si1(n13), 
	.test_so2(n9), 
	.test_so1(SO[0]), 
	.test_se(FE_OFN16_SE), 
	.FE_OFN3_RST_SCAN_REF(FE_OFN3_RST_SCAN_REF), 
	.FE_OFN4_RST_SCAN_REF(FE_OFN4_RST_SCAN_REF), 
	.FE_OFN17_SE(FE_OFN17_SE), 
	.FE_OFN18_SE(FE_OFN18_SE), 
	.FE_OFN20_SE(FE_OFN20_SE), 
	.CLK_SCAN_REF__L5_N10(CLK_SCAN_REF__L5_N10), 
	.CLK_SCAN_REF__L5_N12(CLK_SCAN_REF__L5_N12), 
	.CLK_SCAN_REF__L5_N13(CLK_SCAN_REF__L5_N13), 
	.CLK_SCAN_REF__L5_N14(CLK_SCAN_REF__L5_N14), 
	.CLK_SCAN_REF__L5_N15(CLK_SCAN_REF__L5_N15), 
	.CLK_SCAN_REF__L5_N8(CLK_SCAN_REF__L5_N8), 
	.CLK_SCAN_REF__L5_N9(CLK_SCAN_REF__L5_N9));
   Alu_16_bit_OPER_WIDTH8_OUT_WIDTH16_ALU_FUN_WIDTH4_test_1 alu (.CLK_alu(ALU_CLK__L3_N0), 
	.RST_alu(FE_OFN1_RST_SCAN_REF), 
	.EN_alu(ALU_EN), 
	.A({ REG0_A[7],
		REG0_A[6],
		REG0_A[5],
		REG0_A[4],
		REG0_A[3],
		REG0_A[2],
		REG0_A[1],
		REG0_A[0] }), 
	.B({ REG1_B[7],
		REG1_B[6],
		REG1_B[5],
		REG1_B[4],
		REG1_B[3],
		REG1_B[2],
		REG1_B[1],
		REG1_B[0] }), 
	.ALU_FUN({ ALU_FUN[3],
		ALU_FUN[2],
		ALU_FUN[1],
		ALU_FUN[0] }), 
	.ALU_OUT({ ALU_RESULT[15],
		ALU_RESULT[14],
		ALU_RESULT[13],
		ALU_RESULT[12],
		ALU_RESULT[11],
		ALU_RESULT[10],
		ALU_RESULT[9],
		ALU_RESULT[8],
		ALU_RESULT[7],
		ALU_RESULT[6],
		ALU_RESULT[5],
		ALU_RESULT[4],
		ALU_RESULT[3],
		ALU_RESULT[2],
		ALU_RESULT[1],
		ALU_RESULT[0] }), 
	.OUT_VALID(ALU_OUT_VALID), 
	.test_si(SYNC_UART_RST), 
	.test_se(FE_OFN17_SE), 
	.FE_OFN2_RST_SCAN_REF(FE_OFN2_RST_SCAN_REF), 
	.FE_OFN18_SE(FE_OFN18_SE), 
	.FE_OFN19_SE(FE_OFN19_SE));
   ASYNC_FIFO_DATASIZE8_ADDRSIZE4_DEPTHSIZE16_test_1 fifo_async (.W_CLK(CLK_SCAN_REF__L5_N0), 
	.W_RST_N(RST_SCAN_REF), 
	.W_INC(UART_TX_VALID), 
	.W_DATA({ UART_TX_IN[7],
		UART_TX_IN[6],
		UART_TX_IN[5],
		UART_TX_IN[4],
		UART_TX_IN[3],
		UART_TX_IN[2],
		UART_TX_IN[1],
		UART_TX_IN[0] }), 
	.R_CLK(CLK_SCAN_UART_TX__L3_N0), 
	.R_RST_N(RST_SCAN_UART), 
	.R_INC(UART_TX_BUSY_PULSE), 
	.W_FULL(FIFO_FULL), 
	.R_DATA({ UART_TX_IN_SYNC[7],
		UART_TX_IN_SYNC[6],
		UART_TX_IN_SYNC[5],
		UART_TX_IN_SYNC[4],
		UART_TX_IN_SYNC[3],
		UART_TX_IN_SYNC[2],
		UART_TX_IN_SYNC[1],
		UART_TX_IN_SYNC[0] }), 
	.R_EMPTY(UART_TX_VALID_SYNC), 
	.test_si3(SI[1]), 
	.test_si2(SI[2]), 
	.test_si1(n22), 
	.test_so3(n14), 
	.test_so2(SO[2]), 
	.test_so1(SO[4]), 
	.test_se(FE_OFN15_SE), 
	.FE_OFN0_RST_SCAN_REF(FE_OFN0_RST_SCAN_REF), 
	.FE_OFN1_RST_SCAN_REF(FE_OFN1_RST_SCAN_REF), 
	.FE_OFN17_SE(FE_OFN17_SE), 
	.FE_OFN19_SE(FE_OFN19_SE), 
	.FE_OFN20_SE(FE_OFN20_SE), 
	.FE_OFN21_SE(FE_OFN21_SE), 
	.CLK_SCAN_UART_TX__L3_N1(CLK_SCAN_UART_TX__L3_N1), 
	.CLK_SCAN_UART_TX__L3_N2(CLK_SCAN_UART_TX__L3_N2), 
	.CLK_SCAN_REF__L5_N1(CLK_SCAN_REF__L5_N1), 
	.CLK_SCAN_REF__L5_N11(CLK_SCAN_REF__L5_N11), 
	.CLK_SCAN_REF__L5_N2(CLK_SCAN_REF__L5_N2), 
	.CLK_SCAN_REF__L5_N3(CLK_SCAN_REF__L5_N3), 
	.CLK_SCAN_REF__L5_N4(CLK_SCAN_REF__L5_N4), 
	.CLK_SCAN_REF__L5_N5(CLK_SCAN_REF__L5_N5), 
	.CLK_SCAN_REF__L5_N6(CLK_SCAN_REF__L5_N6), 
	.CLK_SCAN_REF__L5_N7(CLK_SCAN_REF__L5_N7));
   UART_TOP_8_6_0_1_0_1_test_1 uart (.i_CLK_TX(CLK_SCAN_UART_TX__L3_N1), 
	.i_CLK_RX(CLK_SCAN_UART_RX__L3_N0), 
	.i_RST(RST_SCAN_UART), 
	.i_DATA_Valid_TX(n1), 
	.i_DATA_TX({ UART_TX_IN_SYNC[7],
		UART_TX_IN_SYNC[6],
		UART_TX_IN_SYNC[5],
		UART_TX_IN_SYNC[4],
		UART_TX_IN_SYNC[3],
		UART_TX_IN_SYNC[2],
		UART_TX_IN_SYNC[1],
		UART_TX_IN_SYNC[0] }), 
	.i_PAR_EN_TX(REG2_UART_CONFIG[0]), 
	.i_PAR_TYP_TX(REG2_UART_CONFIG[1]), 
	.i_Serial_Data_RX(RX_IN), 
	.i_PAR_EN_RX(REG2_UART_CONFIG[0]), 
	.i_PAR_TYP_RX(REG2_UART_CONFIG[1]), 
	.i_Prescale_RX({ REG2_UART_CONFIG[7],
		REG2_UART_CONFIG[6],
		REG2_UART_CONFIG[5],
		REG2_UART_CONFIG[4],
		REG2_UART_CONFIG[3],
		REG2_UART_CONFIG[2] }), 
	.o_OUT_TX(TX_OUT), 
	.o_BUSY_TX(UART_TX_BUSY), 
	.o_P_Data_RX({ UART_RX_OUT[7],
		UART_RX_OUT[6],
		UART_RX_OUT[5],
		UART_RX_OUT[4],
		UART_RX_OUT[3],
		UART_RX_OUT[2],
		UART_RX_OUT[1],
		UART_RX_OUT[0] }), 
	.o_Data_Valid_RX(UART_RX_VALID), 
	.o_Stop_Error_RX(STOP_ERR), 
	.o_Parity_Error_RX(PAR_ERR), 
	.test_si(n9), 
	.test_se(FE_OFN15_SE), 
	.FE_OFN5_RST_SCAN_UART(FE_OFN5_RST_SCAN_UART), 
	.FE_OFN17_SE(FE_OFN17_SE), 
	.FE_OFN18_SE(FE_OFN18_SE), 
	.FE_OFN20_SE(FE_OFN20_SE), 
	.FE_OFN21_SE(FE_OFN21_SE), 
	.CLK_SCAN_UART_TX__L3_N2(CLK_SCAN_UART_TX__L3_N2), 
	.CLK_SCAN_UART_TX__L3_N3(CLK_SCAN_UART_TX__L3_N3), 
	.CLK_SCAN_UART_RX__L3_N1(CLK_SCAN_UART_RX__L3_N1));
   SYS_CTRL_WIDTH8_ADDR4_test_1 control (.CLK(CLK_SCAN_REF__L5_N0), 
	.RST_N(FE_OFN1_RST_SCAN_REF), 
	.ALU_OUT({ ALU_RESULT[15],
		ALU_RESULT[14],
		ALU_RESULT[13],
		ALU_RESULT[12],
		ALU_RESULT[11],
		ALU_RESULT[10],
		ALU_RESULT[9],
		ALU_RESULT[8],
		ALU_RESULT[7],
		ALU_RESULT[6],
		ALU_RESULT[5],
		ALU_RESULT[4],
		ALU_RESULT[3],
		ALU_RESULT[2],
		ALU_RESULT[1],
		ALU_RESULT[0] }), 
	.ALU_OUT_Valid(ALU_OUT_VALID), 
	.RD_DATA({ RD_DATA[7],
		RD_DATA[6],
		RD_DATA[5],
		RD_DATA[4],
		RD_DATA[3],
		RD_DATA[2],
		RD_DATA[1],
		RD_DATA[0] }), 
	.RD_DATA_VLD(RD_DATA_VALID), 
	.FIFO_FULL(FIFO_FULL), 
	.RX_DATA({ UART_RX_OUT_SYNC[7],
		UART_RX_OUT_SYNC[6],
		UART_RX_OUT_SYNC[5],
		UART_RX_OUT_SYNC[4],
		UART_RX_OUT_SYNC[3],
		UART_RX_OUT_SYNC[2],
		UART_RX_OUT_SYNC[1],
		UART_RX_OUT_SYNC[0] }), 
	.RX_VLD(UART_RX_VALID_SYNC), 
	.ALU_FUN({ ALU_FUN[3],
		ALU_FUN[2],
		ALU_FUN[1],
		ALU_FUN[0] }), 
	.ALU_EN(ALU_EN), 
	.CLKG_EN(CLK_GATE_EN), 
	.WR_EN(WR_EN), 
	.RD_EN(RD_EN), 
	.ADDR_S({ WR_ADDR[3],
		WR_ADDR[2],
		WR_ADDR[1],
		WR_ADDR[0] }), 
	.WR_DATA_S({ WR_DATA[7],
		WR_DATA[6],
		WR_DATA[5],
		WR_DATA[4],
		WR_DATA[3],
		WR_DATA[2],
		WR_DATA[1],
		WR_DATA[0] }), 
	.TX_P_DATA({ UART_TX_IN[7],
		UART_TX_IN[6],
		UART_TX_IN[5],
		UART_TX_IN[4],
		UART_TX_IN[3],
		UART_TX_IN[2],
		UART_TX_IN[1],
		UART_TX_IN[0] }), 
	.TX_D_VLD(UART_TX_VALID), 
	.test_so(n22), 
	.test_se(FE_OFN16_SE), 
	.FE_OFN2_RST_SCAN_REF(FE_OFN2_RST_SCAN_REF), 
	.FE_OFN17_SE(FE_OFN17_SE), 
	.FE_OFN18_SE(FE_OFN18_SE), 
	.FE_OFN19_SE(FE_OFN19_SE), 
	.CLK_SCAN_REF__L5_N1(CLK_SCAN_REF__L5_N1), 
	.CLK_SCAN_REF__L5_N10(CLK_SCAN_REF__L5_N10), 
	.CLK_SCAN_REF__L5_N11(CLK_SCAN_REF__L5_N11), 
	.CLK_SCAN_REF__L5_N14(CLK_SCAN_REF__L5_N14));
endmodule

/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : O-2018.06-SP1
// Date      : Wed Oct  7 01:18:13 2026
/////////////////////////////////////////////////////////////
module mux2X1_1 (
	IN_0, 
	IN_1, 
	SEL, 
	OUT);
   input IN_0;
   input IN_1;
   input SEL;
   output OUT;

   // Internal wires
   wire N0;

   assign N0 = SEL ;

   MX2X6M U1 (.Y(OUT), 
	.S0(N0), 
	.B(IN_1), 
	.A(IN_0));
endmodule

module mux2X1_4 (
	IN_0, 
	IN_1, 
	SEL, 
	OUT);
   input IN_0;
   input IN_1;
   input SEL;
   output OUT;

   // Internal wires
   wire N0;

   assign N0 = SEL ;

   MX2X6M U1 (.Y(OUT), 
	.S0(N0), 
	.B(IN_1), 
	.A(IN_0));
endmodule

module mux2X1_3 (
	IN_0, 
	IN_1, 
	SEL, 
	OUT);
   input IN_0;
   input IN_1;
   input SEL;
   output OUT;

   // Internal wires
   wire N0;

   assign N0 = SEL ;

   MX2X6M U1 (.Y(OUT), 
	.S0(N0), 
	.B(IN_1), 
	.A(IN_0));
endmodule

module mux2X1_2 (
	IN_0, 
	IN_1, 
	SEL, 
	OUT);
   input IN_0;
   input IN_1;
   input SEL;
   output OUT;

   // Internal wires
   wire N0;

   assign N0 = SEL ;

   MX2X6M U1 (.Y(OUT), 
	.S0(N0), 
	.B(IN_1), 
	.A(IN_0));
endmodule

module mux2X1_0 (
	IN_0, 
	IN_1, 
	SEL, 
	OUT);
   input IN_0;
   input IN_1;
   input SEL;
   output OUT;

   // Internal wires
   wire N0;

   assign N0 = SEL ;

   MX2X2M U1 (.Y(OUT), 
	.S0(N0), 
	.B(IN_1), 
	.A(IN_0));
endmodule

module mux2X1_6 (
	IN_0, 
	IN_1, 
	SEL, 
	OUT);
   input IN_0;
   input IN_1;
   input SEL;
   output OUT;

   // Internal wires
   wire N0;

   assign N0 = SEL ;

   MX2X8M U1 (.Y(OUT), 
	.S0(N0), 
	.B(IN_1), 
	.A(IN_0));
endmodule

module mux2X1_5 (
	IN_0, 
	IN_1, 
	SEL, 
	OUT);
   input IN_0;
   input IN_1;
   input SEL;
   output OUT;

   // Internal wires
   wire N0;

   assign N0 = SEL ;

   MX2X8M U1 (.Y(OUT), 
	.S0(N0), 
	.B(IN_1), 
	.A(IN_0));
endmodule

module RST_SYNC_NUM_STAGES2_test_0 (
	CLK_Rsync, 
	RST_Rsync, 
	SYNC_RST, 
	test_si, 
	test_se);
   input CLK_Rsync;
   input RST_Rsync;
   output SYNC_RST;
   input test_si;
   input test_se;

   // Internal wires
   wire HTIE_LTIEHI_NET;
   wire \sync_reg[0] ;

   TIEHIM HTIE_LTIEHI (.Y(HTIE_LTIEHI_NET));
   SDFFRQX2M \sync_reg_reg[1]  (.SI(\sync_reg[0] ), 
	.SE(test_se), 
	.RN(RST_Rsync), 
	.Q(SYNC_RST), 
	.D(\sync_reg[0] ), 
	.CK(CLK_Rsync));
   SDFFRQX2M \sync_reg_reg[0]  (.SI(test_si), 
	.SE(test_se), 
	.RN(RST_Rsync), 
	.Q(\sync_reg[0] ), 
	.D(HTIE_LTIEHI_NET), 
	.CK(CLK_Rsync));
endmodule

module RST_SYNC_NUM_STAGES2_test_1 (
	CLK_Rsync, 
	RST_Rsync, 
	SYNC_RST, 
	test_si, 
	test_se);
   input CLK_Rsync;
   input RST_Rsync;
   output SYNC_RST;
   input test_si;
   input test_se;

   // Internal wires
   wire HTIE_LTIEHI_NET;
   wire \sync_reg[0] ;

   TIEHIM HTIE_LTIEHI (.Y(HTIE_LTIEHI_NET));
   SDFFRQX1M \sync_reg_reg[1]  (.SI(\sync_reg[0] ), 
	.SE(test_se), 
	.RN(RST_Rsync), 
	.Q(SYNC_RST), 
	.D(\sync_reg[0] ), 
	.CK(CLK_Rsync));
   SDFFRQX1M \sync_reg_reg[0]  (.SI(test_si), 
	.SE(test_se), 
	.RN(RST_Rsync), 
	.Q(\sync_reg[0] ), 
	.D(HTIE_LTIEHI_NET), 
	.CK(CLK_Rsync));
endmodule

module Clk_div_50_Div_Ratio8_0_DW01_inc_0 (
	A, 
	SUM);
   input [7:0] A;
   output [7:0] SUM;

   // Internal wires
   wire [7:2] carry;

   ADDHX1M U1_1_6 (.S(SUM[6]), 
	.CO(carry[7]), 
	.B(carry[6]), 
	.A(A[6]));
   ADDHX1M U1_1_4 (.S(SUM[4]), 
	.CO(carry[5]), 
	.B(carry[4]), 
	.A(A[4]));
   ADDHX1M U1_1_5 (.S(SUM[5]), 
	.CO(carry[6]), 
	.B(carry[5]), 
	.A(A[5]));
   ADDHX1M U1_1_3 (.S(SUM[3]), 
	.CO(carry[4]), 
	.B(carry[3]), 
	.A(A[3]));
   ADDHX1M U1_1_2 (.S(SUM[2]), 
	.CO(carry[3]), 
	.B(carry[2]), 
	.A(A[2]));
   ADDHX1M U1_1_1 (.S(SUM[1]), 
	.CO(carry[2]), 
	.B(A[0]), 
	.A(A[1]));
   CLKXOR2X2M U1 (.Y(SUM[7]), 
	.B(A[7]), 
	.A(carry[7]));
   CLKINVX1M U2 (.Y(SUM[0]), 
	.A(A[0]));
endmodule

module Clk_div_50_Div_Ratio8_test_0 (
	i_ref_clk, 
	i_rst_n, 
	i_clk_en, 
	i_div_ratio, 
	o_div_clk, 
	test_si2, 
	test_si1, 
	test_so2, 
	test_so1, 
	test_se, 
	n24__Exclude_0_NET, 
	SPCPT1_SO_3_, 
	CLK_SCAN_UART__L18_N1, 
	CLK_SCAN_UART__L4_N0, 
	CLK_SCAN_UART__L9_N1);
   input i_ref_clk;
   input i_rst_n;
   input i_clk_en;
   input [7:0] i_div_ratio;
   output o_div_clk;
   input test_si2;
   input test_si1;
   output test_so2;
   output test_so1;
   input test_se;
   input n24__Exclude_0_NET;
   input SPCPT1_SO_3_;
   input CLK_SCAN_UART__L18_N1;
   input CLK_SCAN_UART__L4_N0;
   input CLK_SCAN_UART__L9_N1;

   // Internal wires
   wire n32__Exclude_0_NET;
   wire HTIE_LTIEHI_NET;
   wire N8;
   wire N9;
   wire N10;
   wire N11;
   wire N12;
   wire N13;
   wire N14;
   wire N15;
   wire N18;
   wire N19;
   wire N20;
   wire N21;
   wire N22;
   wire N23;
   wire N24;
   wire N25;
   wire N34;
   wire N35;
   wire N36;
   wire N37;
   wire N38;
   wire N39;
   wire N40;
   wire N41;
   wire q1;
   wire n17;
   wire n19;
   wire n1;
   wire n2;
   wire n3;
   wire n4;
   wire n11;
   wire n12;
   wire n13;
   wire n14;
   wire n28;
   wire n29;
   wire n30;
   wire n31;
   wire n32;
   wire n33;
   wire n34;
   wire n35;
   wire n36;
   wire n37;
   wire n38;
   wire n39;
   wire n40;
   wire n41;
   wire n42;
   wire n43;
   wire n44;
   wire n45;
   wire n46;
   wire n47;
   wire n48;
   wire n49;
   wire n50;
   wire n51;
   wire n52;
   wire n53;
   wire n54;
   wire n55;
   wire n56;
   wire n57;
   wire n58;
   wire n59;
   wire n60;
   wire n61;
   wire n62;
   wire n63;
   wire n64;
   wire n65;
   wire n66;
   wire n67;
   wire n68;
   wire n69;
   wire n70;
   wire n71;
   wire n90;
   wire n5;
   wire [7:0] counter;

//   assign test_so1 = q1 ;

   BUFX8M n32__Exclude_0 (.Y(n32__Exclude_0_NET), 
	.A(n32));
   TIEHIM HTIE_LTIEHI (.Y(HTIE_LTIEHI_NET));
   SDFFRQX2M \counter_reg[4]  (.SI(counter[3]), 
	.SE(test_se), 
	.RN(i_rst_n), 
	.Q(counter[4]), 
	.D(N38), 
	.CK(CLK_SCAN_UART__L18_N1));
   SDFFRQX2M \counter_reg[5]  (.SI(counter[4]), 
	.SE(test_se), 
	.RN(i_rst_n), 
	.Q(counter[5]), 
	.D(N39), 
	.CK(CLK_SCAN_UART__L18_N1));
   SDFFRQX2M \counter_reg[3]  (.SI(counter[2]), 
	.SE(test_se), 
	.RN(i_rst_n), 
	.Q(counter[3]), 
	.D(N37), 
	.CK(CLK_SCAN_UART__L18_N1));
   SDFFRQX2M \counter_reg[1]  (.SI(counter[0]), 
	.SE(test_se), 
	.RN(i_rst_n), 
	.Q(counter[1]), 
	.D(N35), 
	.CK(CLK_SCAN_UART__L18_N1));
   SDFFRQX2M \counter_reg[2]  (.SI(counter[1]), 
	.SE(test_se), 
	.RN(i_rst_n), 
	.Q(counter[2]), 
	.D(N36), 
	.CK(CLK_SCAN_UART__L18_N1));
   SDFFNSRHX1M q2_reg (.SN(HTIE_LTIEHI_NET), 
	.SI(test_si2), 
	.SE(test_se), 
	.RN(i_rst_n), 
	.Q(n90), 
	.D(n17), 
	.CKN(i_ref_clk));
   SDFFRQX2M q1_reg (.SI(counter[7]), 
	.SE(test_se), 
	.RN(i_rst_n), 
	.Q(test_so1), 
	.D(n19), 
	.CK(CLK_SCAN_UART__L4_N0));
   SDFFRQX2M \counter_reg[7]  (.SI(counter[6]), 
	.SE(test_se), 
	.RN(i_rst_n), 
	.Q(counter[7]), 
	.D(N41), 
	.CK(CLK_SCAN_UART__L18_N1));
   INVX2M U3 (.Y(n2), 
	.A(n1));
   INVX2M U4 (.Y(n1), 
	.A(counter[0]));
   INVX2M U5 (.Y(n46), 
	.A(i_div_ratio[5]));
   INVX2M U6 (.Y(n4), 
	.A(n3));
   INVX2M U7 (.Y(n3), 
	.A(counter[6]));
   XNOR2X2M U12 (.Y(N14), 
	.B(n28), 
	.A(i_div_ratio[6]));
   AOI222X1M U13 (.Y(n42), 
	.C1(n46), 
	.C0(counter[4]), 
	.B1(n45), 
	.B0(n44), 
	.A1(n43), 
	.A0(counter[3]));
   AOI222X1M U14 (.Y(n56), 
	.C1(n3), 
	.C0(N14), 
	.B1(n61), 
	.B0(n60), 
	.A1(n36), 
	.A0(N15));
   OAI32X1M U15 (.Y(n60), 
	.B1(n65), 
	.B0(counter[5]), 
	.A2(n64), 
	.A1(n63), 
	.A0(n62));
   OAI31X1M U16 (.Y(n49), 
	.B0(n53), 
	.A2(n2), 
	.A1(counter[1]), 
	.A0(n52));
   AOI221XLM U17 (.Y(n34), 
	.C0(n39), 
	.B1(n37), 
	.B0(n4), 
	.A1(n38), 
	.A0(counter[5]));
   AOI221XLM U18 (.Y(n39), 
	.C0(n42), 
	.B1(n41), 
	.B0(i_div_ratio[6]), 
	.A1(n40), 
	.A0(i_div_ratio[5]));
   AOI221XLM U19 (.Y(n63), 
	.C0(n66), 
	.B1(n40), 
	.B0(N12), 
	.A1(n51), 
	.A0(N11));
   AOI222X1M U20 (.Y(n66), 
	.C1(counter[3]), 
	.C0(n70), 
	.B1(n69), 
	.B0(n68), 
	.A1(counter[2]), 
	.A0(n67));
   NAND2X2M U21 (.Y(n28), 
	.B(n46), 
	.A(n14));
   AO21XLM U22 (.Y(N12), 
	.B0(n14), 
	.A1(i_div_ratio[4]), 
	.A0(n13));
   NOR2X2M U23 (.Y(n14), 
	.B(i_div_ratio[4]), 
	.A(n13));
   OR3X2M U35 (.Y(n55), 
	.C(n31), 
	.B(n57), 
	.A(n56));
   MX2X2M U36 (.Y(n17), 
	.S0(n31), 
	.B(SPCPT1_SO_3_), 
	.A(n24__Exclude_0_NET));
   OAI21X2M U37 (.Y(n31), 
	.B0(HTIE_LTIEHI_NET), 
	.A1(n59), 
	.A0(n58));
   OAI21X2M U38 (.Y(N13), 
	.B0(n28), 
	.A1(n46), 
	.A0(n14));
   MX2XLM U39 (.Y(o_div_clk), 
	.S0(n31), 
	.B(CLK_SCAN_UART__L9_N1), 
	.A(n30));
   INVX2M U40 (.Y(n37), 
	.A(i_div_ratio[7]));
   INVX2M U41 (.Y(n52), 
	.A(i_div_ratio[1]));
   INVXLM U42 (.Y(n65), 
	.A(N13));
   OR2X2M U43 (.Y(n13), 
	.B(i_div_ratio[3]), 
	.A(n12));
   OR2X2M U44 (.Y(n12), 
	.B(i_div_ratio[2]), 
	.A(n11));
   INVX2M U45 (.Y(n40), 
	.A(counter[4]));
   INVX2M U46 (.Y(n36), 
	.A(counter[7]));
   OR2X2M U49 (.Y(n11), 
	.B(i_div_ratio[0]), 
	.A(i_div_ratio[1]));
   CLKINVX1M U50 (.Y(N8), 
	.A(i_div_ratio[0]));
   OAI2BB1X1M U51 (.Y(N9), 
	.B0(n11), 
	.A1N(i_div_ratio[1]), 
	.A0N(i_div_ratio[0]));
   OAI2BB1X1M U52 (.Y(N10), 
	.B0(n12), 
	.A1N(i_div_ratio[2]), 
	.A0N(n11));
   OAI2BB1X1M U53 (.Y(N11), 
	.B0(n13), 
	.A1N(i_div_ratio[3]), 
	.A0N(n12));
   NOR2X1M U54 (.Y(n29), 
	.B(n28), 
	.A(i_div_ratio[6]));
   CLKXOR2X2M U55 (.Y(N15), 
	.B(n29), 
	.A(i_div_ratio[7]));
   OAI2BB1X1M U56 (.Y(n30), 
	.B0(n32), 
	.A1N(i_div_ratio[0]), 
	.A0N(test_so2));
   MXI2X1M U57 (.Y(n19), 
	.S0(n31), 
	.B(n32__Exclude_0_NET), 
	.A(n33));
   CLKINVX1M U58 (.Y(n32), 
	.A(test_so1));
   OAI21X1M U59 (.Y(n33), 
	.B0(n36), 
	.A1(n35), 
	.A0(n34));
   NOR2X1M U60 (.Y(n35), 
	.B(n37), 
	.A(n4));
   CLKNAND2X2M U61 (.Y(n45), 
	.B(n47), 
	.A(i_div_ratio[3]));
   AOI32X1M U62 (.Y(n44), 
	.B1(n51), 
	.B0(i_div_ratio[4]), 
	.A2(n50), 
	.A1(n49), 
	.A0(n48));
   OAI21X1M U63 (.Y(n50), 
	.B0(counter[1]), 
	.A1(n52), 
	.A0(n2));
   CLKNAND2X2M U64 (.Y(n48), 
	.B(n54), 
	.A(counter[2]));
   NOR2BX1M U65 (.Y(N41), 
	.B(n55), 
	.AN(N25));
   NOR2BX1M U66 (.Y(N40), 
	.B(n55), 
	.AN(N24));
   NOR2BX1M U67 (.Y(N39), 
	.B(n55), 
	.AN(N23));
   NOR2BX1M U68 (.Y(N38), 
	.B(n55), 
	.AN(N22));
   NOR2BX1M U69 (.Y(N37), 
	.B(n55), 
	.AN(N21));
   NOR2BX1M U70 (.Y(N36), 
	.B(n55), 
	.AN(N20));
   NOR2BX1M U71 (.Y(N35), 
	.B(n55), 
	.AN(N19));
   NOR2BX1M U72 (.Y(N34), 
	.B(n55), 
	.AN(N18));
   NAND3X1M U73 (.Y(n59), 
	.C(n52), 
	.B(n54), 
	.A(n53));
   CLKINVX1M U74 (.Y(n54), 
	.A(i_div_ratio[3]));
   CLKINVX1M U75 (.Y(n53), 
	.A(i_div_ratio[2]));
   NAND4X1M U76 (.Y(n58), 
	.D(n37), 
	.C(n38), 
	.B(n46), 
	.A(n43));
   CLKINVX1M U77 (.Y(n38), 
	.A(i_div_ratio[6]));
   CLKINVX1M U78 (.Y(n43), 
	.A(i_div_ratio[4]));
   NOR2X1M U79 (.Y(n57), 
	.B(n36), 
	.A(N15));
   NAND2BX1M U80 (.Y(n61), 
	.B(n4), 
	.AN(N14));
   NOR2X1M U81 (.Y(n64), 
	.B(n41), 
	.A(N13));
   CLKINVX1M U82 (.Y(n41), 
	.A(counter[5]));
   CLKINVX1M U83 (.Y(n70), 
	.A(N11));
   OAI211X1M U84 (.Y(n69), 
	.C0(N8), 
	.B0(n1), 
	.A1(n71), 
	.A0(N9));
   AOI22X1M U85 (.Y(n68), 
	.B1(n71), 
	.B0(N9), 
	.A1(n47), 
	.A0(N10));
   CLKINVX1M U86 (.Y(n71), 
	.A(counter[1]));
   CLKINVX1M U87 (.Y(n47), 
	.A(counter[2]));
   CLKINVX1M U88 (.Y(n67), 
	.A(N10));
   CLKINVX1M U89 (.Y(n51), 
	.A(counter[3]));
   NOR2X1M U90 (.Y(n62), 
	.B(n40), 
	.A(N12));
   Clk_div_50_Div_Ratio8_0_DW01_inc_0 add_36 (.A({ counter[7],
		n4,
		counter[5],
		counter[4],
		counter[3],
		counter[2],
		counter[1],
		n2 }), 
	.SUM({ N25,
		N24,
		N23,
		N22,
		N21,
		N20,
		N19,
		N18 }));
   SDFFRQX2M \counter_reg[6]  (.SI(counter[5]), 
	.SE(test_se), 
	.RN(i_rst_n), 
	.Q(counter[6]), 
	.D(N40), 
	.CK(CLK_SCAN_UART__L18_N1));
   SDFFRQX2M \counter_reg[0]  (.SI(test_si1), 
	.SE(test_se), 
	.RN(i_rst_n), 
	.Q(counter[0]), 
	.D(N34), 
	.CK(CLK_SCAN_UART__L18_N1));
   INVXLM U8 (.Y(n5), 
	.A(n90));
   INVX2M U9 (.Y(test_so2), 
	.A(n5));
endmodule

module Clk_div_50_Div_Ratio8_1_DW01_inc_0 (
	A, 
	SUM);
   input [7:0] A;
   output [7:0] SUM;

   // Internal wires
   wire [7:2] carry;

   ADDHX1M U1_1_6 (.S(SUM[6]), 
	.CO(carry[7]), 
	.B(carry[6]), 
	.A(A[6]));
   ADDHX1M U1_1_4 (.S(SUM[4]), 
	.CO(carry[5]), 
	.B(carry[4]), 
	.A(A[4]));
   ADDHX1M U1_1_5 (.S(SUM[5]), 
	.CO(carry[6]), 
	.B(carry[5]), 
	.A(A[5]));
   ADDHX1M U1_1_3 (.S(SUM[3]), 
	.CO(carry[4]), 
	.B(carry[3]), 
	.A(A[3]));
   ADDHX1M U1_1_2 (.S(SUM[2]), 
	.CO(carry[3]), 
	.B(carry[2]), 
	.A(A[2]));
   ADDHX1M U1_1_1 (.S(SUM[1]), 
	.CO(carry[2]), 
	.B(A[0]), 
	.A(A[1]));
   CLKXOR2X2M U1 (.Y(SUM[7]), 
	.B(A[7]), 
	.A(carry[7]));
endmodule

module Clk_div_50_Div_Ratio8_test_1 (
	i_ref_clk, 
	i_rst_n, 
	i_clk_en, 
	i_div_ratio, 
	o_div_clk, 
	test_si2, 
	test_si1, 
	test_so2, 
	test_so1, 
	test_se, 
	FE_OFN18_SE, 
	n25__Exclude_0_NET, 
	CLK_SCAN_UART__L18_N0, 
	CLK_SCAN_UART__L3_N0, 
	CLK_SCAN_UART__L6_N0);
   input i_ref_clk;
   input i_rst_n;
   input i_clk_en;
   input [7:0] i_div_ratio;
   output o_div_clk;
   input test_si2;
   input test_si1;
   output test_so2;
   output test_so1;
   input test_se;
   input FE_OFN18_SE;
   input n25__Exclude_0_NET;
   input CLK_SCAN_UART__L18_N0;
   input CLK_SCAN_UART__L3_N0;
   input CLK_SCAN_UART__L6_N0;

   // Internal wires
   wire n14__Exclude_0_NET;
   wire q2__Exclude_0_NET;
   wire HTIE_LTIEHI_NET;
   wire LTIE_LTIELO_NET;
   wire FE_UNCONNECTED_0;
   wire N9;
   wire N10;
   wire N11;
   wire N12;
   wire N13;
   wire N14;
   wire N15;
   wire N19;
   wire N20;
   wire N21;
   wire N22;
   wire N23;
   wire N24;
   wire N25;
   wire N34;
   wire N35;
   wire N36;
   wire N37;
   wire N38;
   wire N39;
   wire N40;
   wire N41;
   wire q2;
   wire n1;
   wire n4;
   wire n5;
   wire n7;
   wire n8;
   wire n9;
   wire n10;
   wire n11;
   wire n12;
   wire n13;
   wire n14;
   wire n28;
   wire n29;
   wire n30;
   wire n31;
   wire n32;
   wire n33;
   wire n34;
   wire n35;
   wire n36;
   wire n37;
   wire n38;
   wire n39;
   wire n40;
   wire n41;
   wire n42;
   wire n43;
   wire n44;
   wire n45;
   wire n46;
   wire n47;
   wire n48;
   wire n49;
   wire n50;
   wire n51;
   wire n52;
   wire n53;
   wire n54;
   wire n55;
   wire n56;
   wire n57;
   wire n58;
   wire n59;
   wire n60;
   wire n61;
   wire n62;
   wire n63;
   wire n64;
   wire n65;
   wire n66;
   wire n67;
   wire n76;
   wire n78;
   wire n98;
   wire [7:0] counter;

   BUFX8M n14__Exclude_0 (.Y(n14__Exclude_0_NET), 
	.A(n14));
   BUFX8M q2__Exclude_0 (.Y(q2__Exclude_0_NET), 
	.A(q2));
   TIEHIM HTIE_LTIEHI (.Y(HTIE_LTIEHI_NET));
   TIELOM LTIE_LTIELO (.Y(LTIE_LTIELO_NET));
   SDFFRQX4M \counter_reg[6]  (.SI(counter[5]), 
	.SE(FE_OFN18_SE), 
	.RN(i_rst_n), 
	.Q(counter[6]), 
	.D(N40), 
	.CK(CLK_SCAN_UART__L18_N0));
   SDFFRQX1M \counter_reg[7]  (.SI(counter[6]), 
	.SE(test_se), 
	.RN(i_rst_n), 
	.Q(counter[7]), 
	.D(N41), 
	.CK(CLK_SCAN_UART__L18_N0));
   SDFFRQX2M \counter_reg[4]  (.SI(counter[3]), 
	.SE(FE_OFN18_SE), 
	.RN(i_rst_n), 
	.Q(counter[4]), 
	.D(N38), 
	.CK(CLK_SCAN_UART__L18_N0));
   SDFFRQX4M \counter_reg[0]  (.SI(test_si1), 
	.SE(FE_OFN18_SE), 
	.RN(i_rst_n), 
	.Q(counter[0]), 
	.D(N34), 
	.CK(CLK_SCAN_UART__L18_N0));
   SDFFRQX1M q1_reg (.SI(counter[7]), 
	.SE(test_se), 
	.RN(i_rst_n), 
	.Q(test_so1), 
	.D(n76), 
	.CK(CLK_SCAN_UART__L6_N0));
   SDFFRQX2M \counter_reg[5]  (.SI(counter[4]), 
	.SE(FE_OFN18_SE), 
	.RN(i_rst_n), 
	.Q(counter[5]), 
	.D(N39), 
	.CK(CLK_SCAN_UART__L18_N0));
   SDFFRQX2M \counter_reg[3]  (.SI(counter[2]), 
	.SE(FE_OFN18_SE), 
	.RN(i_rst_n), 
	.Q(counter[3]), 
	.D(N37), 
	.CK(CLK_SCAN_UART__L18_N0));
   SDFFRQX2M \counter_reg[1]  (.SI(counter[0]), 
	.SE(FE_OFN18_SE), 
	.RN(i_rst_n), 
	.Q(counter[1]), 
	.D(N35), 
	.CK(CLK_SCAN_UART__L18_N0));
   SDFFRQX2M \counter_reg[2]  (.SI(counter[1]), 
	.SE(FE_OFN18_SE), 
	.RN(i_rst_n), 
	.Q(counter[2]), 
	.D(N36), 
	.CK(CLK_SCAN_UART__L18_N0));
   SDFFNSRHX1M q2_reg (.SN(HTIE_LTIEHI_NET), 
	.SI(test_si2), 
	.SE(test_se), 
	.RN(i_rst_n), 
	.QN(test_so2), 
	.Q(q2), 
	.D(n78), 
	.CKN(CLK_SCAN_UART__L3_N0));
   OR2X1M U3 (.Y(n1), 
	.B(i_div_ratio[3]), 
	.A(n5));
   AOI222X1M U4 (.Y(n37), 
	.C1(n10), 
	.C0(counter[4]), 
	.B1(n40), 
	.B0(n39), 
	.A1(n38), 
	.A0(counter[3]));
   INVX2M U5 (.Y(n46), 
	.A(i_div_ratio[1]));
   OAI32X1M U6 (.Y(n54), 
	.B1(n60), 
	.B0(counter[5]), 
	.A2(n59), 
	.A1(n58), 
	.A0(n57));
   NOR2X2M U7 (.Y(n59), 
	.B(n36), 
	.A(N13));
   AOI221XLM U8 (.Y(n29), 
	.C0(n34), 
	.B1(n32), 
	.B0(counter[6]), 
	.A1(n33), 
	.A0(counter[5]));
   AOI221XLM U9 (.Y(n34), 
	.C0(n37), 
	.B1(n36), 
	.B0(LTIE_LTIELO_NET), 
	.A1(n35), 
	.A0(LTIE_LTIELO_NET));
   AOI221XLM U10 (.Y(n58), 
	.C0(n61), 
	.B1(n35), 
	.B0(N12), 
	.A1(n45), 
	.A0(N11));
   AOI222X1M U11 (.Y(n61), 
	.C1(counter[3]), 
	.C0(n65), 
	.B1(n64), 
	.B0(n63), 
	.A1(counter[2]), 
	.A0(n62));
   OAI21X2M U12 (.Y(n13), 
	.B0(HTIE_LTIEHI_NET), 
	.A1(n53), 
	.A0(n52));
   NAND3X1M U13 (.Y(n53), 
	.C(n46), 
	.B(n48), 
	.A(n47));
   OR2X2M U14 (.Y(n5), 
	.B(i_div_ratio[2]), 
	.A(n4));
   NAND2BX2M U15 (.Y(n4), 
	.B(n11), 
	.AN(i_div_ratio[1]));
   OAI31X1M U16 (.Y(n43), 
	.B0(n47), 
	.A2(counter[0]), 
	.A1(counter[1]), 
	.A0(n46));
   NAND2X2M U17 (.Y(n8), 
	.B(n10), 
	.A(n7));
   AO21XLM U18 (.Y(N12), 
	.B0(n7), 
	.A1(LTIE_LTIELO_NET), 
	.A0(n1));
   NOR2X2M U19 (.Y(n7), 
	.B(LTIE_LTIELO_NET), 
	.A(n1));
   OR3X2M U20 (.Y(n49), 
	.C(n13), 
	.B(n51), 
	.A(n50));
   AOI222X1M U21 (.Y(n50), 
	.C1(n56), 
	.C0(N14), 
	.B1(n55), 
	.B0(n54), 
	.A1(n31), 
	.A0(N15));
   OAI21X2M U22 (.Y(N13), 
	.B0(n8), 
	.A1(n10), 
	.A0(n7));
   MX2XLM U23 (.Y(o_div_clk), 
	.S0(n13), 
	.B(i_ref_clk), 
	.A(n12));
   MX2XLM U35 (.Y(n78), 
	.S0(n13), 
	.B(q2__Exclude_0_NET), 
	.A(n25__Exclude_0_NET));
   INVXLM U36 (.Y(n60), 
	.A(N13));
   XNOR2X2M U37 (.Y(N14), 
	.B(n8), 
	.A(LTIE_LTIELO_NET));
   NAND2XLM U38 (.Y(n40), 
	.B(n41), 
	.A(i_div_ratio[3]));
   INVX2M U39 (.Y(n35), 
	.A(counter[4]));
   INVX2M U40 (.Y(n31), 
	.A(counter[7]));
   INVX2M U41 (.Y(n32), 
	.A(LTIE_LTIELO_NET));
   INVX2M U42 (.Y(n11), 
	.A(i_div_ratio[0]));
   INVX2M U45 (.Y(n10), 
	.A(LTIE_LTIELO_NET));
   OAI2BB1X1M U46 (.Y(N9), 
	.B0(n4), 
	.A1N(i_div_ratio[1]), 
	.A0N(i_div_ratio[0]));
   OAI2BB1X1M U47 (.Y(N10), 
	.B0(n5), 
	.A1N(i_div_ratio[2]), 
	.A0N(n4));
   OAI2BB1X1M U49 (.Y(N11), 
	.B0(n1), 
	.A1N(i_div_ratio[3]), 
	.A0N(n5));
   NOR2X1M U50 (.Y(n9), 
	.B(n8), 
	.A(LTIE_LTIELO_NET));
   CLKXOR2X2M U51 (.Y(N15), 
	.B(n9), 
	.A(LTIE_LTIELO_NET));
   OAI2BB1X1M U52 (.Y(n12), 
	.B0(n14), 
	.A1N(i_div_ratio[0]), 
	.A0N(q2));
   MXI2X1M U53 (.Y(n76), 
	.S0(n13), 
	.B(n14__Exclude_0_NET), 
	.A(n28));
   CLKINVX1M U54 (.Y(n14), 
	.A(test_so1));
   OAI21X1M U55 (.Y(n28), 
	.B0(n31), 
	.A1(n30), 
	.A0(n29));
   NOR2X1M U56 (.Y(n30), 
	.B(n32), 
	.A(counter[6]));
   AOI32X1M U57 (.Y(n39), 
	.B1(n45), 
	.B0(LTIE_LTIELO_NET), 
	.A2(n44), 
	.A1(n43), 
	.A0(n42));
   OAI21X1M U58 (.Y(n44), 
	.B0(counter[1]), 
	.A1(n46), 
	.A0(counter[0]));
   CLKNAND2X2M U59 (.Y(n42), 
	.B(n48), 
	.A(counter[2]));
   NOR2BX1M U60 (.Y(N41), 
	.B(n49), 
	.AN(N25));
   NOR2BX1M U61 (.Y(N40), 
	.B(n49), 
	.AN(N24));
   NOR2BX1M U62 (.Y(N39), 
	.B(n49), 
	.AN(N23));
   NOR2BX1M U63 (.Y(N38), 
	.B(n49), 
	.AN(N22));
   NOR2BX1M U64 (.Y(N37), 
	.B(n49), 
	.AN(N21));
   NOR2BX1M U65 (.Y(N36), 
	.B(n49), 
	.AN(N20));
   NOR2BX1M U66 (.Y(N35), 
	.B(n49), 
	.AN(N19));
   NOR2BX1M U67 (.Y(N34), 
	.B(n49), 
	.AN(n67));
   CLKINVX1M U68 (.Y(n48), 
	.A(i_div_ratio[3]));
   CLKINVX1M U69 (.Y(n47), 
	.A(i_div_ratio[2]));
   NAND4X1M U70 (.Y(n52), 
	.D(n32), 
	.C(n33), 
	.B(n10), 
	.A(n38));
   CLKINVX1M U71 (.Y(n33), 
	.A(LTIE_LTIELO_NET));
   CLKINVX1M U72 (.Y(n38), 
	.A(LTIE_LTIELO_NET));
   NOR2X1M U73 (.Y(n51), 
	.B(n31), 
	.A(N15));
   CLKINVX1M U74 (.Y(n56), 
	.A(counter[6]));
   NAND2BX1M U75 (.Y(n55), 
	.B(counter[6]), 
	.AN(N14));
   CLKINVX1M U76 (.Y(n36), 
	.A(counter[5]));
   CLKINVX1M U77 (.Y(n65), 
	.A(N11));
   OAI211X1M U78 (.Y(n64), 
	.C0(n11), 
	.B0(n67), 
	.A1(n66), 
	.A0(N9));
   CLKINVX1M U79 (.Y(n67), 
	.A(counter[0]));
   AOI22X1M U80 (.Y(n63), 
	.B1(n66), 
	.B0(N9), 
	.A1(n41), 
	.A0(N10));
   CLKINVX1M U81 (.Y(n66), 
	.A(counter[1]));
   CLKINVX1M U82 (.Y(n41), 
	.A(counter[2]));
   CLKINVX1M U83 (.Y(n62), 
	.A(N10));
   CLKINVX1M U84 (.Y(n45), 
	.A(counter[3]));
   NOR2X1M U85 (.Y(n57), 
	.B(n35), 
	.A(N12));
   INVXLM U99 (.Y(n98), 
	.A(n31));
   Clk_div_50_Div_Ratio8_1_DW01_inc_0 add_36 (.A({ n98,
		counter[6],
		counter[5],
		counter[4],
		counter[3],
		counter[2],
		counter[1],
		counter[0] }), 
	.SUM({ N25,
		N24,
		N23,
		N22,
		N21,
		N20,
		N19,
		FE_UNCONNECTED_0 }));
endmodule

module CLK_DIV_MUX_WIDTH8 (
	IN, 
	OUT);
   input [5:0] IN;
   output [7:0] OUT;

   // Internal wires
   wire HTIE_LTIEHI_NET;
   wire n5;
   wire n6;
   wire n7;
   wire n8;
   wire n9;
   wire n14;
   wire n15;
   wire n16;
   wire n17;

   TIEHIM HTIE_LTIEHI (.Y(HTIE_LTIEHI_NET));
   OAI211X2M U11 (.Y(OUT[0]), 
	.C0(n16), 
	.B0(n17), 
	.A1(n9), 
	.A0(n8));
   NOR4X1M U12 (.Y(OUT[3]), 
	.D(IN[4]), 
	.C(IN[5]), 
	.B(IN[3]), 
	.A(n5));
   INVX2M U13 (.Y(n15), 
	.A(IN[2]));
   NOR3X2M U14 (.Y(OUT[2]), 
	.C(IN[0]), 
	.B(IN[1]), 
	.A(n6));
   NOR3X2M U15 (.Y(OUT[1]), 
	.C(IN[0]), 
	.B(IN[1]), 
	.A(n7));
   NOR4X1M U16 (.Y(n8), 
	.D(n15), 
	.C(IN[3]), 
	.B(IN[4]), 
	.A(IN[5]));
   CLKINVX1M U17 (.Y(n16), 
	.A(IN[1]));
   NAND4BX1M U18 (.Y(n7), 
	.D(n14), 
	.C(n15), 
	.B(IN[4]), 
	.AN(IN[3]));
   NAND4BX1M U19 (.Y(n6), 
	.D(n14), 
	.C(n15), 
	.B(IN[3]), 
	.AN(IN[4]));
   NAND3X1M U20 (.Y(n5), 
	.C(IN[2]), 
	.B(n16), 
	.A(n17));
   CLKINVX1M U21 (.Y(n14), 
	.A(IN[5]));
   INVX2M U22 (.Y(n17), 
	.A(IN[0]));
   NAND2X2M U23 (.Y(n9), 
	.B(n6), 
	.A(n7));
   INVX2M U3 (.Y(OUT[7]), 
	.A(HTIE_LTIEHI_NET));
   INVX2M U5 (.Y(OUT[6]), 
	.A(HTIE_LTIEHI_NET));
   INVX2M U7 (.Y(OUT[5]), 
	.A(HTIE_LTIEHI_NET));
   INVX2M U9 (.Y(OUT[4]), 
	.A(HTIE_LTIEHI_NET));
endmodule

module PULSE_GEN_test_1 (
	clk, 
	rst, 
	lvl_sig, 
	pulse_sig, 
	test_si, 
	test_so, 
	test_se, 
	CLK_SCAN_UART_TX__L3_N2);
   input clk;
   input rst;
   input lvl_sig;
   output pulse_sig;
   input test_si;
   output test_so;
   input test_se;
   input CLK_SCAN_UART_TX__L3_N2;

   // Internal wires
   wire lvl_sig_ff;
   wire pulse_flop;

   assign test_so = pulse_flop ;

   SDFFRQX2M pulse_flop_reg (.SI(lvl_sig_ff), 
	.SE(test_se), 
	.RN(rst), 
	.Q(pulse_flop), 
	.D(lvl_sig_ff), 
	.CK(CLK_SCAN_UART_TX__L3_N2));
   SDFFRQX2M lvl_sig_ff_reg (.SI(test_si), 
	.SE(test_se), 
	.RN(rst), 
	.Q(lvl_sig_ff), 
	.D(lvl_sig), 
	.CK(clk));
   NOR2BX2M U5 (.Y(pulse_sig), 
	.B(pulse_flop), 
	.AN(lvl_sig_ff));
endmodule

module Data_SYNC_NUM_STAGES2_BUS_WIDTH8_test_1 (
	CLK, 
	RST, 
	ASYNC, 
	BUS_EN, 
	ENABLE_PULSE, 
	SYNC_BUS, 
	test_si, 
	test_so, 
	test_se, 
	FE_OFN4_RST_SCAN_REF, 
	CLK_SCAN_REF__L5_N14);
   input CLK;
   input RST;
   input [7:0] ASYNC;
   input BUS_EN;
   output ENABLE_PULSE;
   output [7:0] SYNC_BUS;
   input test_si;
   output test_so;
   input test_se;
   input FE_OFN4_RST_SCAN_REF;
   input CLK_SCAN_REF__L5_N14;

   // Internal wires
   wire pulse_flop;
   wire n1;
   wire n4;
   wire n6;
   wire n8;
   wire n10;
   wire n12;
   wire n14;
   wire n16;
   wire n18;
   wire n30;
   wire [1:0] sync_enable_reg;

   assign test_so = sync_enable_reg[1] ;

   SDFFRQX2M pulse_flop_reg (.SI(SYNC_BUS[7]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(pulse_flop), 
	.D(sync_enable_reg[1]), 
	.CK(CLK));
   SDFFRQX2M \sync_enable_reg_reg[1]  (.SI(sync_enable_reg[0]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(sync_enable_reg[1]), 
	.D(sync_enable_reg[0]), 
	.CK(CLK));
   SDFFRQX2M \SYNC_BUS_reg[7]  (.SI(SYNC_BUS[6]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(SYNC_BUS[7]), 
	.D(n18), 
	.CK(CLK));
   SDFFRQX2M \SYNC_BUS_reg[3]  (.SI(SYNC_BUS[2]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(SYNC_BUS[3]), 
	.D(n10), 
	.CK(CLK));
   SDFFRQX2M \sync_enable_reg_reg[0]  (.SI(pulse_flop), 
	.SE(test_se), 
	.RN(RST), 
	.Q(sync_enable_reg[0]), 
	.D(BUS_EN), 
	.CK(CLK));
   SDFFRQX2M \SYNC_BUS_reg[5]  (.SI(SYNC_BUS[4]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(SYNC_BUS[5]), 
	.D(n14), 
	.CK(CLK));
   SDFFRQX2M \SYNC_BUS_reg[1]  (.SI(SYNC_BUS[0]), 
	.SE(test_se), 
	.RN(FE_OFN4_RST_SCAN_REF), 
	.Q(SYNC_BUS[1]), 
	.D(n6), 
	.CK(CLK_SCAN_REF__L5_N14));
   CLKINVX2M U8 (.Y(n30), 
	.A(n1));
   NAND2BX2M U12 (.Y(n1), 
	.B(sync_enable_reg[1]), 
	.AN(pulse_flop));
   AO22X1M U25 (.Y(n4), 
	.B1(n1), 
	.B0(SYNC_BUS[0]), 
	.A1(n30), 
	.A0(ASYNC[0]));
   AO22X1M U26 (.Y(n12), 
	.B1(n1), 
	.B0(SYNC_BUS[4]), 
	.A1(n30), 
	.A0(ASYNC[4]));
   AO22X1M U27 (.Y(n8), 
	.B1(n1), 
	.B0(SYNC_BUS[2]), 
	.A1(n30), 
	.A0(ASYNC[2]));
   AO22X1M U28 (.Y(n16), 
	.B1(n1), 
	.B0(SYNC_BUS[6]), 
	.A1(n30), 
	.A0(ASYNC[6]));
   AO22X1M U29 (.Y(n6), 
	.B1(n1), 
	.B0(SYNC_BUS[1]), 
	.A1(n30), 
	.A0(ASYNC[1]));
   AO22X1M U30 (.Y(n14), 
	.B1(n1), 
	.B0(SYNC_BUS[5]), 
	.A1(n30), 
	.A0(ASYNC[5]));
   AO22X1M U31 (.Y(n10), 
	.B1(n1), 
	.B0(SYNC_BUS[3]), 
	.A1(n30), 
	.A0(ASYNC[3]));
   AO22X1M U32 (.Y(n18), 
	.B1(n1), 
	.B0(SYNC_BUS[7]), 
	.A1(n30), 
	.A0(ASYNC[7]));
   SDFFRQX4M ENABLE_PULSE_reg (.SI(test_si), 
	.SE(test_se), 
	.RN(FE_OFN4_RST_SCAN_REF), 
	.Q(ENABLE_PULSE), 
	.D(n30), 
	.CK(CLK));
   SDFFRQX4M \SYNC_BUS_reg[0]  (.SI(ENABLE_PULSE), 
	.SE(test_se), 
	.RN(FE_OFN4_RST_SCAN_REF), 
	.Q(SYNC_BUS[0]), 
	.D(n4), 
	.CK(CLK));
   SDFFRQX4M \SYNC_BUS_reg[2]  (.SI(SYNC_BUS[1]), 
	.SE(test_se), 
	.RN(FE_OFN4_RST_SCAN_REF), 
	.Q(SYNC_BUS[2]), 
	.D(n8), 
	.CK(CLK));
   SDFFRQX4M \SYNC_BUS_reg[6]  (.SI(SYNC_BUS[5]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(SYNC_BUS[6]), 
	.D(n16), 
	.CK(CLK));
   SDFFRQX4M \SYNC_BUS_reg[4]  (.SI(SYNC_BUS[3]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(SYNC_BUS[4]), 
	.D(n12), 
	.CK(CLK));
endmodule

module REG_file_WIDTH8_NO_OF_REG16_ADDR4_test_1 (
	CLK_regfile, 
	RST_regfile, 
	WrData, 
	Address, 
	WrEn, 
	RdEn, 
	RdData, 
	RdData_Valid, 
	REG0, 
	REG1, 
	REG2, 
	REG3, 
	test_si3, 
	test_si2, 
	test_si1, 
	test_so2, 
	test_so1, 
	test_se, 
	FE_OFN3_RST_SCAN_REF, 
	FE_OFN4_RST_SCAN_REF, 
	FE_OFN17_SE, 
	FE_OFN18_SE, 
	FE_OFN20_SE, 
	CLK_SCAN_REF__L5_N10, 
	CLK_SCAN_REF__L5_N12, 
	CLK_SCAN_REF__L5_N13, 
	CLK_SCAN_REF__L5_N14, 
	CLK_SCAN_REF__L5_N15, 
	CLK_SCAN_REF__L5_N8, 
	CLK_SCAN_REF__L5_N9);
   input CLK_regfile;
   input RST_regfile;
   input [7:0] WrData;
   input [3:0] Address;
   input WrEn;
   input RdEn;
   output [7:0] RdData;
   output RdData_Valid;
   output [7:0] REG0;
   output [7:0] REG1;
   output [7:0] REG2;
   output [7:0] REG3;
   input test_si3;
   input test_si2;
   input test_si1;
   output test_so2;
   output test_so1;
   input test_se;
   input FE_OFN3_RST_SCAN_REF;
   input FE_OFN4_RST_SCAN_REF;
   input FE_OFN17_SE;
   input FE_OFN18_SE;
   input FE_OFN20_SE;
   input CLK_SCAN_REF__L5_N10;
   input CLK_SCAN_REF__L5_N12;
   input CLK_SCAN_REF__L5_N13;
   input CLK_SCAN_REF__L5_N14;
   input CLK_SCAN_REF__L5_N15;
   input CLK_SCAN_REF__L5_N8;
   input CLK_SCAN_REF__L5_N9;

   // Internal wires
   wire FE_OFN8_n423;
   wire FE_OFN7_n422;
   wire FE_OFN6_n424;
   wire N11;
   wire N12;
   wire N13;
   wire N14;
   wire n511;
   wire n512;
   wire n513;
   wire n518;
   wire n519;
   wire \Reg_File[15][7] ;
   wire \Reg_File[15][6] ;
   wire \Reg_File[15][5] ;
   wire \Reg_File[15][4] ;
   wire \Reg_File[15][3] ;
   wire \Reg_File[15][2] ;
   wire \Reg_File[15][1] ;
   wire \Reg_File[15][0] ;
   wire \Reg_File[14][7] ;
   wire \Reg_File[14][6] ;
   wire \Reg_File[14][5] ;
   wire \Reg_File[14][4] ;
   wire \Reg_File[14][3] ;
   wire \Reg_File[14][2] ;
   wire \Reg_File[14][1] ;
   wire \Reg_File[14][0] ;
   wire \Reg_File[13][7] ;
   wire \Reg_File[13][6] ;
   wire \Reg_File[13][5] ;
   wire \Reg_File[13][4] ;
   wire \Reg_File[13][3] ;
   wire \Reg_File[13][2] ;
   wire \Reg_File[13][1] ;
   wire \Reg_File[13][0] ;
   wire \Reg_File[12][7] ;
   wire \Reg_File[12][6] ;
   wire \Reg_File[12][5] ;
   wire \Reg_File[12][4] ;
   wire \Reg_File[12][3] ;
   wire \Reg_File[12][2] ;
   wire \Reg_File[12][1] ;
   wire \Reg_File[12][0] ;
   wire \Reg_File[11][7] ;
   wire \Reg_File[11][6] ;
   wire \Reg_File[11][5] ;
   wire \Reg_File[11][4] ;
   wire \Reg_File[11][3] ;
   wire \Reg_File[11][2] ;
   wire \Reg_File[11][1] ;
   wire \Reg_File[11][0] ;
   wire \Reg_File[10][7] ;
   wire \Reg_File[10][6] ;
   wire \Reg_File[10][5] ;
   wire \Reg_File[10][4] ;
   wire \Reg_File[10][3] ;
   wire \Reg_File[10][2] ;
   wire \Reg_File[10][1] ;
   wire \Reg_File[10][0] ;
   wire \Reg_File[9][7] ;
   wire \Reg_File[9][6] ;
   wire \Reg_File[9][5] ;
   wire \Reg_File[9][4] ;
   wire \Reg_File[9][3] ;
   wire \Reg_File[9][2] ;
   wire \Reg_File[9][1] ;
   wire \Reg_File[9][0] ;
   wire \Reg_File[8][7] ;
   wire \Reg_File[8][6] ;
   wire \Reg_File[8][5] ;
   wire \Reg_File[8][4] ;
   wire \Reg_File[8][3] ;
   wire \Reg_File[8][2] ;
   wire \Reg_File[8][1] ;
   wire \Reg_File[8][0] ;
   wire \Reg_File[7][7] ;
   wire \Reg_File[7][6] ;
   wire \Reg_File[7][5] ;
   wire \Reg_File[7][4] ;
   wire \Reg_File[7][3] ;
   wire \Reg_File[7][2] ;
   wire \Reg_File[7][1] ;
   wire \Reg_File[7][0] ;
   wire \Reg_File[6][7] ;
   wire \Reg_File[6][6] ;
   wire \Reg_File[6][5] ;
   wire \Reg_File[6][4] ;
   wire \Reg_File[6][3] ;
   wire \Reg_File[6][2] ;
   wire \Reg_File[6][1] ;
   wire \Reg_File[6][0] ;
   wire \Reg_File[5][7] ;
   wire \Reg_File[5][6] ;
   wire \Reg_File[5][5] ;
   wire \Reg_File[5][4] ;
   wire \Reg_File[5][3] ;
   wire \Reg_File[5][2] ;
   wire \Reg_File[5][1] ;
   wire \Reg_File[5][0] ;
   wire \Reg_File[4][7] ;
   wire \Reg_File[4][6] ;
   wire \Reg_File[4][5] ;
   wire \Reg_File[4][4] ;
   wire \Reg_File[4][3] ;
   wire \Reg_File[4][2] ;
   wire \Reg_File[4][1] ;
   wire \Reg_File[4][0] ;
   wire N36;
   wire N37;
   wire N38;
   wire N39;
   wire N40;
   wire N41;
   wire N42;
   wire N43;
   wire n149;
   wire n150;
   wire n151;
   wire n152;
   wire n153;
   wire n154;
   wire n155;
   wire n156;
   wire n157;
   wire n158;
   wire n159;
   wire n160;
   wire n161;
   wire n162;
   wire n163;
   wire n164;
   wire n165;
   wire n166;
   wire n167;
   wire n168;
   wire n169;
   wire n170;
   wire n171;
   wire n172;
   wire n173;
   wire n174;
   wire n175;
   wire n176;
   wire n177;
   wire n178;
   wire n179;
   wire n180;
   wire n181;
   wire n182;
   wire n183;
   wire n184;
   wire n185;
   wire n186;
   wire n187;
   wire n188;
   wire n189;
   wire n190;
   wire n191;
   wire n192;
   wire n193;
   wire n194;
   wire n195;
   wire n196;
   wire n197;
   wire n198;
   wire n199;
   wire n200;
   wire n201;
   wire n202;
   wire n203;
   wire n204;
   wire n205;
   wire n206;
   wire n207;
   wire n208;
   wire n209;
   wire n210;
   wire n211;
   wire n212;
   wire n213;
   wire n214;
   wire n215;
   wire n216;
   wire n217;
   wire n218;
   wire n219;
   wire n220;
   wire n221;
   wire n222;
   wire n223;
   wire n224;
   wire n225;
   wire n226;
   wire n227;
   wire n228;
   wire n229;
   wire n230;
   wire n231;
   wire n232;
   wire n233;
   wire n234;
   wire n235;
   wire n236;
   wire n237;
   wire n238;
   wire n239;
   wire n240;
   wire n241;
   wire n242;
   wire n243;
   wire n244;
   wire n245;
   wire n246;
   wire n247;
   wire n248;
   wire n249;
   wire n250;
   wire n251;
   wire n252;
   wire n253;
   wire n254;
   wire n255;
   wire n256;
   wire n257;
   wire n258;
   wire n259;
   wire n260;
   wire n261;
   wire n262;
   wire n263;
   wire n264;
   wire n265;
   wire n266;
   wire n267;
   wire n268;
   wire n269;
   wire n270;
   wire n271;
   wire n272;
   wire n273;
   wire n274;
   wire n275;
   wire n276;
   wire n277;
   wire n278;
   wire n279;
   wire n280;
   wire n281;
   wire n282;
   wire n283;
   wire n284;
   wire n285;
   wire n286;
   wire n287;
   wire n288;
   wire n289;
   wire n290;
   wire n291;
   wire n292;
   wire n293;
   wire n294;
   wire n295;
   wire n296;
   wire n297;
   wire n298;
   wire n299;
   wire n300;
   wire n301;
   wire n302;
   wire n303;
   wire n304;
   wire n305;
   wire n306;
   wire n307;
   wire n308;
   wire n309;
   wire n310;
   wire n311;
   wire n312;
   wire n313;
   wire n138;
   wire n139;
   wire n141;
   wire n143;
   wire n145;
   wire n329;
   wire n330;
   wire n331;
   wire n332;
   wire n333;
   wire n334;
   wire n335;
   wire n336;
   wire n337;
   wire n338;
   wire n339;
   wire n340;
   wire n341;
   wire n342;
   wire n343;
   wire n344;
   wire n345;
   wire n346;
   wire n347;
   wire n348;
   wire n349;
   wire n350;
   wire n351;
   wire n352;
   wire n353;
   wire n354;
   wire n355;
   wire n356;
   wire n357;
   wire n358;
   wire n359;
   wire n360;
   wire n361;
   wire n362;
   wire n363;
   wire n364;
   wire n365;
   wire n366;
   wire n367;
   wire n368;
   wire n369;
   wire n370;
   wire n371;
   wire n372;
   wire n373;
   wire n374;
   wire n375;
   wire n376;
   wire n377;
   wire n378;
   wire n379;
   wire n380;
   wire n381;
   wire n382;
   wire n383;
   wire n384;
   wire n385;
   wire n386;
   wire n387;
   wire n388;
   wire n389;
   wire n390;
   wire n391;
   wire n392;
   wire n393;
   wire n394;
   wire n395;
   wire n396;
   wire n397;
   wire n398;
   wire n399;
   wire n400;
   wire n401;
   wire n402;
   wire n403;
   wire n404;
   wire n405;
   wire n406;
   wire n407;
   wire n408;
   wire n409;
   wire n410;
   wire n411;
   wire n412;
   wire n413;
   wire n414;
   wire n415;
   wire n416;
   wire n417;
   wire n418;
   wire n419;
   wire n420;
   wire n421;
   wire n422;
   wire n423;
   wire n424;
   wire n425;
   wire n426;
   wire n427;
   wire n428;
   wire n429;
   wire n430;
   wire n431;
   wire n432;
   wire n433;
   wire n434;
   wire n435;
   wire n501;
   wire n502;
   wire n503;
   wire n504;
   wire n505;
   wire n506;
   wire n507;
   wire n508;
   wire n509;
   wire n510;
   wire n524;
   wire n525;
   wire n526;
   wire n527;

   assign N11 = Address[0] ;
   assign N12 = Address[1] ;
   assign N13 = Address[2] ;
   assign N14 = Address[3] ;
   assign test_so2 = \Reg_File[15][7]  ;
   assign test_so1 = \Reg_File[11][5]  ;

   BUFX4M FE_OFC8_n423 (.Y(FE_OFN8_n423), 
	.A(n423));
   BUFX2M FE_OFC7_n422 (.Y(FE_OFN7_n422), 
	.A(n422));
   BUFX4M FE_OFC6_n424 (.Y(FE_OFN6_n424), 
	.A(n424));
   SDFFRQX2M \RdData_reg[7]  (.SI(RdData[6]), 
	.SE(test_se), 
	.RN(FE_OFN4_RST_SCAN_REF), 
	.Q(RdData[7]), 
	.D(n184), 
	.CK(CLK_SCAN_REF__L5_N14));
   SDFFRQX2M \RdData_reg[6]  (.SI(RdData[5]), 
	.SE(test_se), 
	.RN(FE_OFN4_RST_SCAN_REF), 
	.Q(RdData[6]), 
	.D(n183), 
	.CK(CLK_SCAN_REF__L5_N14));
   SDFFRQX2M \RdData_reg[5]  (.SI(RdData[4]), 
	.SE(test_se), 
	.RN(FE_OFN4_RST_SCAN_REF), 
	.Q(RdData[5]), 
	.D(n182), 
	.CK(CLK_SCAN_REF__L5_N14));
   SDFFRQX2M \RdData_reg[4]  (.SI(RdData[3]), 
	.SE(FE_OFN17_SE), 
	.RN(FE_OFN4_RST_SCAN_REF), 
	.Q(RdData[4]), 
	.D(n181), 
	.CK(CLK_SCAN_REF__L5_N14));
   SDFFRQX2M \RdData_reg[3]  (.SI(RdData[2]), 
	.SE(FE_OFN17_SE), 
	.RN(FE_OFN4_RST_SCAN_REF), 
	.Q(RdData[3]), 
	.D(n180), 
	.CK(CLK_SCAN_REF__L5_N14));
   SDFFRQX2M \RdData_reg[2]  (.SI(RdData[1]), 
	.SE(test_se), 
	.RN(FE_OFN4_RST_SCAN_REF), 
	.Q(RdData[2]), 
	.D(n179), 
	.CK(CLK_SCAN_REF__L5_N14));
   SDFFRQX2M \RdData_reg[1]  (.SI(RdData[0]), 
	.SE(FE_OFN17_SE), 
	.RN(FE_OFN4_RST_SCAN_REF), 
	.Q(RdData[1]), 
	.D(n178), 
	.CK(CLK_SCAN_REF__L5_N14));
   SDFFRQX2M \RdData_reg[0]  (.SI(RdData_Valid), 
	.SE(FE_OFN17_SE), 
	.RN(FE_OFN4_RST_SCAN_REF), 
	.Q(RdData[0]), 
	.D(n177), 
	.CK(CLK_SCAN_REF__L5_N14));
   SDFFRQX2M \Reg_File_reg[13][7]  (.SI(\Reg_File[13][6] ), 
	.SE(FE_OFN20_SE), 
	.RN(FE_OFN4_RST_SCAN_REF), 
	.Q(\Reg_File[13][7] ), 
	.D(n296), 
	.CK(CLK_SCAN_REF__L5_N9));
   SDFFRQX2M \Reg_File_reg[13][6]  (.SI(\Reg_File[13][5] ), 
	.SE(FE_OFN18_SE), 
	.RN(FE_OFN4_RST_SCAN_REF), 
	.Q(\Reg_File[13][6] ), 
	.D(n295), 
	.CK(CLK_SCAN_REF__L5_N9));
   SDFFRQX2M \Reg_File_reg[13][5]  (.SI(\Reg_File[13][4] ), 
	.SE(FE_OFN18_SE), 
	.RN(FE_OFN4_RST_SCAN_REF), 
	.Q(\Reg_File[13][5] ), 
	.D(n294), 
	.CK(CLK_SCAN_REF__L5_N9));
   SDFFRQX2M \Reg_File_reg[13][4]  (.SI(\Reg_File[13][3] ), 
	.SE(FE_OFN20_SE), 
	.RN(FE_OFN4_RST_SCAN_REF), 
	.Q(\Reg_File[13][4] ), 
	.D(n293), 
	.CK(CLK_SCAN_REF__L5_N9));
   SDFFRQX2M \Reg_File_reg[13][3]  (.SI(\Reg_File[13][2] ), 
	.SE(FE_OFN18_SE), 
	.RN(FE_OFN4_RST_SCAN_REF), 
	.Q(\Reg_File[13][3] ), 
	.D(n292), 
	.CK(CLK_SCAN_REF__L5_N8));
   SDFFRQX2M \Reg_File_reg[13][2]  (.SI(\Reg_File[13][1] ), 
	.SE(FE_OFN18_SE), 
	.RN(FE_OFN4_RST_SCAN_REF), 
	.Q(\Reg_File[13][2] ), 
	.D(n291), 
	.CK(CLK_SCAN_REF__L5_N8));
   SDFFRQX2M \Reg_File_reg[13][1]  (.SI(\Reg_File[13][0] ), 
	.SE(FE_OFN18_SE), 
	.RN(FE_OFN4_RST_SCAN_REF), 
	.Q(\Reg_File[13][1] ), 
	.D(n290), 
	.CK(CLK_SCAN_REF__L5_N8));
   SDFFRQX2M \Reg_File_reg[13][0]  (.SI(\Reg_File[12][7] ), 
	.SE(FE_OFN18_SE), 
	.RN(FE_OFN4_RST_SCAN_REF), 
	.Q(\Reg_File[13][0] ), 
	.D(n289), 
	.CK(CLK_SCAN_REF__L5_N8));
   SDFFRQX2M \Reg_File_reg[9][7]  (.SI(\Reg_File[9][6] ), 
	.SE(test_se), 
	.RN(RST_regfile), 
	.Q(\Reg_File[9][7] ), 
	.D(n264), 
	.CK(CLK_SCAN_REF__L5_N14));
   SDFFRQX2M \Reg_File_reg[9][6]  (.SI(\Reg_File[9][5] ), 
	.SE(test_se), 
	.RN(FE_OFN3_RST_SCAN_REF), 
	.Q(\Reg_File[9][6] ), 
	.D(n263), 
	.CK(CLK_SCAN_REF__L5_N15));
   SDFFRQX2M \Reg_File_reg[9][5]  (.SI(\Reg_File[9][4] ), 
	.SE(test_se), 
	.RN(FE_OFN3_RST_SCAN_REF), 
	.Q(\Reg_File[9][5] ), 
	.D(n262), 
	.CK(CLK_SCAN_REF__L5_N15));
   SDFFRQX2M \Reg_File_reg[9][4]  (.SI(\Reg_File[9][3] ), 
	.SE(test_se), 
	.RN(FE_OFN3_RST_SCAN_REF), 
	.Q(\Reg_File[9][4] ), 
	.D(n261), 
	.CK(CLK_SCAN_REF__L5_N15));
   SDFFRQX2M \Reg_File_reg[9][3]  (.SI(\Reg_File[9][2] ), 
	.SE(test_se), 
	.RN(FE_OFN3_RST_SCAN_REF), 
	.Q(\Reg_File[9][3] ), 
	.D(n260), 
	.CK(CLK_SCAN_REF__L5_N15));
   SDFFRQX2M \Reg_File_reg[9][2]  (.SI(\Reg_File[9][1] ), 
	.SE(test_se), 
	.RN(FE_OFN3_RST_SCAN_REF), 
	.Q(\Reg_File[9][2] ), 
	.D(n259), 
	.CK(CLK_SCAN_REF__L5_N15));
   SDFFRQX2M \Reg_File_reg[9][1]  (.SI(\Reg_File[9][0] ), 
	.SE(test_se), 
	.RN(FE_OFN3_RST_SCAN_REF), 
	.Q(\Reg_File[9][1] ), 
	.D(n258), 
	.CK(CLK_SCAN_REF__L5_N15));
   SDFFRQX2M \Reg_File_reg[9][0]  (.SI(\Reg_File[8][7] ), 
	.SE(test_se), 
	.RN(FE_OFN3_RST_SCAN_REF), 
	.Q(\Reg_File[9][0] ), 
	.D(n257), 
	.CK(CLK_SCAN_REF__L5_N14));
   SDFFRQX2M \Reg_File_reg[14][7]  (.SI(\Reg_File[14][6] ), 
	.SE(FE_OFN18_SE), 
	.RN(FE_OFN4_RST_SCAN_REF), 
	.Q(\Reg_File[14][7] ), 
	.D(n304), 
	.CK(CLK_SCAN_REF__L5_N9));
   SDFFRQX2M \Reg_File_reg[14][6]  (.SI(\Reg_File[14][5] ), 
	.SE(FE_OFN18_SE), 
	.RN(FE_OFN4_RST_SCAN_REF), 
	.Q(\Reg_File[14][6] ), 
	.D(n303), 
	.CK(CLK_SCAN_REF__L5_N8));
   SDFFRQX2M \Reg_File_reg[14][5]  (.SI(\Reg_File[14][4] ), 
	.SE(FE_OFN18_SE), 
	.RN(FE_OFN4_RST_SCAN_REF), 
	.Q(\Reg_File[14][5] ), 
	.D(n302), 
	.CK(CLK_SCAN_REF__L5_N8));
   SDFFRQX2M \Reg_File_reg[14][4]  (.SI(\Reg_File[14][3] ), 
	.SE(FE_OFN18_SE), 
	.RN(FE_OFN4_RST_SCAN_REF), 
	.Q(\Reg_File[14][4] ), 
	.D(n301), 
	.CK(CLK_SCAN_REF__L5_N8));
   SDFFRQX2M \Reg_File_reg[14][3]  (.SI(\Reg_File[14][2] ), 
	.SE(FE_OFN18_SE), 
	.RN(FE_OFN4_RST_SCAN_REF), 
	.Q(\Reg_File[14][3] ), 
	.D(n300), 
	.CK(CLK_SCAN_REF__L5_N8));
   SDFFRQX2M \Reg_File_reg[14][2]  (.SI(\Reg_File[14][1] ), 
	.SE(FE_OFN18_SE), 
	.RN(FE_OFN4_RST_SCAN_REF), 
	.Q(\Reg_File[14][2] ), 
	.D(n299), 
	.CK(CLK_SCAN_REF__L5_N8));
   SDFFRQX2M \Reg_File_reg[14][1]  (.SI(\Reg_File[14][0] ), 
	.SE(FE_OFN18_SE), 
	.RN(FE_OFN4_RST_SCAN_REF), 
	.Q(\Reg_File[14][1] ), 
	.D(n298), 
	.CK(CLK_SCAN_REF__L5_N8));
   SDFFRQX2M \Reg_File_reg[14][0]  (.SI(\Reg_File[13][7] ), 
	.SE(FE_OFN18_SE), 
	.RN(FE_OFN4_RST_SCAN_REF), 
	.Q(\Reg_File[14][0] ), 
	.D(n297), 
	.CK(CLK_SCAN_REF__L5_N8));
   SDFFRQX2M \Reg_File_reg[12][7]  (.SI(\Reg_File[12][6] ), 
	.SE(FE_OFN18_SE), 
	.RN(FE_OFN4_RST_SCAN_REF), 
	.Q(\Reg_File[12][7] ), 
	.D(n288), 
	.CK(CLK_SCAN_REF__L5_N8));
   SDFFRQX2M \Reg_File_reg[12][6]  (.SI(\Reg_File[12][5] ), 
	.SE(FE_OFN18_SE), 
	.RN(FE_OFN4_RST_SCAN_REF), 
	.Q(\Reg_File[12][6] ), 
	.D(n287), 
	.CK(CLK_SCAN_REF__L5_N8));
   SDFFRQX2M \Reg_File_reg[12][5]  (.SI(\Reg_File[12][4] ), 
	.SE(FE_OFN18_SE), 
	.RN(FE_OFN4_RST_SCAN_REF), 
	.Q(\Reg_File[12][5] ), 
	.D(n286), 
	.CK(CLK_SCAN_REF__L5_N8));
   SDFFRQX2M \Reg_File_reg[12][4]  (.SI(\Reg_File[12][3] ), 
	.SE(FE_OFN18_SE), 
	.RN(FE_OFN4_RST_SCAN_REF), 
	.Q(\Reg_File[12][4] ), 
	.D(n285), 
	.CK(CLK_SCAN_REF__L5_N8));
   SDFFRQX2M \Reg_File_reg[12][3]  (.SI(\Reg_File[12][2] ), 
	.SE(FE_OFN18_SE), 
	.RN(FE_OFN4_RST_SCAN_REF), 
	.Q(\Reg_File[12][3] ), 
	.D(n284), 
	.CK(CLK_SCAN_REF__L5_N8));
   SDFFRQX2M \Reg_File_reg[12][2]  (.SI(\Reg_File[12][1] ), 
	.SE(FE_OFN18_SE), 
	.RN(FE_OFN4_RST_SCAN_REF), 
	.Q(\Reg_File[12][2] ), 
	.D(n283), 
	.CK(CLK_SCAN_REF__L5_N13));
   SDFFRQX2M \Reg_File_reg[12][1]  (.SI(\Reg_File[12][0] ), 
	.SE(FE_OFN18_SE), 
	.RN(FE_OFN4_RST_SCAN_REF), 
	.Q(\Reg_File[12][1] ), 
	.D(n282), 
	.CK(CLK_SCAN_REF__L5_N13));
   SDFFRQX2M \Reg_File_reg[12][0]  (.SI(\Reg_File[11][7] ), 
	.SE(FE_OFN18_SE), 
	.RN(FE_OFN4_RST_SCAN_REF), 
	.Q(\Reg_File[12][0] ), 
	.D(n281), 
	.CK(CLK_SCAN_REF__L5_N13));
   SDFFRQX2M \Reg_File_reg[10][7]  (.SI(\Reg_File[10][6] ), 
	.SE(test_se), 
	.RN(FE_OFN3_RST_SCAN_REF), 
	.Q(\Reg_File[10][7] ), 
	.D(n272), 
	.CK(CLK_SCAN_REF__L5_N15));
   SDFFRQX2M \Reg_File_reg[10][6]  (.SI(\Reg_File[10][5] ), 
	.SE(test_se), 
	.RN(FE_OFN3_RST_SCAN_REF), 
	.Q(\Reg_File[10][6] ), 
	.D(n271), 
	.CK(CLK_SCAN_REF__L5_N15));
   SDFFRQX2M \Reg_File_reg[10][5]  (.SI(\Reg_File[10][4] ), 
	.SE(test_se), 
	.RN(FE_OFN3_RST_SCAN_REF), 
	.Q(\Reg_File[10][5] ), 
	.D(n270), 
	.CK(CLK_SCAN_REF__L5_N15));
   SDFFRQX2M \Reg_File_reg[10][4]  (.SI(\Reg_File[10][3] ), 
	.SE(test_se), 
	.RN(FE_OFN3_RST_SCAN_REF), 
	.Q(\Reg_File[10][4] ), 
	.D(n269), 
	.CK(CLK_SCAN_REF__L5_N15));
   SDFFRQX2M \Reg_File_reg[10][3]  (.SI(\Reg_File[10][2] ), 
	.SE(test_se), 
	.RN(FE_OFN3_RST_SCAN_REF), 
	.Q(\Reg_File[10][3] ), 
	.D(n268), 
	.CK(CLK_SCAN_REF__L5_N12));
   SDFFRQX2M \Reg_File_reg[10][2]  (.SI(\Reg_File[10][1] ), 
	.SE(test_se), 
	.RN(FE_OFN3_RST_SCAN_REF), 
	.Q(\Reg_File[10][2] ), 
	.D(n267), 
	.CK(CLK_SCAN_REF__L5_N15));
   SDFFRQX2M \Reg_File_reg[10][1]  (.SI(\Reg_File[10][0] ), 
	.SE(test_se), 
	.RN(FE_OFN3_RST_SCAN_REF), 
	.Q(\Reg_File[10][1] ), 
	.D(n266), 
	.CK(CLK_SCAN_REF__L5_N15));
   SDFFRQX2M \Reg_File_reg[10][0]  (.SI(\Reg_File[9][7] ), 
	.SE(test_se), 
	.RN(FE_OFN3_RST_SCAN_REF), 
	.Q(\Reg_File[10][0] ), 
	.D(n265), 
	.CK(CLK_SCAN_REF__L5_N14));
   SDFFRQX2M \Reg_File_reg[8][7]  (.SI(\Reg_File[8][6] ), 
	.SE(test_se), 
	.RN(FE_OFN3_RST_SCAN_REF), 
	.Q(\Reg_File[8][7] ), 
	.D(n256), 
	.CK(CLK_SCAN_REF__L5_N15));
   SDFFRQX2M \Reg_File_reg[8][6]  (.SI(\Reg_File[8][5] ), 
	.SE(test_se), 
	.RN(FE_OFN3_RST_SCAN_REF), 
	.Q(\Reg_File[8][6] ), 
	.D(n255), 
	.CK(CLK_SCAN_REF__L5_N15));
   SDFFRQX2M \Reg_File_reg[8][5]  (.SI(\Reg_File[8][4] ), 
	.SE(test_se), 
	.RN(FE_OFN3_RST_SCAN_REF), 
	.Q(\Reg_File[8][5] ), 
	.D(n254), 
	.CK(CLK_SCAN_REF__L5_N10));
   SDFFRQX2M \Reg_File_reg[8][4]  (.SI(\Reg_File[8][3] ), 
	.SE(test_se), 
	.RN(FE_OFN3_RST_SCAN_REF), 
	.Q(\Reg_File[8][4] ), 
	.D(n253), 
	.CK(CLK_SCAN_REF__L5_N15));
   SDFFRQX2M \Reg_File_reg[8][3]  (.SI(\Reg_File[8][2] ), 
	.SE(test_se), 
	.RN(FE_OFN3_RST_SCAN_REF), 
	.Q(\Reg_File[8][3] ), 
	.D(n252), 
	.CK(CLK_SCAN_REF__L5_N15));
   SDFFRQX2M \Reg_File_reg[8][2]  (.SI(\Reg_File[8][1] ), 
	.SE(test_se), 
	.RN(FE_OFN3_RST_SCAN_REF), 
	.Q(\Reg_File[8][2] ), 
	.D(n251), 
	.CK(CLK_SCAN_REF__L5_N15));
   SDFFRQX2M \Reg_File_reg[8][1]  (.SI(\Reg_File[8][0] ), 
	.SE(test_se), 
	.RN(FE_OFN3_RST_SCAN_REF), 
	.Q(\Reg_File[8][1] ), 
	.D(n250), 
	.CK(CLK_SCAN_REF__L5_N15));
   SDFFRQX2M \Reg_File_reg[8][0]  (.SI(\Reg_File[7][7] ), 
	.SE(test_se), 
	.RN(FE_OFN3_RST_SCAN_REF), 
	.Q(\Reg_File[8][0] ), 
	.D(n249), 
	.CK(CLK_SCAN_REF__L5_N14));
   SDFFRQX2M \Reg_File_reg[4][7]  (.SI(\Reg_File[4][6] ), 
	.SE(FE_OFN18_SE), 
	.RN(FE_OFN4_RST_SCAN_REF), 
	.Q(\Reg_File[4][7] ), 
	.D(n224), 
	.CK(CLK_SCAN_REF__L5_N13));
   SDFFRQX2M \Reg_File_reg[4][6]  (.SI(\Reg_File[4][5] ), 
	.SE(FE_OFN18_SE), 
	.RN(FE_OFN3_RST_SCAN_REF), 
	.Q(\Reg_File[4][6] ), 
	.D(n223), 
	.CK(CLK_SCAN_REF__L5_N13));
   SDFFRQX2M \Reg_File_reg[4][5]  (.SI(\Reg_File[4][4] ), 
	.SE(test_se), 
	.RN(FE_OFN3_RST_SCAN_REF), 
	.Q(\Reg_File[4][5] ), 
	.D(n222), 
	.CK(CLK_SCAN_REF__L5_N13));
   SDFFRQX2M \Reg_File_reg[4][4]  (.SI(\Reg_File[4][3] ), 
	.SE(test_se), 
	.RN(FE_OFN3_RST_SCAN_REF), 
	.Q(\Reg_File[4][4] ), 
	.D(n221), 
	.CK(CLK_SCAN_REF__L5_N13));
   SDFFRQX2M \Reg_File_reg[4][3]  (.SI(\Reg_File[4][2] ), 
	.SE(FE_OFN18_SE), 
	.RN(FE_OFN3_RST_SCAN_REF), 
	.Q(\Reg_File[4][3] ), 
	.D(n220), 
	.CK(CLK_SCAN_REF__L5_N13));
   SDFFRQX2M \Reg_File_reg[4][2]  (.SI(\Reg_File[4][1] ), 
	.SE(FE_OFN18_SE), 
	.RN(FE_OFN3_RST_SCAN_REF), 
	.Q(\Reg_File[4][2] ), 
	.D(n219), 
	.CK(CLK_SCAN_REF__L5_N13));
   SDFFRQX2M \Reg_File_reg[4][1]  (.SI(\Reg_File[4][0] ), 
	.SE(FE_OFN18_SE), 
	.RN(FE_OFN3_RST_SCAN_REF), 
	.Q(\Reg_File[4][1] ), 
	.D(n218), 
	.CK(CLK_SCAN_REF__L5_N13));
   SDFFRQX2M \Reg_File_reg[4][0]  (.SI(REG3[7]), 
	.SE(FE_OFN18_SE), 
	.RN(FE_OFN4_RST_SCAN_REF), 
	.Q(\Reg_File[4][0] ), 
	.D(n217), 
	.CK(CLK_SCAN_REF__L5_N13));
   SDFFRQX2M \Reg_File_reg[15][7]  (.SI(\Reg_File[15][6] ), 
	.SE(FE_OFN20_SE), 
	.RN(FE_OFN4_RST_SCAN_REF), 
	.Q(\Reg_File[15][7] ), 
	.D(n312), 
	.CK(CLK_SCAN_REF__L5_N9));
   SDFFRQX2M \Reg_File_reg[15][6]  (.SI(\Reg_File[15][5] ), 
	.SE(FE_OFN20_SE), 
	.RN(FE_OFN4_RST_SCAN_REF), 
	.Q(\Reg_File[15][6] ), 
	.D(n311), 
	.CK(CLK_SCAN_REF__L5_N9));
   SDFFRQX2M \Reg_File_reg[15][5]  (.SI(\Reg_File[15][4] ), 
	.SE(FE_OFN20_SE), 
	.RN(FE_OFN4_RST_SCAN_REF), 
	.Q(\Reg_File[15][5] ), 
	.D(n310), 
	.CK(CLK_SCAN_REF__L5_N9));
   SDFFRQX2M \Reg_File_reg[15][4]  (.SI(\Reg_File[15][3] ), 
	.SE(FE_OFN18_SE), 
	.RN(FE_OFN4_RST_SCAN_REF), 
	.Q(\Reg_File[15][4] ), 
	.D(n309), 
	.CK(CLK_SCAN_REF__L5_N8));
   SDFFRQX2M \Reg_File_reg[15][3]  (.SI(\Reg_File[15][2] ), 
	.SE(test_se), 
	.RN(FE_OFN4_RST_SCAN_REF), 
	.Q(\Reg_File[15][3] ), 
	.D(n308), 
	.CK(CLK_SCAN_REF__L5_N8));
   SDFFRQX2M \Reg_File_reg[15][2]  (.SI(\Reg_File[15][1] ), 
	.SE(test_se), 
	.RN(FE_OFN4_RST_SCAN_REF), 
	.Q(\Reg_File[15][2] ), 
	.D(n307), 
	.CK(CLK_SCAN_REF__L5_N12));
   SDFFRQX2M \Reg_File_reg[15][1]  (.SI(\Reg_File[15][0] ), 
	.SE(FE_OFN18_SE), 
	.RN(FE_OFN4_RST_SCAN_REF), 
	.Q(\Reg_File[15][1] ), 
	.D(n306), 
	.CK(CLK_SCAN_REF__L5_N8));
   SDFFRQX2M \Reg_File_reg[15][0]  (.SI(\Reg_File[14][7] ), 
	.SE(FE_OFN18_SE), 
	.RN(FE_OFN4_RST_SCAN_REF), 
	.Q(\Reg_File[15][0] ), 
	.D(n305), 
	.CK(CLK_SCAN_REF__L5_N8));
   SDFFRQX2M \Reg_File_reg[11][7]  (.SI(\Reg_File[11][6] ), 
	.SE(test_se), 
	.RN(FE_OFN3_RST_SCAN_REF), 
	.Q(\Reg_File[11][7] ), 
	.D(n280), 
	.CK(CLK_SCAN_REF__L5_N8));
   SDFFRQX2M \Reg_File_reg[11][6]  (.SI(test_si3), 
	.SE(test_se), 
	.RN(FE_OFN3_RST_SCAN_REF), 
	.Q(\Reg_File[11][6] ), 
	.D(n279), 
	.CK(CLK_SCAN_REF__L5_N12));
   SDFFRQX2M \Reg_File_reg[11][4]  (.SI(\Reg_File[11][3] ), 
	.SE(test_se), 
	.RN(FE_OFN3_RST_SCAN_REF), 
	.Q(\Reg_File[11][4] ), 
	.D(n277), 
	.CK(CLK_SCAN_REF__L5_N15));
   SDFFRQX2M \Reg_File_reg[11][3]  (.SI(\Reg_File[11][2] ), 
	.SE(test_se), 
	.RN(FE_OFN3_RST_SCAN_REF), 
	.Q(\Reg_File[11][3] ), 
	.D(n276), 
	.CK(CLK_SCAN_REF__L5_N12));
   SDFFRQX2M \Reg_File_reg[11][2]  (.SI(\Reg_File[11][1] ), 
	.SE(test_se), 
	.RN(FE_OFN3_RST_SCAN_REF), 
	.Q(\Reg_File[11][2] ), 
	.D(n275), 
	.CK(CLK_SCAN_REF__L5_N12));
   SDFFRQX2M \Reg_File_reg[11][1]  (.SI(\Reg_File[11][0] ), 
	.SE(test_se), 
	.RN(FE_OFN3_RST_SCAN_REF), 
	.Q(\Reg_File[11][1] ), 
	.D(n274), 
	.CK(CLK_SCAN_REF__L5_N15));
   SDFFRQX2M \Reg_File_reg[11][0]  (.SI(\Reg_File[10][7] ), 
	.SE(test_se), 
	.RN(FE_OFN3_RST_SCAN_REF), 
	.Q(\Reg_File[11][0] ), 
	.D(n273), 
	.CK(CLK_SCAN_REF__L5_N12));
   SDFFRQX2M \Reg_File_reg[7][7]  (.SI(\Reg_File[7][6] ), 
	.SE(test_se), 
	.RN(FE_OFN3_RST_SCAN_REF), 
	.Q(\Reg_File[7][7] ), 
	.D(n248), 
	.CK(CLK_SCAN_REF__L5_N12));
   SDFFRQX2M \Reg_File_reg[7][6]  (.SI(\Reg_File[7][5] ), 
	.SE(test_se), 
	.RN(FE_OFN3_RST_SCAN_REF), 
	.Q(\Reg_File[7][6] ), 
	.D(n247), 
	.CK(CLK_SCAN_REF__L5_N12));
   SDFFRQX2M \Reg_File_reg[7][5]  (.SI(\Reg_File[7][4] ), 
	.SE(test_se), 
	.RN(FE_OFN3_RST_SCAN_REF), 
	.Q(\Reg_File[7][5] ), 
	.D(n246), 
	.CK(CLK_SCAN_REF__L5_N12));
   SDFFRQX2M \Reg_File_reg[7][4]  (.SI(\Reg_File[7][3] ), 
	.SE(test_se), 
	.RN(FE_OFN3_RST_SCAN_REF), 
	.Q(\Reg_File[7][4] ), 
	.D(n245), 
	.CK(CLK_SCAN_REF__L5_N12));
   SDFFRQX2M \Reg_File_reg[7][3]  (.SI(\Reg_File[7][2] ), 
	.SE(test_se), 
	.RN(FE_OFN3_RST_SCAN_REF), 
	.Q(\Reg_File[7][3] ), 
	.D(n244), 
	.CK(CLK_SCAN_REF__L5_N12));
   SDFFRQX2M \Reg_File_reg[7][2]  (.SI(\Reg_File[7][1] ), 
	.SE(test_se), 
	.RN(FE_OFN3_RST_SCAN_REF), 
	.Q(\Reg_File[7][2] ), 
	.D(n243), 
	.CK(CLK_SCAN_REF__L5_N12));
   SDFFRQX2M \Reg_File_reg[7][1]  (.SI(\Reg_File[7][0] ), 
	.SE(test_se), 
	.RN(FE_OFN3_RST_SCAN_REF), 
	.Q(\Reg_File[7][1] ), 
	.D(n242), 
	.CK(CLK_SCAN_REF__L5_N12));
   SDFFRQX2M \Reg_File_reg[7][0]  (.SI(\Reg_File[6][7] ), 
	.SE(test_se), 
	.RN(FE_OFN4_RST_SCAN_REF), 
	.Q(\Reg_File[7][0] ), 
	.D(n241), 
	.CK(CLK_SCAN_REF__L5_N12));
   SDFFRQX2M \Reg_File_reg[5][7]  (.SI(\Reg_File[5][6] ), 
	.SE(FE_OFN18_SE), 
	.RN(FE_OFN4_RST_SCAN_REF), 
	.Q(\Reg_File[5][7] ), 
	.D(n232), 
	.CK(CLK_SCAN_REF__L5_N13));
   SDFFRQX2M \Reg_File_reg[5][6]  (.SI(\Reg_File[5][5] ), 
	.SE(FE_OFN18_SE), 
	.RN(FE_OFN3_RST_SCAN_REF), 
	.Q(\Reg_File[5][6] ), 
	.D(n231), 
	.CK(CLK_SCAN_REF__L5_N13));
   SDFFRQX2M \Reg_File_reg[5][5]  (.SI(\Reg_File[5][4] ), 
	.SE(test_se), 
	.RN(FE_OFN3_RST_SCAN_REF), 
	.Q(\Reg_File[5][5] ), 
	.D(n230), 
	.CK(CLK_SCAN_REF__L5_N13));
   SDFFRQX2M \Reg_File_reg[5][4]  (.SI(\Reg_File[5][3] ), 
	.SE(test_se), 
	.RN(FE_OFN3_RST_SCAN_REF), 
	.Q(\Reg_File[5][4] ), 
	.D(n229), 
	.CK(CLK_SCAN_REF__L5_N13));
   SDFFRQX2M \Reg_File_reg[5][3]  (.SI(\Reg_File[5][2] ), 
	.SE(test_se), 
	.RN(FE_OFN3_RST_SCAN_REF), 
	.Q(\Reg_File[5][3] ), 
	.D(n228), 
	.CK(CLK_SCAN_REF__L5_N13));
   SDFFRQX2M \Reg_File_reg[5][2]  (.SI(\Reg_File[5][1] ), 
	.SE(FE_OFN18_SE), 
	.RN(FE_OFN3_RST_SCAN_REF), 
	.Q(\Reg_File[5][2] ), 
	.D(n227), 
	.CK(CLK_SCAN_REF__L5_N13));
   SDFFRQX2M \Reg_File_reg[5][1]  (.SI(\Reg_File[5][0] ), 
	.SE(FE_OFN18_SE), 
	.RN(FE_OFN3_RST_SCAN_REF), 
	.Q(\Reg_File[5][1] ), 
	.D(n226), 
	.CK(CLK_SCAN_REF__L5_N13));
   SDFFRQX2M \Reg_File_reg[5][0]  (.SI(\Reg_File[4][7] ), 
	.SE(FE_OFN18_SE), 
	.RN(FE_OFN4_RST_SCAN_REF), 
	.Q(\Reg_File[5][0] ), 
	.D(n225), 
	.CK(CLK_SCAN_REF__L5_N13));
   SDFFRQX2M \Reg_File_reg[6][7]  (.SI(\Reg_File[6][6] ), 
	.SE(test_se), 
	.RN(FE_OFN3_RST_SCAN_REF), 
	.Q(\Reg_File[6][7] ), 
	.D(n240), 
	.CK(CLK_SCAN_REF__L5_N12));
   SDFFRQX2M \Reg_File_reg[6][6]  (.SI(\Reg_File[6][5] ), 
	.SE(test_se), 
	.RN(FE_OFN3_RST_SCAN_REF), 
	.Q(\Reg_File[6][6] ), 
	.D(n239), 
	.CK(CLK_SCAN_REF__L5_N12));
   SDFFRQX2M \Reg_File_reg[6][5]  (.SI(\Reg_File[6][4] ), 
	.SE(test_se), 
	.RN(FE_OFN3_RST_SCAN_REF), 
	.Q(\Reg_File[6][5] ), 
	.D(n238), 
	.CK(CLK_SCAN_REF__L5_N12));
   SDFFRQX2M \Reg_File_reg[6][4]  (.SI(\Reg_File[6][3] ), 
	.SE(test_se), 
	.RN(FE_OFN3_RST_SCAN_REF), 
	.Q(\Reg_File[6][4] ), 
	.D(n237), 
	.CK(CLK_SCAN_REF__L5_N12));
   SDFFRQX2M \Reg_File_reg[6][3]  (.SI(\Reg_File[6][2] ), 
	.SE(test_se), 
	.RN(FE_OFN3_RST_SCAN_REF), 
	.Q(\Reg_File[6][3] ), 
	.D(n236), 
	.CK(CLK_SCAN_REF__L5_N13));
   SDFFRQX2M \Reg_File_reg[6][2]  (.SI(\Reg_File[6][1] ), 
	.SE(FE_OFN18_SE), 
	.RN(FE_OFN3_RST_SCAN_REF), 
	.Q(\Reg_File[6][2] ), 
	.D(n235), 
	.CK(CLK_SCAN_REF__L5_N12));
   SDFFRQX2M \Reg_File_reg[6][1]  (.SI(\Reg_File[6][0] ), 
	.SE(FE_OFN18_SE), 
	.RN(FE_OFN3_RST_SCAN_REF), 
	.Q(\Reg_File[6][1] ), 
	.D(n234), 
	.CK(CLK_SCAN_REF__L5_N12));
   SDFFRQX2M \Reg_File_reg[6][0]  (.SI(\Reg_File[5][7] ), 
	.SE(FE_OFN18_SE), 
	.RN(FE_OFN4_RST_SCAN_REF), 
	.Q(\Reg_File[6][0] ), 
	.D(n233), 
	.CK(CLK_SCAN_REF__L5_N12));
   SDFFRQX2M \Reg_File_reg[1][7]  (.SI(REG1[6]), 
	.SE(test_se), 
	.RN(RST_regfile), 
	.Q(REG1[7]), 
	.D(n200), 
	.CK(CLK_SCAN_REF__L5_N14));
   SDFFRQX2M \Reg_File_reg[1][6]  (.SI(n511), 
	.SE(test_se), 
	.RN(FE_OFN3_RST_SCAN_REF), 
	.Q(REG1[6]), 
	.D(n199), 
	.CK(CLK_SCAN_REF__L5_N10));
   SDFFRQX2M \Reg_File_reg[1][1]  (.SI(n513), 
	.SE(test_se), 
	.RN(RST_regfile), 
	.Q(REG1[1]), 
	.D(n194), 
	.CK(CLK_SCAN_REF__L5_N10));
   SDFFRQX2M \Reg_File_reg[0][0]  (.SI(RdData[7]), 
	.SE(test_se), 
	.RN(RST_regfile), 
	.Q(REG0[0]), 
	.D(n185), 
	.CK(CLK_SCAN_REF__L5_N14));
   SDFFRQX2M \Reg_File_reg[0][7]  (.SI(REG0[6]), 
	.SE(test_se), 
	.RN(RST_regfile), 
	.Q(REG0[7]), 
	.D(n192), 
	.CK(CLK_SCAN_REF__L5_N14));
   SDFFRQX2M \Reg_File_reg[0][6]  (.SI(test_si2), 
	.SE(test_se), 
	.RN(RST_regfile), 
	.Q(REG0[6]), 
	.D(n191), 
	.CK(CLK_SCAN_REF__L5_N10));
   SDFFRQX2M \Reg_File_reg[0][4]  (.SI(REG0[3]), 
	.SE(test_se), 
	.RN(FE_OFN3_RST_SCAN_REF), 
	.Q(REG0[4]), 
	.D(n189), 
	.CK(CLK_SCAN_REF__L5_N10));
   SDFFRQX2M \Reg_File_reg[0][3]  (.SI(REG0[2]), 
	.SE(test_se), 
	.RN(FE_OFN3_RST_SCAN_REF), 
	.Q(REG0[3]), 
	.D(n188), 
	.CK(CLK_SCAN_REF__L5_N10));
   SDFFRQX2M \Reg_File_reg[0][2]  (.SI(REG0[1]), 
	.SE(test_se), 
	.RN(FE_OFN3_RST_SCAN_REF), 
	.Q(REG0[2]), 
	.D(n187), 
	.CK(CLK_SCAN_REF__L5_N10));
   SDFFRQX2M \Reg_File_reg[0][1]  (.SI(REG0[0]), 
	.SE(test_se), 
	.RN(FE_OFN3_RST_SCAN_REF), 
	.Q(REG0[1]), 
	.D(n186), 
	.CK(CLK_SCAN_REF__L5_N10));
   SDFFRQX2M \Reg_File_reg[2][1]  (.SI(REG2[0]), 
	.SE(FE_OFN20_SE), 
	.RN(FE_OFN4_RST_SCAN_REF), 
	.Q(REG2[1]), 
	.D(n202), 
	.CK(CLK_SCAN_REF__L5_N14));
   SDFFSQX4M \Reg_File_reg[2][0]  (.SN(FE_OFN4_RST_SCAN_REF), 
	.SI(REG1[7]), 
	.SE(test_se), 
	.Q(REG2[0]), 
	.D(n201), 
	.CK(CLK_SCAN_REF__L5_N14));
   SDFFRQX2M RdData_Valid_reg (.SI(test_si1), 
	.SE(FE_OFN17_SE), 
	.RN(FE_OFN4_RST_SCAN_REF), 
	.Q(RdData_Valid), 
	.D(n313), 
	.CK(CLK_regfile));
   SDFFRQX2M \Reg_File_reg[3][7]  (.SI(REG3[6]), 
	.SE(FE_OFN20_SE), 
	.RN(FE_OFN4_RST_SCAN_REF), 
	.Q(REG3[7]), 
	.D(n216), 
	.CK(CLK_SCAN_REF__L5_N9));
   SDFFRQX2M \Reg_File_reg[2][6]  (.SI(REG2[5]), 
	.SE(FE_OFN20_SE), 
	.RN(FE_OFN4_RST_SCAN_REF), 
	.Q(REG2[6]), 
	.D(n207), 
	.CK(CLK_SCAN_REF__L5_N9));
   SDFFRQX2M \Reg_File_reg[2][3]  (.SI(n519), 
	.SE(FE_OFN17_SE), 
	.RN(FE_OFN4_RST_SCAN_REF), 
	.Q(n518), 
	.D(n204), 
	.CK(CLK_SCAN_REF__L5_N9));
   SDFFRQX2M \Reg_File_reg[2][5]  (.SI(REG2[4]), 
	.SE(FE_OFN20_SE), 
	.RN(FE_OFN4_RST_SCAN_REF), 
	.Q(REG2[5]), 
	.D(n206), 
	.CK(CLK_SCAN_REF__L5_N9));
   SDFFRQX2M \Reg_File_reg[2][4]  (.SI(n518), 
	.SE(FE_OFN20_SE), 
	.RN(FE_OFN4_RST_SCAN_REF), 
	.Q(REG2[4]), 
	.D(n205), 
	.CK(CLK_regfile));
   SDFFSQX2M \Reg_File_reg[2][7]  (.SN(FE_OFN4_RST_SCAN_REF), 
	.SI(REG2[6]), 
	.SE(FE_OFN20_SE), 
	.Q(REG2[7]), 
	.D(n208), 
	.CK(CLK_SCAN_REF__L5_N9));
   SDFFRQX2M \Reg_File_reg[2][2]  (.SI(REG2[1]), 
	.SE(FE_OFN17_SE), 
	.RN(FE_OFN4_RST_SCAN_REF), 
	.Q(n519), 
	.D(n203), 
	.CK(CLK_SCAN_REF__L5_N14));
   SDFFRQX2M \Reg_File_reg[1][5]  (.SI(n512), 
	.SE(test_se), 
	.RN(FE_OFN3_RST_SCAN_REF), 
	.Q(n511), 
	.D(n198), 
	.CK(CLK_SCAN_REF__L5_N10));
   SDFFRQX2M \Reg_File_reg[1][0]  (.SI(REG0[7]), 
	.SE(test_se), 
	.RN(RST_regfile), 
	.Q(n513), 
	.D(n193), 
	.CK(CLK_SCAN_REF__L5_N14));
   SDFFRQX2M \Reg_File_reg[1][4]  (.SI(REG1[3]), 
	.SE(test_se), 
	.RN(FE_OFN3_RST_SCAN_REF), 
	.Q(n512), 
	.D(n197), 
	.CK(CLK_SCAN_REF__L5_N10));
   NOR2X6M U141 (.Y(n138), 
	.B(N12), 
	.A(N11));
   NOR2X2M U142 (.Y(n422), 
	.B(n435), 
	.A(n434));
   NOR2X2M U143 (.Y(n424), 
	.B(N12), 
	.A(n435));
   NOR2X2M U144 (.Y(n423), 
	.B(N11), 
	.A(n434));
   CLKINVX2M U145 (.Y(REG2[2]), 
	.A(n145));
   INVXLM U146 (.Y(n139), 
	.A(n512));
   CLKINVX2M U147 (.Y(REG1[4]), 
	.A(n139));
   INVXLM U148 (.Y(n141), 
	.A(n511));
   CLKINVX2M U149 (.Y(REG1[5]), 
	.A(n141));
   INVXLM U150 (.Y(n143), 
	.A(n513));
   CLKINVX2M U151 (.Y(REG1[0]), 
	.A(n143));
   INVXLM U152 (.Y(n145), 
	.A(n519));
   CLKINVX1M U167 (.Y(n435), 
	.A(N11));
   CLKNAND2X2M U168 (.Y(n413), 
	.B(n433), 
	.A(N14));
   CLKNAND2X2M U169 (.Y(n425), 
	.B(n432), 
	.A(N13));
   CLKINVX1M U170 (.Y(n432), 
	.A(N14));
   CLKBUFX2M U171 (.Y(REG2[3]), 
	.A(n518));
   CLKNAND2X2M U173 (.Y(n416), 
	.B(N13), 
	.A(N14));
   CLKNAND2X2M U174 (.Y(n419), 
	.B(n432), 
	.A(n433));
   CLKINVX1M U175 (.Y(n501), 
	.A(N11));
   NOR2X2M U176 (.Y(n156), 
	.B(N13), 
	.A(n434));
   NOR2BX2M U177 (.Y(n163), 
	.B(N14), 
	.AN(n165));
   NOR2X2M U178 (.Y(n151), 
	.B(N13), 
	.A(N12));
   NOR2BX2M U179 (.Y(n167), 
	.B(N11), 
	.AN(n175));
   NOR2BX2M U180 (.Y(n152), 
	.B(N11), 
	.AN(n163));
   NOR2BX2M U181 (.Y(n162), 
	.B(n434), 
	.AN(N13));
   NOR2BX2M U182 (.Y(n159), 
	.B(N12), 
	.AN(N13));
   CLKINVX2M U183 (.Y(n509), 
	.A(WrData[7]));
   CLKINVX2M U236 (.Y(n510), 
	.A(n149));
   NOR2BX2M U248 (.Y(n154), 
	.B(n501), 
	.AN(n163));
   NOR2BX2M U249 (.Y(n169), 
	.B(n501), 
	.AN(n175));
   NAND2X2M U250 (.Y(n153), 
	.B(n151), 
	.A(n154));
   NAND2X2M U251 (.Y(n168), 
	.B(n151), 
	.A(n169));
   NAND2X2M U252 (.Y(n171), 
	.B(n156), 
	.A(n169));
   NAND2X2M U253 (.Y(n173), 
	.B(n159), 
	.A(n169));
   NAND2X2M U254 (.Y(n176), 
	.B(n162), 
	.A(n169));
   NAND2X2M U255 (.Y(n160), 
	.B(n154), 
	.A(n159));
   NAND2X2M U256 (.Y(n164), 
	.B(n154), 
	.A(n162));
   NAND2X2M U257 (.Y(n157), 
	.B(n154), 
	.A(n156));
   NAND2X2M U258 (.Y(n150), 
	.B(n152), 
	.A(n151));
   NAND2X2M U259 (.Y(n155), 
	.B(n152), 
	.A(n156));
   NAND2X2M U260 (.Y(n158), 
	.B(n152), 
	.A(n159));
   NAND2X2M U261 (.Y(n161), 
	.B(n152), 
	.A(n162));
   NAND2X2M U262 (.Y(n166), 
	.B(n151), 
	.A(n167));
   NAND2X2M U263 (.Y(n170), 
	.B(n156), 
	.A(n167));
   NAND2X2M U264 (.Y(n172), 
	.B(n159), 
	.A(n167));
   NAND2X2M U265 (.Y(n174), 
	.B(n162), 
	.A(n167));
   NOR2BX2M U266 (.Y(n165), 
	.B(RdEn), 
	.AN(WrEn));
   NAND2BX2M U268 (.Y(n149), 
	.B(RdEn), 
	.AN(WrEn));
   CLKINVX1M U269 (.Y(n433), 
	.A(N13));
   INVX2M U270 (.Y(n434), 
	.A(N12));
   AND2X2M U271 (.Y(n175), 
	.B(n165), 
	.A(N14));
   CLKINVX2M U272 (.Y(n503), 
	.A(WrData[1]));
   CLKINVX2M U273 (.Y(n504), 
	.A(WrData[2]));
   CLKINVX2M U274 (.Y(n502), 
	.A(WrData[0]));
   CLKINVX2M U275 (.Y(n505), 
	.A(WrData[3]));
   CLKINVX2M U276 (.Y(n506), 
	.A(WrData[4]));
   CLKINVX2M U277 (.Y(n507), 
	.A(WrData[5]));
   CLKINVX2M U278 (.Y(n508), 
	.A(WrData[6]));
   AO22X1M U280 (.Y(n177), 
	.B1(n149), 
	.B0(RdData[0]), 
	.A1(n510), 
	.A0(N43));
   AO22X1M U281 (.Y(n178), 
	.B1(n149), 
	.B0(RdData[1]), 
	.A1(n510), 
	.A0(N42));
   AO22X1M U282 (.Y(n179), 
	.B1(n149), 
	.B0(RdData[2]), 
	.A1(n510), 
	.A0(N41));
   AO22X1M U283 (.Y(n180), 
	.B1(n149), 
	.B0(RdData[3]), 
	.A1(n510), 
	.A0(N40));
   AO22X1M U284 (.Y(n181), 
	.B1(n149), 
	.B0(RdData[4]), 
	.A1(n510), 
	.A0(N39));
   AO22X1M U285 (.Y(n182), 
	.B1(n149), 
	.B0(RdData[5]), 
	.A1(n510), 
	.A0(N38));
   AO22X1M U286 (.Y(n183), 
	.B1(n149), 
	.B0(RdData[6]), 
	.A1(n510), 
	.A0(N37));
   AO22X1M U287 (.Y(n184), 
	.B1(n149), 
	.B0(RdData[7]), 
	.A1(n510), 
	.A0(N36));
   OAI2BB2X1M U288 (.Y(n193), 
	.B1(n153), 
	.B0(n502), 
	.A1N(n153), 
	.A0N(REG1[0]));
   OAI2BB2X1M U289 (.Y(n194), 
	.B1(n153), 
	.B0(n503), 
	.A1N(n153), 
	.A0N(REG1[1]));
   OAI2BB2X1M U290 (.Y(n195), 
	.B1(n153), 
	.B0(n504), 
	.A1N(n153), 
	.A0N(REG1[2]));
   OAI2BB2X1M U291 (.Y(n209), 
	.B1(n157), 
	.B0(n502), 
	.A1N(n157), 
	.A0N(REG3[0]));
   OAI2BB2X1M U292 (.Y(n210), 
	.B1(n157), 
	.B0(n503), 
	.A1N(n157), 
	.A0N(REG3[1]));
   OAI2BB2X1M U293 (.Y(n211), 
	.B1(n157), 
	.B0(n504), 
	.A1N(n157), 
	.A0N(REG3[2]));
   OAI2BB2X1M U294 (.Y(n225), 
	.B1(n160), 
	.B0(n502), 
	.A1N(n160), 
	.A0N(\Reg_File[5][0] ));
   OAI2BB2X1M U295 (.Y(n226), 
	.B1(n160), 
	.B0(n503), 
	.A1N(n160), 
	.A0N(\Reg_File[5][1] ));
   OAI2BB2X1M U296 (.Y(n227), 
	.B1(n160), 
	.B0(n504), 
	.A1N(n160), 
	.A0N(\Reg_File[5][2] ));
   OAI2BB2X1M U297 (.Y(n241), 
	.B1(n164), 
	.B0(n502), 
	.A1N(n164), 
	.A0N(\Reg_File[7][0] ));
   OAI2BB2X1M U298 (.Y(n242), 
	.B1(n164), 
	.B0(n503), 
	.A1N(n164), 
	.A0N(\Reg_File[7][1] ));
   OAI2BB2X1M U299 (.Y(n243), 
	.B1(n164), 
	.B0(n504), 
	.A1N(n164), 
	.A0N(\Reg_File[7][2] ));
   OAI2BB2X1M U300 (.Y(n257), 
	.B1(n168), 
	.B0(n502), 
	.A1N(n168), 
	.A0N(\Reg_File[9][0] ));
   OAI2BB2X1M U301 (.Y(n258), 
	.B1(n168), 
	.B0(n503), 
	.A1N(n168), 
	.A0N(\Reg_File[9][1] ));
   OAI2BB2X1M U302 (.Y(n259), 
	.B1(n168), 
	.B0(n504), 
	.A1N(n168), 
	.A0N(\Reg_File[9][2] ));
   OAI2BB2X1M U303 (.Y(n273), 
	.B1(n171), 
	.B0(n502), 
	.A1N(n171), 
	.A0N(\Reg_File[11][0] ));
   OAI2BB2X1M U304 (.Y(n274), 
	.B1(n171), 
	.B0(n503), 
	.A1N(n171), 
	.A0N(\Reg_File[11][1] ));
   OAI2BB2X1M U305 (.Y(n275), 
	.B1(n171), 
	.B0(n504), 
	.A1N(n171), 
	.A0N(\Reg_File[11][2] ));
   OAI2BB2X1M U306 (.Y(n289), 
	.B1(n173), 
	.B0(n502), 
	.A1N(n173), 
	.A0N(\Reg_File[13][0] ));
   OAI2BB2X1M U307 (.Y(n290), 
	.B1(n173), 
	.B0(n503), 
	.A1N(n173), 
	.A0N(\Reg_File[13][1] ));
   OAI2BB2X1M U308 (.Y(n291), 
	.B1(n173), 
	.B0(n504), 
	.A1N(n173), 
	.A0N(\Reg_File[13][2] ));
   OAI2BB2X1M U309 (.Y(n305), 
	.B1(n176), 
	.B0(n502), 
	.A1N(n176), 
	.A0N(\Reg_File[15][0] ));
   OAI2BB2X1M U310 (.Y(n306), 
	.B1(n176), 
	.B0(n503), 
	.A1N(n176), 
	.A0N(\Reg_File[15][1] ));
   OAI2BB2X1M U311 (.Y(n307), 
	.B1(n176), 
	.B0(n504), 
	.A1N(n176), 
	.A0N(\Reg_File[15][2] ));
   OAI2BB2X1M U312 (.Y(n196), 
	.B1(n153), 
	.B0(n505), 
	.A1N(n153), 
	.A0N(REG1[3]));
   OAI2BB2X1M U313 (.Y(n197), 
	.B1(n153), 
	.B0(n506), 
	.A1N(n153), 
	.A0N(REG1[4]));
   OAI2BB2X1M U314 (.Y(n212), 
	.B1(n157), 
	.B0(n505), 
	.A1N(n157), 
	.A0N(REG3[3]));
   OAI2BB2X1M U315 (.Y(n213), 
	.B1(n157), 
	.B0(n506), 
	.A1N(n157), 
	.A0N(REG3[4]));
   OAI2BB2X1M U316 (.Y(n215), 
	.B1(n157), 
	.B0(n508), 
	.A1N(n157), 
	.A0N(REG3[6]));
   OAI2BB2X1M U317 (.Y(n228), 
	.B1(n160), 
	.B0(n505), 
	.A1N(n160), 
	.A0N(\Reg_File[5][3] ));
   OAI2BB2X1M U318 (.Y(n229), 
	.B1(n160), 
	.B0(n506), 
	.A1N(n160), 
	.A0N(\Reg_File[5][4] ));
   OAI2BB2X1M U319 (.Y(n244), 
	.B1(n164), 
	.B0(n505), 
	.A1N(n164), 
	.A0N(\Reg_File[7][3] ));
   OAI2BB2X1M U320 (.Y(n245), 
	.B1(n164), 
	.B0(n506), 
	.A1N(n164), 
	.A0N(\Reg_File[7][4] ));
   OAI2BB2X1M U321 (.Y(n260), 
	.B1(n168), 
	.B0(n505), 
	.A1N(n168), 
	.A0N(\Reg_File[9][3] ));
   OAI2BB2X1M U322 (.Y(n261), 
	.B1(n168), 
	.B0(n506), 
	.A1N(n168), 
	.A0N(\Reg_File[9][4] ));
   OAI2BB2X1M U323 (.Y(n276), 
	.B1(n171), 
	.B0(n505), 
	.A1N(n171), 
	.A0N(\Reg_File[11][3] ));
   OAI2BB2X1M U324 (.Y(n292), 
	.B1(n173), 
	.B0(n505), 
	.A1N(n173), 
	.A0N(\Reg_File[13][3] ));
   OAI2BB2X1M U325 (.Y(n230), 
	.B1(n160), 
	.B0(n507), 
	.A1N(n160), 
	.A0N(\Reg_File[5][5] ));
   OAI2BB2X1M U326 (.Y(n231), 
	.B1(n160), 
	.B0(n508), 
	.A1N(n160), 
	.A0N(\Reg_File[5][6] ));
   OAI2BB2X1M U327 (.Y(n246), 
	.B1(n164), 
	.B0(n507), 
	.A1N(n164), 
	.A0N(\Reg_File[7][5] ));
   OAI2BB2X1M U328 (.Y(n247), 
	.B1(n164), 
	.B0(n508), 
	.A1N(n164), 
	.A0N(\Reg_File[7][6] ));
   OAI2BB2X1M U329 (.Y(n262), 
	.B1(n168), 
	.B0(n507), 
	.A1N(n168), 
	.A0N(\Reg_File[9][5] ));
   OAI2BB2X1M U330 (.Y(n263), 
	.B1(n168), 
	.B0(n508), 
	.A1N(n168), 
	.A0N(\Reg_File[9][6] ));
   OAI2BB2X1M U331 (.Y(n277), 
	.B1(n171), 
	.B0(n506), 
	.A1N(n171), 
	.A0N(\Reg_File[11][4] ));
   OAI2BB2X1M U332 (.Y(n279), 
	.B1(n171), 
	.B0(n508), 
	.A1N(n171), 
	.A0N(\Reg_File[11][6] ));
   OAI2BB2X1M U333 (.Y(n293), 
	.B1(n173), 
	.B0(n506), 
	.A1N(n173), 
	.A0N(\Reg_File[13][4] ));
   OAI2BB2X1M U334 (.Y(n308), 
	.B1(n176), 
	.B0(n505), 
	.A1N(n176), 
	.A0N(\Reg_File[15][3] ));
   OAI2BB2X1M U335 (.Y(n198), 
	.B1(n153), 
	.B0(n507), 
	.A1N(n153), 
	.A0N(REG1[5]));
   OAI2BB2X1M U336 (.Y(n199), 
	.B1(n153), 
	.B0(n508), 
	.A1N(n153), 
	.A0N(REG1[6]));
   OAI2BB2X1M U337 (.Y(n278), 
	.B1(n171), 
	.B0(n507), 
	.A1N(n171), 
	.A0N(n525));
   OAI2BB2X1M U338 (.Y(n294), 
	.B1(n173), 
	.B0(n507), 
	.A1N(n173), 
	.A0N(\Reg_File[13][5] ));
   OAI2BB2X1M U339 (.Y(n295), 
	.B1(n173), 
	.B0(n508), 
	.A1N(n173), 
	.A0N(\Reg_File[13][6] ));
   OAI2BB2X1M U340 (.Y(n309), 
	.B1(n176), 
	.B0(n506), 
	.A1N(n176), 
	.A0N(\Reg_File[15][4] ));
   OAI2BB2X1M U341 (.Y(n310), 
	.B1(n176), 
	.B0(n507), 
	.A1N(n176), 
	.A0N(\Reg_File[15][5] ));
   OAI2BB2X1M U342 (.Y(n311), 
	.B1(n176), 
	.B0(n508), 
	.A1N(n176), 
	.A0N(\Reg_File[15][6] ));
   OAI2BB2X1M U343 (.Y(n200), 
	.B1(n153), 
	.B0(n509), 
	.A1N(n153), 
	.A0N(REG1[7]));
   OAI2BB2X1M U344 (.Y(n216), 
	.B1(n157), 
	.B0(n509), 
	.A1N(n157), 
	.A0N(REG3[7]));
   OAI2BB2X1M U345 (.Y(n232), 
	.B1(n160), 
	.B0(n509), 
	.A1N(n160), 
	.A0N(\Reg_File[5][7] ));
   OAI2BB2X1M U346 (.Y(n248), 
	.B1(n164), 
	.B0(n509), 
	.A1N(n164), 
	.A0N(\Reg_File[7][7] ));
   OAI2BB2X1M U347 (.Y(n264), 
	.B1(n168), 
	.B0(n509), 
	.A1N(n168), 
	.A0N(\Reg_File[9][7] ));
   OAI2BB2X1M U348 (.Y(n280), 
	.B1(n171), 
	.B0(n509), 
	.A1N(n171), 
	.A0N(\Reg_File[11][7] ));
   OAI2BB2X1M U349 (.Y(n296), 
	.B1(n173), 
	.B0(n509), 
	.A1N(n173), 
	.A0N(\Reg_File[13][7] ));
   OAI2BB2X1M U350 (.Y(n312), 
	.B1(n176), 
	.B0(n509), 
	.A1N(n176), 
	.A0N(\Reg_File[15][7] ));
   OAI2BB2X1M U351 (.Y(n214), 
	.B1(n157), 
	.B0(n507), 
	.A1N(n157), 
	.A0N(REG3[5]));
   OAI2BB2X1M U352 (.Y(n186), 
	.B1(n503), 
	.B0(n150), 
	.A1N(n150), 
	.A0N(REG0[1]));
   OAI2BB2X1M U353 (.Y(n187), 
	.B1(n504), 
	.B0(n150), 
	.A1N(n150), 
	.A0N(REG0[2]));
   OAI2BB2X1M U354 (.Y(n185), 
	.B1(n502), 
	.B0(n150), 
	.A1N(n150), 
	.A0N(REG0[0]));
   OAI2BB2X1M U355 (.Y(n188), 
	.B1(n505), 
	.B0(n150), 
	.A1N(n150), 
	.A0N(REG0[3]));
   OAI2BB2X1M U356 (.Y(n189), 
	.B1(n506), 
	.B0(n150), 
	.A1N(n150), 
	.A0N(REG0[4]));
   OAI2BB2X1M U357 (.Y(n190), 
	.B1(n507), 
	.B0(n150), 
	.A1N(n150), 
	.A0N(n527));
   OAI2BB2X1M U358 (.Y(n191), 
	.B1(n508), 
	.B0(n150), 
	.A1N(n150), 
	.A0N(REG0[6]));
   OAI2BB2X1M U359 (.Y(n202), 
	.B1(n155), 
	.B0(n503), 
	.A1N(n155), 
	.A0N(REG2[1]));
   OAI2BB2X1M U360 (.Y(n203), 
	.B1(n155), 
	.B0(n504), 
	.A1N(n155), 
	.A0N(REG2[2]));
   OAI2BB2X1M U361 (.Y(n217), 
	.B1(n158), 
	.B0(n502), 
	.A1N(n158), 
	.A0N(\Reg_File[4][0] ));
   OAI2BB2X1M U362 (.Y(n218), 
	.B1(n158), 
	.B0(n503), 
	.A1N(n158), 
	.A0N(\Reg_File[4][1] ));
   OAI2BB2X1M U363 (.Y(n219), 
	.B1(n158), 
	.B0(n504), 
	.A1N(n158), 
	.A0N(\Reg_File[4][2] ));
   OAI2BB2X1M U364 (.Y(n233), 
	.B1(n161), 
	.B0(n502), 
	.A1N(n161), 
	.A0N(\Reg_File[6][0] ));
   OAI2BB2X1M U365 (.Y(n234), 
	.B1(n161), 
	.B0(n503), 
	.A1N(n161), 
	.A0N(\Reg_File[6][1] ));
   OAI2BB2X1M U366 (.Y(n235), 
	.B1(n161), 
	.B0(n504), 
	.A1N(n161), 
	.A0N(\Reg_File[6][2] ));
   OAI2BB2X1M U367 (.Y(n249), 
	.B1(n166), 
	.B0(n502), 
	.A1N(n166), 
	.A0N(\Reg_File[8][0] ));
   OAI2BB2X1M U368 (.Y(n250), 
	.B1(n166), 
	.B0(n503), 
	.A1N(n166), 
	.A0N(\Reg_File[8][1] ));
   OAI2BB2X1M U369 (.Y(n251), 
	.B1(n166), 
	.B0(n504), 
	.A1N(n166), 
	.A0N(\Reg_File[8][2] ));
   OAI2BB2X1M U370 (.Y(n265), 
	.B1(n170), 
	.B0(n502), 
	.A1N(n170), 
	.A0N(\Reg_File[10][0] ));
   OAI2BB2X1M U371 (.Y(n266), 
	.B1(n170), 
	.B0(n503), 
	.A1N(n170), 
	.A0N(\Reg_File[10][1] ));
   OAI2BB2X1M U372 (.Y(n267), 
	.B1(n170), 
	.B0(n504), 
	.A1N(n170), 
	.A0N(\Reg_File[10][2] ));
   OAI2BB2X1M U373 (.Y(n281), 
	.B1(n172), 
	.B0(n502), 
	.A1N(n172), 
	.A0N(\Reg_File[12][0] ));
   OAI2BB2X1M U374 (.Y(n282), 
	.B1(n172), 
	.B0(n503), 
	.A1N(n172), 
	.A0N(\Reg_File[12][1] ));
   OAI2BB2X1M U375 (.Y(n283), 
	.B1(n172), 
	.B0(n504), 
	.A1N(n172), 
	.A0N(\Reg_File[12][2] ));
   OAI2BB2X1M U376 (.Y(n297), 
	.B1(n174), 
	.B0(n502), 
	.A1N(n174), 
	.A0N(\Reg_File[14][0] ));
   OAI2BB2X1M U377 (.Y(n298), 
	.B1(n174), 
	.B0(n503), 
	.A1N(n174), 
	.A0N(\Reg_File[14][1] ));
   OAI2BB2X1M U378 (.Y(n299), 
	.B1(n174), 
	.B0(n504), 
	.A1N(n174), 
	.A0N(\Reg_File[14][2] ));
   OAI2BB2X1M U379 (.Y(n204), 
	.B1(n155), 
	.B0(n505), 
	.A1N(n155), 
	.A0N(REG2[3]));
   OAI2BB2X1M U380 (.Y(n205), 
	.B1(n155), 
	.B0(n506), 
	.A1N(n155), 
	.A0N(REG2[4]));
   OAI2BB2X1M U381 (.Y(n220), 
	.B1(n158), 
	.B0(n505), 
	.A1N(n158), 
	.A0N(\Reg_File[4][3] ));
   OAI2BB2X1M U382 (.Y(n236), 
	.B1(n161), 
	.B0(n505), 
	.A1N(n161), 
	.A0N(\Reg_File[6][3] ));
   OAI2BB2X1M U383 (.Y(n237), 
	.B1(n161), 
	.B0(n506), 
	.A1N(n161), 
	.A0N(\Reg_File[6][4] ));
   OAI2BB2X1M U384 (.Y(n252), 
	.B1(n166), 
	.B0(n505), 
	.A1N(n166), 
	.A0N(\Reg_File[8][3] ));
   OAI2BB2X1M U385 (.Y(n268), 
	.B1(n170), 
	.B0(n505), 
	.A1N(n170), 
	.A0N(\Reg_File[10][3] ));
   OAI2BB2X1M U386 (.Y(n206), 
	.B1(n155), 
	.B0(n507), 
	.A1N(n155), 
	.A0N(REG2[5]));
   OAI2BB2X1M U387 (.Y(n207), 
	.B1(n155), 
	.B0(n508), 
	.A1N(n155), 
	.A0N(REG2[6]));
   OAI2BB2X1M U388 (.Y(n221), 
	.B1(n158), 
	.B0(n506), 
	.A1N(n158), 
	.A0N(\Reg_File[4][4] ));
   OAI2BB2X1M U389 (.Y(n223), 
	.B1(n158), 
	.B0(n508), 
	.A1N(n158), 
	.A0N(\Reg_File[4][6] ));
   OAI2BB2X1M U390 (.Y(n238), 
	.B1(n161), 
	.B0(n507), 
	.A1N(n161), 
	.A0N(\Reg_File[6][5] ));
   OAI2BB2X1M U391 (.Y(n239), 
	.B1(n161), 
	.B0(n508), 
	.A1N(n161), 
	.A0N(\Reg_File[6][6] ));
   OAI2BB2X1M U392 (.Y(n253), 
	.B1(n166), 
	.B0(n506), 
	.A1N(n166), 
	.A0N(\Reg_File[8][4] ));
   OAI2BB2X1M U393 (.Y(n255), 
	.B1(n166), 
	.B0(n508), 
	.A1N(n166), 
	.A0N(\Reg_File[8][6] ));
   OAI2BB2X1M U394 (.Y(n269), 
	.B1(n170), 
	.B0(n506), 
	.A1N(n170), 
	.A0N(\Reg_File[10][4] ));
   OAI2BB2X1M U395 (.Y(n300), 
	.B1(n174), 
	.B0(n505), 
	.A1N(n174), 
	.A0N(\Reg_File[14][3] ));
   OAI2BB2X1M U396 (.Y(n254), 
	.B1(n166), 
	.B0(n507), 
	.A1N(n166), 
	.A0N(\Reg_File[8][5] ));
   OAI2BB2X1M U397 (.Y(n270), 
	.B1(n170), 
	.B0(n507), 
	.A1N(n170), 
	.A0N(\Reg_File[10][5] ));
   OAI2BB2X1M U398 (.Y(n271), 
	.B1(n170), 
	.B0(n508), 
	.A1N(n170), 
	.A0N(\Reg_File[10][6] ));
   OAI2BB2X1M U399 (.Y(n284), 
	.B1(n172), 
	.B0(n505), 
	.A1N(n172), 
	.A0N(\Reg_File[12][3] ));
   OAI2BB2X1M U400 (.Y(n222), 
	.B1(n158), 
	.B0(n507), 
	.A1N(n158), 
	.A0N(\Reg_File[4][5] ));
   OAI2BB2X1M U401 (.Y(n285), 
	.B1(n172), 
	.B0(n506), 
	.A1N(n172), 
	.A0N(\Reg_File[12][4] ));
   OAI2BB2X1M U402 (.Y(n286), 
	.B1(n172), 
	.B0(n507), 
	.A1N(n172), 
	.A0N(\Reg_File[12][5] ));
   OAI2BB2X1M U403 (.Y(n287), 
	.B1(n172), 
	.B0(n508), 
	.A1N(n172), 
	.A0N(\Reg_File[12][6] ));
   OAI2BB2X1M U404 (.Y(n301), 
	.B1(n174), 
	.B0(n506), 
	.A1N(n174), 
	.A0N(\Reg_File[14][4] ));
   OAI2BB2X1M U405 (.Y(n302), 
	.B1(n174), 
	.B0(n507), 
	.A1N(n174), 
	.A0N(\Reg_File[14][5] ));
   OAI2BB2X1M U406 (.Y(n303), 
	.B1(n174), 
	.B0(n508), 
	.A1N(n174), 
	.A0N(\Reg_File[14][6] ));
   OAI2BB2X1M U407 (.Y(n192), 
	.B1(n509), 
	.B0(n150), 
	.A1N(n150), 
	.A0N(REG0[7]));
   OAI2BB2X1M U408 (.Y(n224), 
	.B1(n158), 
	.B0(n509), 
	.A1N(n158), 
	.A0N(\Reg_File[4][7] ));
   OAI2BB2X1M U409 (.Y(n240), 
	.B1(n161), 
	.B0(n509), 
	.A1N(n161), 
	.A0N(\Reg_File[6][7] ));
   OAI2BB2X1M U410 (.Y(n256), 
	.B1(n166), 
	.B0(n509), 
	.A1N(n166), 
	.A0N(\Reg_File[8][7] ));
   OAI2BB2X1M U411 (.Y(n272), 
	.B1(n170), 
	.B0(n509), 
	.A1N(n170), 
	.A0N(\Reg_File[10][7] ));
   OAI2BB2X1M U412 (.Y(n288), 
	.B1(n172), 
	.B0(n509), 
	.A1N(n172), 
	.A0N(\Reg_File[12][7] ));
   OAI2BB2X1M U413 (.Y(n304), 
	.B1(n174), 
	.B0(n509), 
	.A1N(n174), 
	.A0N(\Reg_File[14][7] ));
   OAI2BB2X1M U414 (.Y(n201), 
	.B1(n155), 
	.B0(n502), 
	.A1N(n155), 
	.A0N(REG2[0]));
   OAI2BB2X1M U415 (.Y(n208), 
	.B1(n155), 
	.B0(n509), 
	.A1N(n155), 
	.A0N(REG2[7]));
   OAI2BB1X2M U416 (.Y(n313), 
	.B0(n149), 
	.A1N(n165), 
	.A0N(RdData_Valid));
   AOI22X1M U417 (.Y(n330), 
	.B1(FE_OFN7_n422), 
	.B0(\Reg_File[11][0] ), 
	.A1(FE_OFN8_n423), 
	.A0(\Reg_File[10][0] ));
   AOI22X1M U418 (.Y(n329), 
	.B1(FE_OFN6_n424), 
	.B0(\Reg_File[9][0] ), 
	.A1(n138), 
	.A0(\Reg_File[8][0] ));
   AOI21X1M U419 (.Y(n340), 
	.B0(n413), 
	.A1(n329), 
	.A0(n330));
   AOI22X1M U420 (.Y(n332), 
	.B1(FE_OFN7_n422), 
	.B0(\Reg_File[15][0] ), 
	.A1(FE_OFN8_n423), 
	.A0(\Reg_File[14][0] ));
   AOI22X1M U421 (.Y(n331), 
	.B1(FE_OFN6_n424), 
	.B0(\Reg_File[13][0] ), 
	.A1(n138), 
	.A0(\Reg_File[12][0] ));
   AOI21X1M U422 (.Y(n339), 
	.B0(n416), 
	.A1(n331), 
	.A0(n332));
   AOI22X1M U423 (.Y(n334), 
	.B1(FE_OFN7_n422), 
	.B0(REG3[0]), 
	.A1(FE_OFN8_n423), 
	.A0(REG2[0]));
   AOI22X1M U424 (.Y(n333), 
	.B1(FE_OFN6_n424), 
	.B0(REG1[0]), 
	.A1(n138), 
	.A0(REG0[0]));
   AOI21X1M U425 (.Y(n338), 
	.B0(n419), 
	.A1(n333), 
	.A0(n334));
   AOI22X1M U426 (.Y(n336), 
	.B1(FE_OFN7_n422), 
	.B0(\Reg_File[7][0] ), 
	.A1(FE_OFN8_n423), 
	.A0(\Reg_File[6][0] ));
   AOI22X1M U427 (.Y(n335), 
	.B1(FE_OFN6_n424), 
	.B0(\Reg_File[5][0] ), 
	.A1(n138), 
	.A0(\Reg_File[4][0] ));
   AOI21X1M U428 (.Y(n337), 
	.B0(n425), 
	.A1(n335), 
	.A0(n336));
   OR4X1M U429 (.Y(N43), 
	.D(n337), 
	.C(n338), 
	.B(n339), 
	.A(n340));
   AOI22X1M U430 (.Y(n342), 
	.B1(FE_OFN7_n422), 
	.B0(\Reg_File[11][1] ), 
	.A1(FE_OFN8_n423), 
	.A0(\Reg_File[10][1] ));
   AOI22X1M U431 (.Y(n341), 
	.B1(FE_OFN6_n424), 
	.B0(\Reg_File[9][1] ), 
	.A1(n138), 
	.A0(\Reg_File[8][1] ));
   AOI21X1M U432 (.Y(n352), 
	.B0(n413), 
	.A1(n341), 
	.A0(n342));
   AOI22X1M U433 (.Y(n344), 
	.B1(FE_OFN7_n422), 
	.B0(\Reg_File[15][1] ), 
	.A1(FE_OFN8_n423), 
	.A0(\Reg_File[14][1] ));
   AOI22X1M U434 (.Y(n343), 
	.B1(FE_OFN6_n424), 
	.B0(\Reg_File[13][1] ), 
	.A1(n138), 
	.A0(\Reg_File[12][1] ));
   AOI21X1M U435 (.Y(n351), 
	.B0(n416), 
	.A1(n343), 
	.A0(n344));
   AOI22X1M U436 (.Y(n346), 
	.B1(FE_OFN7_n422), 
	.B0(REG3[1]), 
	.A1(FE_OFN8_n423), 
	.A0(REG2[1]));
   AOI22X1M U437 (.Y(n345), 
	.B1(FE_OFN6_n424), 
	.B0(REG1[1]), 
	.A1(n138), 
	.A0(REG0[1]));
   AOI21X1M U438 (.Y(n350), 
	.B0(n419), 
	.A1(n345), 
	.A0(n346));
   AOI22X1M U439 (.Y(n348), 
	.B1(FE_OFN7_n422), 
	.B0(\Reg_File[7][1] ), 
	.A1(FE_OFN8_n423), 
	.A0(\Reg_File[6][1] ));
   AOI22X1M U440 (.Y(n347), 
	.B1(FE_OFN6_n424), 
	.B0(\Reg_File[5][1] ), 
	.A1(n138), 
	.A0(\Reg_File[4][1] ));
   AOI21X1M U441 (.Y(n349), 
	.B0(n425), 
	.A1(n347), 
	.A0(n348));
   OR4X1M U442 (.Y(N42), 
	.D(n349), 
	.C(n350), 
	.B(n351), 
	.A(n352));
   AOI22X1M U443 (.Y(n354), 
	.B1(FE_OFN7_n422), 
	.B0(\Reg_File[11][2] ), 
	.A1(FE_OFN8_n423), 
	.A0(\Reg_File[10][2] ));
   AOI22X1M U444 (.Y(n353), 
	.B1(FE_OFN6_n424), 
	.B0(\Reg_File[9][2] ), 
	.A1(n138), 
	.A0(\Reg_File[8][2] ));
   AOI21X1M U445 (.Y(n364), 
	.B0(n413), 
	.A1(n353), 
	.A0(n354));
   AOI22X1M U446 (.Y(n356), 
	.B1(FE_OFN7_n422), 
	.B0(\Reg_File[15][2] ), 
	.A1(FE_OFN8_n423), 
	.A0(\Reg_File[14][2] ));
   AOI22X1M U447 (.Y(n355), 
	.B1(FE_OFN6_n424), 
	.B0(\Reg_File[13][2] ), 
	.A1(n138), 
	.A0(\Reg_File[12][2] ));
   AOI21X1M U448 (.Y(n363), 
	.B0(n416), 
	.A1(n355), 
	.A0(n356));
   AOI22X1M U449 (.Y(n358), 
	.B1(FE_OFN7_n422), 
	.B0(REG3[2]), 
	.A1(FE_OFN8_n423), 
	.A0(REG2[2]));
   AOI22X1M U450 (.Y(n357), 
	.B1(FE_OFN6_n424), 
	.B0(REG1[2]), 
	.A1(n138), 
	.A0(REG0[2]));
   AOI21X1M U451 (.Y(n362), 
	.B0(n419), 
	.A1(n357), 
	.A0(n358));
   AOI22X1M U452 (.Y(n360), 
	.B1(FE_OFN7_n422), 
	.B0(\Reg_File[7][2] ), 
	.A1(FE_OFN8_n423), 
	.A0(\Reg_File[6][2] ));
   AOI22X1M U453 (.Y(n359), 
	.B1(FE_OFN6_n424), 
	.B0(\Reg_File[5][2] ), 
	.A1(n138), 
	.A0(\Reg_File[4][2] ));
   AOI21X1M U454 (.Y(n361), 
	.B0(n425), 
	.A1(n359), 
	.A0(n360));
   OR4X1M U455 (.Y(N41), 
	.D(n361), 
	.C(n362), 
	.B(n363), 
	.A(n364));
   AOI22X1M U456 (.Y(n366), 
	.B1(FE_OFN7_n422), 
	.B0(\Reg_File[11][3] ), 
	.A1(FE_OFN8_n423), 
	.A0(\Reg_File[10][3] ));
   AOI22X1M U457 (.Y(n365), 
	.B1(FE_OFN6_n424), 
	.B0(\Reg_File[9][3] ), 
	.A1(n138), 
	.A0(\Reg_File[8][3] ));
   AOI21X1M U458 (.Y(n376), 
	.B0(n413), 
	.A1(n365), 
	.A0(n366));
   AOI22X1M U459 (.Y(n368), 
	.B1(FE_OFN7_n422), 
	.B0(\Reg_File[15][3] ), 
	.A1(FE_OFN8_n423), 
	.A0(\Reg_File[14][3] ));
   AOI22X1M U460 (.Y(n367), 
	.B1(FE_OFN6_n424), 
	.B0(\Reg_File[13][3] ), 
	.A1(n138), 
	.A0(\Reg_File[12][3] ));
   AOI21X1M U461 (.Y(n375), 
	.B0(n416), 
	.A1(n367), 
	.A0(n368));
   AOI22X1M U462 (.Y(n370), 
	.B1(FE_OFN7_n422), 
	.B0(REG3[3]), 
	.A1(FE_OFN8_n423), 
	.A0(REG2[3]));
   AOI22X1M U463 (.Y(n369), 
	.B1(FE_OFN6_n424), 
	.B0(REG1[3]), 
	.A1(n138), 
	.A0(REG0[3]));
   AOI21X1M U464 (.Y(n374), 
	.B0(n419), 
	.A1(n369), 
	.A0(n370));
   AOI22X1M U465 (.Y(n372), 
	.B1(FE_OFN7_n422), 
	.B0(\Reg_File[7][3] ), 
	.A1(FE_OFN8_n423), 
	.A0(\Reg_File[6][3] ));
   AOI22X1M U466 (.Y(n371), 
	.B1(FE_OFN6_n424), 
	.B0(\Reg_File[5][3] ), 
	.A1(n138), 
	.A0(\Reg_File[4][3] ));
   AOI21X1M U467 (.Y(n373), 
	.B0(n425), 
	.A1(n371), 
	.A0(n372));
   OR4X1M U468 (.Y(N40), 
	.D(n373), 
	.C(n374), 
	.B(n375), 
	.A(n376));
   AOI22X1M U469 (.Y(n378), 
	.B1(FE_OFN7_n422), 
	.B0(\Reg_File[11][4] ), 
	.A1(FE_OFN8_n423), 
	.A0(\Reg_File[10][4] ));
   AOI22X1M U470 (.Y(n377), 
	.B1(FE_OFN6_n424), 
	.B0(\Reg_File[9][4] ), 
	.A1(n138), 
	.A0(\Reg_File[8][4] ));
   AOI21X1M U471 (.Y(n388), 
	.B0(n413), 
	.A1(n377), 
	.A0(n378));
   AOI22X1M U472 (.Y(n380), 
	.B1(FE_OFN7_n422), 
	.B0(\Reg_File[15][4] ), 
	.A1(FE_OFN8_n423), 
	.A0(\Reg_File[14][4] ));
   AOI22X1M U473 (.Y(n379), 
	.B1(FE_OFN6_n424), 
	.B0(\Reg_File[13][4] ), 
	.A1(n138), 
	.A0(\Reg_File[12][4] ));
   AOI21X1M U474 (.Y(n387), 
	.B0(n416), 
	.A1(n379), 
	.A0(n380));
   AOI22X1M U475 (.Y(n382), 
	.B1(FE_OFN7_n422), 
	.B0(REG3[4]), 
	.A1(FE_OFN8_n423), 
	.A0(REG2[4]));
   AOI22X1M U476 (.Y(n381), 
	.B1(FE_OFN6_n424), 
	.B0(REG1[4]), 
	.A1(n138), 
	.A0(REG0[4]));
   AOI21X1M U477 (.Y(n386), 
	.B0(n419), 
	.A1(n381), 
	.A0(n382));
   AOI22X1M U478 (.Y(n384), 
	.B1(FE_OFN7_n422), 
	.B0(\Reg_File[7][4] ), 
	.A1(FE_OFN8_n423), 
	.A0(\Reg_File[6][4] ));
   AOI22X1M U479 (.Y(n383), 
	.B1(FE_OFN6_n424), 
	.B0(\Reg_File[5][4] ), 
	.A1(n138), 
	.A0(\Reg_File[4][4] ));
   AOI21X1M U480 (.Y(n385), 
	.B0(n425), 
	.A1(n383), 
	.A0(n384));
   OR4X1M U481 (.Y(N39), 
	.D(n385), 
	.C(n386), 
	.B(n387), 
	.A(n388));
   AOI22X1M U482 (.Y(n390), 
	.B1(FE_OFN7_n422), 
	.B0(n525), 
	.A1(FE_OFN8_n423), 
	.A0(\Reg_File[10][5] ));
   AOI22X1M U483 (.Y(n389), 
	.B1(FE_OFN6_n424), 
	.B0(\Reg_File[9][5] ), 
	.A1(n138), 
	.A0(\Reg_File[8][5] ));
   AOI21X1M U484 (.Y(n400), 
	.B0(n413), 
	.A1(n389), 
	.A0(n390));
   AOI22X1M U485 (.Y(n392), 
	.B1(FE_OFN7_n422), 
	.B0(\Reg_File[15][5] ), 
	.A1(FE_OFN8_n423), 
	.A0(\Reg_File[14][5] ));
   AOI22X1M U486 (.Y(n391), 
	.B1(FE_OFN6_n424), 
	.B0(\Reg_File[13][5] ), 
	.A1(n138), 
	.A0(\Reg_File[12][5] ));
   AOI21X1M U487 (.Y(n399), 
	.B0(n416), 
	.A1(n391), 
	.A0(n392));
   AOI22X1M U488 (.Y(n394), 
	.B1(FE_OFN7_n422), 
	.B0(REG3[5]), 
	.A1(FE_OFN8_n423), 
	.A0(REG2[5]));
   AOI22X1M U489 (.Y(n393), 
	.B1(FE_OFN6_n424), 
	.B0(REG1[5]), 
	.A1(n138), 
	.A0(n527));
   AOI21X1M U490 (.Y(n398), 
	.B0(n419), 
	.A1(n393), 
	.A0(n394));
   AOI22X1M U491 (.Y(n396), 
	.B1(FE_OFN7_n422), 
	.B0(\Reg_File[7][5] ), 
	.A1(FE_OFN8_n423), 
	.A0(\Reg_File[6][5] ));
   AOI22X1M U492 (.Y(n395), 
	.B1(FE_OFN6_n424), 
	.B0(\Reg_File[5][5] ), 
	.A1(n138), 
	.A0(\Reg_File[4][5] ));
   AOI21X1M U493 (.Y(n397), 
	.B0(n425), 
	.A1(n395), 
	.A0(n396));
   OR4X1M U494 (.Y(N38), 
	.D(n397), 
	.C(n398), 
	.B(n399), 
	.A(n400));
   AOI22X1M U495 (.Y(n402), 
	.B1(FE_OFN7_n422), 
	.B0(\Reg_File[11][6] ), 
	.A1(FE_OFN8_n423), 
	.A0(\Reg_File[10][6] ));
   AOI22X1M U496 (.Y(n401), 
	.B1(FE_OFN6_n424), 
	.B0(\Reg_File[9][6] ), 
	.A1(n138), 
	.A0(\Reg_File[8][6] ));
   AOI21X1M U497 (.Y(n412), 
	.B0(n413), 
	.A1(n401), 
	.A0(n402));
   AOI22X1M U498 (.Y(n404), 
	.B1(FE_OFN7_n422), 
	.B0(\Reg_File[15][6] ), 
	.A1(FE_OFN8_n423), 
	.A0(\Reg_File[14][6] ));
   AOI22X1M U499 (.Y(n403), 
	.B1(FE_OFN6_n424), 
	.B0(\Reg_File[13][6] ), 
	.A1(n138), 
	.A0(\Reg_File[12][6] ));
   AOI21X1M U500 (.Y(n411), 
	.B0(n416), 
	.A1(n403), 
	.A0(n404));
   AOI22X1M U501 (.Y(n406), 
	.B1(FE_OFN7_n422), 
	.B0(REG3[6]), 
	.A1(FE_OFN8_n423), 
	.A0(REG2[6]));
   AOI22X1M U502 (.Y(n405), 
	.B1(FE_OFN6_n424), 
	.B0(REG1[6]), 
	.A1(n138), 
	.A0(REG0[6]));
   AOI21X1M U503 (.Y(n410), 
	.B0(n419), 
	.A1(n405), 
	.A0(n406));
   AOI22X1M U504 (.Y(n408), 
	.B1(FE_OFN7_n422), 
	.B0(\Reg_File[7][6] ), 
	.A1(FE_OFN8_n423), 
	.A0(\Reg_File[6][6] ));
   AOI22X1M U505 (.Y(n407), 
	.B1(FE_OFN6_n424), 
	.B0(\Reg_File[5][6] ), 
	.A1(n138), 
	.A0(\Reg_File[4][6] ));
   AOI21X1M U506 (.Y(n409), 
	.B0(n425), 
	.A1(n407), 
	.A0(n408));
   OR4X1M U507 (.Y(N37), 
	.D(n409), 
	.C(n410), 
	.B(n411), 
	.A(n412));
   AOI22X1M U508 (.Y(n415), 
	.B1(FE_OFN7_n422), 
	.B0(\Reg_File[11][7] ), 
	.A1(FE_OFN8_n423), 
	.A0(\Reg_File[10][7] ));
   AOI22X1M U509 (.Y(n414), 
	.B1(FE_OFN6_n424), 
	.B0(\Reg_File[9][7] ), 
	.A1(n138), 
	.A0(\Reg_File[8][7] ));
   AOI21X1M U510 (.Y(n431), 
	.B0(n413), 
	.A1(n414), 
	.A0(n415));
   AOI22X1M U511 (.Y(n418), 
	.B1(FE_OFN7_n422), 
	.B0(\Reg_File[15][7] ), 
	.A1(FE_OFN8_n423), 
	.A0(\Reg_File[14][7] ));
   AOI22X1M U512 (.Y(n417), 
	.B1(FE_OFN6_n424), 
	.B0(\Reg_File[13][7] ), 
	.A1(n138), 
	.A0(\Reg_File[12][7] ));
   AOI21X1M U513 (.Y(n430), 
	.B0(n416), 
	.A1(n417), 
	.A0(n418));
   AOI22X1M U514 (.Y(n421), 
	.B1(FE_OFN7_n422), 
	.B0(REG3[7]), 
	.A1(FE_OFN8_n423), 
	.A0(REG2[7]));
   AOI22X1M U515 (.Y(n420), 
	.B1(FE_OFN6_n424), 
	.B0(REG1[7]), 
	.A1(n138), 
	.A0(REG0[7]));
   AOI21X1M U516 (.Y(n429), 
	.B0(n419), 
	.A1(n420), 
	.A0(n421));
   AOI22X1M U517 (.Y(n427), 
	.B1(FE_OFN7_n422), 
	.B0(\Reg_File[7][7] ), 
	.A1(FE_OFN8_n423), 
	.A0(\Reg_File[6][7] ));
   AOI22X1M U518 (.Y(n426), 
	.B1(FE_OFN6_n424), 
	.B0(\Reg_File[5][7] ), 
	.A1(n138), 
	.A0(\Reg_File[4][7] ));
   AOI21X1M U519 (.Y(n428), 
	.B0(n425), 
	.A1(n426), 
	.A0(n427));
   OR4X1M U520 (.Y(N36), 
	.D(n428), 
	.C(n429), 
	.B(n430), 
	.A(n431));
   INVXLM U521 (.Y(n524), 
	.A(\Reg_File[11][5] ));
   INVXLM U522 (.Y(n525), 
	.A(n524));
   INVXLM U523 (.Y(n526), 
	.A(REG0[5]));
   INVXLM U524 (.Y(n527), 
	.A(n526));
   SDFFRQX4M \Reg_File_reg[1][3]  (.SI(REG1[2]), 
	.SE(test_se), 
	.RN(FE_OFN3_RST_SCAN_REF), 
	.Q(REG1[3]), 
	.D(n196), 
	.CK(CLK_SCAN_REF__L5_N10));
   SDFFRQX4M \Reg_File_reg[1][2]  (.SI(REG1[1]), 
	.SE(test_se), 
	.RN(RST_regfile), 
	.Q(REG1[2]), 
	.D(n195), 
	.CK(CLK_SCAN_REF__L5_N10));
   SDFFRQX4M \Reg_File_reg[3][4]  (.SI(REG3[3]), 
	.SE(FE_OFN20_SE), 
	.RN(FE_OFN4_RST_SCAN_REF), 
	.Q(REG3[4]), 
	.D(n213), 
	.CK(CLK_SCAN_REF__L5_N9));
   SDFFRQX4M \Reg_File_reg[3][3]  (.SI(REG3[2]), 
	.SE(FE_OFN20_SE), 
	.RN(FE_OFN4_RST_SCAN_REF), 
	.Q(REG3[3]), 
	.D(n212), 
	.CK(CLK_SCAN_REF__L5_N9));
   SDFFRQX4M \Reg_File_reg[3][6]  (.SI(REG3[5]), 
	.SE(FE_OFN20_SE), 
	.RN(FE_OFN4_RST_SCAN_REF), 
	.Q(REG3[6]), 
	.D(n215), 
	.CK(CLK_SCAN_REF__L5_N9));
   SDFFSQX4M \Reg_File_reg[3][5]  (.SN(FE_OFN4_RST_SCAN_REF), 
	.SI(REG3[4]), 
	.SE(FE_OFN20_SE), 
	.Q(REG3[5]), 
	.D(n214), 
	.CK(CLK_SCAN_REF__L5_N9));
   SDFFRQX4M \Reg_File_reg[3][0]  (.SI(REG2[7]), 
	.SE(FE_OFN20_SE), 
	.RN(FE_OFN4_RST_SCAN_REF), 
	.Q(REG3[0]), 
	.D(n209), 
	.CK(CLK_SCAN_REF__L5_N9));
   SDFFRQX4M \Reg_File_reg[3][1]  (.SI(REG3[0]), 
	.SE(FE_OFN20_SE), 
	.RN(FE_OFN4_RST_SCAN_REF), 
	.Q(REG3[1]), 
	.D(n210), 
	.CK(CLK_SCAN_REF__L5_N9));
   SDFFRQX4M \Reg_File_reg[3][2]  (.SI(REG3[1]), 
	.SE(FE_OFN17_SE), 
	.RN(FE_OFN4_RST_SCAN_REF), 
	.Q(REG3[2]), 
	.D(n211), 
	.CK(CLK_SCAN_REF__L5_N9));
   SDFFRQX4M \Reg_File_reg[0][5]  (.SI(REG0[4]), 
	.SE(test_se), 
	.RN(FE_OFN3_RST_SCAN_REF), 
	.Q(REG0[5]), 
	.D(n190), 
	.CK(CLK_SCAN_REF__L5_N10));
   SDFFRQX4M \Reg_File_reg[11][5]  (.SI(\Reg_File[11][4] ), 
	.SE(test_se), 
	.RN(FE_OFN3_RST_SCAN_REF), 
	.Q(\Reg_File[11][5] ), 
	.D(n278), 
	.CK(CLK_SCAN_REF__L5_N15));
endmodule

module Alu_16_bit_OPER_WIDTH8_OUT_WIDTH16_ALU_FUN_WIDTH4_DW_div_uns_0 (
	a, 
	b, 
	quotient, 
	remainder, 
	divide_by_0);
   input [7:0] a;
   input [7:0] b;
   output [7:0] quotient;
   output [7:0] remainder;
   output divide_by_0;

   // Internal wires
   wire \u_div/SumTmp[1][0] ;
   wire \u_div/SumTmp[1][1] ;
   wire \u_div/SumTmp[1][2] ;
   wire \u_div/SumTmp[1][3] ;
   wire \u_div/SumTmp[1][4] ;
   wire \u_div/SumTmp[1][5] ;
   wire \u_div/SumTmp[1][6] ;
   wire \u_div/SumTmp[2][0] ;
   wire \u_div/SumTmp[2][1] ;
   wire \u_div/SumTmp[2][2] ;
   wire \u_div/SumTmp[2][3] ;
   wire \u_div/SumTmp[2][4] ;
   wire \u_div/SumTmp[2][5] ;
   wire \u_div/SumTmp[3][0] ;
   wire \u_div/SumTmp[3][1] ;
   wire \u_div/SumTmp[3][2] ;
   wire \u_div/SumTmp[3][3] ;
   wire \u_div/SumTmp[3][4] ;
   wire \u_div/SumTmp[4][0] ;
   wire \u_div/SumTmp[4][1] ;
   wire \u_div/SumTmp[4][2] ;
   wire \u_div/SumTmp[4][3] ;
   wire \u_div/SumTmp[5][0] ;
   wire \u_div/SumTmp[5][1] ;
   wire \u_div/SumTmp[5][2] ;
   wire \u_div/SumTmp[6][0] ;
   wire \u_div/SumTmp[6][1] ;
   wire \u_div/SumTmp[7][0] ;
   wire \u_div/CryTmp[0][1] ;
   wire \u_div/CryTmp[0][2] ;
   wire \u_div/CryTmp[0][3] ;
   wire \u_div/CryTmp[0][4] ;
   wire \u_div/CryTmp[0][5] ;
   wire \u_div/CryTmp[0][6] ;
   wire \u_div/CryTmp[0][7] ;
   wire \u_div/CryTmp[1][1] ;
   wire \u_div/CryTmp[1][2] ;
   wire \u_div/CryTmp[1][3] ;
   wire \u_div/CryTmp[1][4] ;
   wire \u_div/CryTmp[1][5] ;
   wire \u_div/CryTmp[1][6] ;
   wire \u_div/CryTmp[1][7] ;
   wire \u_div/CryTmp[2][1] ;
   wire \u_div/CryTmp[2][2] ;
   wire \u_div/CryTmp[2][3] ;
   wire \u_div/CryTmp[2][4] ;
   wire \u_div/CryTmp[2][5] ;
   wire \u_div/CryTmp[2][6] ;
   wire \u_div/CryTmp[3][1] ;
   wire \u_div/CryTmp[3][2] ;
   wire \u_div/CryTmp[3][3] ;
   wire \u_div/CryTmp[3][4] ;
   wire \u_div/CryTmp[3][5] ;
   wire \u_div/CryTmp[4][1] ;
   wire \u_div/CryTmp[4][2] ;
   wire \u_div/CryTmp[4][3] ;
   wire \u_div/CryTmp[4][4] ;
   wire \u_div/CryTmp[5][1] ;
   wire \u_div/CryTmp[5][2] ;
   wire \u_div/CryTmp[5][3] ;
   wire \u_div/CryTmp[6][1] ;
   wire \u_div/CryTmp[6][2] ;
   wire \u_div/CryTmp[7][1] ;
   wire \u_div/PartRem[1][1] ;
   wire \u_div/PartRem[1][2] ;
   wire \u_div/PartRem[1][3] ;
   wire \u_div/PartRem[1][4] ;
   wire \u_div/PartRem[1][5] ;
   wire \u_div/PartRem[1][6] ;
   wire \u_div/PartRem[1][7] ;
   wire \u_div/PartRem[2][1] ;
   wire \u_div/PartRem[2][2] ;
   wire \u_div/PartRem[2][3] ;
   wire \u_div/PartRem[2][4] ;
   wire \u_div/PartRem[2][5] ;
   wire \u_div/PartRem[2][6] ;
   wire \u_div/PartRem[3][1] ;
   wire \u_div/PartRem[3][2] ;
   wire \u_div/PartRem[3][3] ;
   wire \u_div/PartRem[3][4] ;
   wire \u_div/PartRem[3][5] ;
   wire \u_div/PartRem[4][1] ;
   wire \u_div/PartRem[4][2] ;
   wire \u_div/PartRem[4][3] ;
   wire \u_div/PartRem[4][4] ;
   wire \u_div/PartRem[5][1] ;
   wire \u_div/PartRem[5][2] ;
   wire \u_div/PartRem[5][3] ;
   wire \u_div/PartRem[6][1] ;
   wire \u_div/PartRem[6][2] ;
   wire \u_div/PartRem[7][1] ;
   wire n1;
   wire n2;
   wire n3;
   wire n4;
   wire n5;
   wire n6;
   wire n7;
   wire n8;
   wire n9;
   wire n10;
   wire n11;

   ADDFX2M \u_div/u_fa_PartRem_0_2_5  (.S(\u_div/SumTmp[2][5] ), 
	.CO(\u_div/CryTmp[2][6] ), 
	.CI(\u_div/CryTmp[2][5] ), 
	.B(n3), 
	.A(\u_div/PartRem[3][5] ));
   ADDFX2M \u_div/u_fa_PartRem_0_4_3  (.S(\u_div/SumTmp[4][3] ), 
	.CO(\u_div/CryTmp[4][4] ), 
	.CI(\u_div/CryTmp[4][3] ), 
	.B(n5), 
	.A(\u_div/PartRem[5][3] ));
   ADDFX2M \u_div/u_fa_PartRem_0_3_4  (.S(\u_div/SumTmp[3][4] ), 
	.CO(\u_div/CryTmp[3][5] ), 
	.CI(\u_div/CryTmp[3][4] ), 
	.B(n4), 
	.A(\u_div/PartRem[4][4] ));
   ADDFX2M \u_div/u_fa_PartRem_0_5_2  (.S(\u_div/SumTmp[5][2] ), 
	.CO(\u_div/CryTmp[5][3] ), 
	.CI(\u_div/CryTmp[5][2] ), 
	.B(n6), 
	.A(\u_div/PartRem[6][2] ));
   ADDFX2M \u_div/u_fa_PartRem_0_6_1  (.S(\u_div/SumTmp[6][1] ), 
	.CO(\u_div/CryTmp[6][2] ), 
	.CI(\u_div/CryTmp[6][1] ), 
	.B(n7), 
	.A(\u_div/PartRem[7][1] ));
   ADDFX2M \u_div/u_fa_PartRem_0_0_3  (.CO(\u_div/CryTmp[0][4] ), 
	.CI(\u_div/CryTmp[0][3] ), 
	.B(n5), 
	.A(\u_div/PartRem[1][3] ));
   ADDFX2M \u_div/u_fa_PartRem_0_0_4  (.CO(\u_div/CryTmp[0][5] ), 
	.CI(\u_div/CryTmp[0][4] ), 
	.B(n4), 
	.A(\u_div/PartRem[1][4] ));
   ADDFX2M \u_div/u_fa_PartRem_0_0_5  (.CO(\u_div/CryTmp[0][6] ), 
	.CI(\u_div/CryTmp[0][5] ), 
	.B(n3), 
	.A(\u_div/PartRem[1][5] ));
   ADDFX2M \u_div/u_fa_PartRem_0_1_4  (.S(\u_div/SumTmp[1][4] ), 
	.CO(\u_div/CryTmp[1][5] ), 
	.CI(\u_div/CryTmp[1][4] ), 
	.B(n4), 
	.A(\u_div/PartRem[2][4] ));
   ADDFX2M \u_div/u_fa_PartRem_0_1_5  (.S(\u_div/SumTmp[1][5] ), 
	.CO(\u_div/CryTmp[1][6] ), 
	.CI(\u_div/CryTmp[1][5] ), 
	.B(n3), 
	.A(\u_div/PartRem[2][5] ));
   ADDFX2M \u_div/u_fa_PartRem_0_2_4  (.S(\u_div/SumTmp[2][4] ), 
	.CO(\u_div/CryTmp[2][5] ), 
	.CI(\u_div/CryTmp[2][4] ), 
	.B(n4), 
	.A(\u_div/PartRem[3][4] ));
   ADDFX2M \u_div/u_fa_PartRem_0_1_3  (.S(\u_div/SumTmp[1][3] ), 
	.CO(\u_div/CryTmp[1][4] ), 
	.CI(\u_div/CryTmp[1][3] ), 
	.B(n5), 
	.A(\u_div/PartRem[2][3] ));
   ADDFX2M \u_div/u_fa_PartRem_0_2_3  (.S(\u_div/SumTmp[2][3] ), 
	.CO(\u_div/CryTmp[2][4] ), 
	.CI(\u_div/CryTmp[2][3] ), 
	.B(n5), 
	.A(\u_div/PartRem[3][3] ));
   ADDFX2M \u_div/u_fa_PartRem_0_3_3  (.S(\u_div/SumTmp[3][3] ), 
	.CO(\u_div/CryTmp[3][4] ), 
	.CI(\u_div/CryTmp[3][3] ), 
	.B(n5), 
	.A(\u_div/PartRem[4][3] ));
   ADDFX2M \u_div/u_fa_PartRem_0_0_1  (.CO(\u_div/CryTmp[0][2] ), 
	.CI(\u_div/CryTmp[0][1] ), 
	.B(n7), 
	.A(\u_div/PartRem[1][1] ));
   ADDFX2M \u_div/u_fa_PartRem_0_0_2  (.CO(\u_div/CryTmp[0][3] ), 
	.CI(\u_div/CryTmp[0][2] ), 
	.B(n6), 
	.A(\u_div/PartRem[1][2] ));
   ADDFX2M \u_div/u_fa_PartRem_0_1_2  (.S(\u_div/SumTmp[1][2] ), 
	.CO(\u_div/CryTmp[1][3] ), 
	.CI(\u_div/CryTmp[1][2] ), 
	.B(n6), 
	.A(\u_div/PartRem[2][2] ));
   ADDFX2M \u_div/u_fa_PartRem_0_2_2  (.S(\u_div/SumTmp[2][2] ), 
	.CO(\u_div/CryTmp[2][3] ), 
	.CI(\u_div/CryTmp[2][2] ), 
	.B(n6), 
	.A(\u_div/PartRem[3][2] ));
   ADDFX2M \u_div/u_fa_PartRem_0_3_2  (.S(\u_div/SumTmp[3][2] ), 
	.CO(\u_div/CryTmp[3][3] ), 
	.CI(\u_div/CryTmp[3][2] ), 
	.B(n6), 
	.A(\u_div/PartRem[4][2] ));
   ADDFX2M \u_div/u_fa_PartRem_0_4_2  (.S(\u_div/SumTmp[4][2] ), 
	.CO(\u_div/CryTmp[4][3] ), 
	.CI(\u_div/CryTmp[4][2] ), 
	.B(n6), 
	.A(\u_div/PartRem[5][2] ));
   ADDFX2M \u_div/u_fa_PartRem_0_1_1  (.S(\u_div/SumTmp[1][1] ), 
	.CO(\u_div/CryTmp[1][2] ), 
	.CI(\u_div/CryTmp[1][1] ), 
	.B(n7), 
	.A(\u_div/PartRem[2][1] ));
   ADDFX2M \u_div/u_fa_PartRem_0_2_1  (.S(\u_div/SumTmp[2][1] ), 
	.CO(\u_div/CryTmp[2][2] ), 
	.CI(\u_div/CryTmp[2][1] ), 
	.B(n7), 
	.A(\u_div/PartRem[3][1] ));
   ADDFX2M \u_div/u_fa_PartRem_0_3_1  (.S(\u_div/SumTmp[3][1] ), 
	.CO(\u_div/CryTmp[3][2] ), 
	.CI(\u_div/CryTmp[3][1] ), 
	.B(n7), 
	.A(\u_div/PartRem[4][1] ));
   ADDFX2M \u_div/u_fa_PartRem_0_4_1  (.S(\u_div/SumTmp[4][1] ), 
	.CO(\u_div/CryTmp[4][2] ), 
	.CI(\u_div/CryTmp[4][1] ), 
	.B(n7), 
	.A(\u_div/PartRem[5][1] ));
   ADDFX2M \u_div/u_fa_PartRem_0_5_1  (.S(\u_div/SumTmp[5][1] ), 
	.CO(\u_div/CryTmp[5][2] ), 
	.CI(\u_div/CryTmp[5][1] ), 
	.B(n7), 
	.A(\u_div/PartRem[6][1] ));
   ADDFX2M \u_div/u_fa_PartRem_0_0_6  (.CO(\u_div/CryTmp[0][7] ), 
	.CI(\u_div/CryTmp[0][6] ), 
	.B(n2), 
	.A(\u_div/PartRem[1][6] ));
   ADDFX2M \u_div/u_fa_PartRem_0_0_7  (.CO(quotient[0]), 
	.CI(\u_div/CryTmp[0][7] ), 
	.B(n1), 
	.A(\u_div/PartRem[1][7] ));
   ADDFX2M \u_div/u_fa_PartRem_0_1_6  (.S(\u_div/SumTmp[1][6] ), 
	.CO(\u_div/CryTmp[1][7] ), 
	.CI(\u_div/CryTmp[1][6] ), 
	.B(n2), 
	.A(\u_div/PartRem[2][6] ));
   INVX8M U1 (.Y(n8), 
	.A(b[0]));
   CLKINVX4M U2 (.Y(n6), 
	.A(b[2]));
   CLKINVX3M U3 (.Y(n4), 
	.A(b[4]));
   NOR2X4M U4 (.Y(n11), 
	.B(b[7]), 
	.A(b[6]));
   AND3X4M U5 (.Y(quotient[3]), 
	.C(\u_div/CryTmp[3][5] ), 
	.B(n3), 
	.A(n11));
   CLKAND2X4M U6 (.Y(quotient[4]), 
	.B(n10), 
	.A(\u_div/CryTmp[4][4] ));
   CLKAND2X4M U7 (.Y(quotient[2]), 
	.B(n11), 
	.A(\u_div/CryTmp[2][6] ));
   CLKAND2X4M U8 (.Y(quotient[1]), 
	.B(n1), 
	.A(\u_div/CryTmp[1][7] ));
   MX2XLM U9 (.Y(\u_div/PartRem[1][7] ), 
	.S0(quotient[1]), 
	.B(\u_div/SumTmp[1][6] ), 
	.A(\u_div/PartRem[2][6] ));
   AND2X2M U10 (.Y(quotient[5]), 
	.B(n9), 
	.A(\u_div/CryTmp[5][3] ));
   MX2X1M U11 (.Y(\u_div/PartRem[2][4] ), 
	.S0(quotient[2]), 
	.B(\u_div/SumTmp[2][3] ), 
	.A(\u_div/PartRem[3][3] ));
   MX2X1M U12 (.Y(\u_div/PartRem[2][2] ), 
	.S0(quotient[2]), 
	.B(\u_div/SumTmp[2][1] ), 
	.A(\u_div/PartRem[3][1] ));
   MX2X1M U13 (.Y(\u_div/PartRem[2][5] ), 
	.S0(quotient[2]), 
	.B(\u_div/SumTmp[2][4] ), 
	.A(\u_div/PartRem[3][4] ));
   MX2X1M U14 (.Y(\u_div/PartRem[2][3] ), 
	.S0(quotient[2]), 
	.B(\u_div/SumTmp[2][2] ), 
	.A(\u_div/PartRem[3][2] ));
   MX2X1M U15 (.Y(\u_div/PartRem[2][6] ), 
	.S0(quotient[2]), 
	.B(\u_div/SumTmp[2][5] ), 
	.A(\u_div/PartRem[3][5] ));
   MX2X1M U16 (.Y(\u_div/PartRem[3][5] ), 
	.S0(quotient[3]), 
	.B(\u_div/SumTmp[3][4] ), 
	.A(\u_div/PartRem[4][4] ));
   MX2X1M U17 (.Y(\u_div/PartRem[3][4] ), 
	.S0(quotient[3]), 
	.B(\u_div/SumTmp[3][3] ), 
	.A(\u_div/PartRem[4][3] ));
   MX2X1M U18 (.Y(\u_div/PartRem[3][3] ), 
	.S0(quotient[3]), 
	.B(\u_div/SumTmp[3][2] ), 
	.A(\u_div/PartRem[4][2] ));
   MX2X1M U19 (.Y(\u_div/PartRem[3][2] ), 
	.S0(quotient[3]), 
	.B(\u_div/SumTmp[3][1] ), 
	.A(\u_div/PartRem[4][1] ));
   MX2X1M U20 (.Y(\u_div/PartRem[4][4] ), 
	.S0(quotient[4]), 
	.B(\u_div/SumTmp[4][3] ), 
	.A(\u_div/PartRem[5][3] ));
   MX2X1M U21 (.Y(\u_div/PartRem[4][3] ), 
	.S0(quotient[4]), 
	.B(\u_div/SumTmp[4][2] ), 
	.A(\u_div/PartRem[5][2] ));
   MX2X1M U22 (.Y(\u_div/PartRem[4][2] ), 
	.S0(quotient[4]), 
	.B(\u_div/SumTmp[4][1] ), 
	.A(\u_div/PartRem[5][1] ));
   MX2X1M U23 (.Y(\u_div/PartRem[5][2] ), 
	.S0(quotient[5]), 
	.B(\u_div/SumTmp[5][1] ), 
	.A(\u_div/PartRem[6][1] ));
   MX2X1M U24 (.Y(\u_div/PartRem[5][3] ), 
	.S0(quotient[5]), 
	.B(\u_div/SumTmp[5][2] ), 
	.A(\u_div/PartRem[6][2] ));
   MX2XLM U25 (.Y(\u_div/PartRem[1][3] ), 
	.S0(quotient[1]), 
	.B(\u_div/SumTmp[1][2] ), 
	.A(\u_div/PartRem[2][2] ));
   MX2XLM U26 (.Y(\u_div/PartRem[1][4] ), 
	.S0(quotient[1]), 
	.B(\u_div/SumTmp[1][3] ), 
	.A(\u_div/PartRem[2][3] ));
   MX2XLM U27 (.Y(\u_div/PartRem[1][6] ), 
	.S0(quotient[1]), 
	.B(\u_div/SumTmp[1][5] ), 
	.A(\u_div/PartRem[2][5] ));
   AND3X2M U28 (.Y(quotient[6]), 
	.C(\u_div/CryTmp[6][2] ), 
	.B(n6), 
	.A(n9));
   AND2X2M U29 (.Y(n9), 
	.B(n5), 
	.A(n10));
   OR2X2M U30 (.Y(\u_div/CryTmp[7][1] ), 
	.B(n8), 
	.A(a[7]));
   XNOR2X2M U31 (.Y(\u_div/SumTmp[2][0] ), 
	.B(a[2]), 
	.A(n8));
   XNOR2X2M U32 (.Y(\u_div/SumTmp[3][0] ), 
	.B(a[3]), 
	.A(n8));
   XNOR2X2M U33 (.Y(\u_div/SumTmp[4][0] ), 
	.B(a[4]), 
	.A(n8));
   XNOR2X2M U34 (.Y(\u_div/SumTmp[5][0] ), 
	.B(a[5]), 
	.A(n8));
   XNOR2X2M U35 (.Y(\u_div/SumTmp[6][0] ), 
	.B(a[6]), 
	.A(n8));
   XNOR2X2M U36 (.Y(\u_div/SumTmp[7][0] ), 
	.B(a[7]), 
	.A(n8));
   INVX4M U37 (.Y(n7), 
	.A(b[1]));
   XNOR2X2M U38 (.Y(\u_div/SumTmp[1][0] ), 
	.B(a[1]), 
	.A(n8));
   INVX2M U39 (.Y(n2), 
	.A(b[6]));
   INVX2M U40 (.Y(n1), 
	.A(b[7]));
   OR2X2M U41 (.Y(\u_div/CryTmp[5][1] ), 
	.B(n8), 
	.A(a[5]));
   OR2X2M U42 (.Y(\u_div/CryTmp[4][1] ), 
	.B(n8), 
	.A(a[4]));
   OR2X2M U43 (.Y(\u_div/CryTmp[3][1] ), 
	.B(n8), 
	.A(a[3]));
   OR2X2M U44 (.Y(\u_div/CryTmp[2][1] ), 
	.B(n8), 
	.A(a[2]));
   OR2X2M U45 (.Y(\u_div/CryTmp[1][1] ), 
	.B(n8), 
	.A(a[1]));
   NAND2BX2M U46 (.Y(\u_div/CryTmp[0][1] ), 
	.B(b[0]), 
	.AN(a[0]));
   OR2X2M U47 (.Y(\u_div/CryTmp[6][1] ), 
	.B(n8), 
	.A(a[6]));
   INVX4M U48 (.Y(n5), 
	.A(b[3]));
   INVX4M U49 (.Y(n3), 
	.A(b[5]));
   CLKMX2X2M U50 (.Y(\u_div/PartRem[6][2] ), 
	.S0(quotient[6]), 
	.B(\u_div/SumTmp[6][1] ), 
	.A(\u_div/PartRem[7][1] ));
   CLKMX2X2M U51 (.Y(\u_div/PartRem[7][1] ), 
	.S0(quotient[7]), 
	.B(\u_div/SumTmp[7][0] ), 
	.A(a[7]));
   CLKMX2X2M U52 (.Y(\u_div/PartRem[6][1] ), 
	.S0(quotient[6]), 
	.B(\u_div/SumTmp[6][0] ), 
	.A(a[6]));
   CLKMX2X2M U53 (.Y(\u_div/PartRem[1][5] ), 
	.S0(quotient[1]), 
	.B(\u_div/SumTmp[1][4] ), 
	.A(\u_div/PartRem[2][4] ));
   CLKMX2X2M U54 (.Y(\u_div/PartRem[5][1] ), 
	.S0(quotient[5]), 
	.B(\u_div/SumTmp[5][0] ), 
	.A(a[5]));
   CLKMX2X2M U55 (.Y(\u_div/PartRem[4][1] ), 
	.S0(quotient[4]), 
	.B(\u_div/SumTmp[4][0] ), 
	.A(a[4]));
   CLKMX2X2M U56 (.Y(\u_div/PartRem[3][1] ), 
	.S0(quotient[3]), 
	.B(\u_div/SumTmp[3][0] ), 
	.A(a[3]));
   CLKMX2X2M U57 (.Y(\u_div/PartRem[1][2] ), 
	.S0(quotient[1]), 
	.B(\u_div/SumTmp[1][1] ), 
	.A(\u_div/PartRem[2][1] ));
   CLKMX2X2M U58 (.Y(\u_div/PartRem[2][1] ), 
	.S0(quotient[2]), 
	.B(\u_div/SumTmp[2][0] ), 
	.A(a[2]));
   CLKMX2X2M U59 (.Y(\u_div/PartRem[1][1] ), 
	.S0(quotient[1]), 
	.B(\u_div/SumTmp[1][0] ), 
	.A(a[1]));
   AND4X1M U60 (.Y(quotient[7]), 
	.D(n6), 
	.C(n7), 
	.B(n9), 
	.A(\u_div/CryTmp[7][1] ));
   AND3X1M U61 (.Y(n10), 
	.C(n3), 
	.B(n4), 
	.A(n11));
endmodule

module Alu_16_bit_OPER_WIDTH8_OUT_WIDTH16_ALU_FUN_WIDTH4_DW01_sub_0 (
	A, 
	B, 
	CI, 
	DIFF, 
	CO);
   input [8:0] A;
   input [8:0] B;
   input CI;
   output [8:0] DIFF;
   output CO;

   // Internal wires
   wire n1;
   wire n2;
   wire n3;
   wire n4;
   wire n5;
   wire n6;
   wire n7;
   wire n8;
   wire [9:0] carry;

   ADDFX2M U2_5 (.S(DIFF[5]), 
	.CO(carry[6]), 
	.CI(carry[5]), 
	.B(n3), 
	.A(A[5]));
   ADDFX2M U2_4 (.S(DIFF[4]), 
	.CO(carry[5]), 
	.CI(carry[4]), 
	.B(n4), 
	.A(A[4]));
   ADDFX2M U2_3 (.S(DIFF[3]), 
	.CO(carry[4]), 
	.CI(carry[3]), 
	.B(n5), 
	.A(A[3]));
   ADDFX2M U2_2 (.S(DIFF[2]), 
	.CO(carry[3]), 
	.CI(carry[2]), 
	.B(n6), 
	.A(A[2]));
   ADDFX2M U2_7 (.S(DIFF[7]), 
	.CO(carry[8]), 
	.CI(carry[7]), 
	.B(n1), 
	.A(A[7]));
   ADDFX2M U2_6 (.S(DIFF[6]), 
	.CO(carry[7]), 
	.CI(carry[6]), 
	.B(n2), 
	.A(A[6]));
   ADDFX2M U2_1 (.S(DIFF[1]), 
	.CO(carry[2]), 
	.CI(carry[1]), 
	.B(n7), 
	.A(A[1]));
   XNOR2X2M U1 (.Y(DIFF[0]), 
	.B(A[0]), 
	.A(n8));
   OR2X2M U2 (.Y(carry[1]), 
	.B(n8), 
	.A(A[0]));
   INVX2M U3 (.Y(n7), 
	.A(B[1]));
   INVX2M U4 (.Y(n2), 
	.A(B[6]));
   INVX2M U5 (.Y(n1), 
	.A(B[7]));
   INVX2M U6 (.Y(n8), 
	.A(B[0]));
   INVX2M U7 (.Y(n6), 
	.A(B[2]));
   INVX2M U8 (.Y(n5), 
	.A(B[3]));
   INVX2M U9 (.Y(n4), 
	.A(B[4]));
   INVX2M U10 (.Y(n3), 
	.A(B[5]));
   CLKINVX1M U11 (.Y(DIFF[8]), 
	.A(carry[8]));
endmodule

module Alu_16_bit_OPER_WIDTH8_OUT_WIDTH16_ALU_FUN_WIDTH4_DW01_add_0 (
	A, 
	B, 
	CI, 
	SUM, 
	CO);
   input [8:0] A;
   input [8:0] B;
   input CI;
   output [8:0] SUM;
   output CO;

   // Internal wires
   wire n1;
   wire [8:1] carry;

   ADDFX2M U1_1 (.S(SUM[1]), 
	.CO(carry[2]), 
	.CI(n1), 
	.B(B[1]), 
	.A(A[1]));
   ADDFX2M U1_2 (.S(SUM[2]), 
	.CO(carry[3]), 
	.CI(carry[2]), 
	.B(B[2]), 
	.A(A[2]));
   ADDFX2M U1_3 (.S(SUM[3]), 
	.CO(carry[4]), 
	.CI(carry[3]), 
	.B(B[3]), 
	.A(A[3]));
   ADDFX2M U1_4 (.S(SUM[4]), 
	.CO(carry[5]), 
	.CI(carry[4]), 
	.B(B[4]), 
	.A(A[4]));
   ADDFX2M U1_5 (.S(SUM[5]), 
	.CO(carry[6]), 
	.CI(carry[5]), 
	.B(B[5]), 
	.A(A[5]));
   ADDFX2M U1_7 (.S(SUM[7]), 
	.CO(SUM[8]), 
	.CI(carry[7]), 
	.B(B[7]), 
	.A(A[7]));
   ADDFX2M U1_6 (.S(SUM[6]), 
	.CO(carry[7]), 
	.CI(carry[6]), 
	.B(B[6]), 
	.A(A[6]));
   AND2X2M U1 (.Y(n1), 
	.B(A[0]), 
	.A(B[0]));
   CLKXOR2X2M U2 (.Y(SUM[0]), 
	.B(A[0]), 
	.A(B[0]));
endmodule

module Alu_16_bit_OPER_WIDTH8_OUT_WIDTH16_ALU_FUN_WIDTH4_DW01_add_1 (
	A, 
	B, 
	CI, 
	SUM, 
	CO);
   input [13:0] A;
   input [13:0] B;
   input CI;
   output [13:0] SUM;
   output CO;

   // Internal wires
   wire n7;
   wire n8;
   wire n9;
   wire n10;
   wire n11;
   wire n12;
   wire n13;
   wire n14;
   wire n15;
   wire n16;
   wire n17;
   wire n18;
   wire n19;
   wire n20;
   wire n21;
   wire n22;
   wire n23;
   wire n24;
   wire n25;
   wire n26;

   OAI21BX4M U2 (.Y(n17), 
	.B0N(n21), 
	.A1(n20), 
	.A0(n19));
   AOI2BB1X2M U3 (.Y(n24), 
	.B0(n10), 
	.A1N(n11), 
	.A0N(n8));
   NOR2X2M U4 (.Y(n19), 
	.B(A[11]), 
	.A(B[11]));
   NOR2X2M U5 (.Y(n11), 
	.B(A[9]), 
	.A(B[9]));
   NOR2X2M U6 (.Y(n23), 
	.B(A[10]), 
	.A(B[10]));
   NOR2X2M U7 (.Y(n14), 
	.B(A[8]), 
	.A(B[8]));
   CLKXOR2X2M U8 (.Y(SUM[7]), 
	.B(B[7]), 
	.A(A[7]));
   CLKXOR2X2M U9 (.Y(SUM[13]), 
	.B(n16), 
	.A(B[13]));
   NAND2X2M U10 (.Y(n13), 
	.B(B[7]), 
	.A(A[7]));
   INVX2M U11 (.Y(SUM[6]), 
	.A(n7));
   INVX2M U12 (.Y(n7), 
	.A(A[6]));
   BUFX2M U13 (.Y(SUM[0]), 
	.A(A[0]));
   BUFX2M U14 (.Y(SUM[1]), 
	.A(A[1]));
   BUFX2M U15 (.Y(SUM[2]), 
	.A(A[2]));
   BUFX2M U16 (.Y(SUM[3]), 
	.A(A[3]));
   BUFX2M U17 (.Y(SUM[4]), 
	.A(A[4]));
   BUFX2M U18 (.Y(SUM[5]), 
	.A(A[5]));
   XNOR2X1M U19 (.Y(SUM[9]), 
	.B(n9), 
	.A(n8));
   NOR2X1M U20 (.Y(n9), 
	.B(n11), 
	.A(n10));
   CLKXOR2X2M U21 (.Y(SUM[8]), 
	.B(n13), 
	.A(n12));
   NAND2BX1M U22 (.Y(n12), 
	.B(n15), 
	.AN(n14));
   OAI2BB1X1M U23 (.Y(n16), 
	.B0(n18), 
	.A1N(A[12]), 
	.A0N(n17));
   OAI21X1M U24 (.Y(n18), 
	.B0(B[12]), 
	.A1(n17), 
	.A0(A[12]));
   XOR3XLM U25 (.Y(SUM[12]), 
	.C(n17), 
	.B(A[12]), 
	.A(B[12]));
   XNOR2X1M U26 (.Y(SUM[11]), 
	.B(n22), 
	.A(n20));
   NOR2X1M U27 (.Y(n22), 
	.B(n19), 
	.A(n21));
   AND2X1M U28 (.Y(n21), 
	.B(A[11]), 
	.A(B[11]));
   OA21X1M U29 (.Y(n20), 
	.B0(n25), 
	.A1(n24), 
	.A0(n23));
   CLKXOR2X2M U30 (.Y(SUM[10]), 
	.B(n24), 
	.A(n26));
   AND2X1M U31 (.Y(n10), 
	.B(A[9]), 
	.A(B[9]));
   OA21X1M U32 (.Y(n8), 
	.B0(n15), 
	.A1(n14), 
	.A0(n13));
   CLKNAND2X2M U33 (.Y(n15), 
	.B(A[8]), 
	.A(B[8]));
   NAND2BX1M U34 (.Y(n26), 
	.B(n25), 
	.AN(n23));
   CLKNAND2X2M U35 (.Y(n25), 
	.B(A[10]), 
	.A(B[10]));
endmodule

module Alu_16_bit_OPER_WIDTH8_OUT_WIDTH16_ALU_FUN_WIDTH4_DW02_mult_0 (
	A, 
	B, 
	TC, 
	PRODUCT);
   input [7:0] A;
   input [7:0] B;
   input TC;
   output [15:0] PRODUCT;

   // Internal wires
   wire \ab[7][7] ;
   wire \ab[7][6] ;
   wire \ab[7][5] ;
   wire \ab[7][4] ;
   wire \ab[7][3] ;
   wire \ab[7][2] ;
   wire \ab[7][1] ;
   wire \ab[7][0] ;
   wire \ab[6][7] ;
   wire \ab[6][6] ;
   wire \ab[6][5] ;
   wire \ab[6][4] ;
   wire \ab[6][3] ;
   wire \ab[6][2] ;
   wire \ab[6][1] ;
   wire \ab[6][0] ;
   wire \ab[5][7] ;
   wire \ab[5][6] ;
   wire \ab[5][5] ;
   wire \ab[5][4] ;
   wire \ab[5][3] ;
   wire \ab[5][2] ;
   wire \ab[5][1] ;
   wire \ab[5][0] ;
   wire \ab[4][7] ;
   wire \ab[4][6] ;
   wire \ab[4][5] ;
   wire \ab[4][4] ;
   wire \ab[4][3] ;
   wire \ab[4][2] ;
   wire \ab[4][1] ;
   wire \ab[4][0] ;
   wire \ab[3][7] ;
   wire \ab[3][6] ;
   wire \ab[3][5] ;
   wire \ab[3][4] ;
   wire \ab[3][3] ;
   wire \ab[3][2] ;
   wire \ab[3][1] ;
   wire \ab[3][0] ;
   wire \ab[2][7] ;
   wire \ab[2][6] ;
   wire \ab[2][5] ;
   wire \ab[2][4] ;
   wire \ab[2][3] ;
   wire \ab[2][2] ;
   wire \ab[2][1] ;
   wire \ab[2][0] ;
   wire \ab[1][7] ;
   wire \ab[1][6] ;
   wire \ab[1][5] ;
   wire \ab[1][4] ;
   wire \ab[1][3] ;
   wire \ab[1][2] ;
   wire \ab[1][1] ;
   wire \ab[1][0] ;
   wire \ab[0][7] ;
   wire \ab[0][6] ;
   wire \ab[0][5] ;
   wire \ab[0][4] ;
   wire \ab[0][3] ;
   wire \ab[0][2] ;
   wire \ab[0][1] ;
   wire \CARRYB[7][6] ;
   wire \CARRYB[7][5] ;
   wire \CARRYB[7][4] ;
   wire \CARRYB[7][3] ;
   wire \CARRYB[7][2] ;
   wire \CARRYB[7][1] ;
   wire \CARRYB[7][0] ;
   wire \CARRYB[6][6] ;
   wire \CARRYB[6][5] ;
   wire \CARRYB[6][4] ;
   wire \CARRYB[6][3] ;
   wire \CARRYB[6][2] ;
   wire \CARRYB[6][1] ;
   wire \CARRYB[6][0] ;
   wire \CARRYB[5][6] ;
   wire \CARRYB[5][5] ;
   wire \CARRYB[5][4] ;
   wire \CARRYB[5][3] ;
   wire \CARRYB[5][2] ;
   wire \CARRYB[5][1] ;
   wire \CARRYB[5][0] ;
   wire \CARRYB[4][6] ;
   wire \CARRYB[4][5] ;
   wire \CARRYB[4][4] ;
   wire \CARRYB[4][3] ;
   wire \CARRYB[4][2] ;
   wire \CARRYB[4][1] ;
   wire \CARRYB[4][0] ;
   wire \CARRYB[3][6] ;
   wire \CARRYB[3][5] ;
   wire \CARRYB[3][4] ;
   wire \CARRYB[3][3] ;
   wire \CARRYB[3][2] ;
   wire \CARRYB[3][1] ;
   wire \CARRYB[3][0] ;
   wire \CARRYB[2][6] ;
   wire \CARRYB[2][5] ;
   wire \CARRYB[2][4] ;
   wire \CARRYB[2][3] ;
   wire \CARRYB[2][2] ;
   wire \CARRYB[2][1] ;
   wire \CARRYB[2][0] ;
   wire \SUMB[7][6] ;
   wire \SUMB[7][5] ;
   wire \SUMB[7][4] ;
   wire \SUMB[7][3] ;
   wire \SUMB[7][2] ;
   wire \SUMB[7][1] ;
   wire \SUMB[7][0] ;
   wire \SUMB[6][6] ;
   wire \SUMB[6][5] ;
   wire \SUMB[6][4] ;
   wire \SUMB[6][3] ;
   wire \SUMB[6][2] ;
   wire \SUMB[6][1] ;
   wire \SUMB[5][6] ;
   wire \SUMB[5][5] ;
   wire \SUMB[5][4] ;
   wire \SUMB[5][3] ;
   wire \SUMB[5][2] ;
   wire \SUMB[5][1] ;
   wire \SUMB[4][6] ;
   wire \SUMB[4][5] ;
   wire \SUMB[4][4] ;
   wire \SUMB[4][3] ;
   wire \SUMB[4][2] ;
   wire \SUMB[4][1] ;
   wire \SUMB[3][6] ;
   wire \SUMB[3][5] ;
   wire \SUMB[3][4] ;
   wire \SUMB[3][3] ;
   wire \SUMB[3][2] ;
   wire \SUMB[3][1] ;
   wire \SUMB[2][6] ;
   wire \SUMB[2][5] ;
   wire \SUMB[2][4] ;
   wire \SUMB[2][3] ;
   wire \SUMB[2][2] ;
   wire \SUMB[2][1] ;
   wire \SUMB[1][6] ;
   wire \SUMB[1][5] ;
   wire \SUMB[1][4] ;
   wire \SUMB[1][3] ;
   wire \SUMB[1][2] ;
   wire \SUMB[1][1] ;
   wire \A1[12] ;
   wire \A1[11] ;
   wire \A1[10] ;
   wire \A1[9] ;
   wire \A1[8] ;
   wire \A1[7] ;
   wire \A1[6] ;
   wire \A1[4] ;
   wire \A1[3] ;
   wire \A1[2] ;
   wire \A1[1] ;
   wire \A1[0] ;
   wire n3;
   wire n4;
   wire n5;
   wire n6;
   wire n7;
   wire n8;
   wire n9;
   wire n10;
   wire n11;
   wire n12;
   wire n13;
   wire n14;
   wire n15;
   wire n16;
   wire n17;
   wire n18;
   wire n19;
   wire n20;
   wire n21;
   wire n22;
   wire n23;
   wire n24;
   wire n25;
   wire n26;
   wire n27;
   wire n28;
   wire n29;
   wire n30;
   wire n31;
   wire n32;

   ADDFX2M S1_6_0 (.S(\A1[4] ), 
	.CO(\CARRYB[6][0] ), 
	.CI(\SUMB[5][1] ), 
	.B(\CARRYB[5][0] ), 
	.A(\ab[6][0] ));
   ADDFX2M S1_5_0 (.S(\A1[3] ), 
	.CO(\CARRYB[5][0] ), 
	.CI(\SUMB[4][1] ), 
	.B(\CARRYB[4][0] ), 
	.A(\ab[5][0] ));
   ADDFX2M S1_4_0 (.S(\A1[2] ), 
	.CO(\CARRYB[4][0] ), 
	.CI(\SUMB[3][1] ), 
	.B(\CARRYB[3][0] ), 
	.A(\ab[4][0] ));
   ADDFX2M S2_6_5 (.S(\SUMB[6][5] ), 
	.CO(\CARRYB[6][5] ), 
	.CI(\SUMB[5][6] ), 
	.B(\CARRYB[5][5] ), 
	.A(\ab[6][5] ));
   ADDFX2M S1_3_0 (.S(\A1[1] ), 
	.CO(\CARRYB[3][0] ), 
	.CI(\SUMB[2][1] ), 
	.B(\CARRYB[2][0] ), 
	.A(\ab[3][0] ));
   ADDFX2M S2_6_4 (.S(\SUMB[6][4] ), 
	.CO(\CARRYB[6][4] ), 
	.CI(\SUMB[5][5] ), 
	.B(\CARRYB[5][4] ), 
	.A(\ab[6][4] ));
   ADDFX2M S2_5_5 (.S(\SUMB[5][5] ), 
	.CO(\CARRYB[5][5] ), 
	.CI(\SUMB[4][6] ), 
	.B(\CARRYB[4][5] ), 
	.A(\ab[5][5] ));
   ADDFX2M S2_6_3 (.S(\SUMB[6][3] ), 
	.CO(\CARRYB[6][3] ), 
	.CI(\SUMB[5][4] ), 
	.B(\CARRYB[5][3] ), 
	.A(\ab[6][3] ));
   ADDFX2M S2_5_4 (.S(\SUMB[5][4] ), 
	.CO(\CARRYB[5][4] ), 
	.CI(\SUMB[4][5] ), 
	.B(\CARRYB[4][4] ), 
	.A(\ab[5][4] ));
   ADDFX2M S2_6_2 (.S(\SUMB[6][2] ), 
	.CO(\CARRYB[6][2] ), 
	.CI(\SUMB[5][3] ), 
	.B(\CARRYB[5][2] ), 
	.A(\ab[6][2] ));
   ADDFX2M S2_4_5 (.S(\SUMB[4][5] ), 
	.CO(\CARRYB[4][5] ), 
	.CI(\SUMB[3][6] ), 
	.B(\CARRYB[3][5] ), 
	.A(\ab[4][5] ));
   ADDFX2M S2_5_2 (.S(\SUMB[5][2] ), 
	.CO(\CARRYB[5][2] ), 
	.CI(\SUMB[4][3] ), 
	.B(\CARRYB[4][2] ), 
	.A(\ab[5][2] ));
   ADDFX2M S2_5_3 (.S(\SUMB[5][3] ), 
	.CO(\CARRYB[5][3] ), 
	.CI(\SUMB[4][4] ), 
	.B(\CARRYB[4][3] ), 
	.A(\ab[5][3] ));
   ADDFX2M S2_4_2 (.S(\SUMB[4][2] ), 
	.CO(\CARRYB[4][2] ), 
	.CI(\SUMB[3][3] ), 
	.B(\CARRYB[3][2] ), 
	.A(\ab[4][2] ));
   ADDFX2M S2_4_3 (.S(\SUMB[4][3] ), 
	.CO(\CARRYB[4][3] ), 
	.CI(\SUMB[3][4] ), 
	.B(\CARRYB[3][3] ), 
	.A(\ab[4][3] ));
   ADDFX2M S2_4_4 (.S(\SUMB[4][4] ), 
	.CO(\CARRYB[4][4] ), 
	.CI(\SUMB[3][5] ), 
	.B(\CARRYB[3][4] ), 
	.A(\ab[4][4] ));
   ADDFX2M S2_3_2 (.S(\SUMB[3][2] ), 
	.CO(\CARRYB[3][2] ), 
	.CI(\SUMB[2][3] ), 
	.B(\CARRYB[2][2] ), 
	.A(\ab[3][2] ));
   ADDFX2M S2_3_3 (.S(\SUMB[3][3] ), 
	.CO(\CARRYB[3][3] ), 
	.CI(\SUMB[2][4] ), 
	.B(\CARRYB[2][3] ), 
	.A(\ab[3][3] ));
   ADDFX2M S2_3_4 (.S(\SUMB[3][4] ), 
	.CO(\CARRYB[3][4] ), 
	.CI(\SUMB[2][5] ), 
	.B(\CARRYB[2][4] ), 
	.A(\ab[3][4] ));
   ADDFX2M S2_3_5 (.S(\SUMB[3][5] ), 
	.CO(\CARRYB[3][5] ), 
	.CI(\SUMB[2][6] ), 
	.B(\CARRYB[2][5] ), 
	.A(\ab[3][5] ));
   ADDFX2M S1_2_0 (.S(\A1[0] ), 
	.CO(\CARRYB[2][0] ), 
	.CI(\SUMB[1][1] ), 
	.B(n10), 
	.A(\ab[2][0] ));
   ADDFX2M S2_2_2 (.S(\SUMB[2][2] ), 
	.CO(\CARRYB[2][2] ), 
	.CI(\SUMB[1][3] ), 
	.B(n9), 
	.A(\ab[2][2] ));
   ADDFX2M S2_2_3 (.S(\SUMB[2][3] ), 
	.CO(\CARRYB[2][3] ), 
	.CI(\SUMB[1][4] ), 
	.B(n5), 
	.A(\ab[2][3] ));
   ADDFX2M S2_2_4 (.S(\SUMB[2][4] ), 
	.CO(\CARRYB[2][4] ), 
	.CI(\SUMB[1][5] ), 
	.B(n8), 
	.A(\ab[2][4] ));
   ADDFX2M S2_2_5 (.S(\SUMB[2][5] ), 
	.CO(\CARRYB[2][5] ), 
	.CI(\SUMB[1][6] ), 
	.B(n7), 
	.A(\ab[2][5] ));
   ADDFX2M S4_0 (.S(\SUMB[7][0] ), 
	.CO(\CARRYB[7][0] ), 
	.CI(\SUMB[6][1] ), 
	.B(\CARRYB[6][0] ), 
	.A(\ab[7][0] ));
   ADDFX2M S4_5 (.S(\SUMB[7][5] ), 
	.CO(\CARRYB[7][5] ), 
	.CI(\SUMB[6][6] ), 
	.B(\CARRYB[6][5] ), 
	.A(\ab[7][5] ));
   ADDFX2M S4_4 (.S(\SUMB[7][4] ), 
	.CO(\CARRYB[7][4] ), 
	.CI(\SUMB[6][5] ), 
	.B(\CARRYB[6][4] ), 
	.A(\ab[7][4] ));
   ADDFX2M S4_3 (.S(\SUMB[7][3] ), 
	.CO(\CARRYB[7][3] ), 
	.CI(\SUMB[6][4] ), 
	.B(\CARRYB[6][3] ), 
	.A(\ab[7][3] ));
   ADDFX2M S4_2 (.S(\SUMB[7][2] ), 
	.CO(\CARRYB[7][2] ), 
	.CI(\SUMB[6][3] ), 
	.B(\CARRYB[6][2] ), 
	.A(\ab[7][2] ));
   ADDFX2M S2_6_1 (.S(\SUMB[6][1] ), 
	.CO(\CARRYB[6][1] ), 
	.CI(\SUMB[5][2] ), 
	.B(\CARRYB[5][1] ), 
	.A(\ab[6][1] ));
   ADDFX2M S2_5_1 (.S(\SUMB[5][1] ), 
	.CO(\CARRYB[5][1] ), 
	.CI(\SUMB[4][2] ), 
	.B(\CARRYB[4][1] ), 
	.A(\ab[5][1] ));
   ADDFX2M S2_4_1 (.S(\SUMB[4][1] ), 
	.CO(\CARRYB[4][1] ), 
	.CI(\SUMB[3][2] ), 
	.B(\CARRYB[3][1] ), 
	.A(\ab[4][1] ));
   ADDFX2M S2_3_1 (.S(\SUMB[3][1] ), 
	.CO(\CARRYB[3][1] ), 
	.CI(\SUMB[2][2] ), 
	.B(\CARRYB[2][1] ), 
	.A(\ab[3][1] ));
   ADDFX2M S2_2_1 (.S(\SUMB[2][1] ), 
	.CO(\CARRYB[2][1] ), 
	.CI(\SUMB[1][2] ), 
	.B(n4), 
	.A(\ab[2][1] ));
   ADDFX2M S3_6_6 (.S(\SUMB[6][6] ), 
	.CO(\CARRYB[6][6] ), 
	.CI(\ab[5][7] ), 
	.B(\CARRYB[5][6] ), 
	.A(\ab[6][6] ));
   ADDFX2M S3_5_6 (.S(\SUMB[5][6] ), 
	.CO(\CARRYB[5][6] ), 
	.CI(\ab[4][7] ), 
	.B(\CARRYB[4][6] ), 
	.A(\ab[5][6] ));
   ADDFX2M S3_4_6 (.S(\SUMB[4][6] ), 
	.CO(\CARRYB[4][6] ), 
	.CI(\ab[3][7] ), 
	.B(\CARRYB[3][6] ), 
	.A(\ab[4][6] ));
   ADDFX2M S3_3_6 (.S(\SUMB[3][6] ), 
	.CO(\CARRYB[3][6] ), 
	.CI(\ab[2][7] ), 
	.B(\CARRYB[2][6] ), 
	.A(\ab[3][6] ));
   ADDFX2M S3_2_6 (.S(\SUMB[2][6] ), 
	.CO(\CARRYB[2][6] ), 
	.CI(\ab[1][7] ), 
	.B(n6), 
	.A(\ab[2][6] ));
   ADDFX2M S4_1 (.S(\SUMB[7][1] ), 
	.CO(\CARRYB[7][1] ), 
	.CI(\SUMB[6][2] ), 
	.B(\CARRYB[6][1] ), 
	.A(\ab[7][1] ));
   ADDFX2M S5_6 (.S(\SUMB[7][6] ), 
	.CO(\CARRYB[7][6] ), 
	.CI(\ab[6][7] ), 
	.B(\CARRYB[6][6] ), 
	.A(\ab[7][6] ));
   AND2X2M U2 (.Y(n3), 
	.B(\ab[7][7] ), 
	.A(\CARRYB[7][6] ));
   AND2X2M U3 (.Y(n4), 
	.B(\ab[1][1] ), 
	.A(\ab[0][2] ));
   AND2X2M U4 (.Y(n5), 
	.B(\ab[1][3] ), 
	.A(\ab[0][4] ));
   AND2X2M U5 (.Y(n6), 
	.B(\ab[1][6] ), 
	.A(\ab[0][7] ));
   AND2X2M U6 (.Y(n7), 
	.B(\ab[1][5] ), 
	.A(\ab[0][6] ));
   AND2X2M U7 (.Y(n8), 
	.B(\ab[1][4] ), 
	.A(\ab[0][5] ));
   AND2X2M U8 (.Y(n9), 
	.B(\ab[1][2] ), 
	.A(\ab[0][3] ));
   AND2X2M U9 (.Y(n10), 
	.B(\ab[1][0] ), 
	.A(\ab[0][1] ));
   CLKINVX4M U10 (.Y(n22), 
	.A(B[2]));
   CLKINVX4M U11 (.Y(n20), 
	.A(B[4]));
   NOR2X2M U12 (.Y(\ab[0][7] ), 
	.B(n32), 
	.A(n17));
   NOR2X2M U13 (.Y(\ab[0][6] ), 
	.B(n32), 
	.A(n18));
   NOR2X2M U14 (.Y(\ab[0][1] ), 
	.B(n32), 
	.A(n23));
   NOR2X2M U15 (.Y(\ab[7][7] ), 
	.B(n17), 
	.A(n25));
   NOR2X2M U16 (.Y(\ab[1][6] ), 
	.B(n31), 
	.A(n18));
   NOR2X2M U17 (.Y(\ab[1][1] ), 
	.B(n31), 
	.A(n23));
   CLKXOR2X2M U18 (.Y(PRODUCT[1]), 
	.B(\ab[0][1] ), 
	.A(\ab[1][0] ));
   NOR2X2M U19 (.Y(\ab[0][5] ), 
	.B(n32), 
	.A(n19));
   NOR2X2M U20 (.Y(\ab[0][4] ), 
	.B(n32), 
	.A(n20));
   NOR2X2M U21 (.Y(\ab[0][3] ), 
	.B(n32), 
	.A(n21));
   NOR2X2M U22 (.Y(\ab[0][2] ), 
	.B(n32), 
	.A(n22));
   NOR2X2M U23 (.Y(\ab[1][5] ), 
	.B(n31), 
	.A(n19));
   NOR2X2M U24 (.Y(\ab[1][4] ), 
	.B(n31), 
	.A(n20));
   NOR2X2M U25 (.Y(\ab[1][3] ), 
	.B(n31), 
	.A(n21));
   NOR2X2M U26 (.Y(\ab[1][2] ), 
	.B(n31), 
	.A(n22));
   NOR2X2M U27 (.Y(\ab[1][0] ), 
	.B(n31), 
	.A(n24));
   CLKXOR2X2M U28 (.Y(\A1[12] ), 
	.B(\ab[7][7] ), 
	.A(\CARRYB[7][6] ));
   CLKXOR2X2M U29 (.Y(\A1[7] ), 
	.B(\SUMB[7][2] ), 
	.A(\CARRYB[7][1] ));
   CLKXOR2X2M U30 (.Y(\A1[8] ), 
	.B(\SUMB[7][3] ), 
	.A(\CARRYB[7][2] ));
   CLKXOR2X2M U31 (.Y(\A1[10] ), 
	.B(\SUMB[7][5] ), 
	.A(\CARRYB[7][4] ));
   CLKXOR2X2M U32 (.Y(\A1[9] ), 
	.B(\SUMB[7][4] ), 
	.A(\CARRYB[7][3] ));
   CLKXOR2X2M U33 (.Y(\A1[11] ), 
	.B(\SUMB[7][6] ), 
	.A(\CARRYB[7][5] ));
   INVX4M U34 (.Y(n25), 
	.A(A[7]));
   INVX4M U35 (.Y(n31), 
	.A(A[1]));
   INVX4M U36 (.Y(n29), 
	.A(A[3]));
   INVX4M U37 (.Y(n28), 
	.A(A[4]));
   INVX4M U38 (.Y(n30), 
	.A(A[2]));
   INVX4M U39 (.Y(n27), 
	.A(A[5]));
   INVX4M U40 (.Y(n26), 
	.A(A[6]));
   AND2X2M U41 (.Y(n11), 
	.B(\SUMB[7][1] ), 
	.A(\CARRYB[7][0] ));
   XOR2X1M U42 (.Y(\SUMB[1][2] ), 
	.B(\ab[0][3] ), 
	.A(\ab[1][2] ));
   CLKXOR2X2M U43 (.Y(\A1[6] ), 
	.B(\SUMB[7][1] ), 
	.A(\CARRYB[7][0] ));
   AND2X2M U44 (.Y(n12), 
	.B(\SUMB[7][2] ), 
	.A(\CARRYB[7][1] ));
   AND2X2M U45 (.Y(n13), 
	.B(\SUMB[7][4] ), 
	.A(\CARRYB[7][3] ));
   AND2X2M U46 (.Y(n14), 
	.B(\SUMB[7][6] ), 
	.A(\CARRYB[7][5] ));
   AND2X2M U47 (.Y(n15), 
	.B(\SUMB[7][3] ), 
	.A(\CARRYB[7][2] ));
   AND2X2M U48 (.Y(n16), 
	.B(\SUMB[7][5] ), 
	.A(\CARRYB[7][4] ));
   INVX4M U49 (.Y(n18), 
	.A(B[6]));
   INVX4M U50 (.Y(n17), 
	.A(B[7]));
   INVX4M U51 (.Y(n23), 
	.A(B[1]));
   INVX4M U52 (.Y(n32), 
	.A(A[0]));
   XOR2X1M U53 (.Y(\SUMB[1][6] ), 
	.B(\ab[0][7] ), 
	.A(\ab[1][6] ));
   XOR2X1M U54 (.Y(\SUMB[1][5] ), 
	.B(\ab[0][6] ), 
	.A(\ab[1][5] ));
   XOR2X1M U55 (.Y(\SUMB[1][4] ), 
	.B(\ab[0][5] ), 
	.A(\ab[1][4] ));
   XOR2X1M U56 (.Y(\SUMB[1][3] ), 
	.B(\ab[0][4] ), 
	.A(\ab[1][3] ));
   XOR2X1M U57 (.Y(\SUMB[1][1] ), 
	.B(\ab[0][2] ), 
	.A(\ab[1][1] ));
   INVX4M U58 (.Y(n24), 
	.A(B[0]));
   INVX4M U59 (.Y(n19), 
	.A(B[5]));
   INVX4M U60 (.Y(n21), 
	.A(B[3]));
   NOR2X1M U62 (.Y(\ab[7][6] ), 
	.B(n18), 
	.A(n25));
   NOR2X1M U63 (.Y(\ab[7][5] ), 
	.B(n19), 
	.A(n25));
   NOR2X1M U64 (.Y(\ab[7][4] ), 
	.B(n20), 
	.A(n25));
   NOR2X1M U65 (.Y(\ab[7][3] ), 
	.B(n21), 
	.A(n25));
   NOR2X1M U66 (.Y(\ab[7][2] ), 
	.B(n22), 
	.A(n25));
   NOR2X1M U67 (.Y(\ab[7][1] ), 
	.B(n23), 
	.A(n25));
   NOR2X1M U68 (.Y(\ab[7][0] ), 
	.B(n24), 
	.A(n25));
   NOR2X1M U69 (.Y(\ab[6][7] ), 
	.B(n26), 
	.A(n17));
   NOR2X1M U70 (.Y(\ab[6][6] ), 
	.B(n26), 
	.A(n18));
   NOR2X1M U71 (.Y(\ab[6][5] ), 
	.B(n26), 
	.A(n19));
   NOR2X1M U72 (.Y(\ab[6][4] ), 
	.B(n26), 
	.A(n20));
   NOR2X1M U73 (.Y(\ab[6][3] ), 
	.B(n26), 
	.A(n21));
   NOR2X1M U74 (.Y(\ab[6][2] ), 
	.B(n26), 
	.A(n22));
   NOR2X1M U75 (.Y(\ab[6][1] ), 
	.B(n26), 
	.A(n23));
   NOR2X1M U76 (.Y(\ab[6][0] ), 
	.B(n26), 
	.A(n24));
   NOR2X1M U77 (.Y(\ab[5][7] ), 
	.B(n27), 
	.A(n17));
   NOR2X1M U78 (.Y(\ab[5][6] ), 
	.B(n27), 
	.A(n18));
   NOR2X1M U79 (.Y(\ab[5][5] ), 
	.B(n27), 
	.A(n19));
   NOR2X1M U80 (.Y(\ab[5][4] ), 
	.B(n27), 
	.A(n20));
   NOR2X1M U81 (.Y(\ab[5][3] ), 
	.B(n27), 
	.A(n21));
   NOR2X1M U82 (.Y(\ab[5][2] ), 
	.B(n27), 
	.A(n22));
   NOR2X1M U83 (.Y(\ab[5][1] ), 
	.B(n27), 
	.A(n23));
   NOR2X1M U84 (.Y(\ab[5][0] ), 
	.B(n27), 
	.A(n24));
   NOR2X1M U85 (.Y(\ab[4][7] ), 
	.B(n28), 
	.A(n17));
   NOR2X1M U86 (.Y(\ab[4][6] ), 
	.B(n28), 
	.A(n18));
   NOR2X1M U87 (.Y(\ab[4][5] ), 
	.B(n28), 
	.A(n19));
   NOR2X1M U88 (.Y(\ab[4][4] ), 
	.B(n28), 
	.A(n20));
   NOR2X1M U89 (.Y(\ab[4][3] ), 
	.B(n28), 
	.A(n21));
   NOR2X1M U90 (.Y(\ab[4][2] ), 
	.B(n28), 
	.A(n22));
   NOR2X1M U91 (.Y(\ab[4][1] ), 
	.B(n28), 
	.A(n23));
   NOR2X1M U92 (.Y(\ab[4][0] ), 
	.B(n28), 
	.A(n24));
   NOR2X1M U93 (.Y(\ab[3][7] ), 
	.B(n29), 
	.A(n17));
   NOR2X1M U94 (.Y(\ab[3][6] ), 
	.B(n29), 
	.A(n18));
   NOR2X1M U95 (.Y(\ab[3][5] ), 
	.B(n29), 
	.A(n19));
   NOR2X1M U96 (.Y(\ab[3][4] ), 
	.B(n29), 
	.A(n20));
   NOR2X1M U97 (.Y(\ab[3][3] ), 
	.B(n29), 
	.A(n21));
   NOR2X1M U98 (.Y(\ab[3][2] ), 
	.B(n29), 
	.A(n22));
   NOR2X1M U99 (.Y(\ab[3][1] ), 
	.B(n29), 
	.A(n23));
   NOR2X1M U100 (.Y(\ab[3][0] ), 
	.B(n29), 
	.A(n24));
   NOR2X1M U101 (.Y(\ab[2][7] ), 
	.B(n30), 
	.A(n17));
   NOR2X1M U102 (.Y(\ab[2][6] ), 
	.B(n30), 
	.A(n18));
   NOR2X1M U103 (.Y(\ab[2][5] ), 
	.B(n30), 
	.A(n19));
   NOR2X1M U104 (.Y(\ab[2][4] ), 
	.B(n30), 
	.A(n20));
   NOR2X1M U105 (.Y(\ab[2][3] ), 
	.B(n30), 
	.A(n21));
   NOR2X1M U106 (.Y(\ab[2][2] ), 
	.B(n30), 
	.A(n22));
   NOR2X1M U107 (.Y(\ab[2][1] ), 
	.B(n30), 
	.A(n23));
   NOR2X1M U108 (.Y(\ab[2][0] ), 
	.B(n30), 
	.A(n24));
   NOR2X1M U109 (.Y(\ab[1][7] ), 
	.B(n31), 
	.A(n17));
   NOR2X1M U110 (.Y(PRODUCT[0]), 
	.B(n32), 
	.A(n24));
   Alu_16_bit_OPER_WIDTH8_OUT_WIDTH16_ALU_FUN_WIDTH4_DW01_add_1 FS_1 (.A({ 1'b0,
		\A1[12] ,
		\A1[11] ,
		\A1[10] ,
		\A1[9] ,
		\A1[8] ,
		\A1[7] ,
		\A1[6] ,
		\SUMB[7][0] ,
		\A1[4] ,
		\A1[3] ,
		\A1[2] ,
		\A1[1] ,
		\A1[0]  }), 
	.B({ n3,
		n14,
		n16,
		n13,
		n15,
		n12,
		n11,
		1'b0,
		1'b0,
		1'b0,
		1'b0,
		1'b0,
		1'b0,
		1'b0 }), 
	.CI(1'b0), 
	.SUM({ PRODUCT[15],
		PRODUCT[14],
		PRODUCT[13],
		PRODUCT[12],
		PRODUCT[11],
		PRODUCT[10],
		PRODUCT[9],
		PRODUCT[8],
		PRODUCT[7],
		PRODUCT[6],
		PRODUCT[5],
		PRODUCT[4],
		PRODUCT[3],
		PRODUCT[2] }));
endmodule

module Alu_16_bit_OPER_WIDTH8_OUT_WIDTH16_ALU_FUN_WIDTH4_test_1 (
	CLK_alu, 
	RST_alu, 
	EN_alu, 
	A, 
	B, 
	ALU_FUN, 
	ALU_OUT, 
	OUT_VALID, 
	test_si, 
	test_se, 
	FE_OFN2_RST_SCAN_REF, 
	FE_OFN18_SE, 
	FE_OFN19_SE);
   input CLK_alu;
   input RST_alu;
   input EN_alu;
   input [7:0] A;
   input [7:0] B;
   input [3:0] ALU_FUN;
   output [15:0] ALU_OUT;
   output OUT_VALID;
   input test_si;
   input test_se;
   input FE_OFN2_RST_SCAN_REF;
   input FE_OFN18_SE;
   input FE_OFN19_SE;

   // Internal wires
   wire FE_OFN9_n57;
   wire N91;
   wire N92;
   wire N93;
   wire N94;
   wire N95;
   wire N96;
   wire N97;
   wire N98;
   wire N99;
   wire N100;
   wire N101;
   wire N102;
   wire N103;
   wire N104;
   wire N105;
   wire N106;
   wire N107;
   wire N108;
   wire N109;
   wire N110;
   wire N111;
   wire N112;
   wire N113;
   wire N114;
   wire N115;
   wire N116;
   wire N117;
   wire N118;
   wire N119;
   wire N120;
   wire N121;
   wire N122;
   wire N123;
   wire N124;
   wire N127;
   wire N128;
   wire N129;
   wire N130;
   wire N131;
   wire N132;
   wire N133;
   wire N134;
   wire N167;
   wire N169;
   wire n52;
   wire n53;
   wire n54;
   wire n55;
   wire n56;
   wire n57;
   wire n58;
   wire n59;
   wire n60;
   wire n61;
   wire n62;
   wire n63;
   wire n64;
   wire n65;
   wire n66;
   wire n67;
   wire n68;
   wire n69;
   wire n70;
   wire n71;
   wire n72;
   wire n73;
   wire n74;
   wire n75;
   wire n76;
   wire n77;
   wire n78;
   wire n79;
   wire n80;
   wire n81;
   wire n82;
   wire n83;
   wire n84;
   wire n85;
   wire n86;
   wire n87;
   wire n88;
   wire n89;
   wire n90;
   wire n91;
   wire n92;
   wire n93;
   wire n94;
   wire n95;
   wire n96;
   wire n97;
   wire n98;
   wire n99;
   wire n100;
   wire n101;
   wire n102;
   wire n103;
   wire n104;
   wire n105;
   wire n106;
   wire n107;
   wire n108;
   wire n109;
   wire n110;
   wire n111;
   wire n112;
   wire n113;
   wire n114;
   wire n115;
   wire n116;
   wire n117;
   wire n118;
   wire n119;
   wire n120;
   wire n121;
   wire n122;
   wire n123;
   wire n124;
   wire n125;
   wire n126;
   wire n127;
   wire n128;
   wire n129;
   wire n130;
   wire n131;
   wire n132;
   wire n133;
   wire n134;
   wire n135;
   wire n3;
   wire n28;
   wire n29;
   wire n30;
   wire n43;
   wire n44;
   wire n45;
   wire n46;
   wire n47;
   wire n48;
   wire n138;
   wire n139;
   wire n140;
   wire n141;
   wire n142;
   wire n143;
   wire n144;
   wire n145;
   wire n146;
   wire n147;
   wire n148;
   wire n149;
   wire n150;
   wire n151;
   wire n152;
   wire n153;
   wire n154;
   wire n155;
   wire n156;
   wire n157;
   wire n158;
   wire n159;
   wire n160;
   wire n161;
   wire n162;
   wire n163;
   wire n164;
   wire n165;
   wire n166;
   wire n167;
   wire n168;
   wire n169;
   wire n170;
   wire n171;
   wire n172;
   wire n173;
   wire n174;
   wire n175;
   wire n176;
   wire n177;
   wire n178;
   wire n179;
   wire n180;
   wire n181;
   wire n182;
   wire n183;
   wire n184;
   wire n185;
   wire n186;
   wire n187;
   wire n188;
   wire n189;
   wire n190;
   wire n191;
   wire n195;
   wire n196;
   wire [15:0] reg_OUT;

   BUFX2M FE_OFC9_n57 (.Y(FE_OFN9_n57), 
	.A(n57));
   OAI2B11X4M U92 (.Y(n59), 
	.C0(n175), 
	.B0(n177), 
	.A1N(N108), 
	.A0(n119));
   OAI21X8M U100 (.Y(n69), 
	.B0(n128), 
	.A1(n129), 
	.A0(n3));
   SDFFRQX2M \ALU_OUT_reg[15]  (.SI(ALU_OUT[14]), 
	.SE(FE_OFN19_SE), 
	.RN(RST_alu), 
	.Q(ALU_OUT[15]), 
	.D(reg_OUT[15]), 
	.CK(CLK_alu));
   SDFFRQX2M \ALU_OUT_reg[14]  (.SI(ALU_OUT[13]), 
	.SE(FE_OFN19_SE), 
	.RN(RST_alu), 
	.Q(ALU_OUT[14]), 
	.D(reg_OUT[14]), 
	.CK(CLK_alu));
   SDFFRQX2M \ALU_OUT_reg[13]  (.SI(ALU_OUT[12]), 
	.SE(FE_OFN19_SE), 
	.RN(RST_alu), 
	.Q(ALU_OUT[13]), 
	.D(reg_OUT[13]), 
	.CK(CLK_alu));
   SDFFRQX2M \ALU_OUT_reg[12]  (.SI(ALU_OUT[11]), 
	.SE(FE_OFN19_SE), 
	.RN(RST_alu), 
	.Q(ALU_OUT[12]), 
	.D(reg_OUT[12]), 
	.CK(CLK_alu));
   SDFFRQX2M \ALU_OUT_reg[11]  (.SI(ALU_OUT[10]), 
	.SE(FE_OFN19_SE), 
	.RN(FE_OFN2_RST_SCAN_REF), 
	.Q(ALU_OUT[11]), 
	.D(reg_OUT[11]), 
	.CK(CLK_alu));
   SDFFRQX2M \ALU_OUT_reg[10]  (.SI(ALU_OUT[9]), 
	.SE(FE_OFN19_SE), 
	.RN(FE_OFN2_RST_SCAN_REF), 
	.Q(ALU_OUT[10]), 
	.D(reg_OUT[10]), 
	.CK(CLK_alu));
   SDFFRQX2M \ALU_OUT_reg[9]  (.SI(ALU_OUT[8]), 
	.SE(FE_OFN19_SE), 
	.RN(FE_OFN2_RST_SCAN_REF), 
	.Q(ALU_OUT[9]), 
	.D(reg_OUT[9]), 
	.CK(CLK_alu));
   SDFFRQX2M \ALU_OUT_reg[8]  (.SI(ALU_OUT[7]), 
	.SE(FE_OFN18_SE), 
	.RN(FE_OFN2_RST_SCAN_REF), 
	.Q(ALU_OUT[8]), 
	.D(reg_OUT[8]), 
	.CK(CLK_alu));
   SDFFRQX2M \ALU_OUT_reg[7]  (.SI(ALU_OUT[6]), 
	.SE(FE_OFN18_SE), 
	.RN(FE_OFN2_RST_SCAN_REF), 
	.Q(ALU_OUT[7]), 
	.D(reg_OUT[7]), 
	.CK(CLK_alu));
   SDFFRQX2M \ALU_OUT_reg[6]  (.SI(ALU_OUT[5]), 
	.SE(FE_OFN18_SE), 
	.RN(FE_OFN2_RST_SCAN_REF), 
	.Q(ALU_OUT[6]), 
	.D(reg_OUT[6]), 
	.CK(CLK_alu));
   SDFFRQX2M \ALU_OUT_reg[5]  (.SI(ALU_OUT[4]), 
	.SE(FE_OFN18_SE), 
	.RN(FE_OFN2_RST_SCAN_REF), 
	.Q(ALU_OUT[5]), 
	.D(reg_OUT[5]), 
	.CK(CLK_alu));
   SDFFRQX2M \ALU_OUT_reg[4]  (.SI(ALU_OUT[3]), 
	.SE(FE_OFN18_SE), 
	.RN(FE_OFN2_RST_SCAN_REF), 
	.Q(ALU_OUT[4]), 
	.D(reg_OUT[4]), 
	.CK(CLK_alu));
   SDFFRQX2M \ALU_OUT_reg[3]  (.SI(ALU_OUT[2]), 
	.SE(FE_OFN18_SE), 
	.RN(FE_OFN2_RST_SCAN_REF), 
	.Q(ALU_OUT[3]), 
	.D(reg_OUT[3]), 
	.CK(CLK_alu));
   SDFFRQX2M \ALU_OUT_reg[2]  (.SI(ALU_OUT[1]), 
	.SE(FE_OFN18_SE), 
	.RN(FE_OFN2_RST_SCAN_REF), 
	.Q(ALU_OUT[2]), 
	.D(reg_OUT[2]), 
	.CK(CLK_alu));
   SDFFRQX2M \ALU_OUT_reg[1]  (.SI(ALU_OUT[0]), 
	.SE(FE_OFN18_SE), 
	.RN(FE_OFN2_RST_SCAN_REF), 
	.Q(ALU_OUT[1]), 
	.D(reg_OUT[1]), 
	.CK(CLK_alu));
   SDFFRQX2M \ALU_OUT_reg[0]  (.SI(test_si), 
	.SE(FE_OFN18_SE), 
	.RN(FE_OFN2_RST_SCAN_REF), 
	.Q(ALU_OUT[0]), 
	.D(reg_OUT[0]), 
	.CK(CLK_alu));
   SDFFRQX2M OUT_VALID_reg (.SI(ALU_OUT[15]), 
	.SE(test_se), 
	.RN(RST_alu), 
	.Q(OUT_VALID), 
	.D(EN_alu), 
	.CK(CLK_alu));
   OR2X2M U23 (.Y(n3), 
	.B(ALU_FUN[0]), 
	.A(ALU_FUN[3]));
   AOI2B1X1M U24 (.Y(n163), 
	.B0(n160), 
	.A1N(n162), 
	.A0(n161));
   INVX2M U25 (.Y(n169), 
	.A(n163));
   AOI21X1M U26 (.Y(n133), 
	.B0(ALU_FUN[2]), 
	.A1(n135), 
	.A0(n134));
   NOR4X1M U27 (.Y(n134), 
	.D(B[0]), 
	.C(B[1]), 
	.B(B[2]), 
	.A(B[3]));
   NOR4X1M U28 (.Y(n135), 
	.D(B[4]), 
	.C(B[5]), 
	.B(B[6]), 
	.A(B[7]));
   XNOR2X4M U29 (.Y(n157), 
	.B(B[6]), 
	.A(n45));
   OAI31X2M U30 (.Y(n143), 
	.B0(n151), 
	.A2(n140), 
	.A1(n141), 
	.A0(n150));
   AOI211X2M U31 (.Y(n140), 
	.C0(n139), 
	.B0(n147), 
	.A1(n165), 
	.A0(n30));
   NOR3BX2M U33 (.Y(n74), 
	.C(n129), 
	.B(n176), 
	.AN(ALU_FUN[3]));
   AOI211X2M U34 (.Y(n149), 
	.C0(n146), 
	.B0(n147), 
	.A1(n28), 
	.A0(n148));
   NAND2BX2M U35 (.Y(n147), 
	.B(n152), 
	.AN(n141));
   OAI21X2M U36 (.Y(N169), 
	.B0(n161), 
	.A1(n145), 
	.A0(n160));
   AOI221X2M U38 (.Y(n95), 
	.C0(n96), 
	.B1(n74), 
	.B0(A[4]), 
	.A1(n56), 
	.A0(A[2]));
   AOI221X2M U39 (.Y(n102), 
	.C0(n103), 
	.B1(n74), 
	.B0(A[3]), 
	.A1(n56), 
	.A0(n30));
   AOI221X2M U40 (.Y(n81), 
	.C0(n82), 
	.B1(n45), 
	.B0(n74), 
	.A1(n56), 
	.A0(A[4]));
   AOI221X2M U41 (.Y(n88), 
	.C0(n89), 
	.B1(n196), 
	.B0(n74), 
	.A1(n56), 
	.A0(A[3]));
   AOI221X2M U42 (.Y(n73), 
	.C0(n75), 
	.B1(n48), 
	.B0(n74), 
	.A1(n56), 
	.A0(n196));
   NOR3BX4M U43 (.Y(n56), 
	.C(ALU_FUN[0]), 
	.B(n118), 
	.AN(ALU_FUN[3]));
   NOR2X2M U44 (.Y(n160), 
	.B(B[7]), 
	.A(n46));
   NOR2X2M U45 (.Y(n150), 
	.B(A[3]), 
	.A(n168));
   NOR2X2M U46 (.Y(n138), 
	.B(A[0]), 
	.A(n164));
   NOR2X2M U47 (.Y(n141), 
	.B(A[2]), 
	.A(n166));
   NOR2X4M U48 (.Y(n130), 
	.B(ALU_FUN[1]), 
	.A(ALU_FUN[2]));
   NOR2X4M U49 (.Y(n127), 
	.B(ALU_FUN[3]), 
	.A(n176));
   NAND3X4M U50 (.Y(n67), 
	.C(ALU_FUN[3]), 
	.B(n176), 
	.A(n130));
   AOI31X1M U51 (.Y(reg_OUT[6]), 
	.B0(n170), 
	.A2(n73), 
	.A1(n72), 
	.A0(n71));
   AOI31X1M U52 (.Y(reg_OUT[4]), 
	.B0(n170), 
	.A2(n88), 
	.A1(n87), 
	.A0(n86));
   AOI31X1M U53 (.Y(reg_OUT[5]), 
	.B0(n170), 
	.A2(n81), 
	.A1(n80), 
	.A0(n79));
   AOI31X1M U54 (.Y(reg_OUT[2]), 
	.B0(n170), 
	.A2(n102), 
	.A1(n101), 
	.A0(n100));
   AOI31X1M U55 (.Y(reg_OUT[3]), 
	.B0(n170), 
	.A2(n95), 
	.A1(n94), 
	.A0(n93));
   INVX4M U58 (.Y(n173), 
	.A(n119));
   INVX4M U59 (.Y(n177), 
	.A(n70));
   INVX4M U60 (.Y(n175), 
	.A(n114));
   INVX8M U61 (.Y(n174), 
	.A(n64));
   NOR2BX8M U62 (.Y(n52), 
	.B(n170), 
	.AN(FE_OFN9_n57));
   OAI2B1X4M U63 (.Y(n114), 
	.B0(n128), 
	.A1N(n127), 
	.A0(n118));
   NAND2X2M U64 (.Y(n64), 
	.B(n127), 
	.A(n178));
   NAND2X2M U65 (.Y(n119), 
	.B(n127), 
	.A(n130));
   OAI2BB1X2M U66 (.Y(reg_OUT[9]), 
	.B0(n53), 
	.A1N(n52), 
	.A0N(N118));
   OAI2BB1X2M U67 (.Y(reg_OUT[10]), 
	.B0(n53), 
	.A1N(n52), 
	.A0N(N119));
   OAI2BB1X2M U68 (.Y(reg_OUT[11]), 
	.B0(n53), 
	.A1N(n52), 
	.A0N(N120));
   OAI2BB1X2M U69 (.Y(reg_OUT[12]), 
	.B0(n53), 
	.A1N(n52), 
	.A0N(N121));
   OAI2BB1X2M U70 (.Y(reg_OUT[13]), 
	.B0(n53), 
	.A1N(n52), 
	.A0N(N122));
   OAI2BB1X2M U71 (.Y(reg_OUT[14]), 
	.B0(n53), 
	.A1N(n52), 
	.A0N(N123));
   OAI2BB1X2M U72 (.Y(reg_OUT[15]), 
	.B0(n53), 
	.A1N(n52), 
	.A0N(N124));
   INVX6M U73 (.Y(n172), 
	.A(n67));
   NOR2X2M U75 (.Y(n70), 
	.B(n3), 
	.A(n118));
   NOR2BX2M U77 (.Y(n58), 
	.B(n3), 
	.AN(n130));
   INVX2M U78 (.Y(n178), 
	.A(n129));
   OAI221X1M U79 (.Y(n66), 
	.C0(n177), 
	.B1(n67), 
	.B0(n184), 
	.A1(n175), 
	.A0(n48));
   OAI221X1M U80 (.Y(n106), 
	.C0(n177), 
	.B1(n189), 
	.B0(n67), 
	.A1(n175), 
	.A0(A[2]));
   OAI221X1M U81 (.Y(n99), 
	.C0(n177), 
	.B1(n188), 
	.B0(n67), 
	.A1(n175), 
	.A0(A[3]));
   OAI221X1M U82 (.Y(n92), 
	.C0(n177), 
	.B1(n187), 
	.B0(n67), 
	.A1(n175), 
	.A0(A[4]));
   OAI221X1M U83 (.Y(n85), 
	.C0(n177), 
	.B1(n186), 
	.B0(n67), 
	.A1(n175), 
	.A0(n196));
   OAI221X1M U84 (.Y(n78), 
	.C0(n177), 
	.B1(n185), 
	.B0(n67), 
	.A1(n175), 
	.A0(n45));
   NAND2X4M U85 (.Y(n53), 
	.B(n59), 
	.A(EN_alu));
   AOI22X1M U86 (.Y(n71), 
	.B1(n58), 
	.B0(N97), 
	.A1(n173), 
	.A0(N106));
   AOI222X2M U87 (.Y(n72), 
	.C1(n45), 
	.C0(n174), 
	.B1(n185), 
	.B0(n70), 
	.A1(FE_OFN9_n57), 
	.A0(N115));
   NAND2X2M U88 (.Y(n118), 
	.B(ALU_FUN[1]), 
	.A(ALU_FUN[2]));
   INVX4M U89 (.Y(n176), 
	.A(ALU_FUN[0]));
   NAND2X4M U90 (.Y(n129), 
	.B(n179), 
	.A(ALU_FUN[2]));
   INVX2M U91 (.Y(n179), 
	.A(ALU_FUN[1]));
   NOR3X2M U93 (.Y(n132), 
	.C(ALU_FUN[0]), 
	.B(ALU_FUN[2]), 
	.A(n179));
   AOI21X2M U94 (.Y(reg_OUT[8]), 
	.B0(n170), 
	.A1(n55), 
	.A0(n54));
   AOI21X2M U95 (.Y(n54), 
	.B0(n59), 
	.A1(n58), 
	.A0(N99));
   AOI22X1M U96 (.Y(n55), 
	.B1(FE_OFN9_n57), 
	.B0(N117), 
	.A1(n56), 
	.A0(n48));
   OAI2BB2X1M U97 (.Y(n63), 
	.B1(n64), 
	.B0(n184), 
	.A1N(FE_OFN9_n57), 
	.A0N(N116));
   INVX6M U98 (.Y(n170), 
	.A(EN_alu));
   INVX2M U99 (.Y(n184), 
	.A(n48));
   NAND3X2M U101 (.Y(n128), 
	.C(ALU_FUN[3]), 
	.B(ALU_FUN[0]), 
	.A(n130));
   NOR3X2M U103 (.Y(n57), 
	.C(n179), 
	.B(ALU_FUN[2]), 
	.A(n3));
   AND4X1M U104 (.Y(n117), 
	.D(n176), 
	.C(ALU_FUN[3]), 
	.B(n178), 
	.A(N169));
   INVX2M U106 (.Y(n190), 
	.A(n30));
   INVX2M U107 (.Y(n189), 
	.A(A[2]));
   INVX2M U108 (.Y(n188), 
	.A(A[3]));
   INVX2M U109 (.Y(n187), 
	.A(A[4]));
   INVX2M U110 (.Y(n186), 
	.A(n196));
   INVX2M U111 (.Y(n185), 
	.A(n45));
   INVX2M U112 (.Y(n171), 
	.A(n68));
   AOI221X2M U113 (.Y(n68), 
	.C0(n174), 
	.B1(n172), 
	.B0(n184), 
	.A1(n48), 
	.A0(n69));
   INVXLM U114 (.Y(n165), 
	.A(n138));
   INVXLM U115 (.Y(n167), 
	.A(n149));
   AOI22X1M U116 (.Y(n86), 
	.B1(n58), 
	.B0(N95), 
	.A1(n173), 
	.A0(N104));
   AOI222X2M U117 (.Y(n87), 
	.C1(n174), 
	.C0(A[4]), 
	.B1(n187), 
	.B0(n70), 
	.A1(FE_OFN9_n57), 
	.A0(N113));
   AOI22X1M U118 (.Y(n79), 
	.B1(n58), 
	.B0(N96), 
	.A1(n173), 
	.A0(N105));
   AOI222X2M U119 (.Y(n80), 
	.C1(n174), 
	.C0(n196), 
	.B1(n186), 
	.B0(n70), 
	.A1(FE_OFN9_n57), 
	.A0(N114));
   AOI22X1M U120 (.Y(n100), 
	.B1(n58), 
	.B0(N93), 
	.A1(n173), 
	.A0(N102));
   AOI222X2M U121 (.Y(n101), 
	.C1(n174), 
	.C0(A[2]), 
	.B1(n189), 
	.B0(n70), 
	.A1(FE_OFN9_n57), 
	.A0(N111));
   AOI22X1M U122 (.Y(n93), 
	.B1(n58), 
	.B0(N94), 
	.A1(n173), 
	.A0(N103));
   AOI222X2M U123 (.Y(n94), 
	.C1(n174), 
	.C0(A[3]), 
	.B1(n188), 
	.B0(n70), 
	.A1(FE_OFN9_n57), 
	.A0(N112));
   AOI31X2M U124 (.Y(reg_OUT[1]), 
	.B0(n170), 
	.A2(n109), 
	.A1(n108), 
	.A0(n107));
   AOI211X2M U125 (.Y(n109), 
	.C0(n111), 
	.B0(n110), 
	.A1(n56), 
	.A0(A[0]));
   AOI222X2M U126 (.Y(n108), 
	.C1(n190), 
	.C0(n70), 
	.B1(n74), 
	.B0(A[2]), 
	.A1(n174), 
	.A0(n30));
   AOI222X2M U127 (.Y(n107), 
	.C1(n173), 
	.C0(N101), 
	.B1(FE_OFN9_n57), 
	.B0(N110), 
	.A1(n58), 
	.A0(N92));
   AOI31X2M U128 (.Y(reg_OUT[0]), 
	.B0(n170), 
	.A2(n122), 
	.A1(n121), 
	.A0(n120));
   AOI22X1M U129 (.Y(n120), 
	.B1(n58), 
	.B0(N91), 
	.A1(n173), 
	.A0(N100));
   AOI211X2M U130 (.Y(n122), 
	.C0(n124), 
	.B0(n123), 
	.A1(n74), 
	.A0(n30));
   AOI222X2M U131 (.Y(n121), 
	.C1(n174), 
	.C0(A[0]), 
	.B1(n191), 
	.B0(n70), 
	.A1(FE_OFN9_n57), 
	.A0(N109));
   AOI31X2M U132 (.Y(reg_OUT[7]), 
	.B0(n170), 
	.A2(n62), 
	.A1(n61), 
	.A0(n60));
   AOI221X2M U133 (.Y(n62), 
	.C0(n63), 
	.B1(n58), 
	.B0(N98), 
	.A1(n173), 
	.A0(N107));
   AOI22X1M U134 (.Y(n60), 
	.B1(n184), 
	.B0(n70), 
	.A1(n56), 
	.A0(n45));
   AOI222X2M U135 (.Y(n61), 
	.C1(n180), 
	.C0(n66), 
	.B1(n65), 
	.B0(N134), 
	.A1(n171), 
	.A0(B[7]));
   OAI2B2X1M U136 (.Y(n111), 
	.B1(n113), 
	.B0(B[1]), 
	.A1N(B[1]), 
	.A0(n112));
   AOI221X2M U137 (.Y(n112), 
	.C0(n174), 
	.B1(n69), 
	.B0(n30), 
	.A1(n190), 
	.A0(n172));
   AOI221X2M U138 (.Y(n113), 
	.C0(n70), 
	.B1(n190), 
	.B0(n114), 
	.A1(n172), 
	.A0(n30));
   OAI21X2M U139 (.Y(n75), 
	.B0(n77), 
	.A1(n181), 
	.A0(n76));
   AOI22X1M U140 (.Y(n77), 
	.B1(n181), 
	.B0(n78), 
	.A1(n65), 
	.A0(N133));
   AOI221X2M U141 (.Y(n76), 
	.C0(n174), 
	.B1(n69), 
	.B0(n45), 
	.A1(n185), 
	.A0(n172));
   INVX2M U142 (.Y(n181), 
	.A(B[6]));
   OAI2BB1XLM U143 (.Y(n110), 
	.B0(n115), 
	.A1N(n65), 
	.A0N(N128));
   AOI31X2M U144 (.Y(n115), 
	.B0(n117), 
	.A2(n116), 
	.A1(ALU_FUN[3]), 
	.A0(n169));
   NOR3X2M U145 (.Y(n116), 
	.C(n179), 
	.B(ALU_FUN[2]), 
	.A(n176));
   OAI2BB1X2M U146 (.Y(n123), 
	.B0(n131), 
	.A1N(n65), 
	.A0N(N127));
   AOI31X2M U147 (.Y(n131), 
	.B0(n117), 
	.A2(n132), 
	.A1(ALU_FUN[3]), 
	.A0(N167));
   INVX2M U149 (.Y(n191), 
	.A(A[0]));
   INVX4M U150 (.Y(n29), 
	.A(n28));
   INVX4M U155 (.Y(n44), 
	.A(n43));
   INVX4M U156 (.Y(n45), 
	.A(n43));
   INVX4M U157 (.Y(n47), 
	.A(n46));
   INVX4M U158 (.Y(n30), 
	.A(n28));
   INVX4M U163 (.Y(n48), 
	.A(n46));
   INVX2M U164 (.Y(n180), 
	.A(B[7]));
   AND3X4M U165 (.Y(n65), 
	.C(n133), 
	.B(ALU_FUN[1]), 
	.A(n127));
   OAI2B2X1M U166 (.Y(n124), 
	.B1(n126), 
	.B0(B[0]), 
	.A1N(B[0]), 
	.A0(n125));
   AOI221X2M U167 (.Y(n125), 
	.C0(n174), 
	.B1(n69), 
	.B0(A[0]), 
	.A1(n191), 
	.A0(n172));
   AOI221X2M U168 (.Y(n126), 
	.C0(n70), 
	.B1(n191), 
	.B0(n114), 
	.A1(n172), 
	.A0(A[0]));
   OAI21X2M U170 (.Y(n103), 
	.B0(n105), 
	.A1(n166), 
	.A0(n104));
   AOI22X1M U171 (.Y(n105), 
	.B1(n166), 
	.B0(n106), 
	.A1(n65), 
	.A0(N129));
   AOI221X2M U172 (.Y(n104), 
	.C0(n174), 
	.B1(n69), 
	.B0(A[2]), 
	.A1(n189), 
	.A0(n172));
   OAI21X2M U173 (.Y(n96), 
	.B0(n98), 
	.A1(n168), 
	.A0(n97));
   AOI22X1M U174 (.Y(n98), 
	.B1(n168), 
	.B0(n99), 
	.A1(n65), 
	.A0(N130));
   AOI221X2M U175 (.Y(n97), 
	.C0(n174), 
	.B1(n69), 
	.B0(A[3]), 
	.A1(n188), 
	.A0(n172));
   OAI21X2M U176 (.Y(n89), 
	.B0(n91), 
	.A1(n183), 
	.A0(n90));
   AOI22X1M U177 (.Y(n91), 
	.B1(n183), 
	.B0(n92), 
	.A1(n65), 
	.A0(N131));
   AOI221X2M U178 (.Y(n90), 
	.C0(n174), 
	.B1(n69), 
	.B0(A[4]), 
	.A1(n187), 
	.A0(n172));
   INVX2M U179 (.Y(n183), 
	.A(B[4]));
   OAI21X2M U180 (.Y(n82), 
	.B0(n84), 
	.A1(n182), 
	.A0(n83));
   AOI22X1M U181 (.Y(n84), 
	.B1(n182), 
	.B0(n85), 
	.A1(n65), 
	.A0(N132));
   AOI221X2M U182 (.Y(n83), 
	.C0(n174), 
	.B1(n69), 
	.B0(n196), 
	.A1(n186), 
	.A0(n172));
   INVX2M U183 (.Y(n182), 
	.A(B[5]));
   INVX2M U184 (.Y(n164), 
	.A(B[0]));
   INVX2M U185 (.Y(n168), 
	.A(B[3]));
   INVX2M U186 (.Y(n166), 
	.A(B[2]));
   INVX2M U188 (.Y(n28), 
	.A(A[1]));
   INVX2M U193 (.Y(n43), 
	.A(A[6]));
   INVX2M U194 (.Y(n46), 
	.A(A[7]));
   NAND2BX1M U195 (.Y(n153), 
	.B(A[4]), 
	.AN(B[4]));
   NAND2BX1M U196 (.Y(n142), 
	.B(B[4]), 
	.AN(A[4]));
   CLKNAND2X2M U197 (.Y(n155), 
	.B(n142), 
	.A(n153));
   CLKNAND2X2M U198 (.Y(n152), 
	.B(n166), 
	.A(A[2]));
   AOI21X1M U199 (.Y(n139), 
	.B0(B[1]), 
	.A1(n190), 
	.A0(n138));
   CLKNAND2X2M U200 (.Y(n151), 
	.B(n168), 
	.A(A[3]));
   NAND2BX1M U201 (.Y(n158), 
	.B(B[5]), 
	.AN(n196));
   OAI211X1M U202 (.Y(n144), 
	.C0(n158), 
	.B0(n142), 
	.A1(n143), 
	.A0(n155));
   NAND2BX1M U203 (.Y(n154), 
	.B(n196), 
	.AN(B[5]));
   AOI32X1M U204 (.Y(n145), 
	.B1(n43), 
	.B0(B[6]), 
	.A2(n157), 
	.A1(n154), 
	.A0(n144));
   CLKNAND2X2M U205 (.Y(n161), 
	.B(n46), 
	.A(B[7]));
   CLKNAND2X2M U206 (.Y(n148), 
	.B(n164), 
	.A(A[0]));
   OA21X1M U207 (.Y(n146), 
	.B0(B[1]), 
	.A1(n28), 
	.A0(n148));
   AOI31X1M U208 (.Y(n156), 
	.B0(n150), 
	.A2(n151), 
	.A1(n152), 
	.A0(n167));
   OAI2B11X1M U209 (.Y(n159), 
	.C0(n153), 
	.B0(n154), 
	.A1N(n156), 
	.A0(n155));
   AOI32X1M U210 (.Y(n162), 
	.B1(n181), 
	.B0(n45), 
	.A2(n157), 
	.A1(n158), 
	.A0(n159));
   NOR2X1M U211 (.Y(N167), 
	.B(n169), 
	.A(N169));
   INVXLM U213 (.Y(n195), 
	.A(A[5]));
   CLKINVX2M U214 (.Y(n196), 
	.A(n195));
   Alu_16_bit_OPER_WIDTH8_OUT_WIDTH16_ALU_FUN_WIDTH4_DW_div_uns_0 div_45 (.a({ n47,
		n44,
		n196,
		A[4],
		A[3],
		A[2],
		n29,
		A[0] }), 
	.b({ B[7],
		B[6],
		B[5],
		B[4],
		B[3],
		B[2],
		B[1],
		B[0] }), 
	.quotient({ N134,
		N133,
		N132,
		N131,
		N130,
		N129,
		N128,
		N127 }));
   Alu_16_bit_OPER_WIDTH8_OUT_WIDTH16_ALU_FUN_WIDTH4_DW01_sub_0 sub_38 (.A({ 1'b0,
		n47,
		n44,
		n196,
		A[4],
		A[3],
		A[2],
		n29,
		A[0] }), 
	.B({ 1'b0,
		B[7],
		B[6],
		B[5],
		B[4],
		B[3],
		B[2],
		B[1],
		B[0] }), 
	.CI(1'b0), 
	.DIFF({ N108,
		N107,
		N106,
		N105,
		N104,
		N103,
		N102,
		N101,
		N100 }));
   Alu_16_bit_OPER_WIDTH8_OUT_WIDTH16_ALU_FUN_WIDTH4_DW01_add_0 add_35 (.A({ 1'b0,
		n47,
		n44,
		n196,
		A[4],
		A[3],
		A[2],
		n29,
		A[0] }), 
	.B({ 1'b0,
		B[7],
		B[6],
		B[5],
		B[4],
		B[3],
		B[2],
		B[1],
		B[0] }), 
	.CI(1'b0), 
	.SUM({ N99,
		N98,
		N97,
		N96,
		N95,
		N94,
		N93,
		N92,
		N91 }));
   Alu_16_bit_OPER_WIDTH8_OUT_WIDTH16_ALU_FUN_WIDTH4_DW02_mult_0 mult_41 (.A({ n47,
		n44,
		n196,
		A[4],
		A[3],
		A[2],
		n29,
		A[0] }), 
	.B({ B[7],
		B[6],
		B[5],
		B[4],
		B[3],
		B[2],
		B[1],
		B[0] }), 
	.TC(1'b0), 
	.PRODUCT({ N124,
		N123,
		N122,
		N121,
		N120,
		N119,
		N118,
		N117,
		N116,
		N115,
		N114,
		N113,
		N112,
		N111,
		N110,
		N109 }));
endmodule

module FIFO_WR_ADDR4_test_1 (
	W_clk, 
	W_rst_n, 
	W_inc, 
	Wq2_ptr, 
	W_ptr, 
	W_addr, 
	W_full, 
	test_si, 
	test_so, 
	test_se, 
	FE_OFN21_SE, 
	CLK_SCAN_REF__L5_N6, 
	CLK_SCAN_REF__L5_N7);
   input W_clk;
   input W_rst_n;
   input W_inc;
   input [4:0] Wq2_ptr;
   output [4:0] W_ptr;
   output [3:0] W_addr;
   output W_full;
   input test_si;
   output test_so;
   input test_se;
   input FE_OFN21_SE;
   input CLK_SCAN_REF__L5_N6;
   input CLK_SCAN_REF__L5_N7;

   // Internal wires
   wire \reg_W_bin[4] ;
   wire N0;
   wire wire_W_full;
   wire n12;
   wire n13;
   wire n14;
   wire n15;
   wire n16;
   wire n17;
   wire \add_28/carry[4] ;
   wire \add_28/carry[3] ;
   wire \add_28/carry[2] ;
   wire \add_28/carry[1] ;
   wire [4:0] wire_W_bin_next;
   wire [3:0] wire_W_gray;

   assign test_so = \reg_W_bin[4]  ;

   SDFFRQX2M \reg_W_bin_reg[4]  (.SI(W_addr[3]), 
	.SE(test_se), 
	.RN(W_rst_n), 
	.Q(\reg_W_bin[4] ), 
	.D(wire_W_bin_next[4]), 
	.CK(CLK_SCAN_REF__L5_N6));
   SDFFRQX2M \W_ptr_reg[0]  (.SI(W_full), 
	.SE(test_se), 
	.RN(W_rst_n), 
	.Q(W_ptr[0]), 
	.D(wire_W_gray[0]), 
	.CK(CLK_SCAN_REF__L5_N6));
   SDFFRQX2M \W_ptr_reg[1]  (.SI(W_ptr[0]), 
	.SE(test_se), 
	.RN(W_rst_n), 
	.Q(W_ptr[1]), 
	.D(wire_W_gray[1]), 
	.CK(CLK_SCAN_REF__L5_N6));
   SDFFRQX2M \W_ptr_reg[2]  (.SI(W_ptr[1]), 
	.SE(test_se), 
	.RN(W_rst_n), 
	.Q(W_ptr[2]), 
	.D(wire_W_gray[2]), 
	.CK(CLK_SCAN_REF__L5_N6));
   SDFFRQX2M \W_ptr_reg[4]  (.SI(W_ptr[3]), 
	.SE(test_se), 
	.RN(W_rst_n), 
	.Q(W_ptr[4]), 
	.D(wire_W_bin_next[4]), 
	.CK(CLK_SCAN_REF__L5_N6));
   SDFFRQX2M \W_ptr_reg[3]  (.SI(W_ptr[2]), 
	.SE(test_se), 
	.RN(W_rst_n), 
	.Q(W_ptr[3]), 
	.D(wire_W_gray[3]), 
	.CK(CLK_SCAN_REF__L5_N6));
   SDFFRQX2M \reg_W_bin_reg[3]  (.SI(W_addr[2]), 
	.SE(test_se), 
	.RN(W_rst_n), 
	.Q(W_addr[3]), 
	.D(wire_W_bin_next[3]), 
	.CK(W_clk));
   SDFFRQX2M W_full_reg (.SI(test_si), 
	.SE(test_se), 
	.RN(W_rst_n), 
	.Q(W_full), 
	.D(wire_W_full), 
	.CK(CLK_SCAN_REF__L5_N6));
   CLKXOR2X2M U19 (.Y(wire_W_gray[3]), 
	.B(wire_W_bin_next[4]), 
	.A(wire_W_bin_next[3]));
   CLKXOR2X2M U20 (.Y(wire_W_gray[2]), 
	.B(wire_W_bin_next[3]), 
	.A(wire_W_bin_next[2]));
   CLKXOR2X2M U21 (.Y(wire_W_gray[1]), 
	.B(wire_W_bin_next[2]), 
	.A(wire_W_bin_next[1]));
   CLKXOR2X2M U22 (.Y(wire_W_gray[0]), 
	.B(wire_W_bin_next[0]), 
	.A(wire_W_bin_next[1]));
   XNOR2X2M U23 (.Y(n15), 
	.B(Wq2_ptr[3]), 
	.A(wire_W_gray[3]));
   NOR4X1M U24 (.Y(wire_W_full), 
	.D(n15), 
	.C(n14), 
	.B(n13), 
	.A(n12));
   NAND2X2M U25 (.Y(n12), 
	.B(n17), 
	.A(n16));
   CLKXOR2X2M U26 (.Y(n13), 
	.B(wire_W_gray[2]), 
	.A(Wq2_ptr[2]));
   XNOR2X2M U27 (.Y(n14), 
	.B(Wq2_ptr[4]), 
	.A(wire_W_bin_next[4]));
   NOR2BX2M U28 (.Y(N0), 
	.B(W_full), 
	.AN(W_inc));
   XNOR2X2M U29 (.Y(n17), 
	.B(Wq2_ptr[1]), 
	.A(wire_W_gray[1]));
   XNOR2X2M U30 (.Y(n16), 
	.B(Wq2_ptr[0]), 
	.A(wire_W_gray[0]));
   CLKXOR2X2M U31 (.Y(wire_W_bin_next[4]), 
	.B(\add_28/carry[4] ), 
	.A(\reg_W_bin[4] ));
   AND2X1M U32 (.Y(\add_28/carry[4] ), 
	.B(\add_28/carry[3] ), 
	.A(W_addr[3]));
   CLKXOR2X2M U33 (.Y(wire_W_bin_next[3]), 
	.B(\add_28/carry[3] ), 
	.A(W_addr[3]));
   AND2X1M U34 (.Y(\add_28/carry[3] ), 
	.B(\add_28/carry[2] ), 
	.A(W_addr[2]));
   CLKXOR2X2M U35 (.Y(wire_W_bin_next[2]), 
	.B(\add_28/carry[2] ), 
	.A(W_addr[2]));
   AND2X1M U36 (.Y(\add_28/carry[2] ), 
	.B(\add_28/carry[1] ), 
	.A(W_addr[1]));
   CLKXOR2X2M U37 (.Y(wire_W_bin_next[1]), 
	.B(\add_28/carry[1] ), 
	.A(W_addr[1]));
   AND2X1M U38 (.Y(\add_28/carry[1] ), 
	.B(W_addr[0]), 
	.A(N0));
   CLKXOR2X2M U39 (.Y(wire_W_bin_next[0]), 
	.B(W_addr[0]), 
	.A(N0));
   SDFFRQX4M \reg_W_bin_reg[2]  (.SI(W_addr[1]), 
	.SE(FE_OFN21_SE), 
	.RN(W_rst_n), 
	.Q(W_addr[2]), 
	.D(wire_W_bin_next[2]), 
	.CK(CLK_SCAN_REF__L5_N6));
   SDFFRQX4M \reg_W_bin_reg[1]  (.SI(W_addr[0]), 
	.SE(FE_OFN21_SE), 
	.RN(W_rst_n), 
	.Q(W_addr[1]), 
	.D(wire_W_bin_next[1]), 
	.CK(W_clk));
   SDFFRQX4M \reg_W_bin_reg[0]  (.SI(W_ptr[4]), 
	.SE(FE_OFN21_SE), 
	.RN(W_rst_n), 
	.Q(W_addr[0]), 
	.D(wire_W_bin_next[0]), 
	.CK(CLK_SCAN_REF__L5_N7));
endmodule

module FIFO_RD_ADDR4_test_1 (
	R_clk, 
	R_rst_n, 
	R_inc, 
	Rq2_ptr, 
	R_ptr, 
	R_addr, 
	R_empty, 
	test_si, 
	test_so, 
	test_se, 
	FE_OFN21_SE, 
	CLK_SCAN_UART_TX__L3_N1);
   input R_clk;
   input R_rst_n;
   input R_inc;
   input [4:0] Rq2_ptr;
   output [4:0] R_ptr;
   output [3:0] R_addr;
   output R_empty;
   input test_si;
   output test_so;
   input test_se;
   input FE_OFN21_SE;
   input CLK_SCAN_UART_TX__L3_N1;

   // Internal wires
   wire \reg_R_bin[4] ;
   wire N0;
   wire wire_R_empty;
   wire \add_28/carry[4] ;
   wire \add_28/carry[3] ;
   wire \add_28/carry[2] ;
   wire \add_28/carry[1] ;
   wire n18;
   wire n19;
   wire n20;
   wire n21;
   wire n22;
   wire n23;
   wire n24;
   wire n25;
   wire [4:0] wire_R_bin_next;
   wire [3:0] wire_R_gray;

   assign test_so = \reg_R_bin[4]  ;

   SDFFRQX2M \reg_R_bin_reg[4]  (.SI(R_addr[3]), 
	.SE(test_se), 
	.RN(R_rst_n), 
	.Q(\reg_R_bin[4] ), 
	.D(wire_R_bin_next[4]), 
	.CK(CLK_SCAN_UART_TX__L3_N1));
   SDFFSQX2M R_empty_reg (.SN(R_rst_n), 
	.SI(test_si), 
	.SE(test_se), 
	.Q(R_empty), 
	.D(wire_R_empty), 
	.CK(R_clk));
   SDFFRQX2M \R_ptr_reg[0]  (.SI(R_empty), 
	.SE(test_se), 
	.RN(R_rst_n), 
	.Q(R_ptr[0]), 
	.D(wire_R_gray[0]), 
	.CK(R_clk));
   SDFFRQX2M \R_ptr_reg[1]  (.SI(R_ptr[0]), 
	.SE(test_se), 
	.RN(R_rst_n), 
	.Q(R_ptr[1]), 
	.D(wire_R_gray[1]), 
	.CK(R_clk));
   SDFFRQX2M \R_ptr_reg[2]  (.SI(R_ptr[1]), 
	.SE(test_se), 
	.RN(R_rst_n), 
	.Q(R_ptr[2]), 
	.D(wire_R_gray[2]), 
	.CK(R_clk));
   SDFFRQX2M \R_ptr_reg[4]  (.SI(R_ptr[3]), 
	.SE(test_se), 
	.RN(R_rst_n), 
	.Q(R_ptr[4]), 
	.D(wire_R_bin_next[4]), 
	.CK(CLK_SCAN_UART_TX__L3_N1));
   SDFFRQX2M \R_ptr_reg[3]  (.SI(R_ptr[2]), 
	.SE(test_se), 
	.RN(R_rst_n), 
	.Q(R_ptr[3]), 
	.D(wire_R_gray[3]), 
	.CK(CLK_SCAN_UART_TX__L3_N1));
   NOR2BX2M U18 (.Y(n19), 
	.B(Rq2_ptr[0]), 
	.AN(wire_R_gray[0]));
   NOR2BX2M U19 (.Y(n18), 
	.B(wire_R_gray[0]), 
	.AN(Rq2_ptr[0]));
   CLKXOR2X2M U22 (.Y(wire_R_gray[3]), 
	.B(wire_R_bin_next[3]), 
	.A(wire_R_bin_next[4]));
   CLKXOR2X2M U23 (.Y(wire_R_gray[1]), 
	.B(wire_R_bin_next[1]), 
	.A(wire_R_bin_next[2]));
   CLKXOR2X2M U24 (.Y(wire_R_gray[0]), 
	.B(wire_R_bin_next[0]), 
	.A(wire_R_bin_next[1]));
   CLKXOR2X2M U25 (.Y(wire_R_gray[2]), 
	.B(wire_R_bin_next[2]), 
	.A(wire_R_bin_next[3]));
   NOR2BX2M U26 (.Y(N0), 
	.B(R_empty), 
	.AN(R_inc));
   CLKXOR2X2M U27 (.Y(wire_R_bin_next[4]), 
	.B(\add_28/carry[4] ), 
	.A(\reg_R_bin[4] ));
   AND2X1M U28 (.Y(\add_28/carry[4] ), 
	.B(\add_28/carry[3] ), 
	.A(R_addr[3]));
   CLKXOR2X2M U29 (.Y(wire_R_bin_next[3]), 
	.B(\add_28/carry[3] ), 
	.A(R_addr[3]));
   AND2X1M U30 (.Y(\add_28/carry[3] ), 
	.B(\add_28/carry[2] ), 
	.A(R_addr[2]));
   CLKXOR2X2M U31 (.Y(wire_R_bin_next[2]), 
	.B(\add_28/carry[2] ), 
	.A(R_addr[2]));
   AND2X1M U32 (.Y(\add_28/carry[2] ), 
	.B(\add_28/carry[1] ), 
	.A(R_addr[1]));
   CLKXOR2X2M U33 (.Y(wire_R_bin_next[1]), 
	.B(\add_28/carry[1] ), 
	.A(R_addr[1]));
   AND2X1M U34 (.Y(\add_28/carry[1] ), 
	.B(R_addr[0]), 
	.A(N0));
   CLKXOR2X2M U35 (.Y(wire_R_bin_next[0]), 
	.B(R_addr[0]), 
	.A(N0));
   CLKXOR2X2M U36 (.Y(n25), 
	.B(wire_R_gray[2]), 
	.A(Rq2_ptr[2]));
   OAI2B2X1M U37 (.Y(n21), 
	.B1(n18), 
	.B0(Rq2_ptr[1]), 
	.A1N(wire_R_gray[1]), 
	.A0(n18));
   OAI2B2X1M U38 (.Y(n20), 
	.B1(n19), 
	.B0(wire_R_gray[1]), 
	.A1N(Rq2_ptr[1]), 
	.A0(n19));
   CLKNAND2X2M U39 (.Y(n24), 
	.B(n20), 
	.A(n21));
   CLKXOR2X2M U40 (.Y(n23), 
	.B(wire_R_gray[3]), 
	.A(Rq2_ptr[3]));
   CLKXOR2X2M U41 (.Y(n22), 
	.B(wire_R_bin_next[4]), 
	.A(Rq2_ptr[4]));
   NOR4X1M U42 (.Y(wire_R_empty), 
	.D(n22), 
	.C(n23), 
	.B(n24), 
	.A(n25));
   SDFFRQX4M \reg_R_bin_reg[2]  (.SI(R_addr[1]), 
	.SE(FE_OFN21_SE), 
	.RN(R_rst_n), 
	.Q(R_addr[2]), 
	.D(wire_R_bin_next[2]), 
	.CK(CLK_SCAN_UART_TX__L3_N1));
   SDFFRQX4M \reg_R_bin_reg[3]  (.SI(R_addr[2]), 
	.SE(test_se), 
	.RN(R_rst_n), 
	.Q(R_addr[3]), 
	.D(wire_R_bin_next[3]), 
	.CK(CLK_SCAN_UART_TX__L3_N1));
   SDFFRQX4M \reg_R_bin_reg[1]  (.SI(R_addr[0]), 
	.SE(test_se), 
	.RN(R_rst_n), 
	.Q(R_addr[1]), 
	.D(wire_R_bin_next[1]), 
	.CK(CLK_SCAN_UART_TX__L3_N1));
   SDFFRQX4M \reg_R_bin_reg[0]  (.SI(R_ptr[4]), 
	.SE(test_se), 
	.RN(R_rst_n), 
	.Q(R_addr[0]), 
	.D(wire_R_bin_next[0]), 
	.CK(CLK_SCAN_UART_TX__L3_N1));
endmodule

module BIT_SYNC_NUM_STAGES2_BUS_WIDTH5_test_1 (
	CLK, 
	RST, 
	ASYNC, 
	SYNC, 
	test_si, 
	test_se, 
	CLK_SCAN_UART_TX__L3_N1, 
	CLK_SCAN_UART_TX__L3_N2);
   input CLK;
   input RST;
   input [4:0] ASYNC;
   output [4:0] SYNC;
   input test_si;
   input test_se;
   input CLK_SCAN_UART_TX__L3_N1;
   input CLK_SCAN_UART_TX__L3_N2;

   // Internal wires
   wire \sync_reg[0][4] ;
   wire \sync_reg[0][3] ;
   wire \sync_reg[0][2] ;
   wire \sync_reg[0][1] ;
   wire \sync_reg[0][0] ;

   SDFFRQX2M \sync_reg_reg[1][4]  (.SI(SYNC[3]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(SYNC[4]), 
	.D(\sync_reg[0][4] ), 
	.CK(CLK));
   SDFFRQX2M \sync_reg_reg[1][3]  (.SI(SYNC[2]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(SYNC[3]), 
	.D(\sync_reg[0][3] ), 
	.CK(CLK));
   SDFFRQX2M \sync_reg_reg[1][2]  (.SI(SYNC[1]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(SYNC[2]), 
	.D(\sync_reg[0][2] ), 
	.CK(CLK));
   SDFFRQX2M \sync_reg_reg[1][0]  (.SI(\sync_reg[0][4] ), 
	.SE(test_se), 
	.RN(RST), 
	.Q(SYNC[0]), 
	.D(\sync_reg[0][0] ), 
	.CK(CLK));
   SDFFRQX2M \sync_reg_reg[1][1]  (.SI(SYNC[0]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(SYNC[1]), 
	.D(\sync_reg[0][1] ), 
	.CK(CLK));
   SDFFRQX2M \sync_reg_reg[0][4]  (.SI(\sync_reg[0][3] ), 
	.SE(test_se), 
	.RN(RST), 
	.Q(\sync_reg[0][4] ), 
	.D(ASYNC[4]), 
	.CK(CLK));
   SDFFRQX2M \sync_reg_reg[0][3]  (.SI(\sync_reg[0][2] ), 
	.SE(test_se), 
	.RN(RST), 
	.Q(\sync_reg[0][3] ), 
	.D(ASYNC[3]), 
	.CK(CLK_SCAN_UART_TX__L3_N2));
   SDFFRQX2M \sync_reg_reg[0][2]  (.SI(\sync_reg[0][1] ), 
	.SE(test_se), 
	.RN(RST), 
	.Q(\sync_reg[0][2] ), 
	.D(ASYNC[2]), 
	.CK(CLK));
   SDFFRQX2M \sync_reg_reg[0][1]  (.SI(\sync_reg[0][0] ), 
	.SE(test_se), 
	.RN(RST), 
	.Q(\sync_reg[0][1] ), 
	.D(ASYNC[1]), 
	.CK(CLK));
   SDFFRQX2M \sync_reg_reg[0][0]  (.SI(test_si), 
	.SE(test_se), 
	.RN(RST), 
	.Q(\sync_reg[0][0] ), 
	.D(ASYNC[0]), 
	.CK(CLK_SCAN_UART_TX__L3_N1));
endmodule

module BIT_SYNC_NUM_STAGES2_BUS_WIDTH5_test_0 (
	CLK, 
	RST, 
	ASYNC, 
	SYNC, 
	test_si, 
	test_se);
   input CLK;
   input RST;
   input [4:0] ASYNC;
   output [4:0] SYNC;
   input test_si;
   input test_se;

   // Internal wires
   wire \sync_reg[0][4] ;
   wire \sync_reg[0][3] ;
   wire \sync_reg[0][2] ;
   wire \sync_reg[0][1] ;
   wire \sync_reg[0][0] ;

   SDFFRQX2M \sync_reg_reg[1][2]  (.SI(SYNC[1]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(SYNC[2]), 
	.D(\sync_reg[0][2] ), 
	.CK(CLK));
   SDFFRQX2M \sync_reg_reg[1][4]  (.SI(SYNC[3]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(SYNC[4]), 
	.D(\sync_reg[0][4] ), 
	.CK(CLK));
   SDFFRQX2M \sync_reg_reg[1][3]  (.SI(SYNC[2]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(SYNC[3]), 
	.D(\sync_reg[0][3] ), 
	.CK(CLK));
   SDFFRQX2M \sync_reg_reg[1][1]  (.SI(SYNC[0]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(SYNC[1]), 
	.D(\sync_reg[0][1] ), 
	.CK(CLK));
   SDFFRQX2M \sync_reg_reg[1][0]  (.SI(\sync_reg[0][4] ), 
	.SE(test_se), 
	.RN(RST), 
	.Q(SYNC[0]), 
	.D(\sync_reg[0][0] ), 
	.CK(CLK));
   SDFFRQX2M \sync_reg_reg[0][4]  (.SI(\sync_reg[0][3] ), 
	.SE(test_se), 
	.RN(RST), 
	.Q(\sync_reg[0][4] ), 
	.D(ASYNC[4]), 
	.CK(CLK));
   SDFFRQX2M \sync_reg_reg[0][3]  (.SI(\sync_reg[0][2] ), 
	.SE(test_se), 
	.RN(RST), 
	.Q(\sync_reg[0][3] ), 
	.D(ASYNC[3]), 
	.CK(CLK));
   SDFFRQX2M \sync_reg_reg[0][2]  (.SI(\sync_reg[0][1] ), 
	.SE(test_se), 
	.RN(RST), 
	.Q(\sync_reg[0][2] ), 
	.D(ASYNC[2]), 
	.CK(CLK));
   SDFFRQX2M \sync_reg_reg[0][1]  (.SI(\sync_reg[0][0] ), 
	.SE(test_se), 
	.RN(RST), 
	.Q(\sync_reg[0][1] ), 
	.D(ASYNC[1]), 
	.CK(CLK));
   SDFFRQX2M \sync_reg_reg[0][0]  (.SI(test_si), 
	.SE(test_se), 
	.RN(RST), 
	.Q(\sync_reg[0][0] ), 
	.D(ASYNC[0]), 
	.CK(CLK));
endmodule

module FIFO_MEM_CNTRL_ADDR4_DATA8_DEPTH16_test_1 (
	W_clk, 
	W_rst, 
	W_inc, 
	W_full, 
	W_addr, 
	R_addr, 
	W_data, 
	R_data, 
	test_si3, 
	test_si2, 
	test_si1, 
	test_so3, 
	test_so2, 
	test_so1, 
	test_se, 
	FE_OFN0_RST_SCAN_REF, 
	FE_OFN1_RST_SCAN_REF, 
	FE_OFN17_SE, 
	FE_OFN19_SE, 
	FE_OFN20_SE, 
	FE_OFN21_SE, 
	CLK_SCAN_REF__L5_N1, 
	CLK_SCAN_REF__L5_N11, 
	CLK_SCAN_REF__L5_N2, 
	CLK_SCAN_REF__L5_N3, 
	CLK_SCAN_REF__L5_N4, 
	CLK_SCAN_REF__L5_N5, 
	CLK_SCAN_REF__L5_N7);
   input W_clk;
   input W_rst;
   input W_inc;
   input W_full;
   input [3:0] W_addr;
   input [3:0] R_addr;
   input [7:0] W_data;
   output [7:0] R_data;
   input test_si3;
   input test_si2;
   input test_si1;
   output test_so3;
   output test_so2;
   output test_so1;
   input test_se;
   input FE_OFN0_RST_SCAN_REF;
   input FE_OFN1_RST_SCAN_REF;
   input FE_OFN17_SE;
   input FE_OFN19_SE;
   input FE_OFN20_SE;
   input FE_OFN21_SE;
   input CLK_SCAN_REF__L5_N1;
   input CLK_SCAN_REF__L5_N11;
   input CLK_SCAN_REF__L5_N2;
   input CLK_SCAN_REF__L5_N3;
   input CLK_SCAN_REF__L5_N4;
   input CLK_SCAN_REF__L5_N5;
   input CLK_SCAN_REF__L5_N7;

   // Internal wires
   wire FE_OFN13_n383;
   wire FE_OFN12_n380;
   wire FE_OFN11_n382;
   wire FE_OFN10_n381;
   wire N10;
   wire N11;
   wire N12;
   wire N13;
   wire \MEM[0][7] ;
   wire \MEM[0][6] ;
   wire \MEM[0][5] ;
   wire \MEM[0][4] ;
   wire \MEM[0][3] ;
   wire \MEM[0][2] ;
   wire \MEM[0][1] ;
   wire \MEM[0][0] ;
   wire \MEM[1][7] ;
   wire \MEM[1][6] ;
   wire \MEM[1][5] ;
   wire \MEM[1][4] ;
   wire \MEM[1][3] ;
   wire \MEM[1][2] ;
   wire \MEM[1][1] ;
   wire \MEM[1][0] ;
   wire \MEM[2][7] ;
   wire \MEM[2][6] ;
   wire \MEM[2][5] ;
   wire \MEM[2][4] ;
   wire \MEM[2][3] ;
   wire \MEM[2][2] ;
   wire \MEM[2][1] ;
   wire \MEM[2][0] ;
   wire \MEM[3][7] ;
   wire \MEM[3][6] ;
   wire \MEM[3][5] ;
   wire \MEM[3][4] ;
   wire \MEM[3][3] ;
   wire \MEM[3][2] ;
   wire \MEM[3][1] ;
   wire \MEM[3][0] ;
   wire \MEM[4][7] ;
   wire \MEM[4][6] ;
   wire \MEM[4][5] ;
   wire \MEM[4][4] ;
   wire \MEM[4][3] ;
   wire \MEM[4][2] ;
   wire \MEM[4][1] ;
   wire \MEM[4][0] ;
   wire \MEM[5][7] ;
   wire \MEM[5][6] ;
   wire \MEM[5][5] ;
   wire \MEM[5][4] ;
   wire \MEM[5][3] ;
   wire \MEM[5][2] ;
   wire \MEM[5][1] ;
   wire \MEM[5][0] ;
   wire \MEM[6][7] ;
   wire \MEM[6][6] ;
   wire \MEM[6][5] ;
   wire \MEM[6][4] ;
   wire \MEM[6][3] ;
   wire \MEM[6][2] ;
   wire \MEM[6][1] ;
   wire \MEM[6][0] ;
   wire \MEM[7][7] ;
   wire \MEM[7][6] ;
   wire \MEM[7][5] ;
   wire \MEM[7][4] ;
   wire \MEM[7][3] ;
   wire \MEM[7][2] ;
   wire \MEM[7][1] ;
   wire \MEM[7][0] ;
   wire \MEM[8][7] ;
   wire \MEM[8][6] ;
   wire \MEM[8][5] ;
   wire \MEM[8][4] ;
   wire \MEM[8][3] ;
   wire \MEM[8][2] ;
   wire \MEM[8][1] ;
   wire \MEM[8][0] ;
   wire \MEM[9][7] ;
   wire \MEM[9][6] ;
   wire \MEM[9][5] ;
   wire \MEM[9][4] ;
   wire \MEM[9][3] ;
   wire \MEM[9][2] ;
   wire \MEM[9][1] ;
   wire \MEM[9][0] ;
   wire \MEM[10][7] ;
   wire \MEM[10][6] ;
   wire \MEM[10][5] ;
   wire \MEM[10][4] ;
   wire \MEM[10][3] ;
   wire \MEM[10][2] ;
   wire \MEM[10][1] ;
   wire \MEM[10][0] ;
   wire \MEM[11][7] ;
   wire \MEM[11][6] ;
   wire \MEM[11][5] ;
   wire \MEM[11][4] ;
   wire \MEM[11][3] ;
   wire \MEM[11][2] ;
   wire \MEM[11][1] ;
   wire \MEM[11][0] ;
   wire \MEM[12][7] ;
   wire \MEM[12][6] ;
   wire \MEM[12][5] ;
   wire \MEM[12][4] ;
   wire \MEM[12][3] ;
   wire \MEM[12][2] ;
   wire \MEM[12][1] ;
   wire \MEM[12][0] ;
   wire \MEM[13][7] ;
   wire \MEM[13][6] ;
   wire \MEM[13][5] ;
   wire \MEM[13][4] ;
   wire \MEM[13][3] ;
   wire \MEM[13][2] ;
   wire \MEM[13][1] ;
   wire \MEM[13][0] ;
   wire \MEM[14][7] ;
   wire \MEM[14][6] ;
   wire \MEM[14][5] ;
   wire \MEM[14][4] ;
   wire \MEM[14][3] ;
   wire \MEM[14][2] ;
   wire \MEM[14][1] ;
   wire \MEM[14][0] ;
   wire \MEM[15][7] ;
   wire \MEM[15][6] ;
   wire \MEM[15][5] ;
   wire \MEM[15][4] ;
   wire \MEM[15][3] ;
   wire \MEM[15][2] ;
   wire \MEM[15][1] ;
   wire \MEM[15][0] ;
   wire n140;
   wire n141;
   wire n142;
   wire n143;
   wire n144;
   wire n145;
   wire n146;
   wire n147;
   wire n148;
   wire n149;
   wire n150;
   wire n151;
   wire n152;
   wire n153;
   wire n154;
   wire n155;
   wire n156;
   wire n157;
   wire n158;
   wire n159;
   wire n160;
   wire n161;
   wire n162;
   wire n163;
   wire n164;
   wire n165;
   wire n166;
   wire n167;
   wire n168;
   wire n169;
   wire n170;
   wire n171;
   wire n172;
   wire n173;
   wire n174;
   wire n175;
   wire n176;
   wire n177;
   wire n178;
   wire n179;
   wire n180;
   wire n181;
   wire n182;
   wire n183;
   wire n184;
   wire n185;
   wire n186;
   wire n187;
   wire n188;
   wire n189;
   wire n190;
   wire n191;
   wire n192;
   wire n193;
   wire n194;
   wire n195;
   wire n196;
   wire n197;
   wire n198;
   wire n199;
   wire n200;
   wire n201;
   wire n202;
   wire n203;
   wire n204;
   wire n205;
   wire n206;
   wire n207;
   wire n208;
   wire n209;
   wire n210;
   wire n211;
   wire n212;
   wire n213;
   wire n214;
   wire n215;
   wire n216;
   wire n217;
   wire n218;
   wire n219;
   wire n220;
   wire n221;
   wire n222;
   wire n223;
   wire n224;
   wire n225;
   wire n226;
   wire n227;
   wire n228;
   wire n229;
   wire n230;
   wire n231;
   wire n232;
   wire n233;
   wire n234;
   wire n235;
   wire n236;
   wire n237;
   wire n238;
   wire n239;
   wire n240;
   wire n241;
   wire n242;
   wire n243;
   wire n244;
   wire n245;
   wire n246;
   wire n247;
   wire n248;
   wire n249;
   wire n250;
   wire n251;
   wire n252;
   wire n253;
   wire n254;
   wire n255;
   wire n256;
   wire n257;
   wire n258;
   wire n259;
   wire n260;
   wire n261;
   wire n262;
   wire n263;
   wire n264;
   wire n265;
   wire n266;
   wire n267;
   wire n268;
   wire n269;
   wire n270;
   wire n271;
   wire n272;
   wire n273;
   wire n274;
   wire n275;
   wire n276;
   wire n277;
   wire n278;
   wire n279;
   wire n280;
   wire n281;
   wire n282;
   wire n283;
   wire n284;
   wire n285;
   wire n286;
   wire n287;
   wire n288;
   wire n289;
   wire n290;
   wire n291;
   wire n292;
   wire n293;
   wire n294;
   wire n129;
   wire n130;
   wire n131;
   wire n132;
   wire n133;
   wire n134;
   wire n135;
   wire n136;
   wire n137;
   wire n138;
   wire n139;
   wire n295;
   wire n296;
   wire n297;
   wire n298;
   wire n299;
   wire n300;
   wire n301;
   wire n302;
   wire n303;
   wire n304;
   wire n305;
   wire n306;
   wire n307;
   wire n308;
   wire n309;
   wire n310;
   wire n311;
   wire n312;
   wire n313;
   wire n314;
   wire n315;
   wire n316;
   wire n317;
   wire n318;
   wire n319;
   wire n320;
   wire n321;
   wire n322;
   wire n323;
   wire n324;
   wire n325;
   wire n326;
   wire n327;
   wire n328;
   wire n329;
   wire n330;
   wire n331;
   wire n332;
   wire n333;
   wire n334;
   wire n335;
   wire n336;
   wire n337;
   wire n338;
   wire n339;
   wire n340;
   wire n341;
   wire n342;
   wire n343;
   wire n344;
   wire n345;
   wire n346;
   wire n347;
   wire n348;
   wire n349;
   wire n350;
   wire n351;
   wire n352;
   wire n353;
   wire n354;
   wire n355;
   wire n356;
   wire n357;
   wire n358;
   wire n359;
   wire n360;
   wire n361;
   wire n362;
   wire n363;
   wire n364;
   wire n365;
   wire n366;
   wire n367;
   wire n368;
   wire n369;
   wire n370;
   wire n371;
   wire n372;
   wire n373;
   wire n374;
   wire n375;
   wire n376;
   wire n377;
   wire n378;
   wire n379;
   wire n380;
   wire n381;
   wire n382;
   wire n383;
   wire n384;
   wire n385;
   wire n386;
   wire n387;
   wire n388;
   wire n389;
   wire n390;
   wire n391;
   wire n392;
   wire n393;
   wire n472;
   wire n473;
   wire n474;
   wire n475;
   wire n476;
   wire n477;
   wire n478;
   wire n479;
   wire n480;
   wire n481;
   wire n482;
   wire n572;
   wire n573;
   wire n574;
   wire n575;

   assign N10 = R_addr[0] ;
   assign N11 = R_addr[1] ;
   assign N12 = R_addr[2] ;
   assign N13 = R_addr[3] ;
   assign test_so1 = \MEM[1][2]  ;
   assign test_so2 = \MEM[12][2]  ;
   assign test_so3 = \MEM[15][7]  ;

   BUFX4M FE_OFC13_n383 (.Y(FE_OFN13_n383), 
	.A(n383));
   BUFX4M FE_OFC12_n380 (.Y(FE_OFN12_n380), 
	.A(n380));
   BUFX4M FE_OFC11_n382 (.Y(FE_OFN11_n382), 
	.A(n382));
   BUFX4M FE_OFC10_n381 (.Y(FE_OFN10_n381), 
	.A(n381));
   SDFFRQX2M \MEM_reg[1][7]  (.SI(\MEM[1][6] ), 
	.SE(FE_OFN17_SE), 
	.RN(FE_OFN1_RST_SCAN_REF), 
	.Q(\MEM[1][7] ), 
	.D(n286), 
	.CK(W_clk));
   SDFFRQX2M \MEM_reg[1][6]  (.SI(\MEM[1][5] ), 
	.SE(FE_OFN20_SE), 
	.RN(FE_OFN1_RST_SCAN_REF), 
	.Q(\MEM[1][6] ), 
	.D(n285), 
	.CK(W_clk));
   SDFFRQX2M \MEM_reg[1][5]  (.SI(\MEM[1][4] ), 
	.SE(FE_OFN20_SE), 
	.RN(FE_OFN1_RST_SCAN_REF), 
	.Q(\MEM[1][5] ), 
	.D(n284), 
	.CK(W_clk));
   SDFFRQX2M \MEM_reg[1][4]  (.SI(\MEM[1][3] ), 
	.SE(FE_OFN20_SE), 
	.RN(FE_OFN1_RST_SCAN_REF), 
	.Q(\MEM[1][4] ), 
	.D(n283), 
	.CK(CLK_SCAN_REF__L5_N1));
   SDFFRQX2M \MEM_reg[1][3]  (.SI(test_si2), 
	.SE(FE_OFN21_SE), 
	.RN(FE_OFN1_RST_SCAN_REF), 
	.Q(\MEM[1][3] ), 
	.D(n282), 
	.CK(CLK_SCAN_REF__L5_N1));
   SDFFRQX2M \MEM_reg[1][1]  (.SI(\MEM[1][0] ), 
	.SE(FE_OFN17_SE), 
	.RN(FE_OFN1_RST_SCAN_REF), 
	.Q(\MEM[1][1] ), 
	.D(n280), 
	.CK(CLK_SCAN_REF__L5_N2));
   SDFFRQX2M \MEM_reg[1][0]  (.SI(\MEM[0][7] ), 
	.SE(FE_OFN17_SE), 
	.RN(FE_OFN1_RST_SCAN_REF), 
	.Q(\MEM[1][0] ), 
	.D(n279), 
	.CK(CLK_SCAN_REF__L5_N2));
   SDFFRQX2M \MEM_reg[3][7]  (.SI(\MEM[3][6] ), 
	.SE(FE_OFN17_SE), 
	.RN(FE_OFN0_RST_SCAN_REF), 
	.Q(\MEM[3][7] ), 
	.D(n270), 
	.CK(CLK_SCAN_REF__L5_N3));
   SDFFRQX2M \MEM_reg[3][6]  (.SI(\MEM[3][5] ), 
	.SE(FE_OFN19_SE), 
	.RN(FE_OFN0_RST_SCAN_REF), 
	.Q(\MEM[3][6] ), 
	.D(n269), 
	.CK(CLK_SCAN_REF__L5_N3));
   SDFFRQX2M \MEM_reg[3][5]  (.SI(\MEM[3][4] ), 
	.SE(FE_OFN19_SE), 
	.RN(FE_OFN0_RST_SCAN_REF), 
	.Q(\MEM[3][5] ), 
	.D(n268), 
	.CK(CLK_SCAN_REF__L5_N3));
   SDFFRQX2M \MEM_reg[3][4]  (.SI(\MEM[3][3] ), 
	.SE(FE_OFN17_SE), 
	.RN(FE_OFN1_RST_SCAN_REF), 
	.Q(\MEM[3][4] ), 
	.D(n267), 
	.CK(W_clk));
   SDFFRQX2M \MEM_reg[3][3]  (.SI(\MEM[3][2] ), 
	.SE(FE_OFN17_SE), 
	.RN(FE_OFN1_RST_SCAN_REF), 
	.Q(\MEM[3][3] ), 
	.D(n266), 
	.CK(W_clk));
   SDFFRQX2M \MEM_reg[3][2]  (.SI(\MEM[3][1] ), 
	.SE(FE_OFN17_SE), 
	.RN(FE_OFN1_RST_SCAN_REF), 
	.Q(\MEM[3][2] ), 
	.D(n265), 
	.CK(W_clk));
   SDFFRQX2M \MEM_reg[3][1]  (.SI(\MEM[3][0] ), 
	.SE(FE_OFN17_SE), 
	.RN(FE_OFN1_RST_SCAN_REF), 
	.Q(\MEM[3][1] ), 
	.D(n264), 
	.CK(W_clk));
   SDFFRQX2M \MEM_reg[3][0]  (.SI(\MEM[2][7] ), 
	.SE(FE_OFN17_SE), 
	.RN(FE_OFN0_RST_SCAN_REF), 
	.Q(\MEM[3][0] ), 
	.D(n263), 
	.CK(CLK_SCAN_REF__L5_N2));
   SDFFRQX2M \MEM_reg[5][7]  (.SI(\MEM[5][6] ), 
	.SE(FE_OFN19_SE), 
	.RN(FE_OFN1_RST_SCAN_REF), 
	.Q(\MEM[5][7] ), 
	.D(n254), 
	.CK(CLK_SCAN_REF__L5_N2));
   SDFFRQX2M \MEM_reg[5][6]  (.SI(\MEM[5][5] ), 
	.SE(FE_OFN19_SE), 
	.RN(FE_OFN0_RST_SCAN_REF), 
	.Q(\MEM[5][6] ), 
	.D(n253), 
	.CK(CLK_SCAN_REF__L5_N2));
   SDFFRQX2M \MEM_reg[5][5]  (.SI(\MEM[5][4] ), 
	.SE(FE_OFN19_SE), 
	.RN(FE_OFN0_RST_SCAN_REF), 
	.Q(\MEM[5][5] ), 
	.D(n252), 
	.CK(CLK_SCAN_REF__L5_N2));
   SDFFRQX2M \MEM_reg[5][4]  (.SI(\MEM[5][3] ), 
	.SE(FE_OFN19_SE), 
	.RN(FE_OFN1_RST_SCAN_REF), 
	.Q(\MEM[5][4] ), 
	.D(n251), 
	.CK(CLK_SCAN_REF__L5_N11));
   SDFFRQX2M \MEM_reg[5][3]  (.SI(\MEM[5][2] ), 
	.SE(FE_OFN19_SE), 
	.RN(FE_OFN1_RST_SCAN_REF), 
	.Q(\MEM[5][3] ), 
	.D(n250), 
	.CK(CLK_SCAN_REF__L5_N5));
   SDFFRQX2M \MEM_reg[5][2]  (.SI(\MEM[5][1] ), 
	.SE(FE_OFN19_SE), 
	.RN(FE_OFN1_RST_SCAN_REF), 
	.Q(\MEM[5][2] ), 
	.D(n249), 
	.CK(CLK_SCAN_REF__L5_N11));
   SDFFRQX2M \MEM_reg[5][1]  (.SI(\MEM[5][0] ), 
	.SE(FE_OFN19_SE), 
	.RN(FE_OFN1_RST_SCAN_REF), 
	.Q(\MEM[5][1] ), 
	.D(n248), 
	.CK(CLK_SCAN_REF__L5_N2));
   SDFFRQX2M \MEM_reg[5][0]  (.SI(\MEM[4][7] ), 
	.SE(FE_OFN17_SE), 
	.RN(FE_OFN1_RST_SCAN_REF), 
	.Q(\MEM[5][0] ), 
	.D(n247), 
	.CK(CLK_SCAN_REF__L5_N2));
   SDFFRQX2M \MEM_reg[7][7]  (.SI(\MEM[7][6] ), 
	.SE(FE_OFN19_SE), 
	.RN(FE_OFN0_RST_SCAN_REF), 
	.Q(\MEM[7][7] ), 
	.D(n238), 
	.CK(CLK_SCAN_REF__L5_N3));
   SDFFRQX2M \MEM_reg[7][6]  (.SI(\MEM[7][5] ), 
	.SE(FE_OFN19_SE), 
	.RN(FE_OFN0_RST_SCAN_REF), 
	.Q(\MEM[7][6] ), 
	.D(n237), 
	.CK(CLK_SCAN_REF__L5_N3));
   SDFFRQX2M \MEM_reg[7][5]  (.SI(\MEM[7][4] ), 
	.SE(FE_OFN19_SE), 
	.RN(FE_OFN0_RST_SCAN_REF), 
	.Q(\MEM[7][5] ), 
	.D(n236), 
	.CK(CLK_SCAN_REF__L5_N3));
   SDFFRQX2M \MEM_reg[7][4]  (.SI(\MEM[7][3] ), 
	.SE(FE_OFN19_SE), 
	.RN(FE_OFN0_RST_SCAN_REF), 
	.Q(\MEM[7][4] ), 
	.D(n235), 
	.CK(CLK_SCAN_REF__L5_N3));
   SDFFRQX2M \MEM_reg[7][3]  (.SI(\MEM[7][2] ), 
	.SE(FE_OFN19_SE), 
	.RN(FE_OFN0_RST_SCAN_REF), 
	.Q(\MEM[7][3] ), 
	.D(n234), 
	.CK(CLK_SCAN_REF__L5_N2));
   SDFFRQX2M \MEM_reg[7][2]  (.SI(\MEM[7][1] ), 
	.SE(FE_OFN19_SE), 
	.RN(FE_OFN0_RST_SCAN_REF), 
	.Q(\MEM[7][2] ), 
	.D(n233), 
	.CK(CLK_SCAN_REF__L5_N3));
   SDFFRQX2M \MEM_reg[7][1]  (.SI(\MEM[7][0] ), 
	.SE(FE_OFN19_SE), 
	.RN(FE_OFN0_RST_SCAN_REF), 
	.Q(\MEM[7][1] ), 
	.D(n232), 
	.CK(CLK_SCAN_REF__L5_N3));
   SDFFRQX2M \MEM_reg[7][0]  (.SI(\MEM[6][7] ), 
	.SE(FE_OFN19_SE), 
	.RN(FE_OFN0_RST_SCAN_REF), 
	.Q(\MEM[7][0] ), 
	.D(n231), 
	.CK(CLK_SCAN_REF__L5_N3));
   SDFFRQX2M \MEM_reg[9][7]  (.SI(\MEM[9][6] ), 
	.SE(FE_OFN19_SE), 
	.RN(W_rst), 
	.Q(\MEM[9][7] ), 
	.D(n222), 
	.CK(CLK_SCAN_REF__L5_N4));
   SDFFRQX2M \MEM_reg[9][6]  (.SI(\MEM[9][5] ), 
	.SE(FE_OFN19_SE), 
	.RN(W_rst), 
	.Q(\MEM[9][6] ), 
	.D(n221), 
	.CK(CLK_SCAN_REF__L5_N4));
   SDFFRQX2M \MEM_reg[9][5]  (.SI(\MEM[9][4] ), 
	.SE(FE_OFN19_SE), 
	.RN(W_rst), 
	.Q(\MEM[9][5] ), 
	.D(n220), 
	.CK(CLK_SCAN_REF__L5_N4));
   SDFFRQX2M \MEM_reg[9][4]  (.SI(\MEM[9][3] ), 
	.SE(FE_OFN19_SE), 
	.RN(W_rst), 
	.Q(\MEM[9][4] ), 
	.D(n219), 
	.CK(CLK_SCAN_REF__L5_N4));
   SDFFRQX2M \MEM_reg[9][3]  (.SI(\MEM[9][2] ), 
	.SE(FE_OFN19_SE), 
	.RN(FE_OFN0_RST_SCAN_REF), 
	.Q(\MEM[9][3] ), 
	.D(n218), 
	.CK(CLK_SCAN_REF__L5_N4));
   SDFFRQX2M \MEM_reg[9][2]  (.SI(\MEM[9][1] ), 
	.SE(FE_OFN19_SE), 
	.RN(FE_OFN0_RST_SCAN_REF), 
	.Q(\MEM[9][2] ), 
	.D(n217), 
	.CK(CLK_SCAN_REF__L5_N4));
   SDFFRQX2M \MEM_reg[9][1]  (.SI(\MEM[9][0] ), 
	.SE(FE_OFN19_SE), 
	.RN(FE_OFN0_RST_SCAN_REF), 
	.Q(\MEM[9][1] ), 
	.D(n216), 
	.CK(CLK_SCAN_REF__L5_N5));
   SDFFRQX2M \MEM_reg[9][0]  (.SI(\MEM[8][7] ), 
	.SE(FE_OFN19_SE), 
	.RN(FE_OFN0_RST_SCAN_REF), 
	.Q(\MEM[9][0] ), 
	.D(n215), 
	.CK(CLK_SCAN_REF__L5_N5));
   SDFFRQX2M \MEM_reg[11][7]  (.SI(\MEM[11][6] ), 
	.SE(FE_OFN21_SE), 
	.RN(W_rst), 
	.Q(\MEM[11][7] ), 
	.D(n206), 
	.CK(CLK_SCAN_REF__L5_N5));
   SDFFRQX2M \MEM_reg[11][6]  (.SI(\MEM[11][5] ), 
	.SE(FE_OFN19_SE), 
	.RN(W_rst), 
	.Q(\MEM[11][6] ), 
	.D(n205), 
	.CK(CLK_SCAN_REF__L5_N4));
   SDFFRQX2M \MEM_reg[11][5]  (.SI(\MEM[11][4] ), 
	.SE(FE_OFN19_SE), 
	.RN(W_rst), 
	.Q(\MEM[11][5] ), 
	.D(n204), 
	.CK(CLK_SCAN_REF__L5_N4));
   SDFFRQX2M \MEM_reg[11][4]  (.SI(\MEM[11][3] ), 
	.SE(FE_OFN19_SE), 
	.RN(W_rst), 
	.Q(\MEM[11][4] ), 
	.D(n203), 
	.CK(CLK_SCAN_REF__L5_N4));
   SDFFRQX2M \MEM_reg[11][3]  (.SI(\MEM[11][2] ), 
	.SE(FE_OFN19_SE), 
	.RN(W_rst), 
	.Q(\MEM[11][3] ), 
	.D(n202), 
	.CK(CLK_SCAN_REF__L5_N4));
   SDFFRQX2M \MEM_reg[11][2]  (.SI(\MEM[11][1] ), 
	.SE(FE_OFN19_SE), 
	.RN(W_rst), 
	.Q(\MEM[11][2] ), 
	.D(n201), 
	.CK(CLK_SCAN_REF__L5_N4));
   SDFFRQX2M \MEM_reg[11][1]  (.SI(\MEM[11][0] ), 
	.SE(FE_OFN19_SE), 
	.RN(W_rst), 
	.Q(\MEM[11][1] ), 
	.D(n200), 
	.CK(CLK_SCAN_REF__L5_N4));
   SDFFRQX2M \MEM_reg[11][0]  (.SI(\MEM[10][7] ), 
	.SE(FE_OFN21_SE), 
	.RN(W_rst), 
	.Q(\MEM[11][0] ), 
	.D(n199), 
	.CK(CLK_SCAN_REF__L5_N5));
   SDFFRQX2M \MEM_reg[13][7]  (.SI(\MEM[13][6] ), 
	.SE(FE_OFN21_SE), 
	.RN(W_rst), 
	.Q(\MEM[13][7] ), 
	.D(n190), 
	.CK(CLK_SCAN_REF__L5_N5));
   SDFFRQX2M \MEM_reg[13][6]  (.SI(\MEM[13][5] ), 
	.SE(FE_OFN21_SE), 
	.RN(W_rst), 
	.Q(\MEM[13][6] ), 
	.D(n189), 
	.CK(CLK_SCAN_REF__L5_N5));
   SDFFRQX2M \MEM_reg[13][5]  (.SI(\MEM[13][4] ), 
	.SE(FE_OFN21_SE), 
	.RN(W_rst), 
	.Q(\MEM[13][5] ), 
	.D(n188), 
	.CK(CLK_SCAN_REF__L5_N5));
   SDFFRQX2M \MEM_reg[13][4]  (.SI(\MEM[13][3] ), 
	.SE(FE_OFN21_SE), 
	.RN(W_rst), 
	.Q(\MEM[13][4] ), 
	.D(n187), 
	.CK(CLK_SCAN_REF__L5_N3));
   SDFFRQX2M \MEM_reg[13][3]  (.SI(\MEM[13][2] ), 
	.SE(FE_OFN21_SE), 
	.RN(W_rst), 
	.Q(\MEM[13][3] ), 
	.D(n186), 
	.CK(CLK_SCAN_REF__L5_N7));
   SDFFRQX2M \MEM_reg[13][2]  (.SI(\MEM[13][1] ), 
	.SE(FE_OFN21_SE), 
	.RN(W_rst), 
	.Q(\MEM[13][2] ), 
	.D(n185), 
	.CK(CLK_SCAN_REF__L5_N5));
   SDFFRQX2M \MEM_reg[13][1]  (.SI(\MEM[13][0] ), 
	.SE(FE_OFN21_SE), 
	.RN(W_rst), 
	.Q(\MEM[13][1] ), 
	.D(n184), 
	.CK(CLK_SCAN_REF__L5_N5));
   SDFFRQX2M \MEM_reg[13][0]  (.SI(\MEM[12][7] ), 
	.SE(FE_OFN21_SE), 
	.RN(W_rst), 
	.Q(\MEM[13][0] ), 
	.D(n183), 
	.CK(CLK_SCAN_REF__L5_N5));
   SDFFRQX2M \MEM_reg[15][7]  (.SI(\MEM[15][6] ), 
	.SE(test_se), 
	.RN(W_rst), 
	.Q(\MEM[15][7] ), 
	.D(n174), 
	.CK(CLK_SCAN_REF__L5_N7));
   SDFFRQX2M \MEM_reg[15][6]  (.SI(\MEM[15][5] ), 
	.SE(test_se), 
	.RN(W_rst), 
	.Q(\MEM[15][6] ), 
	.D(n173), 
	.CK(CLK_SCAN_REF__L5_N7));
   SDFFRQX2M \MEM_reg[15][5]  (.SI(\MEM[15][4] ), 
	.SE(test_se), 
	.RN(W_rst), 
	.Q(\MEM[15][5] ), 
	.D(n172), 
	.CK(CLK_SCAN_REF__L5_N7));
   SDFFRQX2M \MEM_reg[15][4]  (.SI(\MEM[15][3] ), 
	.SE(FE_OFN21_SE), 
	.RN(W_rst), 
	.Q(\MEM[15][4] ), 
	.D(n171), 
	.CK(CLK_SCAN_REF__L5_N7));
   SDFFRQX2M \MEM_reg[15][3]  (.SI(\MEM[15][2] ), 
	.SE(FE_OFN21_SE), 
	.RN(W_rst), 
	.Q(\MEM[15][3] ), 
	.D(n170), 
	.CK(CLK_SCAN_REF__L5_N7));
   SDFFRQX2M \MEM_reg[15][2]  (.SI(\MEM[15][1] ), 
	.SE(FE_OFN21_SE), 
	.RN(W_rst), 
	.Q(\MEM[15][2] ), 
	.D(n169), 
	.CK(CLK_SCAN_REF__L5_N7));
   SDFFRQX2M \MEM_reg[15][1]  (.SI(\MEM[15][0] ), 
	.SE(FE_OFN21_SE), 
	.RN(W_rst), 
	.Q(\MEM[15][1] ), 
	.D(n168), 
	.CK(CLK_SCAN_REF__L5_N7));
   SDFFRQX2M \MEM_reg[15][0]  (.SI(\MEM[14][7] ), 
	.SE(FE_OFN21_SE), 
	.RN(W_rst), 
	.Q(\MEM[15][0] ), 
	.D(n167), 
	.CK(CLK_SCAN_REF__L5_N7));
   SDFFRQX2M \MEM_reg[0][7]  (.SI(\MEM[0][6] ), 
	.SE(FE_OFN17_SE), 
	.RN(FE_OFN1_RST_SCAN_REF), 
	.Q(\MEM[0][7] ), 
	.D(n294), 
	.CK(W_clk));
   SDFFRQX2M \MEM_reg[0][6]  (.SI(\MEM[0][5] ), 
	.SE(FE_OFN20_SE), 
	.RN(FE_OFN1_RST_SCAN_REF), 
	.Q(\MEM[0][6] ), 
	.D(n293), 
	.CK(W_clk));
   SDFFRQX2M \MEM_reg[0][5]  (.SI(\MEM[0][4] ), 
	.SE(FE_OFN20_SE), 
	.RN(FE_OFN1_RST_SCAN_REF), 
	.Q(\MEM[0][5] ), 
	.D(n292), 
	.CK(CLK_SCAN_REF__L5_N1));
   SDFFRQX2M \MEM_reg[0][4]  (.SI(\MEM[0][3] ), 
	.SE(FE_OFN20_SE), 
	.RN(FE_OFN1_RST_SCAN_REF), 
	.Q(\MEM[0][4] ), 
	.D(n291), 
	.CK(W_clk));
   SDFFRQX2M \MEM_reg[0][3]  (.SI(\MEM[0][2] ), 
	.SE(FE_OFN17_SE), 
	.RN(FE_OFN1_RST_SCAN_REF), 
	.Q(\MEM[0][3] ), 
	.D(n290), 
	.CK(W_clk));
   SDFFRQX2M \MEM_reg[0][2]  (.SI(\MEM[0][1] ), 
	.SE(FE_OFN17_SE), 
	.RN(FE_OFN1_RST_SCAN_REF), 
	.Q(\MEM[0][2] ), 
	.D(n289), 
	.CK(W_clk));
   SDFFRQX2M \MEM_reg[0][1]  (.SI(\MEM[0][0] ), 
	.SE(FE_OFN17_SE), 
	.RN(FE_OFN1_RST_SCAN_REF), 
	.Q(\MEM[0][1] ), 
	.D(n288), 
	.CK(CLK_SCAN_REF__L5_N11));
   SDFFRQX2M \MEM_reg[0][0]  (.SI(test_si1), 
	.SE(FE_OFN17_SE), 
	.RN(FE_OFN1_RST_SCAN_REF), 
	.Q(\MEM[0][0] ), 
	.D(n287), 
	.CK(W_clk));
   SDFFRQX2M \MEM_reg[2][7]  (.SI(\MEM[2][6] ), 
	.SE(FE_OFN17_SE), 
	.RN(FE_OFN1_RST_SCAN_REF), 
	.Q(\MEM[2][7] ), 
	.D(n278), 
	.CK(CLK_SCAN_REF__L5_N3));
   SDFFRQX2M \MEM_reg[2][6]  (.SI(\MEM[2][5] ), 
	.SE(FE_OFN19_SE), 
	.RN(FE_OFN0_RST_SCAN_REF), 
	.Q(\MEM[2][6] ), 
	.D(n277), 
	.CK(CLK_SCAN_REF__L5_N3));
   SDFFRQX2M \MEM_reg[2][5]  (.SI(\MEM[2][4] ), 
	.SE(FE_OFN17_SE), 
	.RN(FE_OFN1_RST_SCAN_REF), 
	.Q(\MEM[2][5] ), 
	.D(n276), 
	.CK(W_clk));
   SDFFRQX2M \MEM_reg[2][4]  (.SI(\MEM[2][3] ), 
	.SE(FE_OFN21_SE), 
	.RN(FE_OFN1_RST_SCAN_REF), 
	.Q(\MEM[2][4] ), 
	.D(n275), 
	.CK(W_clk));
   SDFFRQX2M \MEM_reg[2][3]  (.SI(\MEM[2][2] ), 
	.SE(FE_OFN17_SE), 
	.RN(FE_OFN1_RST_SCAN_REF), 
	.Q(\MEM[2][3] ), 
	.D(n274), 
	.CK(W_clk));
   SDFFRQX2M \MEM_reg[2][2]  (.SI(\MEM[2][1] ), 
	.SE(FE_OFN17_SE), 
	.RN(FE_OFN1_RST_SCAN_REF), 
	.Q(\MEM[2][2] ), 
	.D(n273), 
	.CK(W_clk));
   SDFFRQX2M \MEM_reg[2][1]  (.SI(\MEM[2][0] ), 
	.SE(FE_OFN17_SE), 
	.RN(FE_OFN1_RST_SCAN_REF), 
	.Q(\MEM[2][1] ), 
	.D(n272), 
	.CK(W_clk));
   SDFFRQX2M \MEM_reg[2][0]  (.SI(\MEM[1][7] ), 
	.SE(FE_OFN17_SE), 
	.RN(FE_OFN1_RST_SCAN_REF), 
	.Q(\MEM[2][0] ), 
	.D(n271), 
	.CK(W_clk));
   SDFFRQX2M \MEM_reg[4][7]  (.SI(\MEM[4][6] ), 
	.SE(FE_OFN19_SE), 
	.RN(FE_OFN1_RST_SCAN_REF), 
	.Q(\MEM[4][7] ), 
	.D(n262), 
	.CK(CLK_SCAN_REF__L5_N2));
   SDFFRQX2M \MEM_reg[4][6]  (.SI(\MEM[4][5] ), 
	.SE(FE_OFN19_SE), 
	.RN(FE_OFN0_RST_SCAN_REF), 
	.Q(\MEM[4][6] ), 
	.D(n261), 
	.CK(CLK_SCAN_REF__L5_N2));
   SDFFRQX2M \MEM_reg[4][5]  (.SI(\MEM[4][4] ), 
	.SE(FE_OFN19_SE), 
	.RN(FE_OFN0_RST_SCAN_REF), 
	.Q(\MEM[4][5] ), 
	.D(n260), 
	.CK(CLK_SCAN_REF__L5_N2));
   SDFFRQX2M \MEM_reg[4][4]  (.SI(\MEM[4][3] ), 
	.SE(FE_OFN19_SE), 
	.RN(FE_OFN1_RST_SCAN_REF), 
	.Q(\MEM[4][4] ), 
	.D(n259), 
	.CK(CLK_SCAN_REF__L5_N2));
   SDFFRQX2M \MEM_reg[4][3]  (.SI(\MEM[4][2] ), 
	.SE(FE_OFN19_SE), 
	.RN(FE_OFN1_RST_SCAN_REF), 
	.Q(\MEM[4][3] ), 
	.D(n258), 
	.CK(CLK_SCAN_REF__L5_N11));
   SDFFRQX2M \MEM_reg[4][2]  (.SI(\MEM[4][1] ), 
	.SE(FE_OFN19_SE), 
	.RN(FE_OFN1_RST_SCAN_REF), 
	.Q(\MEM[4][2] ), 
	.D(n257), 
	.CK(CLK_SCAN_REF__L5_N11));
   SDFFRQX2M \MEM_reg[4][1]  (.SI(\MEM[4][0] ), 
	.SE(FE_OFN19_SE), 
	.RN(FE_OFN1_RST_SCAN_REF), 
	.Q(\MEM[4][1] ), 
	.D(n256), 
	.CK(CLK_SCAN_REF__L5_N2));
   SDFFRQX2M \MEM_reg[4][0]  (.SI(\MEM[3][7] ), 
	.SE(FE_OFN17_SE), 
	.RN(FE_OFN1_RST_SCAN_REF), 
	.Q(\MEM[4][0] ), 
	.D(n255), 
	.CK(CLK_SCAN_REF__L5_N2));
   SDFFRQX2M \MEM_reg[6][7]  (.SI(\MEM[6][6] ), 
	.SE(FE_OFN19_SE), 
	.RN(FE_OFN0_RST_SCAN_REF), 
	.Q(\MEM[6][7] ), 
	.D(n246), 
	.CK(CLK_SCAN_REF__L5_N3));
   SDFFRQX2M \MEM_reg[6][6]  (.SI(\MEM[6][5] ), 
	.SE(FE_OFN19_SE), 
	.RN(FE_OFN0_RST_SCAN_REF), 
	.Q(\MEM[6][6] ), 
	.D(n245), 
	.CK(CLK_SCAN_REF__L5_N3));
   SDFFRQX2M \MEM_reg[6][5]  (.SI(\MEM[6][4] ), 
	.SE(FE_OFN19_SE), 
	.RN(FE_OFN0_RST_SCAN_REF), 
	.Q(\MEM[6][5] ), 
	.D(n244), 
	.CK(CLK_SCAN_REF__L5_N3));
   SDFFRQX2M \MEM_reg[6][4]  (.SI(\MEM[6][3] ), 
	.SE(FE_OFN19_SE), 
	.RN(FE_OFN0_RST_SCAN_REF), 
	.Q(\MEM[6][4] ), 
	.D(n243), 
	.CK(CLK_SCAN_REF__L5_N2));
   SDFFRQX2M \MEM_reg[6][3]  (.SI(\MEM[6][2] ), 
	.SE(FE_OFN19_SE), 
	.RN(FE_OFN0_RST_SCAN_REF), 
	.Q(\MEM[6][3] ), 
	.D(n242), 
	.CK(CLK_SCAN_REF__L5_N2));
   SDFFRQX2M \MEM_reg[6][2]  (.SI(\MEM[6][1] ), 
	.SE(FE_OFN19_SE), 
	.RN(FE_OFN0_RST_SCAN_REF), 
	.Q(\MEM[6][2] ), 
	.D(n241), 
	.CK(CLK_SCAN_REF__L5_N3));
   SDFFRQX2M \MEM_reg[6][1]  (.SI(\MEM[6][0] ), 
	.SE(FE_OFN19_SE), 
	.RN(FE_OFN0_RST_SCAN_REF), 
	.Q(\MEM[6][1] ), 
	.D(n240), 
	.CK(CLK_SCAN_REF__L5_N2));
   SDFFRQX2M \MEM_reg[6][0]  (.SI(\MEM[5][7] ), 
	.SE(FE_OFN17_SE), 
	.RN(FE_OFN0_RST_SCAN_REF), 
	.Q(\MEM[6][0] ), 
	.D(n239), 
	.CK(CLK_SCAN_REF__L5_N2));
   SDFFRQX2M \MEM_reg[8][7]  (.SI(\MEM[8][6] ), 
	.SE(FE_OFN19_SE), 
	.RN(W_rst), 
	.Q(\MEM[8][7] ), 
	.D(n230), 
	.CK(CLK_SCAN_REF__L5_N5));
   SDFFRQX2M \MEM_reg[8][6]  (.SI(\MEM[8][5] ), 
	.SE(FE_OFN19_SE), 
	.RN(FE_OFN0_RST_SCAN_REF), 
	.Q(\MEM[8][6] ), 
	.D(n229), 
	.CK(CLK_SCAN_REF__L5_N4));
   SDFFRQX2M \MEM_reg[8][5]  (.SI(\MEM[8][4] ), 
	.SE(FE_OFN19_SE), 
	.RN(W_rst), 
	.Q(\MEM[8][5] ), 
	.D(n228), 
	.CK(CLK_SCAN_REF__L5_N4));
   SDFFRQX2M \MEM_reg[8][4]  (.SI(\MEM[8][3] ), 
	.SE(FE_OFN19_SE), 
	.RN(FE_OFN0_RST_SCAN_REF), 
	.Q(\MEM[8][4] ), 
	.D(n227), 
	.CK(CLK_SCAN_REF__L5_N3));
   SDFFRQX2M \MEM_reg[8][3]  (.SI(\MEM[8][2] ), 
	.SE(FE_OFN19_SE), 
	.RN(FE_OFN0_RST_SCAN_REF), 
	.Q(\MEM[8][3] ), 
	.D(n226), 
	.CK(CLK_SCAN_REF__L5_N3));
   SDFFRQX2M \MEM_reg[8][2]  (.SI(\MEM[8][1] ), 
	.SE(FE_OFN19_SE), 
	.RN(FE_OFN0_RST_SCAN_REF), 
	.Q(\MEM[8][2] ), 
	.D(n225), 
	.CK(CLK_SCAN_REF__L5_N3));
   SDFFRQX2M \MEM_reg[8][1]  (.SI(\MEM[8][0] ), 
	.SE(FE_OFN19_SE), 
	.RN(FE_OFN0_RST_SCAN_REF), 
	.Q(\MEM[8][1] ), 
	.D(n224), 
	.CK(CLK_SCAN_REF__L5_N4));
   SDFFRQX2M \MEM_reg[8][0]  (.SI(\MEM[7][7] ), 
	.SE(FE_OFN19_SE), 
	.RN(FE_OFN0_RST_SCAN_REF), 
	.Q(\MEM[8][0] ), 
	.D(n223), 
	.CK(CLK_SCAN_REF__L5_N3));
   SDFFRQX2M \MEM_reg[10][7]  (.SI(\MEM[10][6] ), 
	.SE(FE_OFN21_SE), 
	.RN(W_rst), 
	.Q(\MEM[10][7] ), 
	.D(n214), 
	.CK(CLK_SCAN_REF__L5_N5));
   SDFFRQX2M \MEM_reg[10][6]  (.SI(\MEM[10][5] ), 
	.SE(FE_OFN19_SE), 
	.RN(W_rst), 
	.Q(\MEM[10][6] ), 
	.D(n213), 
	.CK(CLK_SCAN_REF__L5_N4));
   SDFFRQX2M \MEM_reg[10][5]  (.SI(\MEM[10][4] ), 
	.SE(FE_OFN19_SE), 
	.RN(W_rst), 
	.Q(\MEM[10][5] ), 
	.D(n212), 
	.CK(CLK_SCAN_REF__L5_N4));
   SDFFRQX2M \MEM_reg[10][4]  (.SI(\MEM[10][3] ), 
	.SE(FE_OFN19_SE), 
	.RN(W_rst), 
	.Q(\MEM[10][4] ), 
	.D(n211), 
	.CK(CLK_SCAN_REF__L5_N4));
   SDFFRQX2M \MEM_reg[10][3]  (.SI(\MEM[10][2] ), 
	.SE(FE_OFN19_SE), 
	.RN(W_rst), 
	.Q(\MEM[10][3] ), 
	.D(n210), 
	.CK(CLK_SCAN_REF__L5_N4));
   SDFFRQX2M \MEM_reg[10][2]  (.SI(\MEM[10][1] ), 
	.SE(FE_OFN19_SE), 
	.RN(W_rst), 
	.Q(\MEM[10][2] ), 
	.D(n209), 
	.CK(CLK_SCAN_REF__L5_N4));
   SDFFRQX2M \MEM_reg[10][1]  (.SI(\MEM[10][0] ), 
	.SE(FE_OFN19_SE), 
	.RN(W_rst), 
	.Q(\MEM[10][1] ), 
	.D(n208), 
	.CK(CLK_SCAN_REF__L5_N4));
   SDFFRQX2M \MEM_reg[10][0]  (.SI(\MEM[9][7] ), 
	.SE(FE_OFN19_SE), 
	.RN(W_rst), 
	.Q(\MEM[10][0] ), 
	.D(n207), 
	.CK(CLK_SCAN_REF__L5_N5));
   SDFFRQX2M \MEM_reg[12][7]  (.SI(\MEM[12][6] ), 
	.SE(FE_OFN21_SE), 
	.RN(W_rst), 
	.Q(\MEM[12][7] ), 
	.D(n198), 
	.CK(CLK_SCAN_REF__L5_N5));
   SDFFRQX2M \MEM_reg[12][6]  (.SI(\MEM[12][5] ), 
	.SE(FE_OFN21_SE), 
	.RN(W_rst), 
	.Q(\MEM[12][6] ), 
	.D(n197), 
	.CK(CLK_SCAN_REF__L5_N5));
   SDFFRQX2M \MEM_reg[12][5]  (.SI(\MEM[12][4] ), 
	.SE(FE_OFN21_SE), 
	.RN(W_rst), 
	.Q(\MEM[12][5] ), 
	.D(n196), 
	.CK(CLK_SCAN_REF__L5_N5));
   SDFFRQX2M \MEM_reg[12][4]  (.SI(\MEM[12][3] ), 
	.SE(FE_OFN21_SE), 
	.RN(W_rst), 
	.Q(\MEM[12][4] ), 
	.D(n195), 
	.CK(CLK_SCAN_REF__L5_N7));
   SDFFRQX2M \MEM_reg[12][3]  (.SI(test_si3), 
	.SE(FE_OFN21_SE), 
	.RN(W_rst), 
	.Q(\MEM[12][3] ), 
	.D(n194), 
	.CK(CLK_SCAN_REF__L5_N7));
   SDFFRQX2M \MEM_reg[12][1]  (.SI(\MEM[12][0] ), 
	.SE(FE_OFN21_SE), 
	.RN(W_rst), 
	.Q(\MEM[12][1] ), 
	.D(n192), 
	.CK(CLK_SCAN_REF__L5_N5));
   SDFFRQX2M \MEM_reg[12][0]  (.SI(\MEM[11][7] ), 
	.SE(FE_OFN21_SE), 
	.RN(W_rst), 
	.Q(\MEM[12][0] ), 
	.D(n191), 
	.CK(CLK_SCAN_REF__L5_N5));
   SDFFRQX2M \MEM_reg[14][7]  (.SI(\MEM[14][6] ), 
	.SE(FE_OFN21_SE), 
	.RN(W_rst), 
	.Q(\MEM[14][7] ), 
	.D(n182), 
	.CK(CLK_SCAN_REF__L5_N7));
   SDFFRQX2M \MEM_reg[14][6]  (.SI(\MEM[14][5] ), 
	.SE(FE_OFN21_SE), 
	.RN(W_rst), 
	.Q(\MEM[14][6] ), 
	.D(n181), 
	.CK(CLK_SCAN_REF__L5_N7));
   SDFFRQX2M \MEM_reg[14][5]  (.SI(\MEM[14][4] ), 
	.SE(FE_OFN21_SE), 
	.RN(W_rst), 
	.Q(\MEM[14][5] ), 
	.D(n180), 
	.CK(CLK_SCAN_REF__L5_N7));
   SDFFRQX2M \MEM_reg[14][4]  (.SI(\MEM[14][3] ), 
	.SE(FE_OFN21_SE), 
	.RN(W_rst), 
	.Q(\MEM[14][4] ), 
	.D(n179), 
	.CK(CLK_SCAN_REF__L5_N7));
   SDFFRQX2M \MEM_reg[14][3]  (.SI(\MEM[14][2] ), 
	.SE(FE_OFN21_SE), 
	.RN(W_rst), 
	.Q(\MEM[14][3] ), 
	.D(n178), 
	.CK(CLK_SCAN_REF__L5_N7));
   SDFFRQX2M \MEM_reg[14][2]  (.SI(\MEM[14][1] ), 
	.SE(FE_OFN21_SE), 
	.RN(W_rst), 
	.Q(\MEM[14][2] ), 
	.D(n177), 
	.CK(CLK_SCAN_REF__L5_N7));
   SDFFRQX2M \MEM_reg[14][1]  (.SI(\MEM[14][0] ), 
	.SE(FE_OFN21_SE), 
	.RN(W_rst), 
	.Q(\MEM[14][1] ), 
	.D(n176), 
	.CK(CLK_SCAN_REF__L5_N7));
   SDFFRQX2M \MEM_reg[14][0]  (.SI(\MEM[13][7] ), 
	.SE(FE_OFN21_SE), 
	.RN(W_rst), 
	.Q(\MEM[14][0] ), 
	.D(n175), 
	.CK(CLK_SCAN_REF__L5_N7));
   NOR2X2M U130 (.Y(n382), 
	.B(N11), 
	.A(n393));
   NOR2X2M U131 (.Y(n380), 
	.B(n393), 
	.A(n392));
   NOR2X2M U132 (.Y(n381), 
	.B(N10), 
	.A(n392));
   AND2X2M U133 (.Y(n129), 
	.B(n390), 
	.A(N12));
   AND2X2M U134 (.Y(n130), 
	.B(n391), 
	.A(N13));
   CLKNAND2X2M U136 (.Y(n374), 
	.B(N12), 
	.A(N13));
   CLKINVX2M U137 (.Y(n131), 
	.A(n129));
   CLKINVX2M U138 (.Y(n132), 
	.A(n130));
   CLKNAND2X2M U139 (.Y(n377), 
	.B(n390), 
	.A(n391));
   CLKINVX1M U140 (.Y(n390), 
	.A(N13));
   NOR2X2M U141 (.Y(n141), 
	.B(n473), 
	.A(n474));
   AND2X2M U142 (.Y(n157), 
	.B(W_addr[0]), 
	.A(n165));
   AND2X2M U143 (.Y(n142), 
	.B(W_addr[0]), 
	.A(n153));
   NOR2X2M U144 (.Y(n146), 
	.B(W_addr[1]), 
	.A(n474));
   NOR2X2M U145 (.Y(n149), 
	.B(W_addr[2]), 
	.A(n473));
   NOR2X2M U146 (.Y(n152), 
	.B(W_addr[2]), 
	.A(W_addr[1]));
   NAND2X2M U186 (.Y(n143), 
	.B(n141), 
	.A(n144));
   NAND2X2M U187 (.Y(n158), 
	.B(n141), 
	.A(n159));
   AND2X2M U209 (.Y(n144), 
	.B(n472), 
	.A(n153));
   AND2X2M U210 (.Y(n159), 
	.B(n472), 
	.A(n165));
   NAND2X2M U213 (.Y(n140), 
	.B(n142), 
	.A(n141));
   NAND2X2M U214 (.Y(n145), 
	.B(n142), 
	.A(n146));
   NAND2X2M U215 (.Y(n147), 
	.B(n144), 
	.A(n146));
   NAND2X2M U216 (.Y(n148), 
	.B(n142), 
	.A(n149));
   NAND2X2M U217 (.Y(n150), 
	.B(n144), 
	.A(n149));
   NAND2X2M U218 (.Y(n151), 
	.B(n142), 
	.A(n152));
   NAND2X2M U219 (.Y(n154), 
	.B(n144), 
	.A(n152));
   NAND2X2M U236 (.Y(n156), 
	.B(n141), 
	.A(n157));
   NAND2X2M U237 (.Y(n160), 
	.B(n146), 
	.A(n157));
   NAND2X2M U238 (.Y(n161), 
	.B(n146), 
	.A(n159));
   NAND2X2M U239 (.Y(n162), 
	.B(n149), 
	.A(n157));
   NAND2X2M U240 (.Y(n163), 
	.B(n149), 
	.A(n159));
   NAND2X2M U241 (.Y(n164), 
	.B(n152), 
	.A(n157));
   NAND2X2M U242 (.Y(n166), 
	.B(n152), 
	.A(n159));
   INVX2M U243 (.Y(n391), 
	.A(N12));
   INVX2M U244 (.Y(n392), 
	.A(N11));
   INVX2M U245 (.Y(n393), 
	.A(N10));
   NOR2BX2M U246 (.Y(n155), 
	.B(W_full), 
	.AN(W_inc));
   NOR2BX2M U247 (.Y(n165), 
	.B(W_addr[3]), 
	.AN(n155));
   OAI2BB2X1M U248 (.Y(n176), 
	.B1(n143), 
	.B0(n476), 
	.A1N(n143), 
	.A0N(\MEM[14][1] ));
   OAI2BB2X1M U249 (.Y(n177), 
	.B1(n143), 
	.B0(n477), 
	.A1N(n143), 
	.A0N(\MEM[14][2] ));
   OAI2BB2X1M U250 (.Y(n178), 
	.B1(n143), 
	.B0(n478), 
	.A1N(n143), 
	.A0N(\MEM[14][3] ));
   OAI2BB2X1M U251 (.Y(n179), 
	.B1(n143), 
	.B0(n479), 
	.A1N(n143), 
	.A0N(\MEM[14][4] ));
   OAI2BB2X1M U252 (.Y(n180), 
	.B1(n143), 
	.B0(n480), 
	.A1N(n143), 
	.A0N(\MEM[14][5] ));
   OAI2BB2X1M U253 (.Y(n181), 
	.B1(n143), 
	.B0(n481), 
	.A1N(n143), 
	.A0N(\MEM[14][6] ));
   OAI2BB2X1M U254 (.Y(n182), 
	.B1(n143), 
	.B0(n482), 
	.A1N(n143), 
	.A0N(\MEM[14][7] ));
   OAI2BB2X1M U255 (.Y(n184), 
	.B1(n145), 
	.B0(n476), 
	.A1N(n145), 
	.A0N(\MEM[13][1] ));
   OAI2BB2X1M U256 (.Y(n185), 
	.B1(n145), 
	.B0(n477), 
	.A1N(n145), 
	.A0N(\MEM[13][2] ));
   OAI2BB2X1M U257 (.Y(n186), 
	.B1(n145), 
	.B0(n478), 
	.A1N(n145), 
	.A0N(\MEM[13][3] ));
   OAI2BB2X1M U258 (.Y(n187), 
	.B1(n145), 
	.B0(n479), 
	.A1N(n145), 
	.A0N(\MEM[13][4] ));
   OAI2BB2X1M U259 (.Y(n188), 
	.B1(n145), 
	.B0(n480), 
	.A1N(n145), 
	.A0N(\MEM[13][5] ));
   OAI2BB2X1M U260 (.Y(n189), 
	.B1(n145), 
	.B0(n481), 
	.A1N(n145), 
	.A0N(\MEM[13][6] ));
   OAI2BB2X1M U261 (.Y(n190), 
	.B1(n145), 
	.B0(n482), 
	.A1N(n145), 
	.A0N(\MEM[13][7] ));
   OAI2BB2X1M U262 (.Y(n192), 
	.B1(n147), 
	.B0(n476), 
	.A1N(n147), 
	.A0N(\MEM[12][1] ));
   OAI2BB2X1M U263 (.Y(n193), 
	.B1(n147), 
	.B0(n477), 
	.A1N(n147), 
	.A0N(n573));
   OAI2BB2X1M U264 (.Y(n194), 
	.B1(n147), 
	.B0(n478), 
	.A1N(n147), 
	.A0N(\MEM[12][3] ));
   OAI2BB2X1M U265 (.Y(n195), 
	.B1(n147), 
	.B0(n479), 
	.A1N(n147), 
	.A0N(\MEM[12][4] ));
   OAI2BB2X1M U266 (.Y(n196), 
	.B1(n147), 
	.B0(n480), 
	.A1N(n147), 
	.A0N(\MEM[12][5] ));
   OAI2BB2X1M U267 (.Y(n197), 
	.B1(n147), 
	.B0(n481), 
	.A1N(n147), 
	.A0N(\MEM[12][6] ));
   OAI2BB2X1M U268 (.Y(n198), 
	.B1(n147), 
	.B0(n482), 
	.A1N(n147), 
	.A0N(\MEM[12][7] ));
   OAI2BB2X1M U269 (.Y(n200), 
	.B1(n148), 
	.B0(n476), 
	.A1N(n148), 
	.A0N(\MEM[11][1] ));
   OAI2BB2X1M U270 (.Y(n201), 
	.B1(n148), 
	.B0(n477), 
	.A1N(n148), 
	.A0N(\MEM[11][2] ));
   OAI2BB2X1M U271 (.Y(n202), 
	.B1(n148), 
	.B0(n478), 
	.A1N(n148), 
	.A0N(\MEM[11][3] ));
   OAI2BB2X1M U272 (.Y(n203), 
	.B1(n148), 
	.B0(n479), 
	.A1N(n148), 
	.A0N(\MEM[11][4] ));
   OAI2BB2X1M U273 (.Y(n204), 
	.B1(n148), 
	.B0(n480), 
	.A1N(n148), 
	.A0N(\MEM[11][5] ));
   OAI2BB2X1M U274 (.Y(n205), 
	.B1(n148), 
	.B0(n481), 
	.A1N(n148), 
	.A0N(\MEM[11][6] ));
   OAI2BB2X1M U275 (.Y(n206), 
	.B1(n148), 
	.B0(n482), 
	.A1N(n148), 
	.A0N(\MEM[11][7] ));
   OAI2BB2X1M U276 (.Y(n208), 
	.B1(n150), 
	.B0(n476), 
	.A1N(n150), 
	.A0N(\MEM[10][1] ));
   OAI2BB2X1M U277 (.Y(n209), 
	.B1(n150), 
	.B0(n477), 
	.A1N(n150), 
	.A0N(\MEM[10][2] ));
   OAI2BB2X1M U278 (.Y(n210), 
	.B1(n150), 
	.B0(n478), 
	.A1N(n150), 
	.A0N(\MEM[10][3] ));
   OAI2BB2X1M U279 (.Y(n211), 
	.B1(n150), 
	.B0(n479), 
	.A1N(n150), 
	.A0N(\MEM[10][4] ));
   OAI2BB2X1M U280 (.Y(n212), 
	.B1(n150), 
	.B0(n480), 
	.A1N(n150), 
	.A0N(\MEM[10][5] ));
   OAI2BB2X1M U281 (.Y(n213), 
	.B1(n150), 
	.B0(n481), 
	.A1N(n150), 
	.A0N(\MEM[10][6] ));
   OAI2BB2X1M U282 (.Y(n214), 
	.B1(n150), 
	.B0(n482), 
	.A1N(n150), 
	.A0N(\MEM[10][7] ));
   OAI2BB2X1M U283 (.Y(n216), 
	.B1(n151), 
	.B0(n476), 
	.A1N(n151), 
	.A0N(\MEM[9][1] ));
   OAI2BB2X1M U284 (.Y(n217), 
	.B1(n151), 
	.B0(n477), 
	.A1N(n151), 
	.A0N(\MEM[9][2] ));
   OAI2BB2X1M U285 (.Y(n218), 
	.B1(n151), 
	.B0(n478), 
	.A1N(n151), 
	.A0N(\MEM[9][3] ));
   OAI2BB2X1M U286 (.Y(n219), 
	.B1(n151), 
	.B0(n479), 
	.A1N(n151), 
	.A0N(\MEM[9][4] ));
   OAI2BB2X1M U287 (.Y(n220), 
	.B1(n151), 
	.B0(n480), 
	.A1N(n151), 
	.A0N(\MEM[9][5] ));
   OAI2BB2X1M U288 (.Y(n221), 
	.B1(n151), 
	.B0(n481), 
	.A1N(n151), 
	.A0N(\MEM[9][6] ));
   OAI2BB2X1M U289 (.Y(n222), 
	.B1(n151), 
	.B0(n482), 
	.A1N(n151), 
	.A0N(\MEM[9][7] ));
   OAI2BB2X1M U290 (.Y(n224), 
	.B1(n154), 
	.B0(n476), 
	.A1N(n154), 
	.A0N(\MEM[8][1] ));
   OAI2BB2X1M U291 (.Y(n225), 
	.B1(n154), 
	.B0(n477), 
	.A1N(n154), 
	.A0N(\MEM[8][2] ));
   OAI2BB2X1M U292 (.Y(n226), 
	.B1(n154), 
	.B0(n478), 
	.A1N(n154), 
	.A0N(\MEM[8][3] ));
   OAI2BB2X1M U293 (.Y(n227), 
	.B1(n154), 
	.B0(n479), 
	.A1N(n154), 
	.A0N(\MEM[8][4] ));
   OAI2BB2X1M U294 (.Y(n228), 
	.B1(n154), 
	.B0(n480), 
	.A1N(n154), 
	.A0N(\MEM[8][5] ));
   OAI2BB2X1M U295 (.Y(n229), 
	.B1(n154), 
	.B0(n481), 
	.A1N(n154), 
	.A0N(\MEM[8][6] ));
   OAI2BB2X1M U296 (.Y(n230), 
	.B1(n154), 
	.B0(n482), 
	.A1N(n154), 
	.A0N(\MEM[8][7] ));
   OAI2BB2X1M U297 (.Y(n232), 
	.B1(n156), 
	.B0(n476), 
	.A1N(n156), 
	.A0N(\MEM[7][1] ));
   OAI2BB2X1M U298 (.Y(n233), 
	.B1(n156), 
	.B0(n477), 
	.A1N(n156), 
	.A0N(\MEM[7][2] ));
   OAI2BB2X1M U299 (.Y(n234), 
	.B1(n156), 
	.B0(n478), 
	.A1N(n156), 
	.A0N(\MEM[7][3] ));
   OAI2BB2X1M U300 (.Y(n235), 
	.B1(n156), 
	.B0(n479), 
	.A1N(n156), 
	.A0N(\MEM[7][4] ));
   OAI2BB2X1M U301 (.Y(n236), 
	.B1(n156), 
	.B0(n480), 
	.A1N(n156), 
	.A0N(\MEM[7][5] ));
   OAI2BB2X1M U302 (.Y(n237), 
	.B1(n156), 
	.B0(n481), 
	.A1N(n156), 
	.A0N(\MEM[7][6] ));
   OAI2BB2X1M U303 (.Y(n238), 
	.B1(n156), 
	.B0(n482), 
	.A1N(n156), 
	.A0N(\MEM[7][7] ));
   OAI2BB2X1M U304 (.Y(n240), 
	.B1(n158), 
	.B0(n476), 
	.A1N(n158), 
	.A0N(\MEM[6][1] ));
   OAI2BB2X1M U305 (.Y(n241), 
	.B1(n158), 
	.B0(n477), 
	.A1N(n158), 
	.A0N(\MEM[6][2] ));
   OAI2BB2X1M U306 (.Y(n242), 
	.B1(n158), 
	.B0(n478), 
	.A1N(n158), 
	.A0N(\MEM[6][3] ));
   OAI2BB2X1M U307 (.Y(n243), 
	.B1(n158), 
	.B0(n479), 
	.A1N(n158), 
	.A0N(\MEM[6][4] ));
   OAI2BB2X1M U308 (.Y(n244), 
	.B1(n158), 
	.B0(n480), 
	.A1N(n158), 
	.A0N(\MEM[6][5] ));
   OAI2BB2X1M U309 (.Y(n245), 
	.B1(n158), 
	.B0(n481), 
	.A1N(n158), 
	.A0N(\MEM[6][6] ));
   OAI2BB2X1M U310 (.Y(n246), 
	.B1(n158), 
	.B0(n482), 
	.A1N(n158), 
	.A0N(\MEM[6][7] ));
   OAI2BB2X1M U311 (.Y(n248), 
	.B1(n160), 
	.B0(n476), 
	.A1N(n160), 
	.A0N(\MEM[5][1] ));
   OAI2BB2X1M U312 (.Y(n249), 
	.B1(n160), 
	.B0(n477), 
	.A1N(n160), 
	.A0N(\MEM[5][2] ));
   OAI2BB2X1M U313 (.Y(n250), 
	.B1(n160), 
	.B0(n478), 
	.A1N(n160), 
	.A0N(\MEM[5][3] ));
   OAI2BB2X1M U314 (.Y(n251), 
	.B1(n160), 
	.B0(n479), 
	.A1N(n160), 
	.A0N(\MEM[5][4] ));
   OAI2BB2X1M U315 (.Y(n252), 
	.B1(n160), 
	.B0(n480), 
	.A1N(n160), 
	.A0N(\MEM[5][5] ));
   OAI2BB2X1M U316 (.Y(n253), 
	.B1(n160), 
	.B0(n481), 
	.A1N(n160), 
	.A0N(\MEM[5][6] ));
   OAI2BB2X1M U317 (.Y(n254), 
	.B1(n160), 
	.B0(n482), 
	.A1N(n160), 
	.A0N(\MEM[5][7] ));
   OAI2BB2X1M U318 (.Y(n256), 
	.B1(n161), 
	.B0(n476), 
	.A1N(n161), 
	.A0N(\MEM[4][1] ));
   OAI2BB2X1M U319 (.Y(n257), 
	.B1(n161), 
	.B0(n477), 
	.A1N(n161), 
	.A0N(\MEM[4][2] ));
   OAI2BB2X1M U320 (.Y(n258), 
	.B1(n161), 
	.B0(n478), 
	.A1N(n161), 
	.A0N(\MEM[4][3] ));
   OAI2BB2X1M U321 (.Y(n259), 
	.B1(n161), 
	.B0(n479), 
	.A1N(n161), 
	.A0N(\MEM[4][4] ));
   OAI2BB2X1M U322 (.Y(n260), 
	.B1(n161), 
	.B0(n480), 
	.A1N(n161), 
	.A0N(\MEM[4][5] ));
   OAI2BB2X1M U323 (.Y(n261), 
	.B1(n161), 
	.B0(n481), 
	.A1N(n161), 
	.A0N(\MEM[4][6] ));
   OAI2BB2X1M U324 (.Y(n262), 
	.B1(n161), 
	.B0(n482), 
	.A1N(n161), 
	.A0N(\MEM[4][7] ));
   OAI2BB2X1M U325 (.Y(n264), 
	.B1(n162), 
	.B0(n476), 
	.A1N(n162), 
	.A0N(\MEM[3][1] ));
   OAI2BB2X1M U326 (.Y(n265), 
	.B1(n162), 
	.B0(n477), 
	.A1N(n162), 
	.A0N(\MEM[3][2] ));
   OAI2BB2X1M U327 (.Y(n266), 
	.B1(n162), 
	.B0(n478), 
	.A1N(n162), 
	.A0N(\MEM[3][3] ));
   OAI2BB2X1M U328 (.Y(n267), 
	.B1(n162), 
	.B0(n479), 
	.A1N(n162), 
	.A0N(\MEM[3][4] ));
   OAI2BB2X1M U329 (.Y(n268), 
	.B1(n162), 
	.B0(n480), 
	.A1N(n162), 
	.A0N(\MEM[3][5] ));
   OAI2BB2X1M U330 (.Y(n269), 
	.B1(n162), 
	.B0(n481), 
	.A1N(n162), 
	.A0N(\MEM[3][6] ));
   OAI2BB2X1M U331 (.Y(n270), 
	.B1(n162), 
	.B0(n482), 
	.A1N(n162), 
	.A0N(\MEM[3][7] ));
   OAI2BB2X1M U332 (.Y(n272), 
	.B1(n163), 
	.B0(n476), 
	.A1N(n163), 
	.A0N(\MEM[2][1] ));
   OAI2BB2X1M U333 (.Y(n273), 
	.B1(n163), 
	.B0(n477), 
	.A1N(n163), 
	.A0N(\MEM[2][2] ));
   OAI2BB2X1M U334 (.Y(n274), 
	.B1(n163), 
	.B0(n478), 
	.A1N(n163), 
	.A0N(\MEM[2][3] ));
   OAI2BB2X1M U335 (.Y(n275), 
	.B1(n163), 
	.B0(n479), 
	.A1N(n163), 
	.A0N(\MEM[2][4] ));
   OAI2BB2X1M U336 (.Y(n276), 
	.B1(n163), 
	.B0(n480), 
	.A1N(n163), 
	.A0N(\MEM[2][5] ));
   OAI2BB2X1M U337 (.Y(n277), 
	.B1(n163), 
	.B0(n481), 
	.A1N(n163), 
	.A0N(\MEM[2][6] ));
   OAI2BB2X1M U338 (.Y(n278), 
	.B1(n163), 
	.B0(n482), 
	.A1N(n163), 
	.A0N(\MEM[2][7] ));
   OAI2BB2X1M U339 (.Y(n280), 
	.B1(n164), 
	.B0(n476), 
	.A1N(n164), 
	.A0N(\MEM[1][1] ));
   OAI2BB2X1M U340 (.Y(n281), 
	.B1(n164), 
	.B0(n477), 
	.A1N(n164), 
	.A0N(n575));
   OAI2BB2X1M U341 (.Y(n282), 
	.B1(n164), 
	.B0(n478), 
	.A1N(n164), 
	.A0N(\MEM[1][3] ));
   OAI2BB2X1M U342 (.Y(n283), 
	.B1(n164), 
	.B0(n479), 
	.A1N(n164), 
	.A0N(\MEM[1][4] ));
   OAI2BB2X1M U343 (.Y(n284), 
	.B1(n164), 
	.B0(n480), 
	.A1N(n164), 
	.A0N(\MEM[1][5] ));
   OAI2BB2X1M U344 (.Y(n285), 
	.B1(n164), 
	.B0(n481), 
	.A1N(n164), 
	.A0N(\MEM[1][6] ));
   OAI2BB2X1M U345 (.Y(n286), 
	.B1(n164), 
	.B0(n482), 
	.A1N(n164), 
	.A0N(\MEM[1][7] ));
   OAI2BB2X1M U346 (.Y(n288), 
	.B1(n166), 
	.B0(n476), 
	.A1N(n166), 
	.A0N(\MEM[0][1] ));
   OAI2BB2X1M U347 (.Y(n289), 
	.B1(n166), 
	.B0(n477), 
	.A1N(n166), 
	.A0N(\MEM[0][2] ));
   OAI2BB2X1M U348 (.Y(n290), 
	.B1(n166), 
	.B0(n478), 
	.A1N(n166), 
	.A0N(\MEM[0][3] ));
   OAI2BB2X1M U349 (.Y(n291), 
	.B1(n166), 
	.B0(n479), 
	.A1N(n166), 
	.A0N(\MEM[0][4] ));
   OAI2BB2X1M U350 (.Y(n292), 
	.B1(n166), 
	.B0(n480), 
	.A1N(n166), 
	.A0N(\MEM[0][5] ));
   OAI2BB2X1M U351 (.Y(n293), 
	.B1(n166), 
	.B0(n481), 
	.A1N(n166), 
	.A0N(\MEM[0][6] ));
   OAI2BB2X1M U352 (.Y(n294), 
	.B1(n166), 
	.B0(n482), 
	.A1N(n166), 
	.A0N(\MEM[0][7] ));
   OAI2BB2X1M U353 (.Y(n167), 
	.B1(n475), 
	.B0(n140), 
	.A1N(n140), 
	.A0N(\MEM[15][0] ));
   OAI2BB2X1M U354 (.Y(n168), 
	.B1(n476), 
	.B0(n140), 
	.A1N(n140), 
	.A0N(\MEM[15][1] ));
   OAI2BB2X1M U355 (.Y(n169), 
	.B1(n477), 
	.B0(n140), 
	.A1N(n140), 
	.A0N(\MEM[15][2] ));
   OAI2BB2X1M U356 (.Y(n170), 
	.B1(n478), 
	.B0(n140), 
	.A1N(n140), 
	.A0N(\MEM[15][3] ));
   OAI2BB2X1M U357 (.Y(n171), 
	.B1(n479), 
	.B0(n140), 
	.A1N(n140), 
	.A0N(\MEM[15][4] ));
   OAI2BB2X1M U358 (.Y(n172), 
	.B1(n480), 
	.B0(n140), 
	.A1N(n140), 
	.A0N(\MEM[15][5] ));
   OAI2BB2X1M U359 (.Y(n173), 
	.B1(n481), 
	.B0(n140), 
	.A1N(n140), 
	.A0N(\MEM[15][6] ));
   OAI2BB2X1M U360 (.Y(n174), 
	.B1(n482), 
	.B0(n140), 
	.A1N(n140), 
	.A0N(\MEM[15][7] ));
   OAI2BB2X1M U361 (.Y(n175), 
	.B1(n143), 
	.B0(n475), 
	.A1N(n143), 
	.A0N(\MEM[14][0] ));
   OAI2BB2X1M U362 (.Y(n183), 
	.B1(n145), 
	.B0(n475), 
	.A1N(n145), 
	.A0N(\MEM[13][0] ));
   OAI2BB2X1M U363 (.Y(n191), 
	.B1(n147), 
	.B0(n475), 
	.A1N(n147), 
	.A0N(\MEM[12][0] ));
   OAI2BB2X1M U364 (.Y(n199), 
	.B1(n148), 
	.B0(n475), 
	.A1N(n148), 
	.A0N(\MEM[11][0] ));
   OAI2BB2X1M U365 (.Y(n207), 
	.B1(n150), 
	.B0(n475), 
	.A1N(n150), 
	.A0N(\MEM[10][0] ));
   OAI2BB2X1M U366 (.Y(n215), 
	.B1(n151), 
	.B0(n475), 
	.A1N(n151), 
	.A0N(\MEM[9][0] ));
   OAI2BB2X1M U367 (.Y(n223), 
	.B1(n154), 
	.B0(n475), 
	.A1N(n154), 
	.A0N(\MEM[8][0] ));
   OAI2BB2X1M U368 (.Y(n231), 
	.B1(n156), 
	.B0(n475), 
	.A1N(n156), 
	.A0N(\MEM[7][0] ));
   OAI2BB2X1M U369 (.Y(n239), 
	.B1(n158), 
	.B0(n475), 
	.A1N(n158), 
	.A0N(\MEM[6][0] ));
   OAI2BB2X1M U370 (.Y(n247), 
	.B1(n160), 
	.B0(n475), 
	.A1N(n160), 
	.A0N(\MEM[5][0] ));
   OAI2BB2X1M U371 (.Y(n255), 
	.B1(n161), 
	.B0(n475), 
	.A1N(n161), 
	.A0N(\MEM[4][0] ));
   OAI2BB2X1M U372 (.Y(n263), 
	.B1(n162), 
	.B0(n475), 
	.A1N(n162), 
	.A0N(\MEM[3][0] ));
   OAI2BB2X1M U373 (.Y(n271), 
	.B1(n163), 
	.B0(n475), 
	.A1N(n163), 
	.A0N(\MEM[2][0] ));
   OAI2BB2X1M U374 (.Y(n279), 
	.B1(n164), 
	.B0(n475), 
	.A1N(n164), 
	.A0N(\MEM[1][0] ));
   OAI2BB2X1M U375 (.Y(n287), 
	.B1(n166), 
	.B0(n475), 
	.A1N(n166), 
	.A0N(\MEM[0][0] ));
   INVX2M U376 (.Y(n475), 
	.A(W_data[0]));
   INVX2M U377 (.Y(n476), 
	.A(W_data[1]));
   INVX2M U378 (.Y(n477), 
	.A(W_data[2]));
   INVX2M U379 (.Y(n478), 
	.A(W_data[3]));
   INVX2M U380 (.Y(n479), 
	.A(W_data[4]));
   INVX2M U381 (.Y(n480), 
	.A(W_data[5]));
   INVX2M U382 (.Y(n481), 
	.A(W_data[6]));
   INVX2M U383 (.Y(n482), 
	.A(W_data[7]));
   AND2X2M U384 (.Y(n153), 
	.B(n155), 
	.A(W_addr[3]));
   INVX2M U385 (.Y(n474), 
	.A(W_addr[2]));
   INVX2M U386 (.Y(n473), 
	.A(W_addr[1]));
   INVX2M U387 (.Y(n472), 
	.A(W_addr[0]));
   AOI22X1M U388 (.Y(n134), 
	.B1(FE_OFN12_n380), 
	.B0(\MEM[11][0] ), 
	.A1(FE_OFN10_n381), 
	.A0(\MEM[10][0] ));
   AOI22X1M U389 (.Y(n133), 
	.B1(FE_OFN11_n382), 
	.B0(\MEM[9][0] ), 
	.A1(FE_OFN13_n383), 
	.A0(\MEM[8][0] ));
   AOI21X1M U390 (.Y(n299), 
	.B0(n132), 
	.A1(n133), 
	.A0(n134));
   AOI22X1M U391 (.Y(n136), 
	.B1(FE_OFN12_n380), 
	.B0(\MEM[15][0] ), 
	.A1(FE_OFN10_n381), 
	.A0(\MEM[14][0] ));
   AOI22X1M U392 (.Y(n135), 
	.B1(FE_OFN11_n382), 
	.B0(\MEM[13][0] ), 
	.A1(FE_OFN13_n383), 
	.A0(\MEM[12][0] ));
   AOI21X1M U393 (.Y(n298), 
	.B0(n374), 
	.A1(n135), 
	.A0(n136));
   AOI22X1M U394 (.Y(n138), 
	.B1(FE_OFN12_n380), 
	.B0(\MEM[3][0] ), 
	.A1(FE_OFN10_n381), 
	.A0(\MEM[2][0] ));
   AOI22X1M U395 (.Y(n137), 
	.B1(FE_OFN11_n382), 
	.B0(\MEM[1][0] ), 
	.A1(FE_OFN13_n383), 
	.A0(\MEM[0][0] ));
   AOI21X1M U396 (.Y(n297), 
	.B0(n377), 
	.A1(n137), 
	.A0(n138));
   AOI22X1M U397 (.Y(n295), 
	.B1(FE_OFN12_n380), 
	.B0(\MEM[7][0] ), 
	.A1(FE_OFN10_n381), 
	.A0(\MEM[6][0] ));
   AOI22X1M U398 (.Y(n139), 
	.B1(FE_OFN11_n382), 
	.B0(\MEM[5][0] ), 
	.A1(FE_OFN13_n383), 
	.A0(\MEM[4][0] ));
   AOI21X1M U399 (.Y(n296), 
	.B0(n131), 
	.A1(n139), 
	.A0(n295));
   OR4X1M U400 (.Y(R_data[0]), 
	.D(n296), 
	.C(n297), 
	.B(n298), 
	.A(n299));
   AOI22X1M U401 (.Y(n301), 
	.B1(FE_OFN12_n380), 
	.B0(\MEM[11][1] ), 
	.A1(FE_OFN10_n381), 
	.A0(\MEM[10][1] ));
   AOI22X1M U402 (.Y(n300), 
	.B1(FE_OFN11_n382), 
	.B0(\MEM[9][1] ), 
	.A1(FE_OFN13_n383), 
	.A0(\MEM[8][1] ));
   AOI21X1M U403 (.Y(n311), 
	.B0(n132), 
	.A1(n300), 
	.A0(n301));
   AOI22X1M U404 (.Y(n303), 
	.B1(FE_OFN12_n380), 
	.B0(\MEM[15][1] ), 
	.A1(FE_OFN10_n381), 
	.A0(\MEM[14][1] ));
   AOI22X1M U405 (.Y(n302), 
	.B1(FE_OFN11_n382), 
	.B0(\MEM[13][1] ), 
	.A1(FE_OFN13_n383), 
	.A0(\MEM[12][1] ));
   AOI21X1M U406 (.Y(n310), 
	.B0(n374), 
	.A1(n302), 
	.A0(n303));
   AOI22X1M U407 (.Y(n305), 
	.B1(FE_OFN12_n380), 
	.B0(\MEM[3][1] ), 
	.A1(FE_OFN10_n381), 
	.A0(\MEM[2][1] ));
   AOI22X1M U408 (.Y(n304), 
	.B1(FE_OFN11_n382), 
	.B0(\MEM[1][1] ), 
	.A1(FE_OFN13_n383), 
	.A0(\MEM[0][1] ));
   AOI21X1M U409 (.Y(n309), 
	.B0(n377), 
	.A1(n304), 
	.A0(n305));
   AOI22X1M U410 (.Y(n307), 
	.B1(FE_OFN12_n380), 
	.B0(\MEM[7][1] ), 
	.A1(FE_OFN10_n381), 
	.A0(\MEM[6][1] ));
   AOI22X1M U411 (.Y(n306), 
	.B1(FE_OFN11_n382), 
	.B0(\MEM[5][1] ), 
	.A1(FE_OFN13_n383), 
	.A0(\MEM[4][1] ));
   AOI21X1M U412 (.Y(n308), 
	.B0(n131), 
	.A1(n306), 
	.A0(n307));
   OR4X1M U413 (.Y(R_data[1]), 
	.D(n308), 
	.C(n309), 
	.B(n310), 
	.A(n311));
   AOI22X1M U414 (.Y(n313), 
	.B1(FE_OFN12_n380), 
	.B0(\MEM[11][2] ), 
	.A1(FE_OFN10_n381), 
	.A0(\MEM[10][2] ));
   AOI22X1M U415 (.Y(n312), 
	.B1(FE_OFN11_n382), 
	.B0(\MEM[9][2] ), 
	.A1(FE_OFN13_n383), 
	.A0(\MEM[8][2] ));
   AOI21X1M U416 (.Y(n323), 
	.B0(n132), 
	.A1(n312), 
	.A0(n313));
   AOI22X1M U417 (.Y(n315), 
	.B1(FE_OFN12_n380), 
	.B0(\MEM[15][2] ), 
	.A1(FE_OFN10_n381), 
	.A0(\MEM[14][2] ));
   AOI22X1M U418 (.Y(n314), 
	.B1(FE_OFN11_n382), 
	.B0(\MEM[13][2] ), 
	.A1(FE_OFN13_n383), 
	.A0(n573));
   AOI21X1M U419 (.Y(n322), 
	.B0(n374), 
	.A1(n314), 
	.A0(n315));
   AOI22X1M U420 (.Y(n317), 
	.B1(FE_OFN12_n380), 
	.B0(\MEM[3][2] ), 
	.A1(FE_OFN10_n381), 
	.A0(\MEM[2][2] ));
   AOI22X1M U421 (.Y(n316), 
	.B1(FE_OFN11_n382), 
	.B0(n575), 
	.A1(FE_OFN13_n383), 
	.A0(\MEM[0][2] ));
   AOI21X1M U422 (.Y(n321), 
	.B0(n377), 
	.A1(n316), 
	.A0(n317));
   AOI22X1M U423 (.Y(n319), 
	.B1(FE_OFN12_n380), 
	.B0(\MEM[7][2] ), 
	.A1(FE_OFN10_n381), 
	.A0(\MEM[6][2] ));
   AOI22X1M U424 (.Y(n318), 
	.B1(FE_OFN11_n382), 
	.B0(\MEM[5][2] ), 
	.A1(FE_OFN13_n383), 
	.A0(\MEM[4][2] ));
   AOI21X1M U425 (.Y(n320), 
	.B0(n131), 
	.A1(n318), 
	.A0(n319));
   OR4X1M U426 (.Y(R_data[2]), 
	.D(n320), 
	.C(n321), 
	.B(n322), 
	.A(n323));
   AOI22X1M U427 (.Y(n325), 
	.B1(FE_OFN12_n380), 
	.B0(\MEM[11][3] ), 
	.A1(FE_OFN10_n381), 
	.A0(\MEM[10][3] ));
   AOI22X1M U428 (.Y(n324), 
	.B1(FE_OFN11_n382), 
	.B0(\MEM[9][3] ), 
	.A1(FE_OFN13_n383), 
	.A0(\MEM[8][3] ));
   AOI21X1M U429 (.Y(n335), 
	.B0(n132), 
	.A1(n324), 
	.A0(n325));
   AOI22X1M U430 (.Y(n327), 
	.B1(FE_OFN12_n380), 
	.B0(\MEM[15][3] ), 
	.A1(FE_OFN10_n381), 
	.A0(\MEM[14][3] ));
   AOI22X1M U431 (.Y(n326), 
	.B1(FE_OFN11_n382), 
	.B0(\MEM[13][3] ), 
	.A1(FE_OFN13_n383), 
	.A0(\MEM[12][3] ));
   AOI21X1M U432 (.Y(n334), 
	.B0(n374), 
	.A1(n326), 
	.A0(n327));
   AOI22X1M U433 (.Y(n329), 
	.B1(FE_OFN12_n380), 
	.B0(\MEM[3][3] ), 
	.A1(FE_OFN10_n381), 
	.A0(\MEM[2][3] ));
   AOI22X1M U434 (.Y(n328), 
	.B1(FE_OFN11_n382), 
	.B0(\MEM[1][3] ), 
	.A1(FE_OFN13_n383), 
	.A0(\MEM[0][3] ));
   AOI21X1M U435 (.Y(n333), 
	.B0(n377), 
	.A1(n328), 
	.A0(n329));
   AOI22X1M U436 (.Y(n331), 
	.B1(FE_OFN12_n380), 
	.B0(\MEM[7][3] ), 
	.A1(FE_OFN10_n381), 
	.A0(\MEM[6][3] ));
   AOI22X1M U437 (.Y(n330), 
	.B1(FE_OFN11_n382), 
	.B0(\MEM[5][3] ), 
	.A1(FE_OFN13_n383), 
	.A0(\MEM[4][3] ));
   AOI21X1M U438 (.Y(n332), 
	.B0(n131), 
	.A1(n330), 
	.A0(n331));
   OR4X1M U439 (.Y(R_data[3]), 
	.D(n332), 
	.C(n333), 
	.B(n334), 
	.A(n335));
   AOI22X1M U440 (.Y(n337), 
	.B1(FE_OFN12_n380), 
	.B0(\MEM[11][4] ), 
	.A1(FE_OFN10_n381), 
	.A0(\MEM[10][4] ));
   AOI22X1M U441 (.Y(n336), 
	.B1(FE_OFN11_n382), 
	.B0(\MEM[9][4] ), 
	.A1(FE_OFN13_n383), 
	.A0(\MEM[8][4] ));
   AOI21X1M U442 (.Y(n347), 
	.B0(n132), 
	.A1(n336), 
	.A0(n337));
   AOI22X1M U443 (.Y(n339), 
	.B1(FE_OFN12_n380), 
	.B0(\MEM[15][4] ), 
	.A1(FE_OFN10_n381), 
	.A0(\MEM[14][4] ));
   AOI22X1M U444 (.Y(n338), 
	.B1(FE_OFN11_n382), 
	.B0(\MEM[13][4] ), 
	.A1(FE_OFN13_n383), 
	.A0(\MEM[12][4] ));
   AOI21X1M U445 (.Y(n346), 
	.B0(n374), 
	.A1(n338), 
	.A0(n339));
   AOI22X1M U446 (.Y(n341), 
	.B1(FE_OFN12_n380), 
	.B0(\MEM[3][4] ), 
	.A1(FE_OFN10_n381), 
	.A0(\MEM[2][4] ));
   AOI22X1M U447 (.Y(n340), 
	.B1(FE_OFN11_n382), 
	.B0(\MEM[1][4] ), 
	.A1(FE_OFN13_n383), 
	.A0(\MEM[0][4] ));
   AOI21X1M U448 (.Y(n345), 
	.B0(n377), 
	.A1(n340), 
	.A0(n341));
   AOI22X1M U449 (.Y(n343), 
	.B1(FE_OFN12_n380), 
	.B0(\MEM[7][4] ), 
	.A1(FE_OFN10_n381), 
	.A0(\MEM[6][4] ));
   AOI22X1M U450 (.Y(n342), 
	.B1(FE_OFN11_n382), 
	.B0(\MEM[5][4] ), 
	.A1(FE_OFN13_n383), 
	.A0(\MEM[4][4] ));
   AOI21X1M U451 (.Y(n344), 
	.B0(n131), 
	.A1(n342), 
	.A0(n343));
   OR4X1M U452 (.Y(R_data[4]), 
	.D(n344), 
	.C(n345), 
	.B(n346), 
	.A(n347));
   AOI22X1M U453 (.Y(n349), 
	.B1(FE_OFN12_n380), 
	.B0(\MEM[11][5] ), 
	.A1(FE_OFN10_n381), 
	.A0(\MEM[10][5] ));
   AOI22X1M U454 (.Y(n348), 
	.B1(FE_OFN11_n382), 
	.B0(\MEM[9][5] ), 
	.A1(FE_OFN13_n383), 
	.A0(\MEM[8][5] ));
   AOI21X1M U455 (.Y(n359), 
	.B0(n132), 
	.A1(n348), 
	.A0(n349));
   AOI22X1M U456 (.Y(n351), 
	.B1(FE_OFN12_n380), 
	.B0(\MEM[15][5] ), 
	.A1(FE_OFN10_n381), 
	.A0(\MEM[14][5] ));
   AOI22X1M U457 (.Y(n350), 
	.B1(FE_OFN11_n382), 
	.B0(\MEM[13][5] ), 
	.A1(FE_OFN13_n383), 
	.A0(\MEM[12][5] ));
   AOI21X1M U458 (.Y(n358), 
	.B0(n374), 
	.A1(n350), 
	.A0(n351));
   AOI22X1M U459 (.Y(n353), 
	.B1(FE_OFN12_n380), 
	.B0(\MEM[3][5] ), 
	.A1(FE_OFN10_n381), 
	.A0(\MEM[2][5] ));
   AOI22X1M U460 (.Y(n352), 
	.B1(FE_OFN11_n382), 
	.B0(\MEM[1][5] ), 
	.A1(FE_OFN13_n383), 
	.A0(\MEM[0][5] ));
   AOI21X1M U461 (.Y(n357), 
	.B0(n377), 
	.A1(n352), 
	.A0(n353));
   AOI22X1M U462 (.Y(n355), 
	.B1(FE_OFN12_n380), 
	.B0(\MEM[7][5] ), 
	.A1(FE_OFN10_n381), 
	.A0(\MEM[6][5] ));
   AOI22X1M U463 (.Y(n354), 
	.B1(FE_OFN11_n382), 
	.B0(\MEM[5][5] ), 
	.A1(FE_OFN13_n383), 
	.A0(\MEM[4][5] ));
   AOI21X1M U464 (.Y(n356), 
	.B0(n131), 
	.A1(n354), 
	.A0(n355));
   OR4X1M U465 (.Y(R_data[5]), 
	.D(n356), 
	.C(n357), 
	.B(n358), 
	.A(n359));
   AOI22X1M U466 (.Y(n361), 
	.B1(FE_OFN12_n380), 
	.B0(\MEM[11][6] ), 
	.A1(FE_OFN10_n381), 
	.A0(\MEM[10][6] ));
   AOI22X1M U467 (.Y(n360), 
	.B1(FE_OFN11_n382), 
	.B0(\MEM[9][6] ), 
	.A1(FE_OFN13_n383), 
	.A0(\MEM[8][6] ));
   AOI21X1M U468 (.Y(n371), 
	.B0(n132), 
	.A1(n360), 
	.A0(n361));
   AOI22X1M U469 (.Y(n363), 
	.B1(FE_OFN12_n380), 
	.B0(\MEM[15][6] ), 
	.A1(FE_OFN10_n381), 
	.A0(\MEM[14][6] ));
   AOI22X1M U470 (.Y(n362), 
	.B1(FE_OFN11_n382), 
	.B0(\MEM[13][6] ), 
	.A1(FE_OFN13_n383), 
	.A0(\MEM[12][6] ));
   AOI21X1M U471 (.Y(n370), 
	.B0(n374), 
	.A1(n362), 
	.A0(n363));
   AOI22X1M U472 (.Y(n365), 
	.B1(FE_OFN12_n380), 
	.B0(\MEM[3][6] ), 
	.A1(FE_OFN10_n381), 
	.A0(\MEM[2][6] ));
   AOI22X1M U473 (.Y(n364), 
	.B1(FE_OFN11_n382), 
	.B0(\MEM[1][6] ), 
	.A1(FE_OFN13_n383), 
	.A0(\MEM[0][6] ));
   AOI21X1M U474 (.Y(n369), 
	.B0(n377), 
	.A1(n364), 
	.A0(n365));
   AOI22X1M U475 (.Y(n367), 
	.B1(FE_OFN12_n380), 
	.B0(\MEM[7][6] ), 
	.A1(FE_OFN10_n381), 
	.A0(\MEM[6][6] ));
   AOI22X1M U476 (.Y(n366), 
	.B1(FE_OFN11_n382), 
	.B0(\MEM[5][6] ), 
	.A1(FE_OFN13_n383), 
	.A0(\MEM[4][6] ));
   AOI21X1M U477 (.Y(n368), 
	.B0(n131), 
	.A1(n366), 
	.A0(n367));
   OR4X1M U478 (.Y(R_data[6]), 
	.D(n368), 
	.C(n369), 
	.B(n370), 
	.A(n371));
   AOI22X1M U479 (.Y(n373), 
	.B1(FE_OFN12_n380), 
	.B0(\MEM[11][7] ), 
	.A1(FE_OFN10_n381), 
	.A0(\MEM[10][7] ));
   AOI22X1M U480 (.Y(n372), 
	.B1(FE_OFN11_n382), 
	.B0(\MEM[9][7] ), 
	.A1(FE_OFN13_n383), 
	.A0(\MEM[8][7] ));
   AOI21X1M U481 (.Y(n389), 
	.B0(n132), 
	.A1(n372), 
	.A0(n373));
   AOI22X1M U482 (.Y(n376), 
	.B1(FE_OFN12_n380), 
	.B0(\MEM[15][7] ), 
	.A1(FE_OFN10_n381), 
	.A0(\MEM[14][7] ));
   AOI22X1M U483 (.Y(n375), 
	.B1(FE_OFN11_n382), 
	.B0(\MEM[13][7] ), 
	.A1(FE_OFN13_n383), 
	.A0(\MEM[12][7] ));
   AOI21X1M U484 (.Y(n388), 
	.B0(n374), 
	.A1(n375), 
	.A0(n376));
   AOI22X1M U485 (.Y(n379), 
	.B1(FE_OFN12_n380), 
	.B0(\MEM[3][7] ), 
	.A1(FE_OFN10_n381), 
	.A0(\MEM[2][7] ));
   AOI22X1M U486 (.Y(n378), 
	.B1(FE_OFN11_n382), 
	.B0(\MEM[1][7] ), 
	.A1(FE_OFN13_n383), 
	.A0(\MEM[0][7] ));
   AOI21X1M U487 (.Y(n387), 
	.B0(n377), 
	.A1(n378), 
	.A0(n379));
   AOI22X1M U488 (.Y(n385), 
	.B1(FE_OFN12_n380), 
	.B0(\MEM[7][7] ), 
	.A1(FE_OFN10_n381), 
	.A0(\MEM[6][7] ));
   AOI22X1M U489 (.Y(n384), 
	.B1(FE_OFN11_n382), 
	.B0(\MEM[5][7] ), 
	.A1(FE_OFN13_n383), 
	.A0(\MEM[4][7] ));
   AOI21X1M U490 (.Y(n386), 
	.B0(n131), 
	.A1(n384), 
	.A0(n385));
   OR4X1M U491 (.Y(R_data[7]), 
	.D(n386), 
	.C(n387), 
	.B(n388), 
	.A(n389));
   INVXLM U577 (.Y(n572), 
	.A(\MEM[12][2] ));
   INVXLM U578 (.Y(n573), 
	.A(n572));
   INVXLM U579 (.Y(n574), 
	.A(\MEM[1][2] ));
   INVXLM U580 (.Y(n575), 
	.A(n574));
   SDFFRQX4M \MEM_reg[1][2]  (.SI(\MEM[1][1] ), 
	.SE(FE_OFN17_SE), 
	.RN(FE_OFN1_RST_SCAN_REF), 
	.Q(\MEM[1][2] ), 
	.D(n281), 
	.CK(CLK_SCAN_REF__L5_N2));
   SDFFRQX4M \MEM_reg[12][2]  (.SI(\MEM[12][1] ), 
	.SE(FE_OFN19_SE), 
	.RN(FE_OFN1_RST_SCAN_REF), 
	.Q(\MEM[12][2] ), 
	.D(n193), 
	.CK(CLK_SCAN_REF__L5_N5));
   NOR2X2M U3 (.Y(n383), 
	.B(N11), 
	.A(N10));
endmodule

module ASYNC_FIFO_DATASIZE8_ADDRSIZE4_DEPTHSIZE16_test_1 (
	W_CLK, 
	W_RST_N, 
	W_INC, 
	W_DATA, 
	R_CLK, 
	R_RST_N, 
	R_INC, 
	W_FULL, 
	R_DATA, 
	R_EMPTY, 
	test_si3, 
	test_si2, 
	test_si1, 
	test_so3, 
	test_so2, 
	test_so1, 
	test_se, 
	FE_OFN0_RST_SCAN_REF, 
	FE_OFN1_RST_SCAN_REF, 
	FE_OFN17_SE, 
	FE_OFN19_SE, 
	FE_OFN20_SE, 
	FE_OFN21_SE, 
	CLK_SCAN_UART_TX__L3_N1, 
	CLK_SCAN_UART_TX__L3_N2, 
	CLK_SCAN_REF__L5_N1, 
	CLK_SCAN_REF__L5_N11, 
	CLK_SCAN_REF__L5_N2, 
	CLK_SCAN_REF__L5_N3, 
	CLK_SCAN_REF__L5_N4, 
	CLK_SCAN_REF__L5_N5, 
	CLK_SCAN_REF__L5_N6, 
	CLK_SCAN_REF__L5_N7);
   input W_CLK;
   input W_RST_N;
   input W_INC;
   input [7:0] W_DATA;
   input R_CLK;
   input R_RST_N;
   input R_INC;
   output W_FULL;
   output [7:0] R_DATA;
   output R_EMPTY;
   input test_si3;
   input test_si2;
   input test_si1;
   output test_so3;
   output test_so2;
   output test_so1;
   input test_se;
   input FE_OFN0_RST_SCAN_REF;
   input FE_OFN1_RST_SCAN_REF;
   input FE_OFN17_SE;
   input FE_OFN19_SE;
   input FE_OFN20_SE;
   input FE_OFN21_SE;
   input CLK_SCAN_UART_TX__L3_N1;
   input CLK_SCAN_UART_TX__L3_N2;
   input CLK_SCAN_REF__L5_N1;
   input CLK_SCAN_REF__L5_N11;
   input CLK_SCAN_REF__L5_N2;
   input CLK_SCAN_REF__L5_N3;
   input CLK_SCAN_REF__L5_N4;
   input CLK_SCAN_REF__L5_N5;
   input CLK_SCAN_REF__L5_N6;
   input CLK_SCAN_REF__L5_N7;

   // Internal wires
   wire n6;
   wire n7;
   wire n8;
   wire [4:0] Wq2_rptr;
   wire [4:0] W_ptr;
   wire [3:0] W_ADDR;
   wire [4:0] Rq2_wptr;
   wire [4:0] R_ptr;
   wire [3:0] R_ADDR;

   assign test_so3 = Rq2_wptr[4] ;

   FIFO_WR_ADDR4_test_1 u_fifo_wr (.W_clk(CLK_SCAN_REF__L5_N1), 
	.W_rst_n(W_RST_N), 
	.W_inc(W_INC), 
	.Wq2_ptr({ Wq2_rptr[4],
		Wq2_rptr[3],
		Wq2_rptr[2],
		Wq2_rptr[1],
		Wq2_rptr[0] }), 
	.W_ptr({ W_ptr[4],
		W_ptr[3],
		W_ptr[2],
		W_ptr[1],
		W_ptr[0] }), 
	.W_addr({ W_ADDR[3],
		W_ADDR[2],
		W_ADDR[1],
		W_ADDR[0] }), 
	.W_full(W_FULL), 
	.test_si(n7), 
	.test_so(n6), 
	.test_se(test_se), 
	.FE_OFN21_SE(FE_OFN21_SE), 
	.CLK_SCAN_REF__L5_N6(CLK_SCAN_REF__L5_N6), 
	.CLK_SCAN_REF__L5_N7(CLK_SCAN_REF__L5_N7));
   FIFO_RD_ADDR4_test_1 u_fifo_rd (.R_clk(R_CLK), 
	.R_rst_n(R_RST_N), 
	.R_inc(R_INC), 
	.Rq2_ptr({ Rq2_wptr[4],
		Rq2_wptr[3],
		Rq2_wptr[2],
		Rq2_wptr[1],
		Rq2_wptr[0] }), 
	.R_ptr({ R_ptr[4],
		R_ptr[3],
		R_ptr[2],
		R_ptr[1],
		R_ptr[0] }), 
	.R_addr({ R_ADDR[3],
		R_ADDR[2],
		R_ADDR[1],
		R_ADDR[0] }), 
	.R_empty(R_EMPTY), 
	.test_si(n8), 
	.test_so(n7), 
	.test_se(test_se), 
	.FE_OFN21_SE(FE_OFN21_SE), 
	.CLK_SCAN_UART_TX__L3_N1(CLK_SCAN_UART_TX__L3_N1));
   BIT_SYNC_NUM_STAGES2_BUS_WIDTH5_test_1 u_sync_w2r (.CLK(R_CLK), 
	.RST(R_RST_N), 
	.ASYNC({ W_ptr[4],
		W_ptr[3],
		W_ptr[2],
		W_ptr[1],
		W_ptr[0] }), 
	.SYNC({ Rq2_wptr[4],
		Rq2_wptr[3],
		Rq2_wptr[2],
		Rq2_wptr[1],
		Rq2_wptr[0] }), 
	.test_si(Wq2_rptr[4]), 
	.test_se(test_se), 
	.CLK_SCAN_UART_TX__L3_N1(CLK_SCAN_UART_TX__L3_N1), 
	.CLK_SCAN_UART_TX__L3_N2(CLK_SCAN_UART_TX__L3_N2));
   BIT_SYNC_NUM_STAGES2_BUS_WIDTH5_test_0 u_sync_r2w (.CLK(CLK_SCAN_REF__L5_N6), 
	.RST(W_RST_N), 
	.ASYNC({ R_ptr[4],
		R_ptr[3],
		R_ptr[2],
		R_ptr[1],
		R_ptr[0] }), 
	.SYNC({ Wq2_rptr[4],
		Wq2_rptr[3],
		Wq2_rptr[2],
		Wq2_rptr[1],
		Wq2_rptr[0] }), 
	.test_si(n6), 
	.test_se(test_se));
   FIFO_MEM_CNTRL_ADDR4_DATA8_DEPTH16_test_1 u_fifo_mem (.W_clk(W_CLK), 
	.W_rst(W_RST_N), 
	.W_inc(W_INC), 
	.W_full(W_FULL), 
	.W_addr({ W_ADDR[3],
		W_ADDR[2],
		W_ADDR[1],
		W_ADDR[0] }), 
	.R_addr({ R_ADDR[3],
		R_ADDR[2],
		R_ADDR[1],
		R_ADDR[0] }), 
	.W_data({ W_DATA[7],
		W_DATA[6],
		W_DATA[5],
		W_DATA[4],
		W_DATA[3],
		W_DATA[2],
		W_DATA[1],
		W_DATA[0] }), 
	.R_data({ R_DATA[7],
		R_DATA[6],
		R_DATA[5],
		R_DATA[4],
		R_DATA[3],
		R_DATA[2],
		R_DATA[1],
		R_DATA[0] }), 
	.test_si3(test_si3), 
	.test_si2(test_si2), 
	.test_si1(test_si1), 
	.test_so3(n8), 
	.test_so2(test_so2), 
	.test_so1(test_so1), 
	.test_se(test_se), 
	.FE_OFN0_RST_SCAN_REF(FE_OFN0_RST_SCAN_REF), 
	.FE_OFN1_RST_SCAN_REF(FE_OFN1_RST_SCAN_REF), 
	.FE_OFN17_SE(FE_OFN17_SE), 
	.FE_OFN19_SE(FE_OFN19_SE), 
	.FE_OFN20_SE(FE_OFN20_SE), 
	.FE_OFN21_SE(FE_OFN21_SE), 
	.CLK_SCAN_REF__L5_N1(CLK_SCAN_REF__L5_N1), 
	.CLK_SCAN_REF__L5_N11(CLK_SCAN_REF__L5_N11), 
	.CLK_SCAN_REF__L5_N2(CLK_SCAN_REF__L5_N2), 
	.CLK_SCAN_REF__L5_N3(CLK_SCAN_REF__L5_N3), 
	.CLK_SCAN_REF__L5_N4(CLK_SCAN_REF__L5_N4), 
	.CLK_SCAN_REF__L5_N5(CLK_SCAN_REF__L5_N5), 
	.CLK_SCAN_REF__L5_N7(CLK_SCAN_REF__L5_N7));
endmodule

module Serializer_WIDTH8_test_1 (
	i_Clk_s, 
	i_RST_s, 
	i_Data_Valid_s, 
	i_P_Data_s, 
	i_Busy_s, 
	i_Ser_En_s, 
	o_Ser_DATA_s, 
	o_Ser_Done_s, 
	test_si, 
	test_so, 
	test_se, 
	FE_OFN5_RST_SCAN_UART, 
	FE_OFN17_SE, 
	FE_OFN20_SE, 
	FE_OFN21_SE, 
	CLK_SCAN_UART_TX__L3_N2, 
	CLK_SCAN_UART_TX__L3_N3);
   input i_Clk_s;
   input i_RST_s;
   input i_Data_Valid_s;
   input [7:0] i_P_Data_s;
   input i_Busy_s;
   input i_Ser_En_s;
   output o_Ser_DATA_s;
   output o_Ser_Done_s;
   input test_si;
   output test_so;
   input test_se;
   input FE_OFN5_RST_SCAN_UART;
   input FE_OFN17_SE;
   input FE_OFN20_SE;
   input FE_OFN21_SE;
   input CLK_SCAN_UART_TX__L3_N2;
   input CLK_SCAN_UART_TX__L3_N3;

   // Internal wires
   wire N24;
   wire N25;
   wire N26;
   wire N27;
   wire n16;
   wire n17;
   wire n18;
   wire n19;
   wire n20;
   wire n21;
   wire n22;
   wire n23;
   wire n24;
   wire n25;
   wire n26;
   wire n27;
   wire n28;
   wire n29;
   wire n30;
   wire n31;
   wire n32;
   wire n33;
   wire n34;
   wire n35;
   wire n36;
   wire n37;
   wire n39;
   wire n40;
   wire [7:1] reg_data;
   wire [3:0] count_ser;

   assign test_so = reg_data[7] ;

   SDFFRQX2M \reg_data_reg[6]  (.SI(reg_data[5]), 
	.SE(FE_OFN21_SE), 
	.RN(i_RST_s), 
	.Q(reg_data[6]), 
	.D(n32), 
	.CK(i_Clk_s));
   SDFFRQX2M \reg_data_reg[5]  (.SI(reg_data[4]), 
	.SE(FE_OFN20_SE), 
	.RN(i_RST_s), 
	.Q(reg_data[5]), 
	.D(n33), 
	.CK(CLK_SCAN_UART_TX__L3_N3));
   SDFFRQX2M \reg_data_reg[4]  (.SI(reg_data[3]), 
	.SE(FE_OFN20_SE), 
	.RN(i_RST_s), 
	.Q(reg_data[4]), 
	.D(n34), 
	.CK(CLK_SCAN_UART_TX__L3_N3));
   SDFFRQX2M \reg_data_reg[3]  (.SI(reg_data[2]), 
	.SE(FE_OFN20_SE), 
	.RN(i_RST_s), 
	.Q(reg_data[3]), 
	.D(n35), 
	.CK(CLK_SCAN_UART_TX__L3_N3));
   SDFFRQX2M \reg_data_reg[2]  (.SI(reg_data[1]), 
	.SE(FE_OFN20_SE), 
	.RN(i_RST_s), 
	.Q(reg_data[2]), 
	.D(n36), 
	.CK(CLK_SCAN_UART_TX__L3_N3));
   SDFFRQX2M \reg_data_reg[1]  (.SI(o_Ser_DATA_s), 
	.SE(FE_OFN20_SE), 
	.RN(i_RST_s), 
	.Q(reg_data[1]), 
	.D(n37), 
	.CK(i_Clk_s));
   SDFFRQX2M \reg_data_reg[0]  (.SI(count_ser[3]), 
	.SE(FE_OFN17_SE), 
	.RN(i_RST_s), 
	.Q(o_Ser_DATA_s), 
	.D(n30), 
	.CK(CLK_SCAN_UART_TX__L3_N2));
   SDFFRQX2M \reg_data_reg[7]  (.SI(reg_data[6]), 
	.SE(FE_OFN20_SE), 
	.RN(i_RST_s), 
	.Q(reg_data[7]), 
	.D(n31), 
	.CK(i_Clk_s));
   SDFFRQX2M \count_ser_reg[3]  (.SI(count_ser[2]), 
	.SE(test_se), 
	.RN(i_RST_s), 
	.Q(count_ser[3]), 
	.D(N27), 
	.CK(CLK_SCAN_UART_TX__L3_N2));
   SDFFRQX2M \count_ser_reg[1]  (.SI(count_ser[0]), 
	.SE(FE_OFN17_SE), 
	.RN(FE_OFN5_RST_SCAN_UART), 
	.Q(count_ser[1]), 
	.D(N25), 
	.CK(CLK_SCAN_UART_TX__L3_N2));
   SDFFRQX2M \count_ser_reg[2]  (.SI(count_ser[1]), 
	.SE(FE_OFN17_SE), 
	.RN(i_RST_s), 
	.Q(count_ser[2]), 
	.D(N26), 
	.CK(CLK_SCAN_UART_TX__L3_N2));
   SDFFRQX2M \count_ser_reg[0]  (.SI(test_si), 
	.SE(FE_OFN17_SE), 
	.RN(i_RST_s), 
	.Q(count_ser[0]), 
	.D(N24), 
	.CK(CLK_SCAN_UART_TX__L3_N3));
   NOR2X2M U19 (.Y(n18), 
	.B(n19), 
	.A(i_Ser_En_s));
   NOR2XLM U20 (.Y(n16), 
	.B(n18), 
	.A(n19));
   OAI2BB1X2M U21 (.Y(n30), 
	.B0(n17), 
	.A1N(n16), 
	.A0N(o_Ser_DATA_s));
   AOI22X1M U22 (.Y(n17), 
	.B1(n19), 
	.B0(i_P_Data_s[0]), 
	.A1(n18), 
	.A0(reg_data[1]));
   OAI2BB1X2M U23 (.Y(n37), 
	.B0(n25), 
	.A1N(n16), 
	.A0N(reg_data[1]));
   AOI22X1M U24 (.Y(n25), 
	.B1(n19), 
	.B0(i_P_Data_s[1]), 
	.A1(n18), 
	.A0(reg_data[2]));
   OAI2BB1X2M U25 (.Y(n36), 
	.B0(n24), 
	.A1N(reg_data[2]), 
	.A0N(n16));
   AOI22X1M U26 (.Y(n24), 
	.B1(n19), 
	.B0(i_P_Data_s[2]), 
	.A1(n18), 
	.A0(reg_data[3]));
   OAI2BB1X2M U27 (.Y(n35), 
	.B0(n23), 
	.A1N(reg_data[3]), 
	.A0N(n16));
   AOI22X1M U28 (.Y(n23), 
	.B1(n19), 
	.B0(i_P_Data_s[3]), 
	.A1(n18), 
	.A0(reg_data[4]));
   OAI2BB1X2M U29 (.Y(n34), 
	.B0(n22), 
	.A1N(reg_data[4]), 
	.A0N(n16));
   AOI22X1M U30 (.Y(n22), 
	.B1(n19), 
	.B0(i_P_Data_s[4]), 
	.A1(n18), 
	.A0(reg_data[5]));
   OAI2BB1X2M U31 (.Y(n33), 
	.B0(n21), 
	.A1N(reg_data[5]), 
	.A0N(n16));
   AOI22X1M U32 (.Y(n21), 
	.B1(n19), 
	.B0(i_P_Data_s[5]), 
	.A1(n18), 
	.A0(reg_data[6]));
   OAI2BB1X2M U33 (.Y(n32), 
	.B0(n20), 
	.A1N(reg_data[6]), 
	.A0N(n16));
   AOI22X1M U34 (.Y(n20), 
	.B1(n19), 
	.B0(i_P_Data_s[6]), 
	.A1(n18), 
	.A0(reg_data[7]));
   AO22X1M U35 (.Y(n31), 
	.B1(n19), 
	.B0(i_P_Data_s[7]), 
	.A1(reg_data[7]), 
	.A0(n16));
   NOR3X2M U36 (.Y(o_Ser_Done_s), 
	.C(n40), 
	.B(count_ser[3]), 
	.A(n27));
   NOR2X2M U37 (.Y(N24), 
	.B(count_ser[0]), 
	.A(i_Ser_En_s));
   OAI2BB2X1M U38 (.Y(N26), 
	.B1(i_Ser_En_s), 
	.B0(n28), 
	.A1N(N24), 
	.A0N(count_ser[2]));
   AOI32X1M U39 (.Y(n28), 
	.B1(n39), 
	.B0(count_ser[2]), 
	.A2(count_ser[1]), 
	.A1(n40), 
	.A0(count_ser[0]));
   AOI2B1X1M U40 (.Y(N27), 
	.B0(i_Ser_En_s), 
	.A1N(o_Ser_Done_s), 
	.A0(n26));
   OAI21X2M U41 (.Y(n26), 
	.B0(count_ser[3]), 
	.A1(n40), 
	.A0(n27));
   NOR2BX2M U42 (.Y(n19), 
	.B(i_Busy_s), 
	.AN(i_Data_Valid_s));
   INVX2M U43 (.Y(n40), 
	.A(count_ser[2]));
   NAND2X2M U44 (.Y(n27), 
	.B(count_ser[0]), 
	.A(count_ser[1]));
   NOR2X2M U45 (.Y(N25), 
	.B(i_Ser_En_s), 
	.A(n29));
   CLKXOR2X2M U46 (.Y(n29), 
	.B(count_ser[0]), 
	.A(n39));
   INVX2M U47 (.Y(n39), 
	.A(count_ser[1]));
endmodule

module FSM_test_1 (
	i_Clk_fsm, 
	i_RST_fsm, 
	i_PAR_EN_fsm, 
	i_Data_Valid_fsm, 
	i_Ser_Done_fsm, 
	o_Ser_EN_fsm, 
	o_Busy_fsm, 
	o_Mux_Sel_fsm, 
	test_si, 
	test_se, 
	FE_OFN5_RST_SCAN_UART, 
	FE_OFN20_SE);
   input i_Clk_fsm;
   input i_RST_fsm;
   input i_PAR_EN_fsm;
   input i_Data_Valid_fsm;
   input i_Ser_Done_fsm;
   output o_Ser_EN_fsm;
   output o_Busy_fsm;
   output [1:0] o_Mux_Sel_fsm;
   input test_si;
   input test_se;
   input FE_OFN5_RST_SCAN_UART;
   input FE_OFN20_SE;

   // Internal wires
   wire busy;
   wire n9;
   wire n10;
   wire n11;
   wire n12;
   wire n7;
   wire n13;
   wire [2:0] Current_state;
   wire [2:0] Next_state;

   SDFFRQX2M o_Busy_fsm_reg (.SI(Current_state[2]), 
	.SE(test_se), 
	.RN(FE_OFN5_RST_SCAN_UART), 
	.Q(o_Busy_fsm), 
	.D(busy), 
	.CK(i_Clk_fsm));
   SDFFRQX2M \Current_state_reg[0]  (.SI(test_si), 
	.SE(FE_OFN20_SE), 
	.RN(i_RST_fsm), 
	.Q(Current_state[0]), 
	.D(Next_state[0]), 
	.CK(i_Clk_fsm));
   SDFFRQX2M \Current_state_reg[1]  (.SI(Current_state[0]), 
	.SE(test_se), 
	.RN(i_RST_fsm), 
	.Q(Current_state[1]), 
	.D(Next_state[1]), 
	.CK(i_Clk_fsm));
   SDFFRQX2M \Current_state_reg[2]  (.SI(Current_state[1]), 
	.SE(test_se), 
	.RN(i_RST_fsm), 
	.Q(Current_state[2]), 
	.D(Next_state[2]), 
	.CK(i_Clk_fsm));
   NOR2X2M U7 (.Y(o_Mux_Sel_fsm[1]), 
	.B(Current_state[2]), 
	.A(n13));
   NAND2X2M U10 (.Y(o_Ser_EN_fsm), 
	.B(n10), 
	.A(o_Mux_Sel_fsm[1]));
   INVX2M U11 (.Y(o_Mux_Sel_fsm[0]), 
	.A(n12));
   XNOR2X2M U13 (.Y(n10), 
	.B(Current_state[1]), 
	.A(Current_state[0]));
   INVX2M U14 (.Y(n13), 
	.A(Current_state[1]));
   NOR2X2M U15 (.Y(n12), 
	.B(Current_state[2]), 
	.A(n7));
   INVX2M U16 (.Y(n7), 
	.A(Current_state[0]));
   NOR2BX2M U17 (.Y(Next_state[2]), 
	.B(n9), 
	.AN(o_Mux_Sel_fsm[1]));
   AOI2B1X1M U18 (.Y(n9), 
	.B0(n7), 
	.A1N(i_PAR_EN_fsm), 
	.A0(i_Ser_Done_fsm));
   OAI22X1M U19 (.Y(Next_state[0]), 
	.B1(n11), 
	.B0(Current_state[1]), 
	.A1(o_Mux_Sel_fsm[0]), 
	.A0(i_Ser_Done_fsm));
   AOI2B1X1M U20 (.Y(n11), 
	.B0(n12), 
	.A1N(Current_state[2]), 
	.A0(i_Data_Valid_fsm));
   OAI21X2M U21 (.Y(Next_state[1]), 
	.B0(o_Ser_EN_fsm), 
	.A1(n10), 
	.A0(Current_state[2]));
   OAI21X2M U22 (.Y(busy), 
	.B0(o_Mux_Sel_fsm[0]), 
	.A1(n13), 
	.A0(Current_state[0]));
endmodule

module Parity_Calc_WIDTH8_test_1 (
	i_Clk_p, 
	i_RST_p, 
	i_Data_Valid_p, 
	i_DATA, 
	i_PAR_TYP_p, 
	i_PAR_En_p, 
	i_Busy_p, 
	o_Par_bit, 
	test_si, 
	test_so, 
	test_se, 
	FE_OFN20_SE);
   input i_Clk_p;
   input i_RST_p;
   input i_Data_Valid_p;
   input [7:0] i_DATA;
   input i_PAR_TYP_p;
   input i_PAR_En_p;
   input i_Busy_p;
   output o_Par_bit;
   input test_si;
   output test_so;
   input test_se;
   input FE_OFN20_SE;

   // Internal wires
   wire n1;
   wire n2;
   wire n3;
   wire n4;
   wire n5;
   wire n6;
   wire n8;
   wire n10;
   wire n12;
   wire n14;
   wire n16;
   wire n18;
   wire n20;
   wire n22;
   wire [7:0] data;

   assign test_so = data[7] ;

   SDFFRQX2M \data_reg[5]  (.SI(data[4]), 
	.SE(FE_OFN20_SE), 
	.RN(i_RST_p), 
	.Q(data[5]), 
	.D(n18), 
	.CK(i_Clk_p));
   SDFFRQX2M \data_reg[1]  (.SI(data[0]), 
	.SE(FE_OFN20_SE), 
	.RN(i_RST_p), 
	.Q(data[1]), 
	.D(n10), 
	.CK(i_Clk_p));
   SDFFRQX2M \data_reg[4]  (.SI(data[3]), 
	.SE(FE_OFN20_SE), 
	.RN(i_RST_p), 
	.Q(data[4]), 
	.D(n16), 
	.CK(i_Clk_p));
   SDFFRQX2M \data_reg[0]  (.SI(test_si), 
	.SE(test_se), 
	.RN(i_RST_p), 
	.Q(data[0]), 
	.D(n8), 
	.CK(i_Clk_p));
   SDFFRQX2M \data_reg[2]  (.SI(data[1]), 
	.SE(FE_OFN20_SE), 
	.RN(i_RST_p), 
	.Q(data[2]), 
	.D(n12), 
	.CK(i_Clk_p));
   SDFFRQX2M \data_reg[7]  (.SI(data[6]), 
	.SE(test_se), 
	.RN(i_RST_p), 
	.Q(data[7]), 
	.D(n22), 
	.CK(i_Clk_p));
   SDFFRQX2M \data_reg[3]  (.SI(data[2]), 
	.SE(FE_OFN20_SE), 
	.RN(i_RST_p), 
	.Q(data[3]), 
	.D(n14), 
	.CK(i_Clk_p));
   SDFFRQX2M \data_reg[6]  (.SI(data[5]), 
	.SE(FE_OFN20_SE), 
	.RN(i_RST_p), 
	.Q(data[6]), 
	.D(n20), 
	.CK(i_Clk_p));
   AO2B2X2M U4 (.Y(n8), 
	.B1(n6), 
	.B0(i_DATA[0]), 
	.A1N(n6), 
	.A0(data[0]));
   AO2B2X2M U5 (.Y(n10), 
	.B1(n6), 
	.B0(i_DATA[1]), 
	.A1N(n6), 
	.A0(data[1]));
   AO2B2X2M U6 (.Y(n12), 
	.B1(n6), 
	.B0(i_DATA[2]), 
	.A1N(n6), 
	.A0(data[2]));
   AO2B2X2M U7 (.Y(n14), 
	.B1(n6), 
	.B0(i_DATA[3]), 
	.A1N(n6), 
	.A0(data[3]));
   AO2B2X2M U8 (.Y(n16), 
	.B1(n6), 
	.B0(i_DATA[4]), 
	.A1N(n6), 
	.A0(data[4]));
   AO2B2X2M U9 (.Y(n18), 
	.B1(n6), 
	.B0(i_DATA[5]), 
	.A1N(n6), 
	.A0(data[5]));
   AO2B2X2M U10 (.Y(n20), 
	.B1(n6), 
	.B0(i_DATA[6]), 
	.A1N(n6), 
	.A0(data[6]));
   AO2B2X2M U11 (.Y(n22), 
	.B1(n6), 
	.B0(i_DATA[7]), 
	.A1N(n6), 
	.A0(data[7]));
   CLKXOR2X2M U12 (.Y(n5), 
	.B(data[6]), 
	.A(data[7]));
   XNOR2X2M U13 (.Y(n4), 
	.B(data[3]), 
	.A(data[2]));
   NOR2BX2M U14 (.Y(o_Par_bit), 
	.B(n1), 
	.AN(i_PAR_En_p));
   XOR3XLM U15 (.Y(n1), 
	.C(n3), 
	.B(i_PAR_TYP_p), 
	.A(n2));
   XOR3XLM U16 (.Y(n3), 
	.C(n4), 
	.B(data[0]), 
	.A(data[1]));
   XOR3XLM U25 (.Y(n2), 
	.C(n5), 
	.B(data[4]), 
	.A(data[5]));
   NOR2BX2M U27 (.Y(n6), 
	.B(i_Busy_p), 
	.AN(i_Data_Valid_p));
endmodule

module Mux_test_1 (
	i_Clk_mux, 
	i_RST_mux, 
	i_mux_sel, 
	i_IN_0_mux, 
	i_IN_1_mux, 
	i_IN_2_mux, 
	i_IN_3_mux, 
	o_OUT_mux, 
	test_si, 
	test_se);
   input i_Clk_mux;
   input i_RST_mux;
   input [1:0] i_mux_sel;
   input i_IN_0_mux;
   input i_IN_1_mux;
   input i_IN_2_mux;
   input i_IN_3_mux;
   output o_OUT_mux;
   input test_si;
   input test_se;

   // Internal wires
   wire HTIE_LTIEHI_NET;
   wire LTIE_LTIELO_NET;
   wire OUT;
   wire n3;
   wire n4;
   wire n2;

   TIEHIM HTIE_LTIEHI (.Y(HTIE_LTIEHI_NET));
   TIELOM LTIE_LTIELO (.Y(LTIE_LTIELO_NET));
   SDFFRQX4M o_OUT_mux_reg (.SI(test_si), 
	.SE(test_se), 
	.RN(i_RST_mux), 
	.Q(o_OUT_mux), 
	.D(OUT), 
	.CK(i_Clk_mux));
   OAI2B2X1M U4 (.Y(OUT), 
	.B1(n4), 
	.B0(i_mux_sel[1]), 
	.A1N(i_mux_sel[1]), 
	.A0(n3));
   AOI22X1M U5 (.Y(n4), 
	.B1(HTIE_LTIEHI_NET), 
	.B0(i_mux_sel[0]), 
	.A1(n2), 
	.A0(LTIE_LTIELO_NET));
   AOI22X1M U6 (.Y(n3), 
	.B1(i_mux_sel[0]), 
	.B0(i_IN_3_mux), 
	.A1(n2), 
	.A0(i_IN_2_mux));
   INVX2M U7 (.Y(n2), 
	.A(i_mux_sel[0]));
endmodule

module UART_TX_8_0_1_test_1 (
	i_CLK_TX, 
	i_RST_TX, 
	i_DATA_Valid_TX, 
	i_DATA_TX, 
	i_PAR_EN_TX, 
	i_PAR_TYP_TX, 
	o_OUT_TX, 
	o_BUSY_TX, 
	test_si, 
	test_se, 
	FE_OFN5_RST_SCAN_UART, 
	FE_OFN17_SE, 
	FE_OFN20_SE, 
	FE_OFN21_SE, 
	CLK_SCAN_UART_TX__L3_N2, 
	CLK_SCAN_UART_TX__L3_N3);
   input i_CLK_TX;
   input i_RST_TX;
   input i_DATA_Valid_TX;
   input [7:0] i_DATA_TX;
   input i_PAR_EN_TX;
   input i_PAR_TYP_TX;
   output o_OUT_TX;
   output o_BUSY_TX;
   input test_si;
   input test_se;
   input FE_OFN5_RST_SCAN_UART;
   input FE_OFN17_SE;
   input FE_OFN20_SE;
   input FE_OFN21_SE;
   input CLK_SCAN_UART_TX__L3_N2;
   input CLK_SCAN_UART_TX__L3_N3;

   // Internal wires
   wire SER_EN_TX;
   wire SER_DATA_TX;
   wire SER_DONE_TX;
   wire PARITY_BIT_TX;
   wire n4;
   wire n5;
   wire [1:0] MUS_SEL_TX;

   Serializer_WIDTH8_test_1 SER (.i_Clk_s(i_CLK_TX), 
	.i_RST_s(i_RST_TX), 
	.i_Data_Valid_s(i_DATA_Valid_TX), 
	.i_P_Data_s({ i_DATA_TX[7],
		i_DATA_TX[6],
		i_DATA_TX[5],
		i_DATA_TX[4],
		i_DATA_TX[3],
		i_DATA_TX[2],
		i_DATA_TX[1],
		i_DATA_TX[0] }), 
	.i_Busy_s(o_BUSY_TX), 
	.i_Ser_En_s(SER_EN_TX), 
	.o_Ser_DATA_s(SER_DATA_TX), 
	.o_Ser_Done_s(SER_DONE_TX), 
	.test_si(n5), 
	.test_so(n4), 
	.test_se(test_se), 
	.FE_OFN5_RST_SCAN_UART(FE_OFN5_RST_SCAN_UART), 
	.FE_OFN17_SE(FE_OFN17_SE), 
	.FE_OFN20_SE(FE_OFN20_SE), 
	.FE_OFN21_SE(FE_OFN21_SE), 
	.CLK_SCAN_UART_TX__L3_N2(CLK_SCAN_UART_TX__L3_N2), 
	.CLK_SCAN_UART_TX__L3_N3(CLK_SCAN_UART_TX__L3_N3));
   FSM_test_1 fsm_tx (.i_Clk_fsm(CLK_SCAN_UART_TX__L3_N2), 
	.i_RST_fsm(i_RST_TX), 
	.i_PAR_EN_fsm(i_PAR_EN_TX), 
	.i_Data_Valid_fsm(i_DATA_Valid_TX), 
	.i_Ser_Done_fsm(SER_DONE_TX), 
	.o_Ser_EN_fsm(SER_EN_TX), 
	.o_Busy_fsm(o_BUSY_TX), 
	.o_Mux_Sel_fsm({ MUS_SEL_TX[1],
		MUS_SEL_TX[0] }), 
	.test_si(n4), 
	.test_se(test_se), 
	.FE_OFN5_RST_SCAN_UART(FE_OFN5_RST_SCAN_UART), 
	.FE_OFN20_SE(FE_OFN20_SE));
   Parity_Calc_WIDTH8_test_1 PER_TX (.i_Clk_p(CLK_SCAN_UART_TX__L3_N3), 
	.i_RST_p(i_RST_TX), 
	.i_Data_Valid_p(i_DATA_Valid_TX), 
	.i_DATA({ i_DATA_TX[7],
		i_DATA_TX[6],
		i_DATA_TX[5],
		i_DATA_TX[4],
		i_DATA_TX[3],
		i_DATA_TX[2],
		i_DATA_TX[1],
		i_DATA_TX[0] }), 
	.i_PAR_TYP_p(i_PAR_TYP_TX), 
	.i_PAR_En_p(i_PAR_EN_TX), 
	.i_Busy_p(o_BUSY_TX), 
	.o_Par_bit(PARITY_BIT_TX), 
	.test_si(test_si), 
	.test_so(n5), 
	.test_se(FE_OFN17_SE), 
	.FE_OFN20_SE(FE_OFN20_SE));
   Mux_test_1 mux_tx (.i_Clk_mux(CLK_SCAN_UART_TX__L3_N2), 
	.i_RST_mux(FE_OFN5_RST_SCAN_UART), 
	.i_mux_sel({ MUS_SEL_TX[1],
		MUS_SEL_TX[0] }), 
	.i_IN_0_mux(1'b0), 
	.i_IN_1_mux(1'b1), 
	.i_IN_2_mux(SER_DATA_TX), 
	.i_IN_3_mux(PARITY_BIT_TX), 
	.o_OUT_mux(o_OUT_TX), 
	.test_si(o_BUSY_TX), 
	.test_se(test_se));
endmodule

module edge_bit_cont_PRESCALE6_DATA_BITS8_test_1 (
	clk_cont, 
	rst_cont, 
	Enable_sampling_cont, 
	prescale_cont, 
	parity_en_cont, 
	bit_cont, 
	edge_cont, 
	test_si, 
	test_so, 
	test_se, 
	FE_OFN5_RST_SCAN_UART, 
	FE_OFN18_SE);
   input clk_cont;
   input rst_cont;
   input Enable_sampling_cont;
   input [5:0] prescale_cont;
   input parity_en_cont;
   output [3:0] bit_cont;
   output [5:0] edge_cont;
   input test_si;
   output test_so;
   input test_se;
   input FE_OFN5_RST_SCAN_UART;
   input FE_OFN18_SE;

   // Internal wires
   wire n74;
   wire n75;
   wire n76;
   wire n77;
   wire n6;
   wire n78;
   wire n79;
   wire n80;
   wire N12;
   wire N13;
   wire N14;
   wire N15;
   wire N16;
   wire N17;
   wire N18;
   wire N21;
   wire N22;
   wire N23;
   wire N24;
   wire N32;
   wire N33;
   wire N34;
   wire N35;
   wire N36;
   wire N37;
   wire n23;
   wire n24;
   wire n25;
   wire n26;
   wire n27;
   wire n28;
   wire n29;
   wire n30;
   wire n31;
   wire n32;
   wire n33;
   wire n34;
   wire n35;
   wire n36;
   wire n37;
   wire n38;
   wire \add_26/carry[5] ;
   wire \add_26/carry[4] ;
   wire \add_26/carry[3] ;
   wire \add_26/carry[2] ;
   wire n1;
   wire n3;
   wire n5;
   wire n17;
   wire n19;
   wire n21;
   wire n39;
   wire n52;
   wire n55;
   wire n56;
   wire n57;
   wire n58;
   wire n59;
   wire n60;
   wire n61;
   wire n62;
   wire n63;
   wire n64;
   wire n65;
   wire n66;
   wire n67;
   wire n68;
   wire n69;
   wire n70;
   wire n71;
   wire n72;
   wire n73;
   wire n2;

   assign test_so = n76 ;

   SDFFRQX2M \edge_cont_reg[0]  (.SI(n74), 
	.SE(FE_OFN18_SE), 
	.RN(rst_cont), 
	.Q(n80), 
	.D(N32), 
	.CK(clk_cont));
   INVX2M U7 (.Y(bit_cont[3]), 
	.A(n1));
   INVX2M U8 (.Y(n1), 
	.A(n74));
   XNOR2X2M U15 (.Y(n29), 
	.B(bit_cont[1]), 
	.A(bit_cont[0]));
   NAND2BX2M U17 (.Y(n55), 
	.B(n59), 
	.AN(prescale_cont[1]));
   INVXLM U18 (.Y(n3), 
	.A(n75));
   CLKINVX2M U19 (.Y(bit_cont[1]), 
	.A(n3));
   CLKINVX1M U20 (.Y(n72), 
	.A(bit_cont[0]));
   NAND3X1M U21 (.Y(n24), 
	.C(bit_cont[2]), 
	.B(bit_cont[0]), 
	.A(bit_cont[1]));
   INVXLM U22 (.Y(n5), 
	.A(n76));
   CLKINVX2M U23 (.Y(edge_cont[5]), 
	.A(n5));
   INVXLM U24 (.Y(n17), 
	.A(n78));
   CLKINVX2M U25 (.Y(edge_cont[2]), 
	.A(n17));
   INVXLM U26 (.Y(n19), 
	.A(n77));
   CLKINVX2M U27 (.Y(edge_cont[4]), 
	.A(n19));
   INVXLM U28 (.Y(n21), 
	.A(n79));
   CLKINVX2M U29 (.Y(edge_cont[1]), 
	.A(n21));
   INVXLM U30 (.Y(n39), 
	.A(n80));
   CLKINVX2M U31 (.Y(edge_cont[0]), 
	.A(n39));
   OR2X2M U42 (.Y(n57), 
	.B(prescale_cont[3]), 
	.A(n56));
   OR2X2M U43 (.Y(n56), 
	.B(prescale_cont[2]), 
	.A(n55));
   NOR2X2M U44 (.Y(N17), 
	.B(prescale_cont[5]), 
	.A(n58));
   NOR4X1M U45 (.Y(N18), 
	.D(n65), 
	.C(n66), 
	.B(n67), 
	.A(n68));
   NOR2BX2M U47 (.Y(n60), 
	.B(edge_cont[0]), 
	.AN(n59));
   NOR2BX2M U48 (.Y(n61), 
	.B(n59), 
	.AN(edge_cont[0]));
   CLKINVX1M U49 (.Y(n71), 
	.A(N18));
   OAI2BB1XLM U50 (.Y(N15), 
	.B0(n58), 
	.A1N(prescale_cont[4]), 
	.A0N(n57));
   OAI2BB1XLM U51 (.Y(N14), 
	.B0(n57), 
	.A1N(prescale_cont[3]), 
	.A0N(n56));
   OAI2BB1XLM U52 (.Y(N13), 
	.B0(n56), 
	.A1N(prescale_cont[2]), 
	.A0N(n55));
   NOR2X2M U53 (.Y(n26), 
	.B(n30), 
	.A(n70));
   NOR2X2M U54 (.Y(n30), 
	.B(n70), 
	.A(n71));
   NAND2X2M U55 (.Y(n23), 
	.B(n31), 
	.A(n30));
   INVX2M U56 (.Y(n69), 
	.A(n26));
   INVX2M U57 (.Y(n70), 
	.A(Enable_sampling_cont));
   CLKNAND2X2M U60 (.Y(n34), 
	.B(n71), 
	.A(Enable_sampling_cont));
   NOR2BX2M U61 (.Y(N33), 
	.B(n34), 
	.AN(N21));
   NOR2BX2M U62 (.Y(N34), 
	.B(n34), 
	.AN(N22));
   NOR2BX2M U63 (.Y(N35), 
	.B(n34), 
	.AN(N23));
   NOR2BX2M U64 (.Y(N36), 
	.B(n34), 
	.AN(N24));
   INVX2M U65 (.Y(n59), 
	.A(prescale_cont[0]));
   OAI22X1M U66 (.Y(n38), 
	.B1(n23), 
	.B0(bit_cont[0]), 
	.A1(n69), 
	.A0(n72));
   OAI22X1M U67 (.Y(n37), 
	.B1(n23), 
	.B0(n29), 
	.A1(n69), 
	.A0(n73));
   OAI2B2X1M U68 (.Y(n31), 
	.B1(n33), 
	.B0(parity_en_cont), 
	.A1N(parity_en_cont), 
	.A0(n32));
   NOR4X1M U69 (.Y(n33), 
	.D(n1), 
	.C(n72), 
	.B(bit_cont[1]), 
	.A(bit_cont[2]));
   OAI32X1M U70 (.Y(n35), 
	.B1(n1), 
	.B0(n25), 
	.A2(n24), 
	.A1(bit_cont[3]), 
	.A0(n23));
   AOI2B1X1M U71 (.Y(n25), 
	.B0(n26), 
	.A1N(n23), 
	.A0(n24));
   NOR2X2M U72 (.Y(N37), 
	.B(n34), 
	.A(n52));
   XNOR2X2M U73 (.Y(n52), 
	.B(edge_cont[5]), 
	.A(\add_26/carry[5] ));
   NOR2X2M U74 (.Y(N32), 
	.B(n34), 
	.A(edge_cont[0]));
   NOR2X2M U75 (.Y(n36), 
	.B(n70), 
	.A(n27));
   CLKXOR2X2M U76 (.Y(n27), 
	.B(bit_cont[2]), 
	.A(n28));
   NAND3XLM U77 (.Y(n28), 
	.C(bit_cont[1]), 
	.B(N18), 
	.A(bit_cont[0]));
   INVX2M U78 (.Y(n73), 
	.A(bit_cont[1]));
   ADDHX1M U79 (.S(N21), 
	.CO(\add_26/carry[2] ), 
	.B(edge_cont[0]), 
	.A(edge_cont[1]));
   ADDHX1M U80 (.S(N23), 
	.CO(\add_26/carry[4] ), 
	.B(\add_26/carry[3] ), 
	.A(edge_cont[3]));
   ADDHX1M U81 (.S(N22), 
	.CO(\add_26/carry[3] ), 
	.B(\add_26/carry[2] ), 
	.A(edge_cont[2]));
   ADDHX1M U82 (.S(N24), 
	.CO(\add_26/carry[5] ), 
	.B(\add_26/carry[4] ), 
	.A(edge_cont[4]));
   OAI2BB1X1M U83 (.Y(N12), 
	.B0(n55), 
	.A1N(prescale_cont[1]), 
	.A0N(prescale_cont[0]));
   OR2X1M U84 (.Y(n58), 
	.B(prescale_cont[4]), 
	.A(n57));
   AO21XLM U85 (.Y(N16), 
	.B0(N17), 
	.A1(prescale_cont[5]), 
	.A0(n58));
   OAI2B2X1M U86 (.Y(n64), 
	.B1(n60), 
	.B0(N12), 
	.A1N(edge_cont[1]), 
	.A0(n60));
   XNOR2X1M U87 (.Y(n63), 
	.B(edge_cont[5]), 
	.A(N16));
   OAI2B2X1M U88 (.Y(n62), 
	.B1(n61), 
	.B0(edge_cont[1]), 
	.A1N(N12), 
	.A0(n61));
   NAND4BX1M U89 (.Y(n68), 
	.D(n62), 
	.C(n63), 
	.B(n64), 
	.AN(N17));
   CLKXOR2X2M U90 (.Y(n67), 
	.B(edge_cont[4]), 
	.A(N15));
   CLKXOR2X2M U91 (.Y(n66), 
	.B(edge_cont[2]), 
	.A(N13));
   CLKXOR2X2M U92 (.Y(n65), 
	.B(edge_cont[3]), 
	.A(N14));
   SDFFRQX2M \bit_cont_reg[3]  (.SI(bit_cont[2]), 
	.SE(FE_OFN18_SE), 
	.RN(rst_cont), 
	.Q(n74), 
	.D(n35), 
	.CK(clk_cont));
   SDFFRQX2M \edge_cont_reg[5]  (.SI(n77), 
	.SE(FE_OFN18_SE), 
	.RN(FE_OFN5_RST_SCAN_UART), 
	.Q(n76), 
	.D(N37), 
	.CK(clk_cont));
   SDFFRQX2M \bit_cont_reg[1]  (.SI(bit_cont[0]), 
	.SE(test_se), 
	.RN(rst_cont), 
	.Q(n75), 
	.D(n37), 
	.CK(clk_cont));
   SDFFRQX2M \edge_cont_reg[3]  (.SI(n78), 
	.SE(FE_OFN18_SE), 
	.RN(rst_cont), 
	.Q(n6), 
	.D(N35), 
	.CK(clk_cont));
   SDFFRQX2M \edge_cont_reg[4]  (.SI(edge_cont[3]), 
	.SE(FE_OFN18_SE), 
	.RN(FE_OFN5_RST_SCAN_UART), 
	.Q(n77), 
	.D(N36), 
	.CK(clk_cont));
   SDFFRQX2M \edge_cont_reg[2]  (.SI(n79), 
	.SE(FE_OFN18_SE), 
	.RN(rst_cont), 
	.Q(n78), 
	.D(N34), 
	.CK(clk_cont));
   SDFFRQX2M \edge_cont_reg[1]  (.SI(n80), 
	.SE(FE_OFN18_SE), 
	.RN(rst_cont), 
	.Q(n79), 
	.D(N33), 
	.CK(clk_cont));
   SDFFRQX4M \bit_cont_reg[0]  (.SI(test_si), 
	.SE(test_se), 
	.RN(FE_OFN5_RST_SCAN_UART), 
	.Q(bit_cont[0]), 
	.D(n38), 
	.CK(clk_cont));
   SDFFRQX4M \bit_cont_reg[2]  (.SI(n75), 
	.SE(test_se), 
	.RN(rst_cont), 
	.Q(bit_cont[2]), 
	.D(n36), 
	.CK(clk_cont));
   NOR4X1M U3 (.Y(n32), 
	.D(n73), 
	.C(n1), 
	.B(bit_cont[0]), 
	.A(bit_cont[2]));
   INVXLM U4 (.Y(n2), 
	.A(n6));
   CLKINVX2M U5 (.Y(edge_cont[3]), 
	.A(n2));
endmodule

module FSM_RX_PRESCALE6_DATA_BITS8_test_1 (
	clk_fsm, 
	rst_fsm, 
	data_in_fsm, 
	bit_cont_fsm, 
	parity_en_fsm, 
	edge_cont_fsm, 
	prescale_fsm, 
	parity_err_fsm, 
	stop_err_fsm, 
	start_glitch_fsm, 
	parity_check_en_fsm, 
	start_check_en_fsm, 
	stop_check_en_fsm, 
	deserializer_en_fsm, 
	data_valid_fsm, 
	Enable_sampling_fsm, 
	Data_sample_en_fsm, 
	test_si, 
	test_se, 
	FE_OFN17_SE, 
	FE_OFN18_SE, 
	FE_OFN20_SE, 
	CLK_SCAN_UART_RX__L3_N1);
   input clk_fsm;
   input rst_fsm;
   input data_in_fsm;
   input [3:0] bit_cont_fsm;
   input parity_en_fsm;
   input [5:0] edge_cont_fsm;
   input [5:0] prescale_fsm;
   input parity_err_fsm;
   input stop_err_fsm;
   input start_glitch_fsm;
   output parity_check_en_fsm;
   output start_check_en_fsm;
   output stop_check_en_fsm;
   output deserializer_en_fsm;
   output data_valid_fsm;
   output Enable_sampling_fsm;
   output Data_sample_en_fsm;
   input test_si;
   input test_se;
   input FE_OFN17_SE;
   input FE_OFN18_SE;
   input FE_OFN20_SE;
   input CLK_SCAN_UART_RX__L3_N1;

   // Internal wires
   wire N36;
   wire N37;
   wire N38;
   wire N39;
   wire N40;
   wire N65;
   wire N66;
   wire N97;
   wire N98;
   wire N102;
   wire data_valid_comb;
   wire \r93/carry[2] ;
   wire \r93/carry[3] ;
   wire \r93/carry[4] ;
   wire n1;
   wire n2;
   wire n3;
   wire n4;
   wire n11;
   wire n12;
   wire n13;
   wire n14;
   wire n15;
   wire n16;
   wire n17;
   wire n18;
   wire n19;
   wire n20;
   wire n21;
   wire n22;
   wire n23;
   wire n28;
   wire n29;
   wire n30;
   wire n31;
   wire n32;
   wire n33;
   wire n34;
   wire n35;
   wire n36;
   wire n37;
   wire n38;
   wire n39;
   wire n40;
   wire n41;
   wire n42;
   wire n43;
   wire n44;
   wire n45;
   wire n46;
   wire n47;
   wire n48;
   wire n49;
   wire n50;
   wire n51;
   wire n52;
   wire n53;
   wire n54;
   wire n55;
   wire n56;
   wire n57;
   wire n58;
   wire n59;
   wire n60;
   wire n61;
   wire n62;
   wire n63;
   wire n64;
   wire n65;
   wire [2:0] current_state_fsm;
   wire [2:0] next_state_fsm;

   SDFFRQX2M \current_state_fsm_reg[1]  (.SI(n65), 
	.SE(FE_OFN17_SE), 
	.RN(rst_fsm), 
	.Q(current_state_fsm[1]), 
	.D(next_state_fsm[1]), 
	.CK(clk_fsm));
   SDFFRQX2M \current_state_fsm_reg[0]  (.SI(test_si), 
	.SE(FE_OFN18_SE), 
	.RN(rst_fsm), 
	.Q(n65), 
	.D(next_state_fsm[0]), 
	.CK(clk_fsm));
   SDFFRQX2M data_valid_fsm_reg (.SI(current_state_fsm[2]), 
	.SE(FE_OFN20_SE), 
	.RN(rst_fsm), 
	.Q(data_valid_fsm), 
	.D(data_valid_comb), 
	.CK(CLK_SCAN_UART_RX__L3_N1));
   INVX2M U7 (.Y(n32), 
	.A(n30));
   OR2X2M U8 (.Y(n33), 
	.B(n52), 
	.A(n65));
   XNOR2X2M U9 (.Y(n1), 
	.B(\r93/carry[2] ), 
	.A(prescale_fsm[3]));
   XNOR2X2M U10 (.Y(n2), 
	.B(\r93/carry[4] ), 
	.A(prescale_fsm[5]));
   XNOR2X2M U11 (.Y(n3), 
	.B(\r93/carry[3] ), 
	.A(prescale_fsm[4]));
   NOR3X2M U13 (.Y(parity_check_en_fsm), 
	.C(n32), 
	.B(current_state_fsm[2]), 
	.A(n33));
   AOI222X1M U14 (.Y(n38), 
	.C1(n3), 
	.C0(edge_cont_fsm[3]), 
	.B1(n41), 
	.B0(n40), 
	.A1(n1), 
	.A0(edge_cont_fsm[2]));
   OR2X2M U19 (.Y(n13), 
	.B(prescale_fsm[3]), 
	.A(n12));
   OAI32X1M U20 (.Y(next_state_fsm[0]), 
	.B1(n45), 
	.B0(n54), 
	.A2(current_state_fsm[1]), 
	.A1(current_state_fsm[2]), 
	.A0(n53));
   OAI2BB1X2M U21 (.Y(N36), 
	.B0(n11), 
	.A1N(prescale_fsm[1]), 
	.A0N(prescale_fsm[0]));
   OR2X2M U22 (.Y(n12), 
	.B(n11), 
	.A(prescale_fsm[2]));
   NAND2BX2M U23 (.Y(n11), 
	.B(n15), 
	.AN(prescale_fsm[1]));
   OAI32X1M U24 (.Y(n50), 
	.B1(N66), 
	.B0(n33), 
	.A2(n52), 
	.A1(parity_err_fsm), 
	.A0(current_state_fsm[2]));
   NOR4X1M U25 (.Y(N66), 
	.D(n21), 
	.C(n22), 
	.B(n23), 
	.A(n28));
   AO21XLM U26 (.Y(N40), 
	.B0(N65), 
	.A1(prescale_fsm[5]), 
	.A0(n14));
   NOR2X2M U27 (.Y(N65), 
	.B(prescale_fsm[5]), 
	.A(n14));
   NAND4X2M U28 (.Y(n49), 
	.D(n58), 
	.C(n4), 
	.B(n57), 
	.A(n56));
   NOR4X1M U29 (.Y(n58), 
	.D(n62), 
	.C(n61), 
	.B(n60), 
	.A(n59));
   OAI31X1M U30 (.Y(next_state_fsm[2]), 
	.B0(n47), 
	.A2(n46), 
	.A1(n45), 
	.A0(n44));
   NAND2X2M U31 (.Y(n31), 
	.B(n64), 
	.A(n65));
   CLKINVX2M U32 (.Y(n64), 
	.A(current_state_fsm[2]));
   OAI32X1M U33 (.Y(n30), 
	.B1(n37), 
	.B0(N102), 
	.A2(n36), 
	.A1(n35), 
	.A0(n34));
   AOI2BB2XLM U34 (.Y(n35), 
	.B1(n2), 
	.B0(edge_cont_fsm[4]), 
	.A1N(n39), 
	.A0N(n38));
   AOI2BB2XLM U35 (.Y(n40), 
	.B1(n42), 
	.B0(N98), 
	.A1N(edge_cont_fsm[2]), 
	.A0N(n1));
   NOR2X2M U36 (.Y(n29), 
	.B(n33), 
	.A(n64));
   NOR3X2M U37 (.Y(start_check_en_fsm), 
	.C(n32), 
	.B(current_state_fsm[1]), 
	.A(n31));
   XNOR2X2M U38 (.Y(N98), 
	.B(prescale_fsm[2]), 
	.A(prescale_fsm[1]));
   NOR2BX2M U39 (.Y(n16), 
	.B(edge_cont_fsm[0]), 
	.AN(n15));
   NOR2BX2M U40 (.Y(n17), 
	.B(n15), 
	.AN(edge_cont_fsm[0]));
   NOR3BX2M U41 (.Y(n55), 
	.C(n49), 
	.B(bit_cont_fsm[3]), 
	.AN(start_glitch_fsm));
   INVX2M U42 (.Y(n45), 
	.A(deserializer_en_fsm));
   CLKNAND2X2M U43 (.Y(Data_sample_en_fsm), 
	.B(n31), 
	.A(n33));
   NOR2X2M U44 (.Y(deserializer_en_fsm), 
	.B(n52), 
	.A(n31));
   MX2XLM U45 (.Y(n53), 
	.S0(n65), 
	.B(n55), 
	.A(data_in_fsm));
   NOR3X2M U46 (.Y(n48), 
	.C(current_state_fsm[2]), 
	.B(parity_err_fsm), 
	.A(n33));
   AOI211X2M U47 (.Y(data_valid_comb), 
	.C0(stop_err_fsm), 
	.B0(n63), 
	.A1(parity_en_fsm), 
	.A0(parity_err_fsm));
   NAND2XLM U48 (.Y(n63), 
	.B(n29), 
	.A(N66));
   NAND3BXLM U49 (.Y(next_state_fsm[1]), 
	.C(n45), 
	.B(n51), 
	.AN(n50));
   INVXLM U50 (.Y(N97), 
	.A(prescale_fsm[1]));
   INVX2M U51 (.Y(n37), 
	.A(edge_cont_fsm[5]));
   INVX2M U52 (.Y(n52), 
	.A(current_state_fsm[1]));
   INVX2M U54 (.Y(n15), 
	.A(prescale_fsm[0]));
   AND2X1M U56 (.Y(N102), 
	.B(prescale_fsm[5]), 
	.A(\r93/carry[4] ));
   AND2X1M U57 (.Y(\r93/carry[4] ), 
	.B(prescale_fsm[4]), 
	.A(\r93/carry[3] ));
   AND2X1M U58 (.Y(\r93/carry[3] ), 
	.B(prescale_fsm[3]), 
	.A(\r93/carry[2] ));
   OR2X1M U59 (.Y(\r93/carry[2] ), 
	.B(prescale_fsm[1]), 
	.A(prescale_fsm[2]));
   OAI2BB1X1M U60 (.Y(N37), 
	.B0(n12), 
	.A1N(prescale_fsm[2]), 
	.A0N(n11));
   OAI2BB1X1M U61 (.Y(N38), 
	.B0(n13), 
	.A1N(prescale_fsm[3]), 
	.A0N(n12));
   OR2X1M U62 (.Y(n14), 
	.B(prescale_fsm[4]), 
	.A(n13));
   OAI2BB1X1M U63 (.Y(N39), 
	.B0(n14), 
	.A1N(prescale_fsm[4]), 
	.A0N(n13));
   OAI2B2X1M U64 (.Y(n20), 
	.B1(n16), 
	.B0(N36), 
	.A1N(edge_cont_fsm[1]), 
	.A0(n16));
   XNOR2X1M U65 (.Y(n19), 
	.B(edge_cont_fsm[5]), 
	.A(N40));
   OAI2B2X1M U66 (.Y(n18), 
	.B1(n17), 
	.B0(edge_cont_fsm[1]), 
	.A1N(N36), 
	.A0(n17));
   NAND4BX1M U67 (.Y(n28), 
	.D(n18), 
	.C(n19), 
	.B(n20), 
	.AN(N65));
   CLKXOR2X2M U68 (.Y(n23), 
	.B(edge_cont_fsm[4]), 
	.A(N39));
   CLKXOR2X2M U69 (.Y(n22), 
	.B(edge_cont_fsm[2]), 
	.A(N37));
   CLKXOR2X2M U70 (.Y(n21), 
	.B(edge_cont_fsm[3]), 
	.A(N38));
   AND2X1M U71 (.Y(stop_check_en_fsm), 
	.B(n30), 
	.A(n29));
   NOR2X1M U72 (.Y(n36), 
	.B(n2), 
	.A(edge_cont_fsm[4]));
   NOR2X1M U73 (.Y(n39), 
	.B(n3), 
	.A(edge_cont_fsm[3]));
   OAI211X1M U74 (.Y(n41), 
	.C0(N97), 
	.B0(n43), 
	.A1(n42), 
	.A0(N98));
   CLKINVX1M U75 (.Y(n43), 
	.A(edge_cont_fsm[0]));
   CLKINVX1M U76 (.Y(n42), 
	.A(edge_cont_fsm[1]));
   AND2X1M U77 (.Y(n34), 
	.B(n37), 
	.A(N102));
   MXI2X1M U78 (.Y(n47), 
	.S0(N66), 
	.B(n48), 
	.A(n29));
   OR2X1M U79 (.Y(n44), 
	.B(n49), 
	.A(parity_en_fsm));
   OR4X1M U80 (.Y(n51), 
	.D(start_glitch_fsm), 
	.C(bit_cont_fsm[3]), 
	.B(n31), 
	.A(n49));
   NOR2X1M U81 (.Y(n54), 
	.B(n46), 
	.A(n49));
   CLKINVX1M U82 (.Y(n46), 
	.A(bit_cont_fsm[3]));
   XNOR2X1M U83 (.Y(n62), 
	.B(N40), 
	.A(n37));
   CLKXOR2X2M U84 (.Y(n61), 
	.B(N39), 
	.A(edge_cont_fsm[4]));
   CLKXOR2X2M U85 (.Y(n60), 
	.B(N38), 
	.A(edge_cont_fsm[3]));
   CLKXOR2X2M U86 (.Y(n59), 
	.B(N37), 
	.A(edge_cont_fsm[2]));
   XNOR2X1M U87 (.Y(n57), 
	.B(n15), 
	.A(edge_cont_fsm[0]));
   XNOR2X1M U88 (.Y(n56), 
	.B(N36), 
	.A(edge_cont_fsm[1]));
   SDFFRQX4M \current_state_fsm_reg[2]  (.SI(current_state_fsm[1]), 
	.SE(test_se), 
	.RN(rst_fsm), 
	.Q(current_state_fsm[2]), 
	.D(next_state_fsm[2]), 
	.CK(clk_fsm));
   NOR3X2M U3 (.Y(n4), 
	.C(bit_cont_fsm[1]), 
	.B(bit_cont_fsm[2]), 
	.A(bit_cont_fsm[0]));
endmodule

module Deserializer_WIDTH8_PRESCALE6_test_1 (
	Clk_d, 
	RST_d, 
	Serial_Data_d, 
	deser_en_d, 
	edge_cont_ds, 
	prescale_ds, 
	P_Data_d, 
	test_so, 
	test_se, 
	FE_OFN20_SE);
   input Clk_d;
   input RST_d;
   input Serial_Data_d;
   input deser_en_d;
   input [5:0] edge_cont_ds;
   input [5:0] prescale_ds;
   output [7:0] P_Data_d;
   output test_so;
   input test_se;
   input FE_OFN20_SE;

   // Internal wires
   wire N6;
   wire N7;
   wire N8;
   wire N9;
   wire N10;
   wire N11;
   wire N12;
   wire n14;
   wire n15;
   wire n16;
   wire n17;
   wire n18;
   wire n19;
   wire n21;
   wire n22;
   wire n23;
   wire n24;
   wire n25;
   wire n26;
   wire n27;
   wire n28;
   wire n29;
   wire n1;
   wire n30;
   wire n31;
   wire n32;
   wire n33;
   wire n34;
   wire n35;
   wire n36;
   wire n37;
   wire n38;
   wire n39;
   wire n40;
   wire n41;
   wire n42;
   wire n43;
   wire n44;

   SDFFRQX2M \shift_reg_reg[0]  (.SI(Serial_Data_d), 
	.SE(FE_OFN20_SE), 
	.RN(RST_d), 
	.Q(P_Data_d[0]), 
	.D(n22), 
	.CK(Clk_d));
   SDFFRX1M \shift_reg_reg[5]  (.SI(n16), 
	.SE(test_se), 
	.RN(RST_d), 
	.QN(n15), 
	.Q(P_Data_d[5]), 
	.D(n27), 
	.CK(Clk_d));
   SDFFRX1M \shift_reg_reg[1]  (.SI(P_Data_d[0]), 
	.SE(FE_OFN20_SE), 
	.RN(RST_d), 
	.QN(n19), 
	.Q(P_Data_d[1]), 
	.D(n23), 
	.CK(Clk_d));
   SDFFRX1M \shift_reg_reg[4]  (.SI(n17), 
	.SE(test_se), 
	.RN(RST_d), 
	.QN(n16), 
	.Q(P_Data_d[4]), 
	.D(n26), 
	.CK(Clk_d));
   SDFFRX1M \shift_reg_reg[7]  (.SI(n14), 
	.SE(test_se), 
	.RN(RST_d), 
	.QN(test_so), 
	.Q(P_Data_d[7]), 
	.D(n29), 
	.CK(Clk_d));
   SDFFRX1M \shift_reg_reg[3]  (.SI(n18), 
	.SE(test_se), 
	.RN(RST_d), 
	.QN(n17), 
	.Q(P_Data_d[3]), 
	.D(n25), 
	.CK(Clk_d));
   SDFFRX1M \shift_reg_reg[6]  (.SI(n15), 
	.SE(test_se), 
	.RN(RST_d), 
	.QN(n14), 
	.Q(P_Data_d[6]), 
	.D(n28), 
	.CK(Clk_d));
   SDFFRX1M \shift_reg_reg[2]  (.SI(n19), 
	.SE(test_se), 
	.RN(RST_d), 
	.QN(n18), 
	.Q(P_Data_d[2]), 
	.D(n24), 
	.CK(Clk_d));
   NAND2BX2M U5 (.Y(n30), 
	.B(n34), 
	.AN(prescale_ds[1]));
   OR2X1M U6 (.Y(n1), 
	.B(prescale_ds[3]), 
	.A(n31));
   OR2X2M U13 (.Y(n31), 
	.B(prescale_ds[2]), 
	.A(n30));
   NOR2X2M U14 (.Y(N11), 
	.B(prescale_ds[5]), 
	.A(n33));
   NOR2BX2M U16 (.Y(n36), 
	.B(n34), 
	.AN(edge_cont_ds[0]));
   NOR2BX2M U17 (.Y(n35), 
	.B(edge_cont_ds[0]), 
	.AN(n34));
   OAI2BB1XLM U18 (.Y(N9), 
	.B0(n33), 
	.A1N(prescale_ds[4]), 
	.A0N(n1));
   OAI2BB1XLM U19 (.Y(N8), 
	.B0(n1), 
	.A1N(prescale_ds[3]), 
	.A0N(n31));
   OAI2BB1XLM U20 (.Y(N7), 
	.B0(n31), 
	.A1N(prescale_ds[2]), 
	.A0N(n30));
   CLKINVX2M U23 (.Y(n44), 
	.A(n21));
   INVX2M U24 (.Y(n34), 
	.A(prescale_ds[0]));
   OAI22X1M U25 (.Y(n23), 
	.B1(n19), 
	.B0(n44), 
	.A1(n18), 
	.A0(n21));
   OAI22X1M U26 (.Y(n24), 
	.B1(n18), 
	.B0(n44), 
	.A1(n17), 
	.A0(n21));
   OAI22X1M U27 (.Y(n25), 
	.B1(n17), 
	.B0(n44), 
	.A1(n16), 
	.A0(n21));
   OAI22X1M U28 (.Y(n26), 
	.B1(n16), 
	.B0(n44), 
	.A1(n15), 
	.A0(n21));
   OAI22X1M U29 (.Y(n27), 
	.B1(n15), 
	.B0(n44), 
	.A1(n14), 
	.A0(n21));
   OAI22X1M U30 (.Y(n28), 
	.B1(n14), 
	.B0(n44), 
	.A1(test_so), 
	.A0(n21));
   NAND2XLM U32 (.Y(n21), 
	.B(N12), 
	.A(deser_en_d));
   OAI2BB2X1M U33 (.Y(n29), 
	.B1(test_so), 
	.B0(n44), 
	.A1N(n44), 
	.A0N(Serial_Data_d));
   OAI2BB2X1M U34 (.Y(n22), 
	.B1(n19), 
	.B0(n21), 
	.A1N(n21), 
	.A0N(P_Data_d[0]));
   OAI2BB1X1M U35 (.Y(N6), 
	.B0(n30), 
	.A1N(prescale_ds[1]), 
	.A0N(prescale_ds[0]));
   OR2X1M U36 (.Y(n32), 
	.B(prescale_ds[3]), 
	.A(n31));
   OR2X1M U37 (.Y(n33), 
	.B(prescale_ds[4]), 
	.A(n32));
   AO21XLM U38 (.Y(N10), 
	.B0(N11), 
	.A1(prescale_ds[5]), 
	.A0(n33));
   OAI2B2X1M U39 (.Y(n39), 
	.B1(n35), 
	.B0(N6), 
	.A1N(edge_cont_ds[1]), 
	.A0(n35));
   XNOR2X1M U40 (.Y(n38), 
	.B(edge_cont_ds[5]), 
	.A(N10));
   OAI2B2X1M U41 (.Y(n37), 
	.B1(n36), 
	.B0(edge_cont_ds[1]), 
	.A1N(N6), 
	.A0(n36));
   NAND4BX1M U42 (.Y(n43), 
	.D(n37), 
	.C(n38), 
	.B(n39), 
	.AN(N11));
   CLKXOR2X2M U43 (.Y(n42), 
	.B(edge_cont_ds[4]), 
	.A(N9));
   CLKXOR2X2M U44 (.Y(n41), 
	.B(edge_cont_ds[2]), 
	.A(N7));
   CLKXOR2X2M U45 (.Y(n40), 
	.B(edge_cont_ds[3]), 
	.A(N8));
   NOR4X1M U46 (.Y(N12), 
	.D(n40), 
	.C(n41), 
	.B(n42), 
	.A(n43));
endmodule

module Start_check_test_1 (
	clk_start, 
	rst_start, 
	start_chk_en_start, 
	sampled_bit_start, 
	start_error, 
	test_si, 
	test_se);
   input clk_start;
   input rst_start;
   input start_chk_en_start;
   input sampled_bit_start;
   output start_error;
   input test_si;
   input test_se;

   // Internal wires
   wire n2;

   SDFFRQX2M start_error_reg (.SI(test_si), 
	.SE(test_se), 
	.RN(rst_start), 
	.Q(start_error), 
	.D(n2), 
	.CK(clk_start));
   AO2B2XLM U2 (.Y(n2), 
	.B1(sampled_bit_start), 
	.B0(start_chk_en_start), 
	.A1N(start_chk_en_start), 
	.A0(start_error));
endmodule

module Stop_check_test_1 (
	clk_stop, 
	rst_stop, 
	stop_chk_en_stop, 
	sampled_bit_stop, 
	stop_error, 
	test_si, 
	test_so, 
	test_se);
   input clk_stop;
   input rst_stop;
   input stop_chk_en_stop;
   input sampled_bit_stop;
   output stop_error;
   input test_si;
   output test_so;
   input test_se;

   // Internal wires
   wire n5;
   wire N5;
   wire n2;

   assign test_so = n5 ;

   INVXLM U4 (.Y(n2), 
	.A(n5));
   INVX3M U5 (.Y(stop_error), 
	.A(n2));
   NOR2BX2M U7 (.Y(N5), 
	.B(sampled_bit_stop), 
	.AN(stop_chk_en_stop));
   SDFFRQX2M stop_error_reg (.SI(test_si), 
	.SE(test_se), 
	.RN(rst_stop), 
	.Q(n5), 
	.D(N5), 
	.CK(clk_stop));
endmodule

module parity_check_0_1_8_test_1 (
	clk_parity, 
	rst_parity, 
	PAR_TYP, 
	parity_chk_en_parity, 
	sampled_bit_parity, 
	data_in_parity, 
	parity_error, 
	test_si, 
	test_so, 
	test_se);
   input clk_parity;
   input rst_parity;
   input PAR_TYP;
   input parity_chk_en_parity;
   input sampled_bit_parity;
   input [7:0] data_in_parity;
   output parity_error;
   input test_si;
   output test_so;
   input test_se;

   // Internal wires
   wire n11;
   wire N10;
   wire n2;
   wire n3;
   wire n4;
   wire n5;
   wire n6;
   wire n7;
   wire n8;

   assign test_so = n11 ;

   INVXLM U4 (.Y(n8), 
	.A(n11));
   INVX3M U5 (.Y(parity_error), 
	.A(n8));
   NOR2BX1M U7 (.Y(N10), 
	.B(n2), 
	.AN(parity_chk_en_parity));
   XOR3XLM U8 (.Y(n2), 
	.C(n5), 
	.B(n4), 
	.A(n3));
   XNOR2X2M U9 (.Y(n5), 
	.B(PAR_TYP), 
	.A(sampled_bit_parity));
   XOR3XLM U10 (.Y(n4), 
	.C(n6), 
	.B(data_in_parity[4]), 
	.A(data_in_parity[5]));
   XNOR2X2M U11 (.Y(n6), 
	.B(data_in_parity[6]), 
	.A(data_in_parity[7]));
   XOR3XLM U12 (.Y(n3), 
	.C(n7), 
	.B(data_in_parity[0]), 
	.A(data_in_parity[1]));
   XNOR2X2M U13 (.Y(n7), 
	.B(data_in_parity[2]), 
	.A(data_in_parity[3]));
   SDFFRQX2M parity_error_reg (.SI(test_si), 
	.SE(test_se), 
	.RN(rst_parity), 
	.Q(n11), 
	.D(N10), 
	.CK(clk_parity));
endmodule

module Data_Sampling_PRESCALE6_test_1 (
	clk_ds, 
	rst_ds, 
	Data_sample_en, 
	edge_cont_ds, 
	prescale_ds, 
	data_in_ds, 
	sampled_bit_ds, 
	test_si, 
	test_se);
   input clk_ds;
   input rst_ds;
   input Data_sample_en;
   input [5:0] edge_cont_ds;
   input [5:0] prescale_ds;
   input data_in_ds;
   output sampled_bit_ds;
   input test_si;
   input test_se;

   // Internal wires
   wire sample1_ds;
   wire sample2_ds;
   wire sample3_ds;
   wire N6;
   wire N7;
   wire N8;
   wire N9;
   wire N10;
   wire N11;
   wire N12;
   wire N15;
   wire N16;
   wire N17;
   wire N18;
   wire N19;
   wire N21;
   wire N22;
   wire N23;
   wire N24;
   wire N25;
   wire N26;
   wire n28;
   wire n29;
   wire n30;
   wire n31;
   wire \add_45/carry[4] ;
   wire \add_45/carry[3] ;
   wire \add_42/carry[4] ;
   wire \add_42/carry[3] ;
   wire \add_42/carry[2] ;
   wire n2;
   wire n3;
   wire n4;
   wire n5;
   wire n6;
   wire n7;
   wire n8;
   wire n9;
   wire n10;
   wire n11;
   wire n12;
   wire n13;
   wire n14;
   wire n19;
   wire n20;
   wire n21;
   wire n22;
   wire n23;
   wire n24;
   wire n25;
   wire n26;
   wire n27;
   wire n32;
   wire n33;
   wire n34;
   wire n35;
   wire n36;
   wire n37;
   wire n38;
   wire n39;
   wire n40;
   wire n41;
   wire n42;
   wire n43;
   wire n44;
   wire n45;
   wire n46;
   wire n47;
   wire n48;
   wire n49;
   wire n50;

   assign N21 = prescale_ds[1] ;

   SDFFSQX2M sample3_ds_reg (.SN(rst_ds), 
	.SI(sample2_ds), 
	.SE(test_se), 
	.Q(sample3_ds), 
	.D(n31), 
	.CK(clk_ds));
   SDFFSQX2M sample1_ds_reg (.SN(rst_ds), 
	.SI(test_si), 
	.SE(test_se), 
	.Q(sample1_ds), 
	.D(n29), 
	.CK(clk_ds));
   SDFFSQX2M sample2_ds_reg (.SN(rst_ds), 
	.SI(sample1_ds), 
	.SE(test_se), 
	.Q(sample2_ds), 
	.D(n30), 
	.CK(clk_ds));
   SDFFSQX4M sampled_bit_ds_reg (.SN(rst_ds), 
	.SI(sample3_ds), 
	.SE(test_se), 
	.Q(sampled_bit_ds), 
	.D(n28), 
	.CK(clk_ds));
   INVX2M U4 (.Y(N6), 
	.A(N21));
   OR2X2M U5 (.Y(n2), 
	.B(N21), 
	.A(prescale_ds[2]));
   NOR4X1M U6 (.Y(N12), 
	.D(n9), 
	.C(n10), 
	.B(n11), 
	.A(n12));
   NOR3X2M U7 (.Y(N11), 
	.C(n3), 
	.B(prescale_ds[5]), 
	.A(prescale_ds[4]));
   XOR2X1M U8 (.Y(N23), 
	.B(prescale_ds[2]), 
	.A(prescale_ds[3]));
   NOR2BX2M U9 (.Y(n21), 
	.B(N12), 
	.AN(Data_sample_en));
   NOR2BX2M U10 (.Y(n5), 
	.B(N6), 
	.AN(edge_cont_ds[0]));
   OR2X2M U14 (.Y(n3), 
	.B(prescale_ds[3]), 
	.A(n2));
   MX2XLM U15 (.Y(n28), 
	.S0(n25), 
	.B(n24), 
	.A(sampled_bit_ds));
   NOR2BX2M U16 (.Y(n6), 
	.B(edge_cont_ds[0]), 
	.AN(N6));
   OAI2BB1XLM U17 (.Y(N8), 
	.B0(n3), 
	.A1N(prescale_ds[3]), 
	.A0N(n2));
   NAND4X2M U18 (.Y(n19), 
	.D(n37), 
	.C(n36), 
	.B(n35), 
	.A(n34));
   NOR3X2M U19 (.Y(n37), 
	.C(n40), 
	.B(n39), 
	.A(n38));
   NAND4X2M U20 (.Y(n22), 
	.D(n44), 
	.C(n43), 
	.B(n42), 
	.A(n41));
   NOR3X2M U21 (.Y(n44), 
	.C(n46), 
	.B(edge_cont_ds[5]), 
	.A(n45));
   XOR2X1M U22 (.Y(n45), 
	.B(edge_cont_ds[4]), 
	.A(prescale_ds[5]));
   XOR2X1M U23 (.Y(n46), 
	.B(edge_cont_ds[0]), 
	.A(N21));
   XOR2X1M U24 (.Y(N25), 
	.B(\add_45/carry[4] ), 
	.A(prescale_ds[5]));
   XOR2X1M U25 (.Y(N24), 
	.B(\add_45/carry[3] ), 
	.A(prescale_ds[4]));
   ADDHX1M U27 (.S(N18), 
	.CO(N19), 
	.B(\add_42/carry[4] ), 
	.A(prescale_ds[5]));
   ADDHX1M U28 (.S(N17), 
	.CO(\add_42/carry[4] ), 
	.B(\add_42/carry[3] ), 
	.A(prescale_ds[4]));
   ADDHX1M U29 (.S(N16), 
	.CO(\add_42/carry[3] ), 
	.B(\add_42/carry[2] ), 
	.A(prescale_ds[3]));
   ADDHX1M U30 (.S(N15), 
	.CO(\add_42/carry[2] ), 
	.B(N21), 
	.A(prescale_ds[2]));
   INVXLM U31 (.Y(N22), 
	.A(prescale_ds[2]));
   AND2X1M U32 (.Y(N26), 
	.B(prescale_ds[5]), 
	.A(\add_45/carry[4] ));
   AND2X1M U33 (.Y(\add_45/carry[4] ), 
	.B(prescale_ds[4]), 
	.A(\add_45/carry[3] ));
   AND2X1M U34 (.Y(\add_45/carry[3] ), 
	.B(prescale_ds[3]), 
	.A(prescale_ds[2]));
   OAI2BB1X1M U35 (.Y(N7), 
	.B0(n2), 
	.A1N(prescale_ds[2]), 
	.A0N(N21));
   XNOR2X1M U36 (.Y(N9), 
	.B(n3), 
	.A(prescale_ds[4]));
   OAI21X1M U37 (.Y(n4), 
	.B0(prescale_ds[5]), 
	.A1(n3), 
	.A0(prescale_ds[4]));
   NAND2BX1M U38 (.Y(N10), 
	.B(n4), 
	.AN(N11));
   OAI2B2X1M U39 (.Y(n8), 
	.B1(n5), 
	.B0(edge_cont_ds[1]), 
	.A1N(N7), 
	.A0(n5));
   OAI2B2X1M U40 (.Y(n7), 
	.B1(n6), 
	.B0(N7), 
	.A1N(edge_cont_ds[1]), 
	.A0(n6));
   NAND4BBX1M U41 (.Y(n12), 
	.D(n7), 
	.C(n8), 
	.BN(edge_cont_ds[5]), 
	.AN(N11));
   CLKXOR2X2M U42 (.Y(n11), 
	.B(edge_cont_ds[4]), 
	.A(N10));
   CLKXOR2X2M U43 (.Y(n10), 
	.B(edge_cont_ds[2]), 
	.A(N8));
   CLKXOR2X2M U44 (.Y(n9), 
	.B(edge_cont_ds[3]), 
	.A(N9));
   CLKMX2X2M U45 (.Y(n31), 
	.S0(n13), 
	.B(data_in_ds), 
	.A(sample3_ds));
   NOR2X1M U46 (.Y(n13), 
	.B(n19), 
	.A(n14));
   CLKMX2X2M U47 (.Y(n30), 
	.S0(n20), 
	.B(data_in_ds), 
	.A(sample2_ds));
   NOR2BX1M U48 (.Y(n20), 
	.B(n22), 
	.AN(n21));
   CLKMX2X2M U49 (.Y(n29), 
	.S0(n23), 
	.B(data_in_ds), 
	.A(sample1_ds));
   AND2X1M U50 (.Y(n23), 
	.B(N12), 
	.A(Data_sample_en));
   NOR4X1M U51 (.Y(n25), 
	.D(n33), 
	.C(n32), 
	.B(n27), 
	.A(n26));
   CLKXOR2X2M U52 (.Y(n33), 
	.B(N22), 
	.A(edge_cont_ds[1]));
   CLKXOR2X2M U53 (.Y(n32), 
	.B(N21), 
	.A(edge_cont_ds[0]));
   NAND2BX1M U54 (.Y(n27), 
	.B(n19), 
	.AN(n14));
   CLKXOR2X2M U55 (.Y(n40), 
	.B(N18), 
	.A(edge_cont_ds[4]));
   CLKXOR2X2M U56 (.Y(n39), 
	.B(N15), 
	.A(edge_cont_ds[1]));
   CLKXOR2X2M U57 (.Y(n38), 
	.B(N6), 
	.A(edge_cont_ds[0]));
   XNOR2X1M U58 (.Y(n36), 
	.B(N16), 
	.A(edge_cont_ds[2]));
   XNOR2X1M U59 (.Y(n35), 
	.B(N17), 
	.A(edge_cont_ds[3]));
   XNOR2X1M U60 (.Y(n34), 
	.B(N19), 
	.A(edge_cont_ds[5]));
   CLKNAND2X2M U61 (.Y(n14), 
	.B(n22), 
	.A(n21));
   XNOR2X1M U62 (.Y(n43), 
	.B(prescale_ds[3]), 
	.A(edge_cont_ds[2]));
   XNOR2X1M U63 (.Y(n42), 
	.B(prescale_ds[4]), 
	.A(edge_cont_ds[3]));
   XNOR2X1M U64 (.Y(n41), 
	.B(prescale_ds[2]), 
	.A(edge_cont_ds[1]));
   NAND4X1M U65 (.Y(n26), 
	.D(n50), 
	.C(n49), 
	.B(n48), 
	.A(n47));
   XNOR2X1M U66 (.Y(n50), 
	.B(N23), 
	.A(edge_cont_ds[2]));
   XNOR2X1M U67 (.Y(n49), 
	.B(N24), 
	.A(edge_cont_ds[3]));
   XNOR2X1M U68 (.Y(n48), 
	.B(N25), 
	.A(edge_cont_ds[4]));
   XNOR2X1M U69 (.Y(n47), 
	.B(N26), 
	.A(edge_cont_ds[5]));
   ADDFX1M U70 (.CO(n24), 
	.CI(sample2_ds), 
	.B(sample3_ds), 
	.A(sample1_ds));
endmodule

module UART_RX_8_6_0_1_test_1 (
	i_Clk_RX, 
	i_RST_RX, 
	i_Serial_Data_RX, 
	i_PAR_EN_RX, 
	i_PAR_TYP_RX, 
	i_Prescale_RX, 
	o_P_Data_RX, 
	o_Data_Valid_RX, 
	o_Stop_Error_RX, 
	o_Parity_Error_RX, 
	test_si, 
	test_so, 
	test_se, 
	FE_OFN5_RST_SCAN_UART, 
	FE_OFN17_SE, 
	FE_OFN18_SE, 
	FE_OFN20_SE, 
	CLK_SCAN_UART_RX__L3_N1);
   input i_Clk_RX;
   input i_RST_RX;
   input i_Serial_Data_RX;
   input i_PAR_EN_RX;
   input i_PAR_TYP_RX;
   input [5:0] i_Prescale_RX;
   output [7:0] o_P_Data_RX;
   output o_Data_Valid_RX;
   output o_Stop_Error_RX;
   output o_Parity_Error_RX;
   input test_si;
   output test_so;
   input test_se;
   input FE_OFN5_RST_SCAN_UART;
   input FE_OFN17_SE;
   input FE_OFN18_SE;
   input FE_OFN20_SE;
   input CLK_SCAN_UART_RX__L3_N1;

   // Internal wires
   wire FE_PT0_;
   wire FE_UNCONNECTED_0;
   wire start_error;
   wire parity_chk_en;
   wire start_chk_en;
   wire stop_chk_en;
   wire deser_en;
   wire data_sampled_en;
   wire sampled_bit;
   wire n5;
   wire n6;
   wire n7;
   wire [3:0] bit_cont;
   wire [5:0] edge_cont;

   edge_bit_cont_PRESCALE6_DATA_BITS8_test_1 edge_bit_counter (.clk_cont(i_Clk_RX), 
	.rst_cont(i_RST_RX), 
	.Enable_sampling_cont(data_sampled_en), 
	.prescale_cont({ i_Prescale_RX[5],
		i_Prescale_RX[4],
		i_Prescale_RX[3],
		i_Prescale_RX[2],
		i_Prescale_RX[1],
		i_Prescale_RX[0] }), 
	.parity_en_cont(i_PAR_EN_RX), 
	.bit_cont({ bit_cont[3],
		bit_cont[2],
		bit_cont[1],
		bit_cont[0] }), 
	.edge_cont({ edge_cont[5],
		edge_cont[4],
		edge_cont[3],
		edge_cont[2],
		edge_cont[1],
		edge_cont[0] }), 
	.test_si(n7), 
	.test_so(n6), 
	.test_se(test_se), 
	.FE_OFN5_RST_SCAN_UART(FE_OFN5_RST_SCAN_UART), 
	.FE_OFN18_SE(FE_OFN18_SE));
   FSM_RX_PRESCALE6_DATA_BITS8_test_1 fsm_rx (.clk_fsm(i_Clk_RX), 
	.rst_fsm(FE_OFN5_RST_SCAN_UART), 
	.data_in_fsm(i_Serial_Data_RX), 
	.bit_cont_fsm({ bit_cont[3],
		bit_cont[2],
		bit_cont[1],
		bit_cont[0] }), 
	.parity_en_fsm(i_PAR_EN_RX), 
	.edge_cont_fsm({ edge_cont[5],
		edge_cont[4],
		edge_cont[3],
		edge_cont[2],
		edge_cont[1],
		edge_cont[0] }), 
	.prescale_fsm({ i_Prescale_RX[5],
		i_Prescale_RX[4],
		i_Prescale_RX[3],
		i_Prescale_RX[2],
		i_Prescale_RX[1],
		i_Prescale_RX[0] }), 
	.parity_err_fsm(o_Parity_Error_RX), 
	.stop_err_fsm(o_Stop_Error_RX), 
	.start_glitch_fsm(start_error), 
	.parity_check_en_fsm(parity_chk_en), 
	.start_check_en_fsm(start_chk_en), 
	.stop_check_en_fsm(stop_chk_en), 
	.deserializer_en_fsm(deser_en), 
	.data_valid_fsm(o_Data_Valid_RX), 
	.Enable_sampling_fsm(FE_PT0_), 
	.Data_sample_en_fsm(data_sampled_en), 
	.test_si(n6), 
	.test_se(test_se), 
	.FE_OFN17_SE(FE_OFN17_SE), 
	.FE_OFN18_SE(FE_OFN18_SE), 
	.FE_OFN20_SE(FE_OFN20_SE), 
	.CLK_SCAN_UART_RX__L3_N1(CLK_SCAN_UART_RX__L3_N1));
   Deserializer_WIDTH8_PRESCALE6_test_1 deserializer (.Clk_d(CLK_SCAN_UART_RX__L3_N1), 
	.RST_d(FE_OFN5_RST_SCAN_UART), 
	.Serial_Data_d(sampled_bit), 
	.deser_en_d(deser_en), 
	.edge_cont_ds({ edge_cont[5],
		edge_cont[4],
		edge_cont[3],
		edge_cont[2],
		edge_cont[1],
		edge_cont[0] }), 
	.prescale_ds({ i_Prescale_RX[5],
		i_Prescale_RX[4],
		i_Prescale_RX[3],
		i_Prescale_RX[2],
		i_Prescale_RX[1],
		i_Prescale_RX[0] }), 
	.P_Data_d({ o_P_Data_RX[7],
		o_P_Data_RX[6],
		o_P_Data_RX[5],
		o_P_Data_RX[4],
		o_P_Data_RX[3],
		o_P_Data_RX[2],
		o_P_Data_RX[1],
		o_P_Data_RX[0] }), 
	.test_so(n7), 
	.test_se(FE_OFN17_SE), 
	.FE_OFN20_SE(FE_OFN20_SE));
   Start_check_test_1 start_checker (.clk_start(CLK_SCAN_UART_RX__L3_N1), 
	.rst_start(FE_OFN5_RST_SCAN_UART), 
	.start_chk_en_start(start_chk_en), 
	.sampled_bit_start(sampled_bit), 
	.start_error(start_error), 
	.test_si(n5), 
	.test_se(FE_OFN17_SE));
   Stop_check_test_1 stop_checker (.clk_stop(i_Clk_RX), 
	.rst_stop(FE_OFN5_RST_SCAN_UART), 
	.stop_chk_en_stop(stop_chk_en), 
	.sampled_bit_stop(sampled_bit), 
	.stop_error(o_Stop_Error_RX), 
	.test_si(start_error), 
	.test_so(test_so), 
	.test_se(FE_OFN20_SE));
   parity_check_0_1_8_test_1 parity_checker (.clk_parity(CLK_SCAN_UART_RX__L3_N1), 
	.rst_parity(FE_OFN5_RST_SCAN_UART), 
	.PAR_TYP(i_PAR_TYP_RX), 
	.parity_chk_en_parity(parity_chk_en), 
	.sampled_bit_parity(sampled_bit), 
	.data_in_parity({ o_P_Data_RX[7],
		o_P_Data_RX[6],
		o_P_Data_RX[5],
		o_P_Data_RX[4],
		o_P_Data_RX[3],
		o_P_Data_RX[2],
		o_P_Data_RX[1],
		o_P_Data_RX[0] }), 
	.parity_error(o_Parity_Error_RX), 
	.test_si(o_Data_Valid_RX), 
	.test_so(n5), 
	.test_se(FE_OFN17_SE));
   Data_Sampling_PRESCALE6_test_1 data_sampler (.clk_ds(CLK_SCAN_UART_RX__L3_N1), 
	.rst_ds(FE_OFN5_RST_SCAN_UART), 
	.Data_sample_en(data_sampled_en), 
	.edge_cont_ds({ edge_cont[5],
		edge_cont[4],
		edge_cont[3],
		edge_cont[2],
		edge_cont[1],
		edge_cont[0] }), 
	.prescale_ds({ i_Prescale_RX[5],
		i_Prescale_RX[4],
		i_Prescale_RX[3],
		i_Prescale_RX[2],
		i_Prescale_RX[1],
		i_Prescale_RX[0] }), 
	.data_in_ds(i_Serial_Data_RX), 
	.sampled_bit_ds(sampled_bit), 
	.test_si(test_si), 
	.test_se(FE_OFN20_SE));
endmodule

module UART_TOP_8_6_0_1_0_1_test_1 (
	i_CLK_TX, 
	i_CLK_RX, 
	i_RST, 
	i_DATA_Valid_TX, 
	i_DATA_TX, 
	i_PAR_EN_TX, 
	i_PAR_TYP_TX, 
	i_Serial_Data_RX, 
	i_PAR_EN_RX, 
	i_PAR_TYP_RX, 
	i_Prescale_RX, 
	o_OUT_TX, 
	o_BUSY_TX, 
	o_P_Data_RX, 
	o_Data_Valid_RX, 
	o_Stop_Error_RX, 
	o_Parity_Error_RX, 
	test_si, 
	test_se, 
	FE_OFN5_RST_SCAN_UART, 
	FE_OFN17_SE, 
	FE_OFN18_SE, 
	FE_OFN20_SE, 
	FE_OFN21_SE, 
	CLK_SCAN_UART_TX__L3_N2, 
	CLK_SCAN_UART_TX__L3_N3, 
	CLK_SCAN_UART_RX__L3_N1);
   input i_CLK_TX;
   input i_CLK_RX;
   input i_RST;
   input i_DATA_Valid_TX;
   input [7:0] i_DATA_TX;
   input i_PAR_EN_TX;
   input i_PAR_TYP_TX;
   input i_Serial_Data_RX;
   input i_PAR_EN_RX;
   input i_PAR_TYP_RX;
   input [5:0] i_Prescale_RX;
   output o_OUT_TX;
   output o_BUSY_TX;
   output [7:0] o_P_Data_RX;
   output o_Data_Valid_RX;
   output o_Stop_Error_RX;
   output o_Parity_Error_RX;
   input test_si;
   input test_se;
   input FE_OFN5_RST_SCAN_UART;
   input FE_OFN17_SE;
   input FE_OFN18_SE;
   input FE_OFN20_SE;
   input FE_OFN21_SE;
   input CLK_SCAN_UART_TX__L3_N2;
   input CLK_SCAN_UART_TX__L3_N3;
   input CLK_SCAN_UART_RX__L3_N1;

   // Internal wires
   wire n4;

   UART_TX_8_0_1_test_1 u_uart_tx (.i_CLK_TX(i_CLK_TX), 
	.i_RST_TX(i_RST), 
	.i_DATA_Valid_TX(i_DATA_Valid_TX), 
	.i_DATA_TX({ i_DATA_TX[7],
		i_DATA_TX[6],
		i_DATA_TX[5],
		i_DATA_TX[4],
		i_DATA_TX[3],
		i_DATA_TX[2],
		i_DATA_TX[1],
		i_DATA_TX[0] }), 
	.i_PAR_EN_TX(i_PAR_EN_TX), 
	.i_PAR_TYP_TX(i_PAR_TYP_TX), 
	.o_OUT_TX(o_OUT_TX), 
	.o_BUSY_TX(o_BUSY_TX), 
	.test_si(n4), 
	.test_se(test_se), 
	.FE_OFN5_RST_SCAN_UART(FE_OFN5_RST_SCAN_UART), 
	.FE_OFN17_SE(FE_OFN17_SE), 
	.FE_OFN20_SE(FE_OFN20_SE), 
	.FE_OFN21_SE(FE_OFN21_SE), 
	.CLK_SCAN_UART_TX__L3_N2(CLK_SCAN_UART_TX__L3_N2), 
	.CLK_SCAN_UART_TX__L3_N3(CLK_SCAN_UART_TX__L3_N3));
   UART_RX_8_6_0_1_test_1 u_uart_rx (.i_Clk_RX(i_CLK_RX), 
	.i_RST_RX(i_RST), 
	.i_Serial_Data_RX(i_Serial_Data_RX), 
	.i_PAR_EN_RX(i_PAR_EN_RX), 
	.i_PAR_TYP_RX(i_PAR_TYP_RX), 
	.i_Prescale_RX({ i_Prescale_RX[5],
		i_Prescale_RX[4],
		i_Prescale_RX[3],
		i_Prescale_RX[2],
		i_Prescale_RX[1],
		i_Prescale_RX[0] }), 
	.o_P_Data_RX({ o_P_Data_RX[7],
		o_P_Data_RX[6],
		o_P_Data_RX[5],
		o_P_Data_RX[4],
		o_P_Data_RX[3],
		o_P_Data_RX[2],
		o_P_Data_RX[1],
		o_P_Data_RX[0] }), 
	.o_Data_Valid_RX(o_Data_Valid_RX), 
	.o_Stop_Error_RX(o_Stop_Error_RX), 
	.o_Parity_Error_RX(o_Parity_Error_RX), 
	.test_si(test_si), 
	.test_so(n4), 
	.test_se(test_se), 
	.FE_OFN5_RST_SCAN_UART(FE_OFN5_RST_SCAN_UART), 
	.FE_OFN17_SE(FE_OFN17_SE), 
	.FE_OFN18_SE(FE_OFN18_SE), 
	.FE_OFN20_SE(FE_OFN20_SE), 
	.CLK_SCAN_UART_RX__L3_N1(CLK_SCAN_UART_RX__L3_N1));
endmodule

module SYS_CTRL_WIDTH8_ADDR4_test_1 (
	CLK, 
	RST_N, 
	ALU_OUT, 
	ALU_OUT_Valid, 
	RD_DATA, 
	RD_DATA_VLD, 
	FIFO_FULL, 
	RX_DATA, 
	RX_VLD, 
	ALU_FUN, 
	ALU_EN, 
	CLKG_EN, 
	WR_EN, 
	RD_EN, 
	ADDR_S, 
	WR_DATA_S, 
	TX_P_DATA, 
	TX_D_VLD, 
	CLK_DIV_EN, 
	test_so, 
	test_se, 
	FE_OFN2_RST_SCAN_REF, 
	FE_OFN17_SE, 
	FE_OFN18_SE, 
	FE_OFN19_SE, 
	CLK_SCAN_REF__L5_N1, 
	CLK_SCAN_REF__L5_N10, 
	CLK_SCAN_REF__L5_N11, 
	CLK_SCAN_REF__L5_N14);
   input CLK;
   input RST_N;
   input [15:0] ALU_OUT;
   input ALU_OUT_Valid;
   input [7:0] RD_DATA;
   input RD_DATA_VLD;
   input FIFO_FULL;
   input [7:0] RX_DATA;
   input RX_VLD;
   output [3:0] ALU_FUN;
   output ALU_EN;
   output CLKG_EN;
   output WR_EN;
   output RD_EN;
   output [3:0] ADDR_S;
   output [7:0] WR_DATA_S;
   output [7:0] TX_P_DATA;
   output TX_D_VLD;
   output CLK_DIV_EN;
   output test_so;
   input test_se;
   input FE_OFN2_RST_SCAN_REF;
   input FE_OFN17_SE;
   input FE_OFN18_SE;
   input FE_OFN19_SE;
   input CLK_SCAN_REF__L5_N1;
   input CLK_SCAN_REF__L5_N10;
   input CLK_SCAN_REF__L5_N11;
   input CLK_SCAN_REF__L5_N14;

   // Internal wires
   wire LTIE_LTIELO_NET;
   wire n148;
   wire \byte_counter[0] ;
   wire n41;
   wire n42;
   wire n43;
   wire n44;
   wire n46;
   wire n47;
   wire n58;
   wire n59;
   wire n60;
   wire n61;
   wire n62;
   wire n63;
   wire n64;
   wire n65;
   wire n66;
   wire n67;
   wire n68;
   wire n69;
   wire n70;
   wire n71;
   wire n72;
   wire n73;
   wire n74;
   wire n75;
   wire n76;
   wire n77;
   wire n78;
   wire n79;
   wire n80;
   wire n81;
   wire n82;
   wire n83;
   wire n84;
   wire n85;
   wire n86;
   wire n87;
   wire n88;
   wire n89;
   wire n90;
   wire n91;
   wire n92;
   wire n93;
   wire n94;
   wire n95;
   wire n96;
   wire n97;
   wire n98;
   wire n99;
   wire n100;
   wire n101;
   wire n102;
   wire n103;
   wire n104;
   wire n105;
   wire n106;
   wire n107;
   wire n108;
   wire n109;
   wire n110;
   wire n111;
   wire n112;
   wire n113;
   wire n114;
   wire n115;
   wire n116;
   wire n117;
   wire n118;
   wire n119;
   wire n120;
   wire n121;
   wire n122;
   wire n123;
   wire n124;
   wire n125;
   wire n126;
   wire n127;
   wire n128;
   wire n129;
   wire n130;
   wire n131;
   wire n30;
   wire n31;
   wire n34;
   wire n35;
   wire n36;
   wire n50;
   wire n51;
   wire n52;
   wire n53;
   wire n54;
   wire n55;
   wire n56;
   wire n57;
   wire n132;
   wire n133;
   wire n134;
   wire n135;
   wire n136;
   wire n137;
   wire n138;
   wire n139;
   wire n140;
   wire n141;
   wire n142;
   wire n143;
   wire n144;
   wire n145;
   wire n146;
   wire n147;
   wire n151;
   wire n152;
   wire n153;
   wire n154;
   wire [3:0] current_state;
   wire [3:0] next_state;
   wire [15:0] reg_alu_out;

   TIELOM LTIE_LTIELO (.Y(LTIE_LTIELO_NET));
   NOR3X1M U74 (.Y(n67), 
	.C(n85), 
	.B(n56), 
	.A(n147));
   OAI21BX1M U124 (.Y(ALU_EN), 
	.B0N(n88), 
	.A1(n147), 
	.A0(n75));
   OAI22X1M U128 (.Y(ADDR_S[3]), 
	.B1(n41), 
	.B0(n65), 
	.A1(n57), 
	.A0(n143));
   OAI22X1M U130 (.Y(ADDR_S[1]), 
	.B1(n43), 
	.B0(n65), 
	.A1(n57), 
	.A0(n145));
   SDFFRQX2M \reg_alu_out_reg[1]  (.SI(reg_alu_out[0]), 
	.SE(FE_OFN18_SE), 
	.RN(FE_OFN2_RST_SCAN_REF), 
	.Q(reg_alu_out[1]), 
	.D(n110), 
	.CK(CLK_SCAN_REF__L5_N11));
   SDFFRQX2M \reg_alu_out_reg[2]  (.SI(reg_alu_out[1]), 
	.SE(FE_OFN18_SE), 
	.RN(FE_OFN2_RST_SCAN_REF), 
	.Q(reg_alu_out[2]), 
	.D(n111), 
	.CK(CLK_SCAN_REF__L5_N10));
   SDFFRQX2M \reg_alu_out_reg[3]  (.SI(reg_alu_out[2]), 
	.SE(FE_OFN18_SE), 
	.RN(FE_OFN2_RST_SCAN_REF), 
	.Q(reg_alu_out[3]), 
	.D(n112), 
	.CK(CLK_SCAN_REF__L5_N10));
   SDFFRQX2M \reg_alu_out_reg[4]  (.SI(reg_alu_out[3]), 
	.SE(FE_OFN18_SE), 
	.RN(FE_OFN2_RST_SCAN_REF), 
	.Q(reg_alu_out[4]), 
	.D(n113), 
	.CK(CLK_SCAN_REF__L5_N11));
   SDFFRQX2M \reg_alu_out_reg[5]  (.SI(reg_alu_out[4]), 
	.SE(FE_OFN18_SE), 
	.RN(RST_N), 
	.Q(reg_alu_out[5]), 
	.D(n114), 
	.CK(CLK_SCAN_REF__L5_N11));
   SDFFRQX2M \reg_alu_out_reg[6]  (.SI(reg_alu_out[5]), 
	.SE(FE_OFN18_SE), 
	.RN(FE_OFN2_RST_SCAN_REF), 
	.Q(reg_alu_out[6]), 
	.D(n115), 
	.CK(CLK_SCAN_REF__L5_N14));
   SDFFRQX2M \reg_alu_out_reg[7]  (.SI(reg_alu_out[6]), 
	.SE(FE_OFN19_SE), 
	.RN(RST_N), 
	.Q(reg_alu_out[7]), 
	.D(n116), 
	.CK(CLK_SCAN_REF__L5_N11));
   SDFFRQX2M \reg_alu_out_reg[0]  (.SI(n151), 
	.SE(FE_OFN18_SE), 
	.RN(FE_OFN2_RST_SCAN_REF), 
	.Q(reg_alu_out[0]), 
	.D(n125), 
	.CK(CLK_SCAN_REF__L5_N10));
   SDFFRQX2M \reg_alu_out_reg[8]  (.SI(reg_alu_out[7]), 
	.SE(FE_OFN19_SE), 
	.RN(FE_OFN2_RST_SCAN_REF), 
	.Q(reg_alu_out[8]), 
	.D(n117), 
	.CK(CLK_SCAN_REF__L5_N11));
   SDFFRQX2M \reg_alu_out_reg[9]  (.SI(reg_alu_out[8]), 
	.SE(FE_OFN18_SE), 
	.RN(FE_OFN2_RST_SCAN_REF), 
	.Q(reg_alu_out[9]), 
	.D(n118), 
	.CK(CLK_SCAN_REF__L5_N11));
   SDFFRQX2M \reg_alu_out_reg[10]  (.SI(reg_alu_out[9]), 
	.SE(FE_OFN19_SE), 
	.RN(FE_OFN2_RST_SCAN_REF), 
	.Q(reg_alu_out[10]), 
	.D(n119), 
	.CK(CLK_SCAN_REF__L5_N10));
   SDFFRQX2M \reg_alu_out_reg[11]  (.SI(reg_alu_out[10]), 
	.SE(FE_OFN19_SE), 
	.RN(RST_N), 
	.Q(reg_alu_out[11]), 
	.D(n120), 
	.CK(CLK_SCAN_REF__L5_N11));
   SDFFRQX2M \reg_alu_out_reg[12]  (.SI(reg_alu_out[11]), 
	.SE(FE_OFN19_SE), 
	.RN(RST_N), 
	.Q(reg_alu_out[12]), 
	.D(n121), 
	.CK(CLK_SCAN_REF__L5_N11));
   SDFFRQX2M \reg_alu_out_reg[13]  (.SI(reg_alu_out[12]), 
	.SE(FE_OFN18_SE), 
	.RN(RST_N), 
	.Q(reg_alu_out[13]), 
	.D(n122), 
	.CK(CLK_SCAN_REF__L5_N11));
   SDFFRQX2M \reg_alu_out_reg[14]  (.SI(reg_alu_out[13]), 
	.SE(FE_OFN19_SE), 
	.RN(RST_N), 
	.Q(reg_alu_out[14]), 
	.D(n123), 
	.CK(CLK_SCAN_REF__L5_N11));
   SDFFRQX2M \reg_alu_out_reg[15]  (.SI(reg_alu_out[14]), 
	.SE(FE_OFN17_SE), 
	.RN(RST_N), 
	.Q(reg_alu_out[15]), 
	.D(n124), 
	.CK(CLK_SCAN_REF__L5_N11));
   SDFFRQX2M \byte_counter_reg[0]  (.SI(ALU_OUT_Valid), 
	.SE(FE_OFN17_SE), 
	.RN(RST_N), 
	.Q(\byte_counter[0] ), 
	.D(n131), 
	.CK(CLK));
   SDFFRX1M \reg_addr_reg[0]  (.SI(current_state[3]), 
	.SE(FE_OFN17_SE), 
	.RN(FE_OFN2_RST_SCAN_REF), 
	.QN(n44), 
	.Q(n31), 
	.D(n129), 
	.CK(CLK_SCAN_REF__L5_N10));
   SDFFRX1M \reg_addr_reg[2]  (.SI(n153), 
	.SE(test_se), 
	.RN(FE_OFN2_RST_SCAN_REF), 
	.QN(n42), 
	.Q(n152), 
	.D(n127), 
	.CK(CLK_SCAN_REF__L5_N10));
   SDFFRX1M \reg_addr_reg[3]  (.SI(n152), 
	.SE(FE_OFN17_SE), 
	.RN(FE_OFN2_RST_SCAN_REF), 
	.QN(n41), 
	.Q(n151), 
	.D(n128), 
	.CK(CLK_SCAN_REF__L5_N10));
   SDFFRX1M reg_alu_saved_reg (.SI(reg_alu_out[15]), 
	.SE(FE_OFN17_SE), 
	.RN(RST_N), 
	.QN(n46), 
	.Q(test_so), 
	.D(n109), 
	.CK(CLK));
   SDFFRQX2M \current_state_reg[1]  (.SI(current_state[0]), 
	.SE(FE_OFN17_SE), 
	.RN(FE_OFN2_RST_SCAN_REF), 
	.Q(current_state[1]), 
	.D(next_state[1]), 
	.CK(CLK_SCAN_REF__L5_N11));
   SDFFRX1M \reg_addr_reg[1]  (.SI(n44), 
	.SE(FE_OFN17_SE), 
	.RN(FE_OFN2_RST_SCAN_REF), 
	.QN(n43), 
	.Q(n153), 
	.D(n126), 
	.CK(CLK_SCAN_REF__L5_N10));
   SDFFRQX2M \current_state_reg[2]  (.SI(current_state[1]), 
	.SE(FE_OFN17_SE), 
	.RN(FE_OFN2_RST_SCAN_REF), 
	.Q(current_state[2]), 
	.D(next_state[2]), 
	.CK(CLK_SCAN_REF__L5_N11));
   SDFFRQX2M \current_state_reg[3]  (.SI(current_state[2]), 
	.SE(FE_OFN17_SE), 
	.RN(FE_OFN2_RST_SCAN_REF), 
	.Q(current_state[3]), 
	.D(next_state[3]), 
	.CK(CLK_SCAN_REF__L5_N11));
   SDFFRX2M \byte_counter_reg[1]  (.SI(\byte_counter[0] ), 
	.SE(FE_OFN17_SE), 
	.RN(RST_N), 
	.QN(n47), 
	.Q(n154), 
	.D(n130), 
	.CK(CLK_SCAN_REF__L5_N1));
   NOR2X8M U32 (.Y(ALU_FUN[2]), 
	.B(n144), 
	.A(n107));
   INVX2M U33 (.Y(n57), 
	.A(RD_EN));
   AND2X2M U34 (.Y(n30), 
	.B(n36), 
	.A(n35));
   INVX2M U35 (.Y(n146), 
	.A(RX_DATA[0]));
   CLKBUFX2M U39 (.Y(ADDR_S[2]), 
	.A(n148));
   OAI22X1M U40 (.Y(n148), 
	.B1(n42), 
	.B0(n65), 
	.A1(n57), 
	.A0(n144));
   CLKNAND2X2M U41 (.Y(ADDR_S[0]), 
	.B(n30), 
	.A(n82));
   CLKINVX1M U42 (.Y(n34), 
	.A(n65));
   CLKNAND2X2M U43 (.Y(n35), 
	.B(RX_DATA[0]), 
	.A(RD_EN));
   CLKNAND2X2M U44 (.Y(n36), 
	.B(n34), 
	.A(n31));
   NOR2X2M U45 (.Y(RD_EN), 
	.B(n147), 
	.A(n73));
   NOR2X2M U46 (.Y(n72), 
	.B(n56), 
	.A(n58));
   NAND3X2M U47 (.Y(n65), 
	.C(n108), 
	.B(n137), 
	.A(n56));
   NOR2X2M U48 (.Y(WR_EN), 
	.B(n147), 
	.A(n92));
   NOR2X4M U49 (.Y(ALU_FUN[1]), 
	.B(n145), 
	.A(n107));
   NOR2X6M U50 (.Y(ALU_FUN[0]), 
	.B(n146), 
	.A(n107));
   NOR2X2M U51 (.Y(n108), 
	.B(current_state[3]), 
	.A(n138));
   INVX2M U52 (.Y(n137), 
	.A(current_state[2]));
   NAND3X2M U53 (.Y(n58), 
	.C(current_state[3]), 
	.B(n137), 
	.A(n138));
   NAND3X2M U54 (.Y(n82), 
	.C(current_state[2]), 
	.B(n56), 
	.A(n108));
   NAND2X2M U55 (.Y(n61), 
	.B(current_state[0]), 
	.A(n93));
   INVX2M U56 (.Y(n143), 
	.A(RX_DATA[3]));
   INVX2M U57 (.Y(n52), 
	.A(\byte_counter[0] ));
   NAND4X2M U58 (.Y(n60), 
	.D(n86), 
	.C(RX_DATA[6]), 
	.B(n78), 
	.A(RX_DATA[2]));
   INVX2M U61 (.Y(n53), 
	.A(n67));
   INVX2M U62 (.Y(n54), 
	.A(n72));
   INVX2M U63 (.Y(n50), 
	.A(n91));
   CLKINVX2M U64 (.Y(n134), 
	.A(n69));
   NAND2BX2M U67 (.Y(TX_D_VLD), 
	.B(n106), 
	.AN(n94));
   AND2X2M U68 (.Y(n63), 
	.B(n56), 
	.A(n93));
   NAND2X2M U69 (.Y(n106), 
	.B(n81), 
	.A(n72));
   NOR2BX2M U70 (.Y(n97), 
	.B(n106), 
	.AN(n105));
   NOR2X2M U71 (.Y(n96), 
	.B(n105), 
	.A(n106));
   AND3X2M U72 (.Y(n92), 
	.C(n61), 
	.B(n82), 
	.A(n65));
   NOR2X2M U73 (.Y(WR_DATA_S[1]), 
	.B(n145), 
	.A(n92));
   NOR2X2M U75 (.Y(WR_DATA_S[2]), 
	.B(n144), 
	.A(n92));
   NOR2X2M U76 (.Y(WR_DATA_S[0]), 
	.B(n146), 
	.A(n92));
   NOR2X2M U77 (.Y(WR_DATA_S[3]), 
	.B(n143), 
	.A(n92));
   NOR2X2M U78 (.Y(WR_DATA_S[4]), 
	.B(n142), 
	.A(n92));
   NOR2X2M U79 (.Y(WR_DATA_S[5]), 
	.B(n141), 
	.A(n92));
   NOR2X2M U80 (.Y(WR_DATA_S[6]), 
	.B(n140), 
	.A(n92));
   NOR2X2M U81 (.Y(n91), 
	.B(n81), 
	.A(n54));
   INVX2M U82 (.Y(n55), 
	.A(n82));
   NAND4X2M U83 (.Y(next_state[2]), 
	.D(n62), 
	.C(n61), 
	.B(n57), 
	.A(n60));
   AOI211X2M U84 (.Y(n62), 
	.C0(n55), 
	.B0(n64), 
	.A1(n139), 
	.A0(n63));
   OAI21X2M U85 (.Y(n84), 
	.B0(n61), 
	.A1(n85), 
	.A0(n56));
   OAI21BX1M U86 (.Y(next_state[3]), 
	.B0N(ALU_EN), 
	.A1(n51), 
	.A0(n58));
   INVX2M U87 (.Y(n51), 
	.A(n59));
   INVX2M U90 (.Y(n136), 
	.A(n80));
   NOR2BX8M U91 (.Y(n107), 
	.B(n88), 
	.AN(n75));
   NOR2X2M U92 (.Y(ALU_FUN[3]), 
	.B(n143), 
	.A(n107));
   NAND2X2M U93 (.Y(CLKG_EN), 
	.B(n54), 
	.A(n107));
   NOR3X2M U94 (.Y(n93), 
	.C(n137), 
	.B(current_state[3]), 
	.A(current_state[1]));
   CLKINVX2M U95 (.Y(n147), 
	.A(RX_VLD));
   NAND3X2M U96 (.Y(n73), 
	.C(current_state[0]), 
	.B(n137), 
	.A(n108));
   INVX2M U97 (.Y(n138), 
	.A(current_state[1]));
   NOR3BX2M U99 (.Y(n94), 
	.C(n139), 
	.B(FIFO_FULL), 
	.AN(n63));
   CLKINVX2M U100 (.Y(n56), 
	.A(current_state[0]));
   CLKINVX2M U101 (.Y(n144), 
	.A(RX_DATA[2]));
   INVX2M U102 (.Y(n139), 
	.A(RD_DATA_VLD));
   NOR2X2M U103 (.Y(n81), 
	.B(FIFO_FULL), 
	.A(n46));
   CLKINVX2M U104 (.Y(n145), 
	.A(RX_DATA[1]));
   OAI2BB1X2M U105 (.Y(TX_P_DATA[0]), 
	.B0(n104), 
	.A1N(n94), 
	.A0N(RD_DATA[0]));
   AOI22X1M U106 (.Y(n104), 
	.B1(reg_alu_out[0]), 
	.B0(n97), 
	.A1(reg_alu_out[8]), 
	.A0(n96));
   OAI2BB1X2M U107 (.Y(TX_P_DATA[1]), 
	.B0(n103), 
	.A1N(n94), 
	.A0N(RD_DATA[1]));
   AOI22X1M U108 (.Y(n103), 
	.B1(reg_alu_out[1]), 
	.B0(n97), 
	.A1(reg_alu_out[9]), 
	.A0(n96));
   OAI2BB1X2M U109 (.Y(TX_P_DATA[2]), 
	.B0(n102), 
	.A1N(n94), 
	.A0N(RD_DATA[2]));
   AOI22X1M U110 (.Y(n102), 
	.B1(reg_alu_out[2]), 
	.B0(n97), 
	.A1(reg_alu_out[10]), 
	.A0(n96));
   OAI2BB1X2M U111 (.Y(TX_P_DATA[3]), 
	.B0(n101), 
	.A1N(n94), 
	.A0N(RD_DATA[3]));
   AOI22X1M U112 (.Y(n101), 
	.B1(reg_alu_out[3]), 
	.B0(n97), 
	.A1(reg_alu_out[11]), 
	.A0(n96));
   OAI2BB1X2M U113 (.Y(TX_P_DATA[4]), 
	.B0(n100), 
	.A1N(n94), 
	.A0N(RD_DATA[4]));
   AOI22X1M U114 (.Y(n100), 
	.B1(reg_alu_out[4]), 
	.B0(n97), 
	.A1(reg_alu_out[12]), 
	.A0(n96));
   OAI2BB1X2M U115 (.Y(TX_P_DATA[5]), 
	.B0(n99), 
	.A1N(n94), 
	.A0N(RD_DATA[5]));
   AOI22X1M U116 (.Y(n99), 
	.B1(reg_alu_out[5]), 
	.B0(n97), 
	.A1(reg_alu_out[13]), 
	.A0(n96));
   OAI2BB1X2M U117 (.Y(TX_P_DATA[6]), 
	.B0(n98), 
	.A1N(n94), 
	.A0N(RD_DATA[6]));
   AOI22X1M U118 (.Y(n98), 
	.B1(reg_alu_out[6]), 
	.B0(n97), 
	.A1(reg_alu_out[14]), 
	.A0(n96));
   OAI2BB1X2M U119 (.Y(TX_P_DATA[7]), 
	.B0(n95), 
	.A1N(n94), 
	.A0N(RD_DATA[7]));
   AOI22X1M U120 (.Y(n95), 
	.B1(reg_alu_out[7]), 
	.B0(n97), 
	.A1(reg_alu_out[15]), 
	.A0(n96));
   OAI32X1M U121 (.Y(n131), 
	.B1(n50), 
	.B0(n52), 
	.A2(n91), 
	.A1(\byte_counter[0] ), 
	.A0(n54));
   OAI32X1M U122 (.Y(n130), 
	.B1(n47), 
	.B0(n90), 
	.A2(n54), 
	.A1(n52), 
	.A0(n89));
   AOI21X2M U123 (.Y(n90), 
	.B0(n91), 
	.A1(n52), 
	.A0(n72));
   NAND2X2M U125 (.Y(n89), 
	.B(n47), 
	.A(n50));
   OAI22X1M U126 (.Y(n64), 
	.B1(n77), 
	.B0(n76), 
	.A1(n75), 
	.A0(RX_VLD));
   NAND4X2M U127 (.Y(n76), 
	.D(n141), 
	.C(n145), 
	.B(n78), 
	.A(RX_DATA[2]));
   NOR3X2M U129 (.Y(n87), 
	.C(n85), 
	.B(current_state[1]), 
	.A(current_state[0]));
   OAI211X2M U131 (.Y(n68), 
	.C0(n133), 
	.B0(n74), 
	.A1(n73), 
	.A0(RX_VLD));
   NAND4X2M U132 (.Y(n74), 
	.D(n79), 
	.C(RX_DATA[0]), 
	.B(n140), 
	.A(n144));
   INVX2M U133 (.Y(n133), 
	.A(n64));
   NOR2X2M U134 (.Y(n79), 
	.B(n80), 
	.A(n142));
   NOR2BX2M U135 (.Y(WR_DATA_S[7]), 
	.B(n92), 
	.AN(RX_DATA[7]));
   AND4X2M U136 (.Y(n78), 
	.D(RX_VLD), 
	.C(n87), 
	.B(RX_DATA[3]), 
	.A(RX_DATA[7]));
   OAI22X1M U137 (.Y(n128), 
	.B1(n41), 
	.B0(n67), 
	.A1(n53), 
	.A0(n143));
   OAI22X1M U138 (.Y(n127), 
	.B1(n42), 
	.B0(n67), 
	.A1(n53), 
	.A0(n144));
   OAI22X1M U139 (.Y(n126), 
	.B1(n43), 
	.B0(n67), 
	.A1(n53), 
	.A0(n145));
   OAI22X1M U140 (.Y(n129), 
	.B1(n44), 
	.B0(n67), 
	.A1(n53), 
	.A0(n146));
   NAND3X2M U141 (.Y(n75), 
	.C(current_state[2]), 
	.B(n108), 
	.A(current_state[0]));
   OAI211X2M U142 (.Y(next_state[1]), 
	.C0(n66), 
	.B0(n132), 
	.A1(n65), 
	.A0(RX_VLD));
   AOI221XLM U143 (.Y(n66), 
	.C0(n55), 
	.B1(RX_VLD), 
	.B0(n135), 
	.A1(n138), 
	.A0(n67));
   INVX2M U144 (.Y(n132), 
	.A(n68));
   INVX2M U145 (.Y(n135), 
	.A(n61));
   NAND2X2M U146 (.Y(n105), 
	.B(n52), 
	.A(n47));
   OR2X2M U147 (.Y(n85), 
	.B(current_state[2]), 
	.A(current_state[3]));
   NAND3X2M U148 (.Y(n80), 
	.C(RX_DATA[5]), 
	.B(n78), 
	.A(RX_DATA[1]));
   NAND4X2M U149 (.Y(next_state[0]), 
	.D(n71), 
	.C(n70), 
	.B(n69), 
	.A(n60));
   AOI32X1M U150 (.Y(n70), 
	.B1(n147), 
	.B0(n84), 
	.A2(n83), 
	.A1(n146), 
	.A0(n136));
   AOI221XLM U151 (.Y(n71), 
	.C0(n68), 
	.B1(n59), 
	.B0(n72), 
	.A1(RX_VLD), 
	.A0(n55));
   NOR3X2M U152 (.Y(n83), 
	.C(RX_DATA[4]), 
	.B(RX_DATA[6]), 
	.A(RX_DATA[2]));
   NOR2X2M U153 (.Y(n88), 
	.B(current_state[0]), 
	.A(n58));
   NAND3X2M U154 (.Y(n59), 
	.C(\byte_counter[0] ), 
	.B(n47), 
	.A(n81));
   OAI21X2M U155 (.Y(n109), 
	.B0(n69), 
	.A1(n46), 
	.A0(n87));
   INVX2M U156 (.Y(n142), 
	.A(RX_DATA[4]));
   INVX2M U157 (.Y(n140), 
	.A(RX_DATA[6]));
   INVX2M U158 (.Y(n141), 
	.A(RX_DATA[5]));
   NAND2X2M U159 (.Y(n69), 
	.B(n88), 
	.A(ALU_OUT_Valid));
   AO22X1M U160 (.Y(n125), 
	.B1(n134), 
	.B0(ALU_OUT[0]), 
	.A1(reg_alu_out[0]), 
	.A0(n69));
   AO22X1M U161 (.Y(n124), 
	.B1(n134), 
	.B0(ALU_OUT[15]), 
	.A1(reg_alu_out[15]), 
	.A0(n69));
   AO22X1M U162 (.Y(n123), 
	.B1(n134), 
	.B0(ALU_OUT[14]), 
	.A1(reg_alu_out[14]), 
	.A0(n69));
   AO22X1M U163 (.Y(n122), 
	.B1(n134), 
	.B0(ALU_OUT[13]), 
	.A1(reg_alu_out[13]), 
	.A0(n69));
   AO22X1M U164 (.Y(n121), 
	.B1(n134), 
	.B0(ALU_OUT[12]), 
	.A1(reg_alu_out[12]), 
	.A0(n69));
   AO22X1M U165 (.Y(n120), 
	.B1(n134), 
	.B0(ALU_OUT[11]), 
	.A1(reg_alu_out[11]), 
	.A0(n69));
   AO22X1M U166 (.Y(n119), 
	.B1(n134), 
	.B0(ALU_OUT[10]), 
	.A1(reg_alu_out[10]), 
	.A0(n69));
   AO22X1M U167 (.Y(n118), 
	.B1(n134), 
	.B0(ALU_OUT[9]), 
	.A1(reg_alu_out[9]), 
	.A0(n69));
   AO22X1M U168 (.Y(n117), 
	.B1(n134), 
	.B0(ALU_OUT[8]), 
	.A1(reg_alu_out[8]), 
	.A0(n69));
   AO22X1M U169 (.Y(n116), 
	.B1(n134), 
	.B0(ALU_OUT[7]), 
	.A1(reg_alu_out[7]), 
	.A0(n69));
   AO22X1M U170 (.Y(n115), 
	.B1(n134), 
	.B0(ALU_OUT[6]), 
	.A1(reg_alu_out[6]), 
	.A0(n69));
   AO22X1M U171 (.Y(n114), 
	.B1(n134), 
	.B0(ALU_OUT[5]), 
	.A1(reg_alu_out[5]), 
	.A0(n69));
   AO22X1M U172 (.Y(n113), 
	.B1(n134), 
	.B0(ALU_OUT[4]), 
	.A1(reg_alu_out[4]), 
	.A0(n69));
   AO22X1M U173 (.Y(n112), 
	.B1(n134), 
	.B0(ALU_OUT[3]), 
	.A1(reg_alu_out[3]), 
	.A0(n69));
   AO22X1M U174 (.Y(n111), 
	.B1(n134), 
	.B0(ALU_OUT[2]), 
	.A1(reg_alu_out[2]), 
	.A0(n69));
   AO22X1M U175 (.Y(n110), 
	.B1(n134), 
	.B0(ALU_OUT[1]), 
	.A1(reg_alu_out[1]), 
	.A0(n69));
   SDFFRQX4M \current_state_reg[0]  (.SI(n154), 
	.SE(FE_OFN17_SE), 
	.RN(RST_N), 
	.Q(current_state[0]), 
	.D(next_state[0]), 
	.CK(CLK_SCAN_REF__L5_N1));
   INVX2M U3 (.Y(CLK_DIV_EN), 
	.A(LTIE_LTIELO_NET));
   NOR4X1M U5 (.Y(n86), 
	.D(RX_DATA[0]), 
	.C(RX_DATA[1]), 
	.B(RX_DATA[4]), 
	.A(RX_DATA[5]));
   NAND3XLM U6 (.Y(n77), 
	.C(RX_DATA[4]), 
	.B(RX_DATA[6]), 
	.A(RX_DATA[0]));
endmodule

