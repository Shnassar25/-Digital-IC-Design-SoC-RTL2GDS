/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : O-2018.06-SP1
// Date      : Sun Sep 27 03:48:04 2026
/////////////////////////////////////////////////////////////


module RST_SYNC_NUM_STAGES2_0 ( CLK_Rsync, RST_Rsync, SYNC_RST );
  input CLK_Rsync, RST_Rsync;
  output SYNC_RST;
  wire   \sync_reg[0] ;

  DFFRQX2M \sync_reg_reg[1]  ( .D(\sync_reg[0] ), .CK(CLK_Rsync), .RN(
        RST_Rsync), .Q(SYNC_RST) );
  DFFRQX2M \sync_reg_reg[0]  ( .D(1'b1), .CK(CLK_Rsync), .RN(RST_Rsync), .Q(
        \sync_reg[0] ) );
endmodule


module RST_SYNC_NUM_STAGES2_1 ( CLK_Rsync, RST_Rsync, SYNC_RST );
  input CLK_Rsync, RST_Rsync;
  output SYNC_RST;
  wire   \sync_reg[0] ;

  DFFRQX2M \sync_reg_reg[1]  ( .D(\sync_reg[0] ), .CK(CLK_Rsync), .RN(
        RST_Rsync), .Q(SYNC_RST) );
  DFFRQX2M \sync_reg_reg[0]  ( .D(1'b1), .CK(CLK_Rsync), .RN(RST_Rsync), .Q(
        \sync_reg[0] ) );
endmodule


module Clk_div_50_Div_Ratio8_0_DW01_inc_0 ( A, SUM );
  input [7:0] A;
  output [7:0] SUM;

  wire   [7:2] carry;

  ADDHX1M U1_1_6 ( .A(A[6]), .B(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  ADDHX1M U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  ADDHX1M U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ADDHX1M U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  ADDHX1M U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  ADDHX1M U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  CLKXOR2X2M U1 ( .A(carry[7]), .B(A[7]), .Y(SUM[7]) );
  CLKINVX1M U2 ( .A(A[0]), .Y(SUM[0]) );
endmodule


module Clk_div_50_Div_Ratio8_0 ( i_ref_clk, i_rst_n, i_clk_en, i_div_ratio, 
        o_div_clk );
  input [7:0] i_div_ratio;
  input i_ref_clk, i_rst_n, i_clk_en;
  output o_div_clk;
  wire   N8, N9, N10, N11, N12, N15, N18, N19, N20, N21, N22, N23, N24, N25,
         N34, N35, N36, N37, N38, N39, N40, N41, q1, q2, n16, n17, n1, n2, n3,
         n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n18, n19, n20, n21,
         n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35,
         n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49,
         n50;
  wire   [7:0] counter;

  DFFNSRHX2M q2_reg ( .D(n16), .CKN(i_ref_clk), .SN(1'b1), .RN(i_rst_n), .Q(q2) );
  Clk_div_50_Div_Ratio8_0_DW01_inc_0 add_36 ( .A(counter), .SUM({N25, N24, N23, 
        N22, N21, N20, N19, N18}) );
  DFFRX1M q1_reg ( .D(n17), .CK(i_ref_clk), .RN(i_rst_n), .Q(q1), .QN(n11) );
  DFFRX1M \counter_reg[7]  ( .D(N41), .CK(i_ref_clk), .RN(i_rst_n), .Q(
        counter[7]), .QN(n18) );
  DFFRX1M \counter_reg[6]  ( .D(N40), .CK(i_ref_clk), .RN(i_rst_n), .Q(
        counter[6]) );
  DFFRX1M \counter_reg[5]  ( .D(N39), .CK(i_ref_clk), .RN(i_rst_n), .Q(
        counter[5]), .QN(n23) );
  DFFRX1M \counter_reg[4]  ( .D(N38), .CK(i_ref_clk), .RN(i_rst_n), .Q(
        counter[4]), .QN(n22) );
  DFFRX1M \counter_reg[3]  ( .D(N37), .CK(i_ref_clk), .RN(i_rst_n), .Q(
        counter[3]), .QN(n29) );
  DFFRX1M \counter_reg[2]  ( .D(N36), .CK(i_ref_clk), .RN(i_rst_n), .Q(
        counter[2]), .QN(n28) );
  DFFRX1M \counter_reg[1]  ( .D(N35), .CK(i_ref_clk), .RN(i_rst_n), .Q(
        counter[1]), .QN(n35) );
  DFFRX1M \counter_reg[0]  ( .D(N34), .CK(i_ref_clk), .RN(i_rst_n), .Q(
        counter[0]), .QN(n34) );
  OA21X2M U3 ( .A0(n6), .A1(n26), .B0(n7), .Y(n1) );
  CLKXOR2X2M U4 ( .A(i_div_ratio[6]), .B(n7), .Y(n2) );
  OR2X2M U5 ( .A(i_div_ratio[1]), .B(i_div_ratio[0]), .Y(n3) );
  CLKINVX1M U6 ( .A(i_div_ratio[0]), .Y(N8) );
  OAI2BB1X1M U7 ( .A0N(i_div_ratio[0]), .A1N(i_div_ratio[1]), .B0(n3), .Y(N9)
         );
  OR2X1M U8 ( .A(n3), .B(i_div_ratio[2]), .Y(n4) );
  OAI2BB1X1M U9 ( .A0N(n3), .A1N(i_div_ratio[2]), .B0(n4), .Y(N10) );
  OR2X1M U10 ( .A(n4), .B(i_div_ratio[3]), .Y(n5) );
  OAI2BB1X1M U11 ( .A0N(n4), .A1N(i_div_ratio[3]), .B0(n5), .Y(N11) );
  NOR2X1M U12 ( .A(n5), .B(i_div_ratio[4]), .Y(n6) );
  AO21XLM U13 ( .A0(n5), .A1(i_div_ratio[4]), .B0(n6), .Y(N12) );
  CLKNAND2X2M U14 ( .A(n6), .B(n26), .Y(n7) );
  NOR2X1M U15 ( .A(i_div_ratio[6]), .B(n7), .Y(n8) );
  CLKXOR2X2M U16 ( .A(i_div_ratio[7]), .B(n8), .Y(N15) );
  CLKMX2X2M U17 ( .A(i_ref_clk), .B(n9), .S0(n10), .Y(o_div_clk) );
  AO21XLM U18 ( .A0(q2), .A1(i_div_ratio[0]), .B0(q1), .Y(n9) );
  MXI2X1M U19 ( .A(n11), .B(n12), .S0(n10), .Y(n17) );
  OAI21X1M U20 ( .A0(n13), .A1(n14), .B0(n18), .Y(n12) );
  NOR2X1M U21 ( .A(counter[6]), .B(n19), .Y(n14) );
  AOI221XLM U22 ( .A0(counter[5]), .A1(n20), .B0(counter[6]), .B1(n19), .C0(
        n21), .Y(n13) );
  AOI221XLM U23 ( .A0(i_div_ratio[5]), .A1(n22), .B0(i_div_ratio[6]), .B1(n23), 
        .C0(n24), .Y(n21) );
  AOI221XLM U25 ( .A0(counter[3]), .A1(n25), .B0(counter[4]), .B1(n26), .C0(
        n27), .Y(n24) );
  AOI221XLM U26 ( .A0(i_div_ratio[3]), .A1(n28), .B0(i_div_ratio[4]), .B1(n29), 
        .C0(n30), .Y(n27) );
  AOI211X1M U27 ( .A0(counter[2]), .A1(n31), .B0(n32), .C0(n33), .Y(n30) );
  AOI31X1M U28 ( .A0(n34), .A1(n35), .A2(i_div_ratio[1]), .B0(i_div_ratio[2]), 
        .Y(n33) );
  AOI21X1M U29 ( .A0(i_div_ratio[1]), .A1(n34), .B0(n35), .Y(n32) );
  CLKINVX1M U30 ( .A(i_div_ratio[3]), .Y(n31) );
  CLKMX2X2M U31 ( .A(q2), .B(q1), .S0(n10), .Y(n16) );
  NOR2BX1M U32 ( .AN(N25), .B(n36), .Y(N41) );
  NOR2BX1M U33 ( .AN(N24), .B(n36), .Y(N40) );
  NOR2BX1M U34 ( .AN(N23), .B(n36), .Y(N39) );
  NOR2BX1M U35 ( .AN(N22), .B(n36), .Y(N38) );
  NOR2BX1M U36 ( .AN(N21), .B(n36), .Y(N37) );
  NOR2BX1M U37 ( .AN(N20), .B(n36), .Y(N36) );
  NOR2BX1M U38 ( .AN(N19), .B(n36), .Y(N35) );
  NOR2BX1M U39 ( .AN(N18), .B(n36), .Y(N34) );
  OAI211X1M U40 ( .A0(N15), .A1(n18), .B0(n37), .C0(n10), .Y(n36) );
  OA21X1M U41 ( .A0(n38), .A1(n39), .B0(i_clk_en), .Y(n10) );
  OR3X1M U42 ( .A(i_div_ratio[2]), .B(i_div_ratio[3]), .C(i_div_ratio[1]), .Y(
        n39) );
  NAND4X1M U43 ( .A(n25), .B(n26), .C(n20), .D(n19), .Y(n38) );
  CLKINVX1M U44 ( .A(i_div_ratio[7]), .Y(n19) );
  CLKINVX1M U45 ( .A(i_div_ratio[6]), .Y(n20) );
  CLKINVX1M U46 ( .A(i_div_ratio[5]), .Y(n26) );
  CLKINVX1M U47 ( .A(i_div_ratio[4]), .Y(n25) );
  OAI221X1M U48 ( .A0(counter[6]), .A1(n2), .B0(counter[7]), .B1(n40), .C0(n41), .Y(n37) );
  OAI2BB2X1M U49 ( .B0(n42), .B1(n43), .A0N(n2), .A1N(counter[6]), .Y(n41) );
  NOR2X1M U50 ( .A(counter[5]), .B(n1), .Y(n43) );
  AOI221XLM U51 ( .A0(counter[4]), .A1(n44), .B0(counter[5]), .B1(n1), .C0(n45), .Y(n42) );
  AOI221XLM U52 ( .A0(N11), .A1(n29), .B0(N12), .B1(n22), .C0(n46), .Y(n45) );
  AOI222X1M U53 ( .A0(counter[2]), .A1(n47), .B0(n48), .B1(n49), .C0(
        counter[3]), .C1(n50), .Y(n46) );
  CLKINVX1M U54 ( .A(N11), .Y(n50) );
  OAI211X1M U55 ( .A0(N9), .A1(n35), .B0(n34), .C0(N8), .Y(n49) );
  AOI22X1M U56 ( .A0(N10), .A1(n28), .B0(N9), .B1(n35), .Y(n48) );
  CLKINVX1M U57 ( .A(N10), .Y(n47) );
  CLKINVX1M U58 ( .A(N12), .Y(n44) );
  CLKINVX1M U59 ( .A(N15), .Y(n40) );
endmodule


module Clk_div_50_Div_Ratio8_1_DW01_inc_0 ( A, SUM );
  input [7:0] A;
  output [7:0] SUM;

  wire   [7:2] carry;

  ADDHX1M U1_1_6 ( .A(A[6]), .B(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  ADDHX1M U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  ADDHX1M U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ADDHX1M U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  ADDHX1M U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  ADDHX1M U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  CLKXOR2X2M U1 ( .A(carry[7]), .B(A[7]), .Y(SUM[7]) );
  CLKINVX1M U2 ( .A(A[0]), .Y(SUM[0]) );
endmodule


module Clk_div_50_Div_Ratio8_1 ( i_ref_clk, i_rst_n, i_clk_en, i_div_ratio, 
        o_div_clk );
  input [7:0] i_div_ratio;
  input i_ref_clk, i_rst_n, i_clk_en;
  output o_div_clk;
  wire   N8, N9, N10, N11, N12, N15, N18, N19, N20, N21, N22, N23, N24, N25,
         N34, N35, N36, N37, N38, N39, N40, N41, q1, q2, n1, n2, n3, n4, n5,
         n6, n7, n8, n9, n10, n11, n12, n13, n14, n18, n19, n20, n21, n22, n23,
         n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37,
         n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51,
         n52;
  wire   [7:0] counter;

  DFFNSRHX2M q2_reg ( .D(n52), .CKN(i_ref_clk), .SN(1'b1), .RN(i_rst_n), .Q(q2) );
  Clk_div_50_Div_Ratio8_1_DW01_inc_0 add_36 ( .A(counter), .SUM({N25, N24, N23, 
        N22, N21, N20, N19, N18}) );
  DFFRQX2M \counter_reg[7]  ( .D(N41), .CK(i_ref_clk), .RN(i_rst_n), .Q(
        counter[7]) );
  DFFRQX2M \counter_reg[4]  ( .D(N38), .CK(i_ref_clk), .RN(i_rst_n), .Q(
        counter[4]) );
  DFFRQX2M \counter_reg[5]  ( .D(N39), .CK(i_ref_clk), .RN(i_rst_n), .Q(
        counter[5]) );
  DFFRQX2M \counter_reg[6]  ( .D(N40), .CK(i_ref_clk), .RN(i_rst_n), .Q(
        counter[6]) );
  DFFRQX2M \counter_reg[0]  ( .D(N34), .CK(i_ref_clk), .RN(i_rst_n), .Q(
        counter[0]) );
  DFFRQX2M \counter_reg[1]  ( .D(N35), .CK(i_ref_clk), .RN(i_rst_n), .Q(
        counter[1]) );
  DFFRQX2M \counter_reg[3]  ( .D(N37), .CK(i_ref_clk), .RN(i_rst_n), .Q(
        counter[3]) );
  DFFRQX2M \counter_reg[2]  ( .D(N36), .CK(i_ref_clk), .RN(i_rst_n), .Q(
        counter[2]) );
  DFFRQX2M q1_reg ( .D(n51), .CK(i_ref_clk), .RN(i_rst_n), .Q(q1) );
  CLKXOR2X2M U3 ( .A(i_div_ratio[6]), .B(n7), .Y(n1) );
  OA21X2M U4 ( .A0(n6), .A1(n9), .B0(n7), .Y(n2) );
  OR2X2M U5 ( .A(i_div_ratio[1]), .B(i_div_ratio[0]), .Y(n3) );
  INVX2M U6 ( .A(i_div_ratio[5]), .Y(n9) );
  CLKINVX1M U7 ( .A(i_div_ratio[0]), .Y(N8) );
  OAI2BB1X1M U8 ( .A0N(i_div_ratio[0]), .A1N(i_div_ratio[1]), .B0(n3), .Y(N9)
         );
  OR2X1M U9 ( .A(n3), .B(i_div_ratio[2]), .Y(n4) );
  OAI2BB1X1M U10 ( .A0N(n3), .A1N(i_div_ratio[2]), .B0(n4), .Y(N10) );
  OR2X1M U11 ( .A(n4), .B(i_div_ratio[3]), .Y(n5) );
  OAI2BB1X1M U12 ( .A0N(n4), .A1N(i_div_ratio[3]), .B0(n5), .Y(N11) );
  NOR2X1M U13 ( .A(n5), .B(i_div_ratio[4]), .Y(n6) );
  AO21XLM U14 ( .A0(n5), .A1(i_div_ratio[4]), .B0(n6), .Y(N12) );
  CLKNAND2X2M U15 ( .A(n6), .B(n9), .Y(n7) );
  NOR2X1M U16 ( .A(i_div_ratio[6]), .B(n7), .Y(n8) );
  CLKXOR2X2M U17 ( .A(i_div_ratio[7]), .B(n8), .Y(N15) );
  CLKMX2X2M U18 ( .A(i_ref_clk), .B(n10), .S0(n11), .Y(o_div_clk) );
  AO21XLM U19 ( .A0(q2), .A1(i_div_ratio[0]), .B0(q1), .Y(n10) );
  MXI2X1M U20 ( .A(n12), .B(n13), .S0(n11), .Y(n51) );
  OAI21X1M U21 ( .A0(n14), .A1(n18), .B0(n19), .Y(n13) );
  NOR2X1M U22 ( .A(counter[6]), .B(n20), .Y(n18) );
  AOI221XLM U23 ( .A0(counter[5]), .A1(n21), .B0(counter[6]), .B1(n20), .C0(
        n22), .Y(n14) );
  AOI221XLM U25 ( .A0(i_div_ratio[5]), .A1(n23), .B0(i_div_ratio[6]), .B1(n24), 
        .C0(n25), .Y(n22) );
  AOI221XLM U26 ( .A0(counter[3]), .A1(n26), .B0(counter[4]), .B1(n9), .C0(n27), .Y(n25) );
  AOI221XLM U27 ( .A0(i_div_ratio[3]), .A1(n28), .B0(i_div_ratio[4]), .B1(n29), 
        .C0(n30), .Y(n27) );
  AOI211X1M U28 ( .A0(counter[2]), .A1(n31), .B0(n32), .C0(n33), .Y(n30) );
  AOI31X1M U29 ( .A0(n34), .A1(n35), .A2(i_div_ratio[1]), .B0(i_div_ratio[2]), 
        .Y(n33) );
  AOI21X1M U30 ( .A0(i_div_ratio[1]), .A1(n34), .B0(n35), .Y(n32) );
  CLKINVX1M U31 ( .A(i_div_ratio[3]), .Y(n31) );
  CLKINVX1M U32 ( .A(counter[5]), .Y(n24) );
  CLKINVX1M U33 ( .A(q1), .Y(n12) );
  CLKMX2X2M U34 ( .A(q2), .B(q1), .S0(n11), .Y(n52) );
  NOR2BX1M U35 ( .AN(N25), .B(n36), .Y(N41) );
  NOR2BX1M U36 ( .AN(N24), .B(n36), .Y(N40) );
  NOR2BX1M U37 ( .AN(N23), .B(n36), .Y(N39) );
  NOR2BX1M U38 ( .AN(N22), .B(n36), .Y(N38) );
  NOR2BX1M U39 ( .AN(N21), .B(n36), .Y(N37) );
  NOR2BX1M U40 ( .AN(N20), .B(n36), .Y(N36) );
  NOR2BX1M U41 ( .AN(N19), .B(n36), .Y(N35) );
  NOR2BX1M U42 ( .AN(N18), .B(n36), .Y(N34) );
  OAI211X1M U43 ( .A0(N15), .A1(n19), .B0(n37), .C0(n11), .Y(n36) );
  OA21X1M U44 ( .A0(n38), .A1(n39), .B0(i_clk_en), .Y(n11) );
  OR3X1M U45 ( .A(i_div_ratio[2]), .B(i_div_ratio[3]), .C(i_div_ratio[1]), .Y(
        n39) );
  NAND4X1M U46 ( .A(n26), .B(n9), .C(n21), .D(n20), .Y(n38) );
  CLKINVX1M U47 ( .A(i_div_ratio[7]), .Y(n20) );
  CLKINVX1M U48 ( .A(i_div_ratio[6]), .Y(n21) );
  CLKINVX1M U49 ( .A(i_div_ratio[4]), .Y(n26) );
  OAI221X1M U50 ( .A0(counter[6]), .A1(n1), .B0(counter[7]), .B1(n40), .C0(n41), .Y(n37) );
  OAI2BB2X1M U51 ( .B0(n42), .B1(n43), .A0N(n1), .A1N(counter[6]), .Y(n41) );
  NOR2X1M U52 ( .A(counter[5]), .B(n2), .Y(n43) );
  AOI221XLM U53 ( .A0(counter[4]), .A1(n44), .B0(counter[5]), .B1(n2), .C0(n45), .Y(n42) );
  AOI221XLM U54 ( .A0(N11), .A1(n29), .B0(N12), .B1(n23), .C0(n46), .Y(n45) );
  AOI222X1M U55 ( .A0(counter[2]), .A1(n47), .B0(n48), .B1(n49), .C0(
        counter[3]), .C1(n50), .Y(n46) );
  CLKINVX1M U56 ( .A(N11), .Y(n50) );
  OAI211X1M U57 ( .A0(N9), .A1(n35), .B0(n34), .C0(N8), .Y(n49) );
  CLKINVX1M U58 ( .A(counter[0]), .Y(n34) );
  AOI22X1M U59 ( .A0(N10), .A1(n28), .B0(N9), .B1(n35), .Y(n48) );
  CLKINVX1M U60 ( .A(counter[1]), .Y(n35) );
  CLKINVX1M U61 ( .A(counter[2]), .Y(n28) );
  CLKINVX1M U62 ( .A(N10), .Y(n47) );
  CLKINVX1M U63 ( .A(counter[4]), .Y(n23) );
  CLKINVX1M U64 ( .A(counter[3]), .Y(n29) );
  CLKINVX1M U65 ( .A(N12), .Y(n44) );
  CLKINVX1M U66 ( .A(N15), .Y(n40) );
  CLKINVX1M U67 ( .A(counter[7]), .Y(n19) );
endmodule


module CLK_DIV_MUX_WIDTH8 ( IN, OUT );
  input [5:0] IN;
  output [7:0] OUT;
  wire   n5, n6, n7, n8, n9, n14, n15, n16, n17;

  INVX2M U3 ( .A(1'b1), .Y(OUT[7]) );
  INVX2M U5 ( .A(1'b1), .Y(OUT[6]) );
  INVX2M U7 ( .A(1'b1), .Y(OUT[5]) );
  INVX2M U9 ( .A(1'b1), .Y(OUT[4]) );
  NAND4BX1M U11 ( .AN(IN[4]), .B(IN[3]), .C(n15), .D(n14), .Y(n6) );
  NAND4BX1M U12 ( .AN(IN[3]), .B(IN[4]), .C(n15), .D(n14), .Y(n7) );
  OAI211X2M U13 ( .A0(n8), .A1(n9), .B0(n17), .C0(n16), .Y(OUT[0]) );
  NAND2X2M U14 ( .A(n7), .B(n6), .Y(n9) );
  NOR4X1M U15 ( .A(IN[5]), .B(IN[4]), .C(IN[3]), .D(n15), .Y(n8) );
  NOR3X2M U16 ( .A(n7), .B(IN[1]), .C(IN[0]), .Y(OUT[1]) );
  NOR4X1M U17 ( .A(n5), .B(IN[3]), .C(IN[5]), .D(IN[4]), .Y(OUT[3]) );
  NAND3X2M U18 ( .A(n17), .B(n16), .C(IN[2]), .Y(n5) );
  NOR3X2M U19 ( .A(n6), .B(IN[1]), .C(IN[0]), .Y(OUT[2]) );
  INVX2M U20 ( .A(IN[2]), .Y(n15) );
  INVX2M U21 ( .A(IN[0]), .Y(n17) );
  INVX2M U22 ( .A(IN[1]), .Y(n16) );
  INVX2M U23 ( .A(IN[5]), .Y(n14) );
endmodule


module PULSE_GEN ( clk, rst, lvl_sig, pulse_sig );
  input clk, rst, lvl_sig;
  output pulse_sig;
  wire   lvl_sig_ff, pulse_flop;

  DFFRQX2M lvl_sig_ff_reg ( .D(lvl_sig), .CK(clk), .RN(rst), .Q(lvl_sig_ff) );
  DFFRQX2M pulse_flop_reg ( .D(lvl_sig_ff), .CK(clk), .RN(rst), .Q(pulse_flop)
         );
  NOR2BX2M U3 ( .AN(lvl_sig_ff), .B(pulse_flop), .Y(pulse_sig) );
endmodule


module CLK_GATING ( CLK, EN_CLK, CLK_GATED );
  input CLK, EN_CLK;
  output CLK_GATED;


  TLATNCAX12M U0_TLATNCAX12M ( .E(EN_CLK), .CK(CLK), .ECK(CLK_GATED) );
endmodule


module Data_SYNC_NUM_STAGES2_BUS_WIDTH8 ( CLK, RST, ASYNC, BUS_EN, 
        ENABLE_PULSE, SYNC_BUS );
  input [7:0] ASYNC;
  output [7:0] SYNC_BUS;
  input CLK, RST, BUS_EN;
  output ENABLE_PULSE;
  wire   pulse_flop, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10;
  wire   [1:0] sync_enable_reg;

  DFFRQX2M pulse_flop_reg ( .D(sync_enable_reg[1]), .CK(CLK), .RN(RST), .Q(
        pulse_flop) );
  DFFRQX2M \SYNC_BUS_reg[7]  ( .D(n9), .CK(CLK), .RN(RST), .Q(SYNC_BUS[7]) );
  DFFRQX2M \sync_enable_reg_reg[1]  ( .D(sync_enable_reg[0]), .CK(CLK), .RN(
        RST), .Q(sync_enable_reg[1]) );
  DFFRQX2M \SYNC_BUS_reg[5]  ( .D(n7), .CK(CLK), .RN(RST), .Q(SYNC_BUS[5]) );
  DFFRQX2M \SYNC_BUS_reg[6]  ( .D(n8), .CK(CLK), .RN(RST), .Q(SYNC_BUS[6]) );
  DFFRQX2M \SYNC_BUS_reg[4]  ( .D(n6), .CK(CLK), .RN(RST), .Q(SYNC_BUS[4]) );
  DFFRQX2M \SYNC_BUS_reg[3]  ( .D(n5), .CK(CLK), .RN(RST), .Q(SYNC_BUS[3]) );
  DFFRQX2M \SYNC_BUS_reg[2]  ( .D(n4), .CK(CLK), .RN(RST), .Q(SYNC_BUS[2]) );
  DFFRQX2M ENABLE_PULSE_reg ( .D(n10), .CK(CLK), .RN(RST), .Q(ENABLE_PULSE) );
  DFFRQX2M \SYNC_BUS_reg[1]  ( .D(n3), .CK(CLK), .RN(RST), .Q(SYNC_BUS[1]) );
  DFFRQX2M \SYNC_BUS_reg[0]  ( .D(n2), .CK(CLK), .RN(RST), .Q(SYNC_BUS[0]) );
  DFFRQX2M \sync_enable_reg_reg[0]  ( .D(BUS_EN), .CK(CLK), .RN(RST), .Q(
        sync_enable_reg[0]) );
  INVX2M U3 ( .A(n1), .Y(n10) );
  NAND2BX2M U4 ( .AN(pulse_flop), .B(sync_enable_reg[1]), .Y(n1) );
  AO22X1M U5 ( .A0(ASYNC[0]), .A1(n10), .B0(SYNC_BUS[0]), .B1(n1), .Y(n2) );
  AO22X1M U6 ( .A0(ASYNC[1]), .A1(n10), .B0(SYNC_BUS[1]), .B1(n1), .Y(n3) );
  AO22X1M U7 ( .A0(ASYNC[2]), .A1(n10), .B0(SYNC_BUS[2]), .B1(n1), .Y(n4) );
  AO22X1M U8 ( .A0(ASYNC[3]), .A1(n10), .B0(SYNC_BUS[3]), .B1(n1), .Y(n5) );
  AO22X1M U9 ( .A0(ASYNC[4]), .A1(n10), .B0(SYNC_BUS[4]), .B1(n1), .Y(n6) );
  AO22X1M U10 ( .A0(ASYNC[5]), .A1(n10), .B0(SYNC_BUS[5]), .B1(n1), .Y(n7) );
  AO22X1M U11 ( .A0(ASYNC[6]), .A1(n10), .B0(SYNC_BUS[6]), .B1(n1), .Y(n8) );
  AO22X1M U12 ( .A0(ASYNC[7]), .A1(n10), .B0(SYNC_BUS[7]), .B1(n1), .Y(n9) );
endmodule


module REG_file_WIDTH8_NO_OF_REG16_ADDR4 ( CLK_regfile, RST_regfile, WrData, 
        Address, WrEn, RdEn, RdData, RdData_Valid, REG0, REG1, REG2, REG3 );
  input [7:0] WrData;
  input [3:0] Address;
  output [7:0] RdData;
  output [7:0] REG0;
  output [7:0] REG1;
  output [7:0] REG2;
  output [7:0] REG3;
  input CLK_regfile, RST_regfile, WrEn, RdEn;
  output RdData_Valid;
  wire   N11, N12, N13, N14, \Reg_File[15][7] , \Reg_File[15][6] ,
         \Reg_File[15][5] , \Reg_File[15][4] , \Reg_File[15][3] ,
         \Reg_File[15][2] , \Reg_File[15][1] , \Reg_File[15][0] ,
         \Reg_File[14][7] , \Reg_File[14][6] , \Reg_File[14][5] ,
         \Reg_File[14][4] , \Reg_File[14][3] , \Reg_File[14][2] ,
         \Reg_File[14][1] , \Reg_File[14][0] , \Reg_File[13][7] ,
         \Reg_File[13][6] , \Reg_File[13][5] , \Reg_File[13][4] ,
         \Reg_File[13][3] , \Reg_File[13][2] , \Reg_File[13][1] ,
         \Reg_File[13][0] , \Reg_File[12][7] , \Reg_File[12][6] ,
         \Reg_File[12][5] , \Reg_File[12][4] , \Reg_File[12][3] ,
         \Reg_File[12][2] , \Reg_File[12][1] , \Reg_File[12][0] ,
         \Reg_File[11][7] , \Reg_File[11][6] , \Reg_File[11][5] ,
         \Reg_File[11][4] , \Reg_File[11][3] , \Reg_File[11][2] ,
         \Reg_File[11][1] , \Reg_File[11][0] , \Reg_File[10][7] ,
         \Reg_File[10][6] , \Reg_File[10][5] , \Reg_File[10][4] ,
         \Reg_File[10][3] , \Reg_File[10][2] , \Reg_File[10][1] ,
         \Reg_File[10][0] , \Reg_File[9][7] , \Reg_File[9][6] ,
         \Reg_File[9][5] , \Reg_File[9][4] , \Reg_File[9][3] ,
         \Reg_File[9][2] , \Reg_File[9][1] , \Reg_File[9][0] ,
         \Reg_File[8][7] , \Reg_File[8][6] , \Reg_File[8][5] ,
         \Reg_File[8][4] , \Reg_File[8][3] , \Reg_File[8][2] ,
         \Reg_File[8][1] , \Reg_File[8][0] , \Reg_File[7][7] ,
         \Reg_File[7][6] , \Reg_File[7][5] , \Reg_File[7][4] ,
         \Reg_File[7][3] , \Reg_File[7][2] , \Reg_File[7][1] ,
         \Reg_File[7][0] , \Reg_File[6][7] , \Reg_File[6][6] ,
         \Reg_File[6][5] , \Reg_File[6][4] , \Reg_File[6][3] ,
         \Reg_File[6][2] , \Reg_File[6][1] , \Reg_File[6][0] ,
         \Reg_File[5][7] , \Reg_File[5][6] , \Reg_File[5][5] ,
         \Reg_File[5][4] , \Reg_File[5][3] , \Reg_File[5][2] ,
         \Reg_File[5][1] , \Reg_File[5][0] , \Reg_File[4][7] ,
         \Reg_File[4][6] , \Reg_File[4][5] , \Reg_File[4][4] ,
         \Reg_File[4][3] , \Reg_File[4][2] , \Reg_File[4][1] ,
         \Reg_File[4][0] , N36, N37, N38, N39, N40, N41, N42, N43, n12, n13,
         n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27,
         n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41,
         n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55,
         n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69,
         n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83,
         n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97,
         n98, n99, n100, n101, n102, n103, n104, n105, n106, n107, n108, n109,
         n110, n111, n112, n113, n114, n115, n116, n117, n118, n119, n120,
         n121, n122, n123, n124, n125, n126, n127, n128, n129, n130, n131,
         n132, n133, n134, n135, n136, n137, n138, n139, n140, n141, n142,
         n143, n144, n145, n146, n147, n148, n149, n150, n151, n152, n153,
         n154, n155, n156, n157, n158, n159, n160, n161, n162, n163, n164,
         n165, n166, n167, n168, n169, n170, n171, n172, n173, n174, n175,
         n176, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n177, n178, n179,
         n180, n181, n182, n183, n184, n185, n186, n187, n188, n189, n190,
         n191, n192, n193, n194, n195, n196, n197, n198, n199, n200, n201,
         n202, n203, n204, n205, n206, n207, n208, n209, n210, n211, n212,
         n213, n214, n215, n216, n217, n218, n219, n220, n221, n222, n223,
         n224, n225, n226, n227, n228, n229, n230, n231, n232, n233, n234,
         n235, n236, n237, n238, n239, n240, n241, n242, n243, n244, n245,
         n246, n247, n248, n249, n250, n251, n252, n253, n254, n255, n256,
         n257, n258, n259, n260, n261, n262, n263, n264, n265, n266, n267,
         n268, n269, n270, n271, n272, n273, n274, n275, n276, n277, n278,
         n279, n280, n281, n282, n283, n284, n285, n286, n287, n288, n289,
         n290, n291, n292, n293, n294, n295, n296, n297, n298, n299, n300,
         n301, n302, n303;
  assign N11 = Address[0];
  assign N12 = Address[1];
  assign N13 = Address[2];
  assign N14 = Address[3];

  DFFRQX2M \Reg_File_reg[15][7]  ( .D(n175), .CK(CLK_regfile), .RN(n280), .Q(
        \Reg_File[15][7] ) );
  DFFRQX2M \Reg_File_reg[15][6]  ( .D(n174), .CK(CLK_regfile), .RN(n284), .Q(
        \Reg_File[15][6] ) );
  DFFRQX2M \Reg_File_reg[15][5]  ( .D(n173), .CK(CLK_regfile), .RN(n281), .Q(
        \Reg_File[15][5] ) );
  DFFRQX2M \Reg_File_reg[15][4]  ( .D(n172), .CK(CLK_regfile), .RN(n281), .Q(
        \Reg_File[15][4] ) );
  DFFRQX2M \Reg_File_reg[15][3]  ( .D(n171), .CK(CLK_regfile), .RN(n281), .Q(
        \Reg_File[15][3] ) );
  DFFRQX2M \Reg_File_reg[15][2]  ( .D(n170), .CK(CLK_regfile), .RN(n281), .Q(
        \Reg_File[15][2] ) );
  DFFRQX2M \Reg_File_reg[15][1]  ( .D(n169), .CK(CLK_regfile), .RN(n281), .Q(
        \Reg_File[15][1] ) );
  DFFRQX2M \Reg_File_reg[15][0]  ( .D(n168), .CK(CLK_regfile), .RN(n280), .Q(
        \Reg_File[15][0] ) );
  DFFRQX2M \Reg_File_reg[13][7]  ( .D(n159), .CK(CLK_regfile), .RN(n280), .Q(
        \Reg_File[13][7] ) );
  DFFRQX2M \Reg_File_reg[13][6]  ( .D(n158), .CK(CLK_regfile), .RN(n282), .Q(
        \Reg_File[13][6] ) );
  DFFRQX2M \Reg_File_reg[13][5]  ( .D(n157), .CK(CLK_regfile), .RN(n282), .Q(
        \Reg_File[13][5] ) );
  DFFRQX2M \Reg_File_reg[13][4]  ( .D(n156), .CK(CLK_regfile), .RN(n282), .Q(
        \Reg_File[13][4] ) );
  DFFRQX2M \Reg_File_reg[13][3]  ( .D(n155), .CK(CLK_regfile), .RN(n282), .Q(
        \Reg_File[13][3] ) );
  DFFRQX2M \Reg_File_reg[13][2]  ( .D(n154), .CK(CLK_regfile), .RN(n282), .Q(
        \Reg_File[13][2] ) );
  DFFRQX2M \Reg_File_reg[13][1]  ( .D(n153), .CK(CLK_regfile), .RN(n281), .Q(
        \Reg_File[13][1] ) );
  DFFRQX2M \Reg_File_reg[13][0]  ( .D(n152), .CK(CLK_regfile), .RN(n281), .Q(
        \Reg_File[13][0] ) );
  DFFRQX2M \Reg_File_reg[11][7]  ( .D(n143), .CK(CLK_regfile), .RN(n283), .Q(
        \Reg_File[11][7] ) );
  DFFRQX2M \Reg_File_reg[11][6]  ( .D(n142), .CK(CLK_regfile), .RN(n283), .Q(
        \Reg_File[11][6] ) );
  DFFRQX2M \Reg_File_reg[11][5]  ( .D(n141), .CK(CLK_regfile), .RN(n283), .Q(
        \Reg_File[11][5] ) );
  DFFRQX2M \Reg_File_reg[11][4]  ( .D(n140), .CK(CLK_regfile), .RN(n283), .Q(
        \Reg_File[11][4] ) );
  DFFRQX2M \Reg_File_reg[11][3]  ( .D(n139), .CK(CLK_regfile), .RN(n283), .Q(
        \Reg_File[11][3] ) );
  DFFRQX2M \Reg_File_reg[11][2]  ( .D(n138), .CK(CLK_regfile), .RN(n282), .Q(
        \Reg_File[11][2] ) );
  DFFRQX2M \Reg_File_reg[11][1]  ( .D(n137), .CK(CLK_regfile), .RN(n282), .Q(
        \Reg_File[11][1] ) );
  DFFRQX2M \Reg_File_reg[11][0]  ( .D(n136), .CK(CLK_regfile), .RN(n282), .Q(
        \Reg_File[11][0] ) );
  DFFRQX2M \Reg_File_reg[9][7]  ( .D(n127), .CK(CLK_regfile), .RN(n284), .Q(
        \Reg_File[9][7] ) );
  DFFRQX2M \Reg_File_reg[9][6]  ( .D(n126), .CK(CLK_regfile), .RN(n284), .Q(
        \Reg_File[9][6] ) );
  DFFRQX2M \Reg_File_reg[9][5]  ( .D(n125), .CK(CLK_regfile), .RN(n284), .Q(
        \Reg_File[9][5] ) );
  DFFRQX2M \Reg_File_reg[9][4]  ( .D(n124), .CK(CLK_regfile), .RN(n284), .Q(
        \Reg_File[9][4] ) );
  DFFRQX2M \Reg_File_reg[9][3]  ( .D(n123), .CK(CLK_regfile), .RN(n283), .Q(
        \Reg_File[9][3] ) );
  DFFRQX2M \Reg_File_reg[9][2]  ( .D(n122), .CK(CLK_regfile), .RN(n283), .Q(
        \Reg_File[9][2] ) );
  DFFRQX2M \Reg_File_reg[9][1]  ( .D(n121), .CK(CLK_regfile), .RN(n283), .Q(
        \Reg_File[9][1] ) );
  DFFRQX2M \Reg_File_reg[9][0]  ( .D(n120), .CK(CLK_regfile), .RN(n283), .Q(
        \Reg_File[9][0] ) );
  DFFRQX2M \Reg_File_reg[7][7]  ( .D(n111), .CK(CLK_regfile), .RN(n285), .Q(
        \Reg_File[7][7] ) );
  DFFRQX2M \Reg_File_reg[7][6]  ( .D(n110), .CK(CLK_regfile), .RN(n285), .Q(
        \Reg_File[7][6] ) );
  DFFRQX2M \Reg_File_reg[7][5]  ( .D(n109), .CK(CLK_regfile), .RN(n285), .Q(
        \Reg_File[7][5] ) );
  DFFRQX2M \Reg_File_reg[7][4]  ( .D(n108), .CK(CLK_regfile), .RN(n285), .Q(
        \Reg_File[7][4] ) );
  DFFRQX2M \Reg_File_reg[7][3]  ( .D(n107), .CK(CLK_regfile), .RN(n284), .Q(
        \Reg_File[7][3] ) );
  DFFRQX2M \Reg_File_reg[7][2]  ( .D(n106), .CK(CLK_regfile), .RN(n284), .Q(
        \Reg_File[7][2] ) );
  DFFRQX2M \Reg_File_reg[7][1]  ( .D(n105), .CK(CLK_regfile), .RN(n284), .Q(
        \Reg_File[7][1] ) );
  DFFRQX2M \Reg_File_reg[7][0]  ( .D(n104), .CK(CLK_regfile), .RN(n284), .Q(
        \Reg_File[7][0] ) );
  DFFRQX2M \Reg_File_reg[5][7]  ( .D(n95), .CK(CLK_regfile), .RN(n286), .Q(
        \Reg_File[5][7] ) );
  DFFRQX2M \Reg_File_reg[5][6]  ( .D(n94), .CK(CLK_regfile), .RN(n286), .Q(
        \Reg_File[5][6] ) );
  DFFRQX2M \Reg_File_reg[5][5]  ( .D(n93), .CK(CLK_regfile), .RN(n285), .Q(
        \Reg_File[5][5] ) );
  DFFRQX2M \Reg_File_reg[5][4]  ( .D(n92), .CK(CLK_regfile), .RN(n285), .Q(
        \Reg_File[5][4] ) );
  DFFRQX2M \Reg_File_reg[5][3]  ( .D(n91), .CK(CLK_regfile), .RN(n285), .Q(
        \Reg_File[5][3] ) );
  DFFRQX2M \Reg_File_reg[5][2]  ( .D(n90), .CK(CLK_regfile), .RN(n285), .Q(
        \Reg_File[5][2] ) );
  DFFRQX2M \Reg_File_reg[5][1]  ( .D(n89), .CK(CLK_regfile), .RN(n285), .Q(
        \Reg_File[5][1] ) );
  DFFRQX2M \Reg_File_reg[5][0]  ( .D(n88), .CK(CLK_regfile), .RN(n285), .Q(
        \Reg_File[5][0] ) );
  DFFRQX2M \Reg_File_reg[14][7]  ( .D(n167), .CK(CLK_regfile), .RN(n280), .Q(
        \Reg_File[14][7] ) );
  DFFRQX2M \Reg_File_reg[14][6]  ( .D(n166), .CK(CLK_regfile), .RN(n280), .Q(
        \Reg_File[14][6] ) );
  DFFRQX2M \Reg_File_reg[14][5]  ( .D(n165), .CK(CLK_regfile), .RN(n280), .Q(
        \Reg_File[14][5] ) );
  DFFRQX2M \Reg_File_reg[14][4]  ( .D(n164), .CK(CLK_regfile), .RN(n280), .Q(
        \Reg_File[14][4] ) );
  DFFRQX2M \Reg_File_reg[14][3]  ( .D(n163), .CK(CLK_regfile), .RN(n280), .Q(
        \Reg_File[14][3] ) );
  DFFRQX2M \Reg_File_reg[14][2]  ( .D(n162), .CK(CLK_regfile), .RN(n280), .Q(
        \Reg_File[14][2] ) );
  DFFRQX2M \Reg_File_reg[14][1]  ( .D(n161), .CK(CLK_regfile), .RN(n280), .Q(
        \Reg_File[14][1] ) );
  DFFRQX2M \Reg_File_reg[14][0]  ( .D(n160), .CK(CLK_regfile), .RN(n280), .Q(
        \Reg_File[14][0] ) );
  DFFRQX2M \Reg_File_reg[12][7]  ( .D(n151), .CK(CLK_regfile), .RN(n281), .Q(
        \Reg_File[12][7] ) );
  DFFRQX2M \Reg_File_reg[12][6]  ( .D(n150), .CK(CLK_regfile), .RN(n281), .Q(
        \Reg_File[12][6] ) );
  DFFRQX2M \Reg_File_reg[12][5]  ( .D(n149), .CK(CLK_regfile), .RN(n281), .Q(
        \Reg_File[12][5] ) );
  DFFRQX2M \Reg_File_reg[12][4]  ( .D(n148), .CK(CLK_regfile), .RN(n281), .Q(
        \Reg_File[12][4] ) );
  DFFRQX2M \Reg_File_reg[12][3]  ( .D(n147), .CK(CLK_regfile), .RN(n281), .Q(
        \Reg_File[12][3] ) );
  DFFRQX2M \Reg_File_reg[12][2]  ( .D(n146), .CK(CLK_regfile), .RN(n281), .Q(
        \Reg_File[12][2] ) );
  DFFRQX2M \Reg_File_reg[12][1]  ( .D(n145), .CK(CLK_regfile), .RN(n281), .Q(
        \Reg_File[12][1] ) );
  DFFRQX2M \Reg_File_reg[12][0]  ( .D(n144), .CK(CLK_regfile), .RN(n281), .Q(
        \Reg_File[12][0] ) );
  DFFRQX2M \Reg_File_reg[10][7]  ( .D(n135), .CK(CLK_regfile), .RN(n282), .Q(
        \Reg_File[10][7] ) );
  DFFRQX2M \Reg_File_reg[10][6]  ( .D(n134), .CK(CLK_regfile), .RN(n282), .Q(
        \Reg_File[10][6] ) );
  DFFRQX2M \Reg_File_reg[10][5]  ( .D(n133), .CK(CLK_regfile), .RN(n282), .Q(
        \Reg_File[10][5] ) );
  DFFRQX2M \Reg_File_reg[10][4]  ( .D(n132), .CK(CLK_regfile), .RN(n282), .Q(
        \Reg_File[10][4] ) );
  DFFRQX2M \Reg_File_reg[10][3]  ( .D(n131), .CK(CLK_regfile), .RN(n282), .Q(
        \Reg_File[10][3] ) );
  DFFRQX2M \Reg_File_reg[10][2]  ( .D(n130), .CK(CLK_regfile), .RN(n282), .Q(
        \Reg_File[10][2] ) );
  DFFRQX2M \Reg_File_reg[10][1]  ( .D(n129), .CK(CLK_regfile), .RN(n282), .Q(
        \Reg_File[10][1] ) );
  DFFRQX2M \Reg_File_reg[10][0]  ( .D(n128), .CK(CLK_regfile), .RN(n284), .Q(
        \Reg_File[10][0] ) );
  DFFRQX2M \Reg_File_reg[8][7]  ( .D(n119), .CK(CLK_regfile), .RN(n283), .Q(
        \Reg_File[8][7] ) );
  DFFRQX2M \Reg_File_reg[8][6]  ( .D(n118), .CK(CLK_regfile), .RN(n283), .Q(
        \Reg_File[8][6] ) );
  DFFRQX2M \Reg_File_reg[8][5]  ( .D(n117), .CK(CLK_regfile), .RN(n283), .Q(
        \Reg_File[8][5] ) );
  DFFRQX2M \Reg_File_reg[8][4]  ( .D(n116), .CK(CLK_regfile), .RN(n283), .Q(
        \Reg_File[8][4] ) );
  DFFRQX2M \Reg_File_reg[8][3]  ( .D(n115), .CK(CLK_regfile), .RN(n283), .Q(
        \Reg_File[8][3] ) );
  DFFRQX2M \Reg_File_reg[8][2]  ( .D(n114), .CK(CLK_regfile), .RN(n283), .Q(
        \Reg_File[8][2] ) );
  DFFRQX2M \Reg_File_reg[8][1]  ( .D(n113), .CK(CLK_regfile), .RN(n285), .Q(
        \Reg_File[8][1] ) );
  DFFRQX2M \Reg_File_reg[8][0]  ( .D(n112), .CK(CLK_regfile), .RN(n285), .Q(
        \Reg_File[8][0] ) );
  DFFRQX2M \Reg_File_reg[6][7]  ( .D(n103), .CK(CLK_regfile), .RN(n284), .Q(
        \Reg_File[6][7] ) );
  DFFRQX2M \Reg_File_reg[6][6]  ( .D(n102), .CK(CLK_regfile), .RN(n284), .Q(
        \Reg_File[6][6] ) );
  DFFRQX2M \Reg_File_reg[6][5]  ( .D(n101), .CK(CLK_regfile), .RN(n284), .Q(
        \Reg_File[6][5] ) );
  DFFRQX2M \Reg_File_reg[6][4]  ( .D(n100), .CK(CLK_regfile), .RN(n284), .Q(
        \Reg_File[6][4] ) );
  DFFRQX2M \Reg_File_reg[6][3]  ( .D(n99), .CK(CLK_regfile), .RN(n286), .Q(
        \Reg_File[6][3] ) );
  DFFRQX2M \Reg_File_reg[6][2]  ( .D(n98), .CK(CLK_regfile), .RN(n286), .Q(
        \Reg_File[6][2] ) );
  DFFRQX2M \Reg_File_reg[6][1]  ( .D(n97), .CK(CLK_regfile), .RN(n286), .Q(
        \Reg_File[6][1] ) );
  DFFRQX2M \Reg_File_reg[6][0]  ( .D(n96), .CK(CLK_regfile), .RN(n286), .Q(
        \Reg_File[6][0] ) );
  DFFRQX2M \Reg_File_reg[4][7]  ( .D(n87), .CK(CLK_regfile), .RN(n285), .Q(
        \Reg_File[4][7] ) );
  DFFRQX2M \Reg_File_reg[4][6]  ( .D(n86), .CK(CLK_regfile), .RN(n285), .Q(
        \Reg_File[4][6] ) );
  DFFRQX2M \Reg_File_reg[4][5]  ( .D(n85), .CK(CLK_regfile), .RN(n285), .Q(
        \Reg_File[4][5] ) );
  DFFRQX2M \Reg_File_reg[4][4]  ( .D(n84), .CK(CLK_regfile), .RN(n287), .Q(
        \Reg_File[4][4] ) );
  DFFRQX2M \Reg_File_reg[4][3]  ( .D(n83), .CK(CLK_regfile), .RN(n287), .Q(
        \Reg_File[4][3] ) );
  DFFRQX2M \Reg_File_reg[4][2]  ( .D(n82), .CK(CLK_regfile), .RN(n287), .Q(
        \Reg_File[4][2] ) );
  DFFRQX2M \Reg_File_reg[4][1]  ( .D(n81), .CK(CLK_regfile), .RN(n287), .Q(
        \Reg_File[4][1] ) );
  DFFRQX2M \Reg_File_reg[4][0]  ( .D(n80), .CK(CLK_regfile), .RN(n287), .Q(
        \Reg_File[4][0] ) );
  DFFRQX2M \RdData_reg[7]  ( .D(n47), .CK(CLK_regfile), .RN(n286), .Q(
        RdData[7]) );
  DFFRQX2M \RdData_reg[6]  ( .D(n46), .CK(CLK_regfile), .RN(n288), .Q(
        RdData[6]) );
  DFFRQX2M \RdData_reg[5]  ( .D(n45), .CK(CLK_regfile), .RN(n288), .Q(
        RdData[5]) );
  DFFRQX2M \RdData_reg[4]  ( .D(n44), .CK(CLK_regfile), .RN(n288), .Q(
        RdData[4]) );
  DFFRQX2M \RdData_reg[3]  ( .D(n43), .CK(CLK_regfile), .RN(n288), .Q(
        RdData[3]) );
  DFFRQX2M \RdData_reg[2]  ( .D(n42), .CK(CLK_regfile), .RN(n288), .Q(
        RdData[2]) );
  DFFRQX2M \RdData_reg[1]  ( .D(n41), .CK(CLK_regfile), .RN(n288), .Q(
        RdData[1]) );
  DFFRQX2M \RdData_reg[0]  ( .D(n40), .CK(CLK_regfile), .RN(n284), .Q(
        RdData[0]) );
  DFFRQX2M \Reg_File_reg[3][7]  ( .D(n79), .CK(CLK_regfile), .RN(n287), .Q(
        REG3[7]) );
  DFFRQX2M \Reg_File_reg[3][4]  ( .D(n76), .CK(CLK_regfile), .RN(n286), .Q(
        REG3[4]) );
  DFFRQX2M \Reg_File_reg[3][2]  ( .D(n74), .CK(CLK_regfile), .RN(n286), .Q(
        REG3[2]) );
  DFFRQX2M \Reg_File_reg[3][3]  ( .D(n75), .CK(CLK_regfile), .RN(n286), .Q(
        REG3[3]) );
  DFFRQX2M \Reg_File_reg[3][6]  ( .D(n78), .CK(CLK_regfile), .RN(n286), .Q(
        REG3[6]) );
  DFFRQX2M \Reg_File_reg[3][1]  ( .D(n73), .CK(CLK_regfile), .RN(n286), .Q(
        REG3[1]) );
  DFFSQX2M \Reg_File_reg[3][5]  ( .D(n77), .CK(CLK_regfile), .SN(n280), .Q(
        REG3[5]) );
  DFFRQX2M \Reg_File_reg[2][1]  ( .D(n65), .CK(CLK_regfile), .RN(n288), .Q(
        REG2[1]) );
  DFFSQX2M \Reg_File_reg[2][0]  ( .D(n64), .CK(CLK_regfile), .SN(n280), .Q(
        REG2[0]) );
  DFFRQX2M \Reg_File_reg[3][0]  ( .D(n72), .CK(CLK_regfile), .RN(n286), .Q(
        REG3[0]) );
  DFFRQX2M \Reg_File_reg[2][4]  ( .D(n68), .CK(CLK_regfile), .RN(n288), .Q(
        REG2[4]) );
  DFFRQX2M \Reg_File_reg[2][3]  ( .D(n67), .CK(CLK_regfile), .RN(n288), .Q(
        REG2[3]) );
  DFFRQX2M \Reg_File_reg[2][2]  ( .D(n66), .CK(CLK_regfile), .RN(n288), .Q(
        REG2[2]) );
  DFFRQX2M \Reg_File_reg[2][5]  ( .D(n69), .CK(CLK_regfile), .RN(n286), .Q(
        REG2[5]) );
  DFFRQX2M \Reg_File_reg[2][6]  ( .D(n70), .CK(CLK_regfile), .RN(n286), .Q(
        REG2[6]) );
  DFFRQX2M RdData_Valid_reg ( .D(n176), .CK(CLK_regfile), .RN(n288), .Q(
        RdData_Valid) );
  DFFRQX2M \Reg_File_reg[0][1]  ( .D(n49), .CK(CLK_regfile), .RN(n289), .Q(
        REG0[1]) );
  DFFRQX2M \Reg_File_reg[0][0]  ( .D(n48), .CK(CLK_regfile), .RN(n288), .Q(
        REG0[0]) );
  DFFRQX2M \Reg_File_reg[0][2]  ( .D(n50), .CK(CLK_regfile), .RN(n288), .Q(
        REG0[2]) );
  DFFRQX2M \Reg_File_reg[0][3]  ( .D(n51), .CK(CLK_regfile), .RN(n280), .Q(
        REG0[3]) );
  DFFRQX2M \Reg_File_reg[0][4]  ( .D(n52), .CK(CLK_regfile), .RN(n289), .Q(
        REG0[4]) );
  DFFRQX2M \Reg_File_reg[0][5]  ( .D(n53), .CK(CLK_regfile), .RN(n287), .Q(
        REG0[5]) );
  DFFRQX2M \Reg_File_reg[0][7]  ( .D(n55), .CK(CLK_regfile), .RN(n287), .Q(
        REG0[7]) );
  DFFRQX2M \Reg_File_reg[0][6]  ( .D(n54), .CK(CLK_regfile), .RN(n287), .Q(
        REG0[6]) );
  DFFRQX2M \Reg_File_reg[1][7]  ( .D(n63), .CK(CLK_regfile), .RN(n288), .Q(
        REG1[7]) );
  DFFRQX2M \Reg_File_reg[1][6]  ( .D(n62), .CK(CLK_regfile), .RN(n287), .Q(
        REG1[6]) );
  DFFRQX2M \Reg_File_reg[1][1]  ( .D(n57), .CK(CLK_regfile), .RN(n287), .Q(
        REG1[1]) );
  DFFRQX2M \Reg_File_reg[1][4]  ( .D(n60), .CK(CLK_regfile), .RN(n287), .Q(
        REG1[4]) );
  DFFRQX2M \Reg_File_reg[1][5]  ( .D(n61), .CK(CLK_regfile), .RN(n288), .Q(
        REG1[5]) );
  DFFSQX2M \Reg_File_reg[2][7]  ( .D(n71), .CK(CLK_regfile), .SN(n280), .Q(
        REG2[7]) );
  DFFRQX2M \Reg_File_reg[1][2]  ( .D(n58), .CK(CLK_regfile), .RN(n287), .Q(
        REG1[2]) );
  DFFRQX2M \Reg_File_reg[1][3]  ( .D(n59), .CK(CLK_regfile), .RN(n287), .Q(
        REG1[3]) );
  DFFRQX2M \Reg_File_reg[1][0]  ( .D(n56), .CK(CLK_regfile), .RN(n287), .Q(
        REG1[0]) );
  NOR2BX2M U3 ( .AN(n26), .B(N11), .Y(n15) );
  NOR2BX2M U4 ( .AN(n38), .B(N11), .Y(n30) );
  NOR2BX2M U5 ( .AN(N13), .B(N12), .Y(n22) );
  NOR2BX2M U6 ( .AN(N13), .B(n272), .Y(n25) );
  NOR2X2M U7 ( .A(n272), .B(N13), .Y(n19) );
  NOR2X2M U8 ( .A(N12), .B(N13), .Y(n14) );
  INVX2M U9 ( .A(n274), .Y(n275) );
  BUFX2M U10 ( .A(n1), .Y(n274) );
  INVX2M U11 ( .A(n278), .Y(n279) );
  INVX2M U12 ( .A(n12), .Y(n303) );
  OR2X2M U13 ( .A(n272), .B(n273), .Y(n1) );
  BUFX2M U14 ( .A(n3), .Y(n278) );
  INVX2M U15 ( .A(n4), .Y(n276) );
  INVX2M U16 ( .A(n2), .Y(n277) );
  NOR2BX2M U17 ( .AN(n26), .B(n273), .Y(n17) );
  NOR2BX2M U18 ( .AN(n38), .B(n273), .Y(n32) );
  NAND2X2M U19 ( .A(n17), .B(n14), .Y(n16) );
  NAND2X2M U20 ( .A(n19), .B(n17), .Y(n20) );
  NAND2X2M U21 ( .A(n22), .B(n17), .Y(n23) );
  NAND2X2M U22 ( .A(n25), .B(n17), .Y(n27) );
  NAND2X2M U23 ( .A(n32), .B(n14), .Y(n31) );
  NAND2X2M U24 ( .A(n32), .B(n19), .Y(n34) );
  NAND2X2M U25 ( .A(n32), .B(n22), .Y(n36) );
  NAND2X2M U26 ( .A(n32), .B(n25), .Y(n39) );
  NAND2X2M U27 ( .A(n19), .B(n15), .Y(n18) );
  NAND2X2M U28 ( .A(n22), .B(n15), .Y(n21) );
  NAND2X2M U29 ( .A(n25), .B(n15), .Y(n24) );
  NAND2X2M U30 ( .A(n30), .B(n14), .Y(n29) );
  NAND2X2M U31 ( .A(n30), .B(n19), .Y(n33) );
  NAND2X2M U32 ( .A(n30), .B(n22), .Y(n35) );
  NAND2X2M U33 ( .A(n30), .B(n25), .Y(n37) );
  NAND2X2M U34 ( .A(n14), .B(n15), .Y(n13) );
  NAND2BX2M U35 ( .AN(WrEn), .B(RdEn), .Y(n12) );
  NOR2BX2M U36 ( .AN(WrEn), .B(RdEn), .Y(n28) );
  BUFX2M U37 ( .A(n294), .Y(n280) );
  BUFX2M U38 ( .A(n291), .Y(n287) );
  BUFX2M U39 ( .A(n291), .Y(n286) );
  BUFX2M U40 ( .A(n292), .Y(n285) );
  BUFX2M U41 ( .A(n293), .Y(n283) );
  BUFX2M U42 ( .A(n293), .Y(n282) );
  BUFX2M U43 ( .A(n294), .Y(n281) );
  BUFX2M U44 ( .A(n292), .Y(n284) );
  BUFX2M U45 ( .A(n290), .Y(n288) );
  BUFX2M U46 ( .A(n290), .Y(n289) );
  OR2X2M U47 ( .A(n273), .B(N12), .Y(n2) );
  OR2X2M U48 ( .A(N11), .B(N12), .Y(n3) );
  OR2X2M U49 ( .A(n272), .B(N11), .Y(n4) );
  INVX2M U50 ( .A(N11), .Y(n273) );
  INVX2M U51 ( .A(N12), .Y(n272) );
  INVX2M U52 ( .A(WrData[0]), .Y(n295) );
  INVX2M U53 ( .A(WrData[1]), .Y(n296) );
  INVX2M U54 ( .A(WrData[2]), .Y(n297) );
  INVX2M U55 ( .A(WrData[3]), .Y(n298) );
  INVX2M U56 ( .A(WrData[4]), .Y(n299) );
  INVX2M U57 ( .A(WrData[5]), .Y(n300) );
  INVX2M U58 ( .A(WrData[6]), .Y(n301) );
  NOR2BX2M U59 ( .AN(n28), .B(N14), .Y(n26) );
  INVX2M U60 ( .A(N13), .Y(n271) );
  INVX2M U61 ( .A(N14), .Y(n270) );
  AND2X2M U62 ( .A(N14), .B(n28), .Y(n38) );
  BUFX2M U63 ( .A(RST_regfile), .Y(n291) );
  BUFX2M U64 ( .A(RST_regfile), .Y(n293) );
  BUFX2M U65 ( .A(RST_regfile), .Y(n292) );
  BUFX2M U66 ( .A(RST_regfile), .Y(n294) );
  BUFX2M U67 ( .A(RST_regfile), .Y(n290) );
  AO22X1M U68 ( .A0(N43), .A1(n303), .B0(RdData[0]), .B1(n12), .Y(n40) );
  AO22X1M U69 ( .A0(N41), .A1(n303), .B0(RdData[2]), .B1(n12), .Y(n42) );
  AO22X1M U70 ( .A0(N40), .A1(n303), .B0(RdData[3]), .B1(n12), .Y(n43) );
  AO22X1M U71 ( .A0(N37), .A1(n303), .B0(RdData[6]), .B1(n12), .Y(n46) );
  AO22X1M U72 ( .A0(N36), .A1(n303), .B0(RdData[7]), .B1(n12), .Y(n47) );
  AO22X1M U73 ( .A0(N42), .A1(n303), .B0(RdData[1]), .B1(n12), .Y(n41) );
  AO22X1M U74 ( .A0(N39), .A1(n303), .B0(RdData[4]), .B1(n12), .Y(n44) );
  AO22X1M U75 ( .A0(N38), .A1(n303), .B0(RdData[5]), .B1(n12), .Y(n45) );
  OAI2BB2X1M U76 ( .B0(n295), .B1(n16), .A0N(REG1[0]), .A1N(n16), .Y(n56) );
  OAI2BB2X1M U77 ( .B0(n296), .B1(n16), .A0N(REG1[1]), .A1N(n16), .Y(n57) );
  OAI2BB2X1M U78 ( .B0(n297), .B1(n16), .A0N(REG1[2]), .A1N(n16), .Y(n58) );
  OAI2BB2X1M U79 ( .B0(n298), .B1(n16), .A0N(REG1[3]), .A1N(n16), .Y(n59) );
  OAI2BB2X1M U80 ( .B0(n299), .B1(n16), .A0N(REG1[4]), .A1N(n16), .Y(n60) );
  OAI2BB2X1M U81 ( .B0(n300), .B1(n16), .A0N(REG1[5]), .A1N(n16), .Y(n61) );
  OAI2BB2X1M U82 ( .B0(n301), .B1(n16), .A0N(REG1[6]), .A1N(n16), .Y(n62) );
  OAI2BB2X1M U83 ( .B0(n302), .B1(n16), .A0N(REG1[7]), .A1N(n16), .Y(n63) );
  OAI2BB2X1M U84 ( .B0(n295), .B1(n23), .A0N(\Reg_File[5][0] ), .A1N(n23), .Y(
        n88) );
  OAI2BB2X1M U85 ( .B0(n296), .B1(n23), .A0N(\Reg_File[5][1] ), .A1N(n23), .Y(
        n89) );
  OAI2BB2X1M U86 ( .B0(n297), .B1(n23), .A0N(\Reg_File[5][2] ), .A1N(n23), .Y(
        n90) );
  OAI2BB2X1M U87 ( .B0(n298), .B1(n23), .A0N(\Reg_File[5][3] ), .A1N(n23), .Y(
        n91) );
  OAI2BB2X1M U88 ( .B0(n299), .B1(n23), .A0N(\Reg_File[5][4] ), .A1N(n23), .Y(
        n92) );
  OAI2BB2X1M U89 ( .B0(n300), .B1(n23), .A0N(\Reg_File[5][5] ), .A1N(n23), .Y(
        n93) );
  OAI2BB2X1M U90 ( .B0(n301), .B1(n23), .A0N(\Reg_File[5][6] ), .A1N(n23), .Y(
        n94) );
  OAI2BB2X1M U91 ( .B0(n302), .B1(n23), .A0N(\Reg_File[5][7] ), .A1N(n23), .Y(
        n95) );
  OAI2BB2X1M U92 ( .B0(n295), .B1(n27), .A0N(\Reg_File[7][0] ), .A1N(n27), .Y(
        n104) );
  OAI2BB2X1M U93 ( .B0(n296), .B1(n27), .A0N(\Reg_File[7][1] ), .A1N(n27), .Y(
        n105) );
  OAI2BB2X1M U94 ( .B0(n297), .B1(n27), .A0N(\Reg_File[7][2] ), .A1N(n27), .Y(
        n106) );
  OAI2BB2X1M U95 ( .B0(n298), .B1(n27), .A0N(\Reg_File[7][3] ), .A1N(n27), .Y(
        n107) );
  OAI2BB2X1M U96 ( .B0(n299), .B1(n27), .A0N(\Reg_File[7][4] ), .A1N(n27), .Y(
        n108) );
  OAI2BB2X1M U97 ( .B0(n300), .B1(n27), .A0N(\Reg_File[7][5] ), .A1N(n27), .Y(
        n109) );
  OAI2BB2X1M U98 ( .B0(n301), .B1(n27), .A0N(\Reg_File[7][6] ), .A1N(n27), .Y(
        n110) );
  OAI2BB2X1M U99 ( .B0(n302), .B1(n27), .A0N(\Reg_File[7][7] ), .A1N(n27), .Y(
        n111) );
  OAI2BB2X1M U100 ( .B0(n295), .B1(n31), .A0N(\Reg_File[9][0] ), .A1N(n31), 
        .Y(n120) );
  OAI2BB2X1M U101 ( .B0(n296), .B1(n31), .A0N(\Reg_File[9][1] ), .A1N(n31), 
        .Y(n121) );
  OAI2BB2X1M U102 ( .B0(n297), .B1(n31), .A0N(\Reg_File[9][2] ), .A1N(n31), 
        .Y(n122) );
  OAI2BB2X1M U103 ( .B0(n298), .B1(n31), .A0N(\Reg_File[9][3] ), .A1N(n31), 
        .Y(n123) );
  OAI2BB2X1M U104 ( .B0(n299), .B1(n31), .A0N(\Reg_File[9][4] ), .A1N(n31), 
        .Y(n124) );
  OAI2BB2X1M U105 ( .B0(n300), .B1(n31), .A0N(\Reg_File[9][5] ), .A1N(n31), 
        .Y(n125) );
  OAI2BB2X1M U106 ( .B0(n301), .B1(n31), .A0N(\Reg_File[9][6] ), .A1N(n31), 
        .Y(n126) );
  OAI2BB2X1M U107 ( .B0(n302), .B1(n31), .A0N(\Reg_File[9][7] ), .A1N(n31), 
        .Y(n127) );
  OAI2BB2X1M U108 ( .B0(n295), .B1(n34), .A0N(\Reg_File[11][0] ), .A1N(n34), 
        .Y(n136) );
  OAI2BB2X1M U109 ( .B0(n296), .B1(n34), .A0N(\Reg_File[11][1] ), .A1N(n34), 
        .Y(n137) );
  OAI2BB2X1M U110 ( .B0(n297), .B1(n34), .A0N(\Reg_File[11][2] ), .A1N(n34), 
        .Y(n138) );
  OAI2BB2X1M U111 ( .B0(n298), .B1(n34), .A0N(\Reg_File[11][3] ), .A1N(n34), 
        .Y(n139) );
  OAI2BB2X1M U112 ( .B0(n299), .B1(n34), .A0N(\Reg_File[11][4] ), .A1N(n34), 
        .Y(n140) );
  OAI2BB2X1M U113 ( .B0(n300), .B1(n34), .A0N(\Reg_File[11][5] ), .A1N(n34), 
        .Y(n141) );
  OAI2BB2X1M U114 ( .B0(n301), .B1(n34), .A0N(\Reg_File[11][6] ), .A1N(n34), 
        .Y(n142) );
  OAI2BB2X1M U115 ( .B0(n302), .B1(n34), .A0N(\Reg_File[11][7] ), .A1N(n34), 
        .Y(n143) );
  OAI2BB2X1M U116 ( .B0(n295), .B1(n36), .A0N(\Reg_File[13][0] ), .A1N(n36), 
        .Y(n152) );
  OAI2BB2X1M U117 ( .B0(n296), .B1(n36), .A0N(\Reg_File[13][1] ), .A1N(n36), 
        .Y(n153) );
  OAI2BB2X1M U118 ( .B0(n297), .B1(n36), .A0N(\Reg_File[13][2] ), .A1N(n36), 
        .Y(n154) );
  OAI2BB2X1M U119 ( .B0(n298), .B1(n36), .A0N(\Reg_File[13][3] ), .A1N(n36), 
        .Y(n155) );
  OAI2BB2X1M U120 ( .B0(n299), .B1(n36), .A0N(\Reg_File[13][4] ), .A1N(n36), 
        .Y(n156) );
  OAI2BB2X1M U121 ( .B0(n300), .B1(n36), .A0N(\Reg_File[13][5] ), .A1N(n36), 
        .Y(n157) );
  OAI2BB2X1M U122 ( .B0(n301), .B1(n36), .A0N(\Reg_File[13][6] ), .A1N(n36), 
        .Y(n158) );
  OAI2BB2X1M U123 ( .B0(n302), .B1(n36), .A0N(\Reg_File[13][7] ), .A1N(n36), 
        .Y(n159) );
  OAI2BB2X1M U124 ( .B0(n295), .B1(n39), .A0N(\Reg_File[15][0] ), .A1N(n39), 
        .Y(n168) );
  OAI2BB2X1M U125 ( .B0(n296), .B1(n39), .A0N(\Reg_File[15][1] ), .A1N(n39), 
        .Y(n169) );
  OAI2BB2X1M U126 ( .B0(n297), .B1(n39), .A0N(\Reg_File[15][2] ), .A1N(n39), 
        .Y(n170) );
  OAI2BB2X1M U127 ( .B0(n298), .B1(n39), .A0N(\Reg_File[15][3] ), .A1N(n39), 
        .Y(n171) );
  OAI2BB2X1M U128 ( .B0(n299), .B1(n39), .A0N(\Reg_File[15][4] ), .A1N(n39), 
        .Y(n172) );
  OAI2BB2X1M U129 ( .B0(n300), .B1(n39), .A0N(\Reg_File[15][5] ), .A1N(n39), 
        .Y(n173) );
  OAI2BB2X1M U130 ( .B0(n301), .B1(n39), .A0N(\Reg_File[15][6] ), .A1N(n39), 
        .Y(n174) );
  OAI2BB2X1M U131 ( .B0(n302), .B1(n39), .A0N(\Reg_File[15][7] ), .A1N(n39), 
        .Y(n175) );
  OAI2BB2X1M U132 ( .B0(n295), .B1(n20), .A0N(REG3[0]), .A1N(n20), .Y(n72) );
  OAI2BB2X1M U133 ( .B0(n296), .B1(n20), .A0N(REG3[1]), .A1N(n20), .Y(n73) );
  OAI2BB2X1M U134 ( .B0(n297), .B1(n20), .A0N(REG3[2]), .A1N(n20), .Y(n74) );
  OAI2BB2X1M U135 ( .B0(n298), .B1(n20), .A0N(REG3[3]), .A1N(n20), .Y(n75) );
  OAI2BB2X1M U136 ( .B0(n299), .B1(n20), .A0N(REG3[4]), .A1N(n20), .Y(n76) );
  OAI2BB2X1M U137 ( .B0(n301), .B1(n20), .A0N(REG3[6]), .A1N(n20), .Y(n78) );
  OAI2BB2X1M U138 ( .B0(n302), .B1(n20), .A0N(REG3[7]), .A1N(n20), .Y(n79) );
  OAI2BB2X1M U139 ( .B0(n300), .B1(n20), .A0N(REG3[5]), .A1N(n20), .Y(n77) );
  INVX2M U140 ( .A(WrData[7]), .Y(n302) );
  OAI2BB2X1M U141 ( .B0(n295), .B1(n29), .A0N(\Reg_File[8][0] ), .A1N(n29), 
        .Y(n112) );
  OAI2BB2X1M U142 ( .B0(n296), .B1(n29), .A0N(\Reg_File[8][1] ), .A1N(n29), 
        .Y(n113) );
  OAI2BB2X1M U143 ( .B0(n297), .B1(n29), .A0N(\Reg_File[8][2] ), .A1N(n29), 
        .Y(n114) );
  OAI2BB2X1M U144 ( .B0(n298), .B1(n29), .A0N(\Reg_File[8][3] ), .A1N(n29), 
        .Y(n115) );
  OAI2BB2X1M U145 ( .B0(n299), .B1(n29), .A0N(\Reg_File[8][4] ), .A1N(n29), 
        .Y(n116) );
  OAI2BB2X1M U146 ( .B0(n300), .B1(n29), .A0N(\Reg_File[8][5] ), .A1N(n29), 
        .Y(n117) );
  OAI2BB2X1M U147 ( .B0(n301), .B1(n29), .A0N(\Reg_File[8][6] ), .A1N(n29), 
        .Y(n118) );
  OAI2BB2X1M U148 ( .B0(n302), .B1(n29), .A0N(\Reg_File[8][7] ), .A1N(n29), 
        .Y(n119) );
  OAI2BB2X1M U149 ( .B0(n295), .B1(n33), .A0N(\Reg_File[10][0] ), .A1N(n33), 
        .Y(n128) );
  OAI2BB2X1M U150 ( .B0(n296), .B1(n33), .A0N(\Reg_File[10][1] ), .A1N(n33), 
        .Y(n129) );
  OAI2BB2X1M U151 ( .B0(n297), .B1(n33), .A0N(\Reg_File[10][2] ), .A1N(n33), 
        .Y(n130) );
  OAI2BB2X1M U152 ( .B0(n298), .B1(n33), .A0N(\Reg_File[10][3] ), .A1N(n33), 
        .Y(n131) );
  OAI2BB2X1M U153 ( .B0(n299), .B1(n33), .A0N(\Reg_File[10][4] ), .A1N(n33), 
        .Y(n132) );
  OAI2BB2X1M U154 ( .B0(n300), .B1(n33), .A0N(\Reg_File[10][5] ), .A1N(n33), 
        .Y(n133) );
  OAI2BB2X1M U155 ( .B0(n301), .B1(n33), .A0N(\Reg_File[10][6] ), .A1N(n33), 
        .Y(n134) );
  OAI2BB2X1M U156 ( .B0(n302), .B1(n33), .A0N(\Reg_File[10][7] ), .A1N(n33), 
        .Y(n135) );
  OAI2BB2X1M U157 ( .B0(n295), .B1(n35), .A0N(\Reg_File[12][0] ), .A1N(n35), 
        .Y(n144) );
  OAI2BB2X1M U158 ( .B0(n296), .B1(n35), .A0N(\Reg_File[12][1] ), .A1N(n35), 
        .Y(n145) );
  OAI2BB2X1M U159 ( .B0(n297), .B1(n35), .A0N(\Reg_File[12][2] ), .A1N(n35), 
        .Y(n146) );
  OAI2BB2X1M U160 ( .B0(n298), .B1(n35), .A0N(\Reg_File[12][3] ), .A1N(n35), 
        .Y(n147) );
  OAI2BB2X1M U161 ( .B0(n299), .B1(n35), .A0N(\Reg_File[12][4] ), .A1N(n35), 
        .Y(n148) );
  OAI2BB2X1M U162 ( .B0(n300), .B1(n35), .A0N(\Reg_File[12][5] ), .A1N(n35), 
        .Y(n149) );
  OAI2BB2X1M U163 ( .B0(n301), .B1(n35), .A0N(\Reg_File[12][6] ), .A1N(n35), 
        .Y(n150) );
  OAI2BB2X1M U164 ( .B0(n302), .B1(n35), .A0N(\Reg_File[12][7] ), .A1N(n35), 
        .Y(n151) );
  OAI2BB2X1M U165 ( .B0(n295), .B1(n37), .A0N(\Reg_File[14][0] ), .A1N(n37), 
        .Y(n160) );
  OAI2BB2X1M U166 ( .B0(n296), .B1(n37), .A0N(\Reg_File[14][1] ), .A1N(n37), 
        .Y(n161) );
  OAI2BB2X1M U167 ( .B0(n297), .B1(n37), .A0N(\Reg_File[14][2] ), .A1N(n37), 
        .Y(n162) );
  OAI2BB2X1M U168 ( .B0(n298), .B1(n37), .A0N(\Reg_File[14][3] ), .A1N(n37), 
        .Y(n163) );
  OAI2BB2X1M U169 ( .B0(n299), .B1(n37), .A0N(\Reg_File[14][4] ), .A1N(n37), 
        .Y(n164) );
  OAI2BB2X1M U170 ( .B0(n300), .B1(n37), .A0N(\Reg_File[14][5] ), .A1N(n37), 
        .Y(n165) );
  OAI2BB2X1M U171 ( .B0(n301), .B1(n37), .A0N(\Reg_File[14][6] ), .A1N(n37), 
        .Y(n166) );
  OAI2BB2X1M U172 ( .B0(n302), .B1(n37), .A0N(\Reg_File[14][7] ), .A1N(n37), 
        .Y(n167) );
  OAI2BB2X1M U173 ( .B0(n13), .B1(n295), .A0N(REG0[0]), .A1N(n13), .Y(n48) );
  OAI2BB2X1M U174 ( .B0(n13), .B1(n296), .A0N(REG0[1]), .A1N(n13), .Y(n49) );
  OAI2BB2X1M U175 ( .B0(n13), .B1(n297), .A0N(REG0[2]), .A1N(n13), .Y(n50) );
  OAI2BB2X1M U176 ( .B0(n13), .B1(n298), .A0N(REG0[3]), .A1N(n13), .Y(n51) );
  OAI2BB2X1M U177 ( .B0(n13), .B1(n299), .A0N(REG0[4]), .A1N(n13), .Y(n52) );
  OAI2BB2X1M U178 ( .B0(n13), .B1(n300), .A0N(REG0[5]), .A1N(n13), .Y(n53) );
  OAI2BB2X1M U179 ( .B0(n13), .B1(n301), .A0N(REG0[6]), .A1N(n13), .Y(n54) );
  OAI2BB2X1M U180 ( .B0(n13), .B1(n302), .A0N(REG0[7]), .A1N(n13), .Y(n55) );
  OAI2BB2X1M U181 ( .B0(n295), .B1(n21), .A0N(\Reg_File[4][0] ), .A1N(n21), 
        .Y(n80) );
  OAI2BB2X1M U182 ( .B0(n296), .B1(n21), .A0N(\Reg_File[4][1] ), .A1N(n21), 
        .Y(n81) );
  OAI2BB2X1M U183 ( .B0(n297), .B1(n21), .A0N(\Reg_File[4][2] ), .A1N(n21), 
        .Y(n82) );
  OAI2BB2X1M U184 ( .B0(n298), .B1(n21), .A0N(\Reg_File[4][3] ), .A1N(n21), 
        .Y(n83) );
  OAI2BB2X1M U185 ( .B0(n299), .B1(n21), .A0N(\Reg_File[4][4] ), .A1N(n21), 
        .Y(n84) );
  OAI2BB2X1M U186 ( .B0(n300), .B1(n21), .A0N(\Reg_File[4][5] ), .A1N(n21), 
        .Y(n85) );
  OAI2BB2X1M U187 ( .B0(n301), .B1(n21), .A0N(\Reg_File[4][6] ), .A1N(n21), 
        .Y(n86) );
  OAI2BB2X1M U188 ( .B0(n302), .B1(n21), .A0N(\Reg_File[4][7] ), .A1N(n21), 
        .Y(n87) );
  OAI2BB2X1M U189 ( .B0(n295), .B1(n24), .A0N(\Reg_File[6][0] ), .A1N(n24), 
        .Y(n96) );
  OAI2BB2X1M U190 ( .B0(n296), .B1(n24), .A0N(\Reg_File[6][1] ), .A1N(n24), 
        .Y(n97) );
  OAI2BB2X1M U191 ( .B0(n297), .B1(n24), .A0N(\Reg_File[6][2] ), .A1N(n24), 
        .Y(n98) );
  OAI2BB2X1M U192 ( .B0(n298), .B1(n24), .A0N(\Reg_File[6][3] ), .A1N(n24), 
        .Y(n99) );
  OAI2BB2X1M U193 ( .B0(n299), .B1(n24), .A0N(\Reg_File[6][4] ), .A1N(n24), 
        .Y(n100) );
  OAI2BB2X1M U194 ( .B0(n300), .B1(n24), .A0N(\Reg_File[6][5] ), .A1N(n24), 
        .Y(n101) );
  OAI2BB2X1M U195 ( .B0(n301), .B1(n24), .A0N(\Reg_File[6][6] ), .A1N(n24), 
        .Y(n102) );
  OAI2BB2X1M U196 ( .B0(n302), .B1(n24), .A0N(\Reg_File[6][7] ), .A1N(n24), 
        .Y(n103) );
  OAI2BB2X1M U197 ( .B0(n296), .B1(n18), .A0N(REG2[1]), .A1N(n18), .Y(n65) );
  OAI2BB2X1M U198 ( .B0(n297), .B1(n18), .A0N(REG2[2]), .A1N(n18), .Y(n66) );
  OAI2BB2X1M U199 ( .B0(n298), .B1(n18), .A0N(REG2[3]), .A1N(n18), .Y(n67) );
  OAI2BB2X1M U200 ( .B0(n299), .B1(n18), .A0N(REG2[4]), .A1N(n18), .Y(n68) );
  OAI2BB2X1M U201 ( .B0(n300), .B1(n18), .A0N(REG2[5]), .A1N(n18), .Y(n69) );
  OAI2BB2X1M U202 ( .B0(n301), .B1(n18), .A0N(REG2[6]), .A1N(n18), .Y(n70) );
  OAI2BB2X1M U203 ( .B0(n295), .B1(n18), .A0N(REG2[0]), .A1N(n18), .Y(n64) );
  OAI2BB2X1M U204 ( .B0(n302), .B1(n18), .A0N(REG2[7]), .A1N(n18), .Y(n71) );
  OAI2BB1X2M U205 ( .A0N(RdData_Valid), .A1N(n28), .B0(n12), .Y(n176) );
  AOI22X1M U206 ( .A0(\Reg_File[10][0] ), .A1(n276), .B0(\Reg_File[11][0] ), 
        .B1(n275), .Y(n6) );
  AOI22X1M U207 ( .A0(\Reg_File[8][0] ), .A1(n279), .B0(\Reg_File[9][0] ), 
        .B1(n277), .Y(n5) );
  CLKNAND2X2M U208 ( .A(N14), .B(n271), .Y(n254) );
  AOI21X1M U209 ( .A0(n6), .A1(n5), .B0(n254), .Y(n181) );
  AOI22X1M U210 ( .A0(\Reg_File[14][0] ), .A1(n276), .B0(\Reg_File[15][0] ), 
        .B1(n275), .Y(n8) );
  AOI22X1M U211 ( .A0(\Reg_File[12][0] ), .A1(n279), .B0(\Reg_File[13][0] ), 
        .B1(n277), .Y(n7) );
  CLKNAND2X2M U212 ( .A(N14), .B(N13), .Y(n257) );
  AOI21X1M U213 ( .A0(n8), .A1(n7), .B0(n257), .Y(n180) );
  AOI22X1M U214 ( .A0(REG2[0]), .A1(n276), .B0(REG3[0]), .B1(n275), .Y(n10) );
  AOI22X1M U215 ( .A0(REG0[0]), .A1(n279), .B0(REG1[0]), .B1(n277), .Y(n9) );
  CLKNAND2X2M U216 ( .A(n271), .B(n270), .Y(n260) );
  AOI21X1M U217 ( .A0(n10), .A1(n9), .B0(n260), .Y(n179) );
  AOI22X1M U218 ( .A0(\Reg_File[6][0] ), .A1(n276), .B0(\Reg_File[7][0] ), 
        .B1(n275), .Y(n177) );
  AOI22X1M U219 ( .A0(\Reg_File[4][0] ), .A1(n279), .B0(\Reg_File[5][0] ), 
        .B1(n277), .Y(n11) );
  CLKNAND2X2M U220 ( .A(N13), .B(n270), .Y(n263) );
  AOI21X1M U221 ( .A0(n177), .A1(n11), .B0(n263), .Y(n178) );
  OR4X1M U222 ( .A(n181), .B(n180), .C(n179), .D(n178), .Y(N43) );
  AOI22X1M U223 ( .A0(\Reg_File[10][1] ), .A1(n276), .B0(\Reg_File[11][1] ), 
        .B1(n275), .Y(n183) );
  AOI22X1M U224 ( .A0(\Reg_File[8][1] ), .A1(n279), .B0(\Reg_File[9][1] ), 
        .B1(n277), .Y(n182) );
  AOI21X1M U225 ( .A0(n183), .A1(n182), .B0(n254), .Y(n193) );
  AOI22X1M U226 ( .A0(\Reg_File[14][1] ), .A1(n276), .B0(\Reg_File[15][1] ), 
        .B1(n275), .Y(n185) );
  AOI22X1M U227 ( .A0(\Reg_File[12][1] ), .A1(n279), .B0(\Reg_File[13][1] ), 
        .B1(n277), .Y(n184) );
  AOI21X1M U228 ( .A0(n185), .A1(n184), .B0(n257), .Y(n192) );
  AOI22X1M U229 ( .A0(REG2[1]), .A1(n276), .B0(REG3[1]), .B1(n275), .Y(n187)
         );
  AOI22X1M U230 ( .A0(REG0[1]), .A1(n279), .B0(REG1[1]), .B1(n277), .Y(n186)
         );
  AOI21X1M U231 ( .A0(n187), .A1(n186), .B0(n260), .Y(n191) );
  AOI22X1M U232 ( .A0(\Reg_File[6][1] ), .A1(n276), .B0(\Reg_File[7][1] ), 
        .B1(n275), .Y(n189) );
  AOI22X1M U233 ( .A0(\Reg_File[4][1] ), .A1(n279), .B0(\Reg_File[5][1] ), 
        .B1(n277), .Y(n188) );
  AOI21X1M U234 ( .A0(n189), .A1(n188), .B0(n263), .Y(n190) );
  OR4X1M U235 ( .A(n193), .B(n192), .C(n191), .D(n190), .Y(N42) );
  AOI22X1M U236 ( .A0(\Reg_File[10][2] ), .A1(n276), .B0(\Reg_File[11][2] ), 
        .B1(n275), .Y(n195) );
  AOI22X1M U237 ( .A0(\Reg_File[8][2] ), .A1(n279), .B0(\Reg_File[9][2] ), 
        .B1(n277), .Y(n194) );
  AOI21X1M U238 ( .A0(n195), .A1(n194), .B0(n254), .Y(n205) );
  AOI22X1M U239 ( .A0(\Reg_File[14][2] ), .A1(n276), .B0(\Reg_File[15][2] ), 
        .B1(n275), .Y(n197) );
  AOI22X1M U240 ( .A0(\Reg_File[12][2] ), .A1(n279), .B0(\Reg_File[13][2] ), 
        .B1(n277), .Y(n196) );
  AOI21X1M U241 ( .A0(n197), .A1(n196), .B0(n257), .Y(n204) );
  AOI22X1M U242 ( .A0(REG2[2]), .A1(n276), .B0(REG3[2]), .B1(n275), .Y(n199)
         );
  AOI22X1M U243 ( .A0(REG0[2]), .A1(n279), .B0(REG1[2]), .B1(n277), .Y(n198)
         );
  AOI21X1M U244 ( .A0(n199), .A1(n198), .B0(n260), .Y(n203) );
  AOI22X1M U245 ( .A0(\Reg_File[6][2] ), .A1(n276), .B0(\Reg_File[7][2] ), 
        .B1(n275), .Y(n201) );
  AOI22X1M U246 ( .A0(\Reg_File[4][2] ), .A1(n279), .B0(\Reg_File[5][2] ), 
        .B1(n277), .Y(n200) );
  AOI21X1M U247 ( .A0(n201), .A1(n200), .B0(n263), .Y(n202) );
  OR4X1M U248 ( .A(n205), .B(n204), .C(n203), .D(n202), .Y(N41) );
  AOI22X1M U249 ( .A0(\Reg_File[10][3] ), .A1(n276), .B0(\Reg_File[11][3] ), 
        .B1(n275), .Y(n207) );
  AOI22X1M U250 ( .A0(\Reg_File[8][3] ), .A1(n279), .B0(\Reg_File[9][3] ), 
        .B1(n277), .Y(n206) );
  AOI21X1M U251 ( .A0(n207), .A1(n206), .B0(n254), .Y(n217) );
  AOI22X1M U252 ( .A0(\Reg_File[14][3] ), .A1(n276), .B0(\Reg_File[15][3] ), 
        .B1(n275), .Y(n209) );
  AOI22X1M U253 ( .A0(\Reg_File[12][3] ), .A1(n279), .B0(\Reg_File[13][3] ), 
        .B1(n277), .Y(n208) );
  AOI21X1M U254 ( .A0(n209), .A1(n208), .B0(n257), .Y(n216) );
  AOI22X1M U255 ( .A0(REG2[3]), .A1(n276), .B0(REG3[3]), .B1(n275), .Y(n211)
         );
  AOI22X1M U256 ( .A0(REG0[3]), .A1(n279), .B0(REG1[3]), .B1(n277), .Y(n210)
         );
  AOI21X1M U257 ( .A0(n211), .A1(n210), .B0(n260), .Y(n215) );
  AOI22X1M U258 ( .A0(\Reg_File[6][3] ), .A1(n276), .B0(\Reg_File[7][3] ), 
        .B1(n275), .Y(n213) );
  AOI22X1M U259 ( .A0(\Reg_File[4][3] ), .A1(n279), .B0(\Reg_File[5][3] ), 
        .B1(n277), .Y(n212) );
  AOI21X1M U260 ( .A0(n213), .A1(n212), .B0(n263), .Y(n214) );
  OR4X1M U261 ( .A(n217), .B(n216), .C(n215), .D(n214), .Y(N40) );
  AOI22X1M U262 ( .A0(\Reg_File[10][4] ), .A1(n276), .B0(\Reg_File[11][4] ), 
        .B1(n275), .Y(n219) );
  AOI22X1M U263 ( .A0(\Reg_File[8][4] ), .A1(n279), .B0(\Reg_File[9][4] ), 
        .B1(n277), .Y(n218) );
  AOI21X1M U264 ( .A0(n219), .A1(n218), .B0(n254), .Y(n229) );
  AOI22X1M U265 ( .A0(\Reg_File[14][4] ), .A1(n276), .B0(\Reg_File[15][4] ), 
        .B1(n275), .Y(n221) );
  AOI22X1M U266 ( .A0(\Reg_File[12][4] ), .A1(n279), .B0(\Reg_File[13][4] ), 
        .B1(n277), .Y(n220) );
  AOI21X1M U267 ( .A0(n221), .A1(n220), .B0(n257), .Y(n228) );
  AOI22X1M U268 ( .A0(REG2[4]), .A1(n276), .B0(REG3[4]), .B1(n275), .Y(n223)
         );
  AOI22X1M U269 ( .A0(REG0[4]), .A1(n279), .B0(REG1[4]), .B1(n277), .Y(n222)
         );
  AOI21X1M U270 ( .A0(n223), .A1(n222), .B0(n260), .Y(n227) );
  AOI22X1M U271 ( .A0(\Reg_File[6][4] ), .A1(n276), .B0(\Reg_File[7][4] ), 
        .B1(n275), .Y(n225) );
  AOI22X1M U272 ( .A0(\Reg_File[4][4] ), .A1(n279), .B0(\Reg_File[5][4] ), 
        .B1(n277), .Y(n224) );
  AOI21X1M U273 ( .A0(n225), .A1(n224), .B0(n263), .Y(n226) );
  OR4X1M U274 ( .A(n229), .B(n228), .C(n227), .D(n226), .Y(N39) );
  AOI22X1M U275 ( .A0(\Reg_File[10][5] ), .A1(n276), .B0(\Reg_File[11][5] ), 
        .B1(n275), .Y(n231) );
  AOI22X1M U276 ( .A0(\Reg_File[8][5] ), .A1(n279), .B0(\Reg_File[9][5] ), 
        .B1(n277), .Y(n230) );
  AOI21X1M U277 ( .A0(n231), .A1(n230), .B0(n254), .Y(n241) );
  AOI22X1M U278 ( .A0(\Reg_File[14][5] ), .A1(n276), .B0(\Reg_File[15][5] ), 
        .B1(n275), .Y(n233) );
  AOI22X1M U279 ( .A0(\Reg_File[12][5] ), .A1(n279), .B0(\Reg_File[13][5] ), 
        .B1(n277), .Y(n232) );
  AOI21X1M U280 ( .A0(n233), .A1(n232), .B0(n257), .Y(n240) );
  AOI22X1M U281 ( .A0(REG2[5]), .A1(n276), .B0(REG3[5]), .B1(n275), .Y(n235)
         );
  AOI22X1M U282 ( .A0(REG0[5]), .A1(n279), .B0(REG1[5]), .B1(n277), .Y(n234)
         );
  AOI21X1M U283 ( .A0(n235), .A1(n234), .B0(n260), .Y(n239) );
  AOI22X1M U284 ( .A0(\Reg_File[6][5] ), .A1(n276), .B0(\Reg_File[7][5] ), 
        .B1(n275), .Y(n237) );
  AOI22X1M U285 ( .A0(\Reg_File[4][5] ), .A1(n279), .B0(\Reg_File[5][5] ), 
        .B1(n277), .Y(n236) );
  AOI21X1M U286 ( .A0(n237), .A1(n236), .B0(n263), .Y(n238) );
  OR4X1M U287 ( .A(n241), .B(n240), .C(n239), .D(n238), .Y(N38) );
  AOI22X1M U288 ( .A0(\Reg_File[10][6] ), .A1(n276), .B0(\Reg_File[11][6] ), 
        .B1(n275), .Y(n243) );
  AOI22X1M U289 ( .A0(\Reg_File[8][6] ), .A1(n279), .B0(\Reg_File[9][6] ), 
        .B1(n277), .Y(n242) );
  AOI21X1M U290 ( .A0(n243), .A1(n242), .B0(n254), .Y(n253) );
  AOI22X1M U291 ( .A0(\Reg_File[14][6] ), .A1(n276), .B0(\Reg_File[15][6] ), 
        .B1(n275), .Y(n245) );
  AOI22X1M U292 ( .A0(\Reg_File[12][6] ), .A1(n279), .B0(\Reg_File[13][6] ), 
        .B1(n277), .Y(n244) );
  AOI21X1M U293 ( .A0(n245), .A1(n244), .B0(n257), .Y(n252) );
  AOI22X1M U294 ( .A0(REG2[6]), .A1(n276), .B0(REG3[6]), .B1(n275), .Y(n247)
         );
  AOI22X1M U295 ( .A0(REG0[6]), .A1(n279), .B0(REG1[6]), .B1(n277), .Y(n246)
         );
  AOI21X1M U296 ( .A0(n247), .A1(n246), .B0(n260), .Y(n251) );
  AOI22X1M U297 ( .A0(\Reg_File[6][6] ), .A1(n276), .B0(\Reg_File[7][6] ), 
        .B1(n275), .Y(n249) );
  AOI22X1M U298 ( .A0(\Reg_File[4][6] ), .A1(n279), .B0(\Reg_File[5][6] ), 
        .B1(n277), .Y(n248) );
  AOI21X1M U299 ( .A0(n249), .A1(n248), .B0(n263), .Y(n250) );
  OR4X1M U300 ( .A(n253), .B(n252), .C(n251), .D(n250), .Y(N37) );
  AOI22X1M U301 ( .A0(\Reg_File[10][7] ), .A1(n276), .B0(\Reg_File[11][7] ), 
        .B1(n275), .Y(n256) );
  AOI22X1M U302 ( .A0(\Reg_File[8][7] ), .A1(n279), .B0(\Reg_File[9][7] ), 
        .B1(n277), .Y(n255) );
  AOI21X1M U303 ( .A0(n256), .A1(n255), .B0(n254), .Y(n269) );
  AOI22X1M U304 ( .A0(\Reg_File[14][7] ), .A1(n276), .B0(\Reg_File[15][7] ), 
        .B1(n275), .Y(n259) );
  AOI22X1M U305 ( .A0(\Reg_File[12][7] ), .A1(n279), .B0(\Reg_File[13][7] ), 
        .B1(n277), .Y(n258) );
  AOI21X1M U306 ( .A0(n259), .A1(n258), .B0(n257), .Y(n268) );
  AOI22X1M U307 ( .A0(REG2[7]), .A1(n276), .B0(REG3[7]), .B1(n275), .Y(n262)
         );
  AOI22X1M U308 ( .A0(REG0[7]), .A1(n279), .B0(REG1[7]), .B1(n277), .Y(n261)
         );
  AOI21X1M U309 ( .A0(n262), .A1(n261), .B0(n260), .Y(n267) );
  AOI22X1M U310 ( .A0(\Reg_File[6][7] ), .A1(n276), .B0(\Reg_File[7][7] ), 
        .B1(n275), .Y(n265) );
  AOI22X1M U311 ( .A0(\Reg_File[4][7] ), .A1(n279), .B0(\Reg_File[5][7] ), 
        .B1(n277), .Y(n264) );
  AOI21X1M U312 ( .A0(n265), .A1(n264), .B0(n263), .Y(n266) );
  OR4X1M U313 ( .A(n269), .B(n268), .C(n267), .D(n266), .Y(N36) );
endmodule


module Alu_16_bit_OPER_WIDTH8_OUT_WIDTH16_ALU_FUN_WIDTH4_DW_div_uns_0 ( a, b, 
        quotient, remainder, divide_by_0 );
  input [7:0] a;
  input [7:0] b;
  output [7:0] quotient;
  output [7:0] remainder;
  output divide_by_0;
  wire   \u_div/SumTmp[1][0] , \u_div/SumTmp[1][1] , \u_div/SumTmp[1][2] ,
         \u_div/SumTmp[1][3] , \u_div/SumTmp[1][4] , \u_div/SumTmp[1][5] ,
         \u_div/SumTmp[1][6] , \u_div/SumTmp[2][0] , \u_div/SumTmp[2][1] ,
         \u_div/SumTmp[2][2] , \u_div/SumTmp[2][3] , \u_div/SumTmp[2][4] ,
         \u_div/SumTmp[2][5] , \u_div/SumTmp[3][0] , \u_div/SumTmp[3][1] ,
         \u_div/SumTmp[3][2] , \u_div/SumTmp[3][3] , \u_div/SumTmp[3][4] ,
         \u_div/SumTmp[4][0] , \u_div/SumTmp[4][1] , \u_div/SumTmp[4][2] ,
         \u_div/SumTmp[4][3] , \u_div/SumTmp[5][0] , \u_div/SumTmp[5][1] ,
         \u_div/SumTmp[5][2] , \u_div/SumTmp[6][0] , \u_div/SumTmp[6][1] ,
         \u_div/SumTmp[7][0] , \u_div/CryTmp[0][1] , \u_div/CryTmp[0][2] ,
         \u_div/CryTmp[0][3] , \u_div/CryTmp[0][4] , \u_div/CryTmp[0][5] ,
         \u_div/CryTmp[0][6] , \u_div/CryTmp[0][7] , \u_div/CryTmp[1][1] ,
         \u_div/CryTmp[1][2] , \u_div/CryTmp[1][3] , \u_div/CryTmp[1][4] ,
         \u_div/CryTmp[1][5] , \u_div/CryTmp[1][6] , \u_div/CryTmp[1][7] ,
         \u_div/CryTmp[2][1] , \u_div/CryTmp[2][2] , \u_div/CryTmp[2][3] ,
         \u_div/CryTmp[2][4] , \u_div/CryTmp[2][5] , \u_div/CryTmp[2][6] ,
         \u_div/CryTmp[3][1] , \u_div/CryTmp[3][2] , \u_div/CryTmp[3][3] ,
         \u_div/CryTmp[3][4] , \u_div/CryTmp[3][5] , \u_div/CryTmp[4][1] ,
         \u_div/CryTmp[4][2] , \u_div/CryTmp[4][3] , \u_div/CryTmp[4][4] ,
         \u_div/CryTmp[5][1] , \u_div/CryTmp[5][2] , \u_div/CryTmp[5][3] ,
         \u_div/CryTmp[6][1] , \u_div/CryTmp[6][2] , \u_div/CryTmp[7][1] ,
         \u_div/PartRem[1][1] , \u_div/PartRem[1][2] , \u_div/PartRem[1][3] ,
         \u_div/PartRem[1][4] , \u_div/PartRem[1][5] , \u_div/PartRem[1][6] ,
         \u_div/PartRem[1][7] , \u_div/PartRem[2][1] , \u_div/PartRem[2][2] ,
         \u_div/PartRem[2][3] , \u_div/PartRem[2][4] , \u_div/PartRem[2][5] ,
         \u_div/PartRem[2][6] , \u_div/PartRem[3][1] , \u_div/PartRem[3][2] ,
         \u_div/PartRem[3][3] , \u_div/PartRem[3][4] , \u_div/PartRem[3][5] ,
         \u_div/PartRem[4][1] , \u_div/PartRem[4][2] , \u_div/PartRem[4][3] ,
         \u_div/PartRem[4][4] , \u_div/PartRem[5][1] , \u_div/PartRem[5][2] ,
         \u_div/PartRem[5][3] , \u_div/PartRem[6][1] , \u_div/PartRem[6][2] ,
         \u_div/PartRem[7][1] , n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11,
         n12, n13, n14, n15, n16, n17, n18, n19, n20, n21;

  ADDFX2M \u_div/u_fa_PartRem_0_2_5  ( .A(\u_div/PartRem[3][5] ), .B(n13), 
        .CI(\u_div/CryTmp[2][5] ), .CO(\u_div/CryTmp[2][6] ), .S(
        \u_div/SumTmp[2][5] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_4_3  ( .A(\u_div/PartRem[5][3] ), .B(n15), 
        .CI(\u_div/CryTmp[4][3] ), .CO(\u_div/CryTmp[4][4] ), .S(
        \u_div/SumTmp[4][3] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_5_2  ( .A(\u_div/PartRem[6][2] ), .B(n16), 
        .CI(\u_div/CryTmp[5][2] ), .CO(\u_div/CryTmp[5][3] ), .S(
        \u_div/SumTmp[5][2] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_6_1  ( .A(\u_div/PartRem[7][1] ), .B(n17), 
        .CI(\u_div/CryTmp[6][1] ), .CO(\u_div/CryTmp[6][2] ), .S(
        \u_div/SumTmp[6][1] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_3_4  ( .A(\u_div/PartRem[4][4] ), .B(n14), 
        .CI(\u_div/CryTmp[3][4] ), .CO(\u_div/CryTmp[3][5] ), .S(
        \u_div/SumTmp[3][4] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_7  ( .A(\u_div/PartRem[1][7] ), .B(n11), 
        .CI(\u_div/CryTmp[0][7] ), .CO(quotient[0]) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_1  ( .A(\u_div/PartRem[1][1] ), .B(n17), 
        .CI(\u_div/CryTmp[0][1] ), .CO(\u_div/CryTmp[0][2] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_2  ( .A(\u_div/PartRem[1][2] ), .B(n16), 
        .CI(\u_div/CryTmp[0][2] ), .CO(\u_div/CryTmp[0][3] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_1_1  ( .A(\u_div/PartRem[2][1] ), .B(n17), 
        .CI(\u_div/CryTmp[1][1] ), .CO(\u_div/CryTmp[1][2] ), .S(
        \u_div/SumTmp[1][1] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_2_1  ( .A(\u_div/PartRem[3][1] ), .B(n17), 
        .CI(\u_div/CryTmp[2][1] ), .CO(\u_div/CryTmp[2][2] ), .S(
        \u_div/SumTmp[2][1] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_3_1  ( .A(\u_div/PartRem[4][1] ), .B(n17), 
        .CI(\u_div/CryTmp[3][1] ), .CO(\u_div/CryTmp[3][2] ), .S(
        \u_div/SumTmp[3][1] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_4_1  ( .A(\u_div/PartRem[5][1] ), .B(n17), 
        .CI(\u_div/CryTmp[4][1] ), .CO(\u_div/CryTmp[4][2] ), .S(
        \u_div/SumTmp[4][1] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_5_1  ( .A(\u_div/PartRem[6][1] ), .B(n17), 
        .CI(\u_div/CryTmp[5][1] ), .CO(\u_div/CryTmp[5][2] ), .S(
        \u_div/SumTmp[5][1] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_5  ( .A(\u_div/PartRem[1][5] ), .B(n13), 
        .CI(\u_div/CryTmp[0][5] ), .CO(\u_div/CryTmp[0][6] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_6  ( .A(\u_div/PartRem[1][6] ), .B(n12), 
        .CI(\u_div/CryTmp[0][6] ), .CO(\u_div/CryTmp[0][7] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_3  ( .A(\u_div/PartRem[1][3] ), .B(n15), 
        .CI(\u_div/CryTmp[0][3] ), .CO(\u_div/CryTmp[0][4] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_4  ( .A(\u_div/PartRem[1][4] ), .B(n14), 
        .CI(\u_div/CryTmp[0][4] ), .CO(\u_div/CryTmp[0][5] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_1_4  ( .A(\u_div/PartRem[2][4] ), .B(n14), 
        .CI(\u_div/CryTmp[1][4] ), .CO(\u_div/CryTmp[1][5] ), .S(
        \u_div/SumTmp[1][4] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_1_5  ( .A(\u_div/PartRem[2][5] ), .B(n13), 
        .CI(\u_div/CryTmp[1][5] ), .CO(\u_div/CryTmp[1][6] ), .S(
        \u_div/SumTmp[1][5] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_1_3  ( .A(\u_div/PartRem[2][3] ), .B(n15), 
        .CI(\u_div/CryTmp[1][3] ), .CO(\u_div/CryTmp[1][4] ), .S(
        \u_div/SumTmp[1][3] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_1_2  ( .A(\u_div/PartRem[2][2] ), .B(n16), 
        .CI(\u_div/CryTmp[1][2] ), .CO(\u_div/CryTmp[1][3] ), .S(
        \u_div/SumTmp[1][2] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_2_4  ( .A(\u_div/PartRem[3][4] ), .B(n14), 
        .CI(\u_div/CryTmp[2][4] ), .CO(\u_div/CryTmp[2][5] ), .S(
        \u_div/SumTmp[2][4] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_2_3  ( .A(\u_div/PartRem[3][3] ), .B(n15), 
        .CI(\u_div/CryTmp[2][3] ), .CO(\u_div/CryTmp[2][4] ), .S(
        \u_div/SumTmp[2][3] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_3_3  ( .A(\u_div/PartRem[4][3] ), .B(n15), 
        .CI(\u_div/CryTmp[3][3] ), .CO(\u_div/CryTmp[3][4] ), .S(
        \u_div/SumTmp[3][3] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_2_2  ( .A(\u_div/PartRem[3][2] ), .B(n16), 
        .CI(\u_div/CryTmp[2][2] ), .CO(\u_div/CryTmp[2][3] ), .S(
        \u_div/SumTmp[2][2] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_3_2  ( .A(\u_div/PartRem[4][2] ), .B(n16), 
        .CI(\u_div/CryTmp[3][2] ), .CO(\u_div/CryTmp[3][3] ), .S(
        \u_div/SumTmp[3][2] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_4_2  ( .A(\u_div/PartRem[5][2] ), .B(n16), 
        .CI(\u_div/CryTmp[4][2] ), .CO(\u_div/CryTmp[4][3] ), .S(
        \u_div/SumTmp[4][2] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_1_6  ( .A(\u_div/PartRem[2][6] ), .B(n12), 
        .CI(\u_div/CryTmp[1][6] ), .CO(\u_div/CryTmp[1][7] ), .S(
        \u_div/SumTmp[1][6] ) );
  INVX2M U1 ( .A(b[0]), .Y(n18) );
  XNOR2X2M U2 ( .A(n18), .B(a[7]), .Y(\u_div/SumTmp[7][0] ) );
  XNOR2X2M U3 ( .A(n18), .B(a[6]), .Y(\u_div/SumTmp[6][0] ) );
  XNOR2X2M U4 ( .A(n18), .B(a[5]), .Y(\u_div/SumTmp[5][0] ) );
  XNOR2X2M U5 ( .A(n18), .B(a[4]), .Y(\u_div/SumTmp[4][0] ) );
  XNOR2X2M U6 ( .A(n18), .B(a[3]), .Y(\u_div/SumTmp[3][0] ) );
  XNOR2X2M U7 ( .A(n18), .B(a[2]), .Y(\u_div/SumTmp[2][0] ) );
  XNOR2X2M U8 ( .A(n18), .B(a[1]), .Y(\u_div/SumTmp[1][0] ) );
  OR2X2M U9 ( .A(n18), .B(a[7]), .Y(\u_div/CryTmp[7][1] ) );
  INVX2M U10 ( .A(b[1]), .Y(n17) );
  NAND2X2M U11 ( .A(n3), .B(n4), .Y(\u_div/CryTmp[5][1] ) );
  INVX2M U12 ( .A(a[5]), .Y(n4) );
  INVX2M U13 ( .A(n18), .Y(n3) );
  NAND2X2M U14 ( .A(n5), .B(n6), .Y(\u_div/CryTmp[4][1] ) );
  INVX2M U15 ( .A(a[4]), .Y(n6) );
  INVX2M U16 ( .A(n18), .Y(n5) );
  NAND2X2M U17 ( .A(n5), .B(n7), .Y(\u_div/CryTmp[3][1] ) );
  INVX2M U18 ( .A(a[3]), .Y(n7) );
  NAND2X2M U19 ( .A(n5), .B(n8), .Y(\u_div/CryTmp[2][1] ) );
  INVX2M U20 ( .A(a[2]), .Y(n8) );
  NAND2X2M U21 ( .A(n5), .B(n9), .Y(\u_div/CryTmp[1][1] ) );
  INVX2M U22 ( .A(a[1]), .Y(n9) );
  NAND2X2M U23 ( .A(n5), .B(n10), .Y(\u_div/CryTmp[0][1] ) );
  NAND2X2M U24 ( .A(n1), .B(n2), .Y(\u_div/CryTmp[6][1] ) );
  INVX2M U25 ( .A(a[6]), .Y(n2) );
  INVX2M U26 ( .A(n18), .Y(n1) );
  INVX2M U27 ( .A(b[6]), .Y(n12) );
  INVX2M U28 ( .A(a[0]), .Y(n10) );
  INVX2M U29 ( .A(b[7]), .Y(n11) );
  INVX2M U30 ( .A(b[2]), .Y(n16) );
  INVX2M U31 ( .A(b[3]), .Y(n15) );
  INVX2M U32 ( .A(b[4]), .Y(n14) );
  INVX2M U33 ( .A(b[5]), .Y(n13) );
  CLKMX2X2M U34 ( .A(\u_div/PartRem[2][6] ), .B(\u_div/SumTmp[1][6] ), .S0(
        quotient[1]), .Y(\u_div/PartRem[1][7] ) );
  CLKMX2X2M U35 ( .A(\u_div/PartRem[3][5] ), .B(\u_div/SumTmp[2][5] ), .S0(
        quotient[2]), .Y(\u_div/PartRem[2][6] ) );
  CLKMX2X2M U36 ( .A(\u_div/PartRem[4][4] ), .B(\u_div/SumTmp[3][4] ), .S0(
        quotient[3]), .Y(\u_div/PartRem[3][5] ) );
  CLKMX2X2M U37 ( .A(\u_div/PartRem[5][3] ), .B(\u_div/SumTmp[4][3] ), .S0(
        quotient[4]), .Y(\u_div/PartRem[4][4] ) );
  CLKMX2X2M U38 ( .A(\u_div/PartRem[6][2] ), .B(\u_div/SumTmp[5][2] ), .S0(
        quotient[5]), .Y(\u_div/PartRem[5][3] ) );
  CLKMX2X2M U39 ( .A(\u_div/PartRem[7][1] ), .B(\u_div/SumTmp[6][1] ), .S0(
        quotient[6]), .Y(\u_div/PartRem[6][2] ) );
  CLKMX2X2M U40 ( .A(a[7]), .B(\u_div/SumTmp[7][0] ), .S0(quotient[7]), .Y(
        \u_div/PartRem[7][1] ) );
  CLKMX2X2M U41 ( .A(\u_div/PartRem[2][5] ), .B(\u_div/SumTmp[1][5] ), .S0(
        quotient[1]), .Y(\u_div/PartRem[1][6] ) );
  CLKMX2X2M U42 ( .A(\u_div/PartRem[3][4] ), .B(\u_div/SumTmp[2][4] ), .S0(
        quotient[2]), .Y(\u_div/PartRem[2][5] ) );
  CLKMX2X2M U43 ( .A(\u_div/PartRem[4][3] ), .B(\u_div/SumTmp[3][3] ), .S0(
        quotient[3]), .Y(\u_div/PartRem[3][4] ) );
  CLKMX2X2M U44 ( .A(\u_div/PartRem[5][2] ), .B(\u_div/SumTmp[4][2] ), .S0(
        quotient[4]), .Y(\u_div/PartRem[4][3] ) );
  CLKMX2X2M U45 ( .A(\u_div/PartRem[6][1] ), .B(\u_div/SumTmp[5][1] ), .S0(
        quotient[5]), .Y(\u_div/PartRem[5][2] ) );
  CLKMX2X2M U46 ( .A(a[6]), .B(\u_div/SumTmp[6][0] ), .S0(quotient[6]), .Y(
        \u_div/PartRem[6][1] ) );
  CLKMX2X2M U47 ( .A(\u_div/PartRem[2][4] ), .B(\u_div/SumTmp[1][4] ), .S0(
        quotient[1]), .Y(\u_div/PartRem[1][5] ) );
  CLKMX2X2M U48 ( .A(\u_div/PartRem[3][3] ), .B(\u_div/SumTmp[2][3] ), .S0(
        quotient[2]), .Y(\u_div/PartRem[2][4] ) );
  CLKMX2X2M U49 ( .A(\u_div/PartRem[4][2] ), .B(\u_div/SumTmp[3][2] ), .S0(
        quotient[3]), .Y(\u_div/PartRem[3][3] ) );
  CLKMX2X2M U50 ( .A(\u_div/PartRem[5][1] ), .B(\u_div/SumTmp[4][1] ), .S0(
        quotient[4]), .Y(\u_div/PartRem[4][2] ) );
  CLKMX2X2M U51 ( .A(a[5]), .B(\u_div/SumTmp[5][0] ), .S0(quotient[5]), .Y(
        \u_div/PartRem[5][1] ) );
  CLKMX2X2M U52 ( .A(\u_div/PartRem[2][3] ), .B(\u_div/SumTmp[1][3] ), .S0(
        quotient[1]), .Y(\u_div/PartRem[1][4] ) );
  CLKMX2X2M U53 ( .A(\u_div/PartRem[3][2] ), .B(\u_div/SumTmp[2][2] ), .S0(
        quotient[2]), .Y(\u_div/PartRem[2][3] ) );
  CLKMX2X2M U54 ( .A(\u_div/PartRem[4][1] ), .B(\u_div/SumTmp[3][1] ), .S0(
        quotient[3]), .Y(\u_div/PartRem[3][2] ) );
  CLKMX2X2M U55 ( .A(a[4]), .B(\u_div/SumTmp[4][0] ), .S0(quotient[4]), .Y(
        \u_div/PartRem[4][1] ) );
  CLKMX2X2M U56 ( .A(\u_div/PartRem[2][2] ), .B(\u_div/SumTmp[1][2] ), .S0(
        quotient[1]), .Y(\u_div/PartRem[1][3] ) );
  CLKMX2X2M U57 ( .A(\u_div/PartRem[3][1] ), .B(\u_div/SumTmp[2][1] ), .S0(
        quotient[2]), .Y(\u_div/PartRem[2][2] ) );
  CLKMX2X2M U58 ( .A(a[3]), .B(\u_div/SumTmp[3][0] ), .S0(quotient[3]), .Y(
        \u_div/PartRem[3][1] ) );
  CLKMX2X2M U59 ( .A(\u_div/PartRem[2][1] ), .B(\u_div/SumTmp[1][1] ), .S0(
        quotient[1]), .Y(\u_div/PartRem[1][2] ) );
  CLKMX2X2M U60 ( .A(a[2]), .B(\u_div/SumTmp[2][0] ), .S0(quotient[2]), .Y(
        \u_div/PartRem[2][1] ) );
  CLKMX2X2M U61 ( .A(a[1]), .B(\u_div/SumTmp[1][0] ), .S0(quotient[1]), .Y(
        \u_div/PartRem[1][1] ) );
  AND4X1M U62 ( .A(\u_div/CryTmp[7][1] ), .B(n19), .C(n17), .D(n16), .Y(
        quotient[7]) );
  AND3X1M U63 ( .A(n19), .B(n16), .C(\u_div/CryTmp[6][2] ), .Y(quotient[6]) );
  AND2X1M U64 ( .A(\u_div/CryTmp[5][3] ), .B(n19), .Y(quotient[5]) );
  AND2X1M U65 ( .A(n20), .B(n15), .Y(n19) );
  AND2X1M U66 ( .A(\u_div/CryTmp[4][4] ), .B(n20), .Y(quotient[4]) );
  AND3X1M U67 ( .A(n21), .B(n14), .C(n13), .Y(n20) );
  AND3X1M U68 ( .A(n21), .B(n13), .C(\u_div/CryTmp[3][5] ), .Y(quotient[3]) );
  AND2X1M U69 ( .A(\u_div/CryTmp[2][6] ), .B(n21), .Y(quotient[2]) );
  NOR2X1M U70 ( .A(b[6]), .B(b[7]), .Y(n21) );
  AND2X1M U71 ( .A(\u_div/CryTmp[1][7] ), .B(n11), .Y(quotient[1]) );
endmodule


module Alu_16_bit_OPER_WIDTH8_OUT_WIDTH16_ALU_FUN_WIDTH4_DW01_sub_0 ( A, B, CI, 
        DIFF, CO );
  input [8:0] A;
  input [8:0] B;
  output [8:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9;
  wire   [9:0] carry;

  ADDFX2M U2_5 ( .A(A[5]), .B(n4), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5])
         );
  ADDFX2M U2_4 ( .A(A[4]), .B(n5), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4])
         );
  ADDFX2M U2_3 ( .A(A[3]), .B(n6), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3])
         );
  ADDFX2M U2_2 ( .A(A[2]), .B(n7), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2])
         );
  ADDFX2M U2_7 ( .A(A[7]), .B(n2), .CI(carry[7]), .CO(carry[8]), .S(DIFF[7])
         );
  ADDFX2M U2_1 ( .A(A[1]), .B(n8), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1])
         );
  ADDFX2M U2_6 ( .A(A[6]), .B(n3), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6])
         );
  INVX2M U1 ( .A(B[6]), .Y(n3) );
  INVX2M U2 ( .A(B[1]), .Y(n8) );
  NAND2X2M U3 ( .A(B[0]), .B(n1), .Y(carry[1]) );
  INVX2M U4 ( .A(A[0]), .Y(n1) );
  INVX2M U5 ( .A(B[7]), .Y(n2) );
  XNOR2X2M U6 ( .A(n9), .B(A[0]), .Y(DIFF[0]) );
  INVX2M U7 ( .A(B[0]), .Y(n9) );
  INVX2M U8 ( .A(B[2]), .Y(n7) );
  INVX2M U9 ( .A(B[3]), .Y(n6) );
  INVX2M U10 ( .A(B[4]), .Y(n5) );
  INVX2M U11 ( .A(B[5]), .Y(n4) );
  CLKINVX1M U12 ( .A(carry[8]), .Y(DIFF[8]) );
endmodule


module Alu_16_bit_OPER_WIDTH8_OUT_WIDTH16_ALU_FUN_WIDTH4_DW01_add_0 ( A, B, CI, 
        SUM, CO );
  input [8:0] A;
  input [8:0] B;
  output [8:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [8:1] carry;

  ADDFX2M U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  ADDFX2M U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFX2M U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFX2M U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFX2M U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFX2M U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(SUM[8]), .S(SUM[7]) );
  ADDFX2M U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  AND2X2M U1 ( .A(B[0]), .B(A[0]), .Y(n1) );
  CLKXOR2X2M U2 ( .A(B[0]), .B(A[0]), .Y(SUM[0]) );
endmodule


module Alu_16_bit_OPER_WIDTH8_OUT_WIDTH16_ALU_FUN_WIDTH4_DW01_add_1 ( A, B, CI, 
        SUM, CO );
  input [13:0] A;
  input [13:0] B;
  output [13:0] SUM;
  input CI;
  output CO;
  wire   n1, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20,
         n21, n22, n23, n24, n25, n26, n27;

  AOI21BX2M U2 ( .A0(n18), .A1(A[12]), .B0N(n19), .Y(n1) );
  NAND2X2M U3 ( .A(A[7]), .B(B[7]), .Y(n15) );
  XNOR2X2M U4 ( .A(B[13]), .B(n1), .Y(SUM[13]) );
  XNOR2X2M U5 ( .A(A[7]), .B(n8), .Y(SUM[7]) );
  INVX2M U6 ( .A(B[7]), .Y(n8) );
  INVX2M U7 ( .A(A[6]), .Y(n9) );
  INVX2M U8 ( .A(n9), .Y(SUM[6]) );
  BUFX2M U9 ( .A(A[0]), .Y(SUM[0]) );
  BUFX2M U10 ( .A(A[1]), .Y(SUM[1]) );
  BUFX2M U11 ( .A(A[2]), .Y(SUM[2]) );
  BUFX2M U12 ( .A(A[3]), .Y(SUM[3]) );
  BUFX2M U13 ( .A(A[4]), .Y(SUM[4]) );
  BUFX2M U14 ( .A(A[5]), .Y(SUM[5]) );
  XNOR2X1M U15 ( .A(n10), .B(n11), .Y(SUM[9]) );
  NOR2X1M U16 ( .A(n12), .B(n13), .Y(n11) );
  CLKXOR2X2M U17 ( .A(n14), .B(n15), .Y(SUM[8]) );
  NAND2BX1M U18 ( .AN(n16), .B(n17), .Y(n14) );
  OAI21X1M U19 ( .A0(A[12]), .A1(n18), .B0(B[12]), .Y(n19) );
  XOR3XLM U20 ( .A(B[12]), .B(A[12]), .C(n18), .Y(SUM[12]) );
  OAI21BX1M U21 ( .A0(n20), .A1(n21), .B0N(n22), .Y(n18) );
  XNOR2X1M U22 ( .A(n21), .B(n23), .Y(SUM[11]) );
  NOR2X1M U23 ( .A(n22), .B(n20), .Y(n23) );
  NOR2X1M U24 ( .A(B[11]), .B(A[11]), .Y(n20) );
  AND2X1M U25 ( .A(B[11]), .B(A[11]), .Y(n22) );
  OA21X1M U26 ( .A0(n24), .A1(n25), .B0(n26), .Y(n21) );
  CLKXOR2X2M U27 ( .A(n27), .B(n25), .Y(SUM[10]) );
  AOI2BB1X1M U28 ( .A0N(n10), .A1N(n13), .B0(n12), .Y(n25) );
  AND2X1M U29 ( .A(B[9]), .B(A[9]), .Y(n12) );
  NOR2X1M U30 ( .A(B[9]), .B(A[9]), .Y(n13) );
  OA21X1M U31 ( .A0(n15), .A1(n16), .B0(n17), .Y(n10) );
  CLKNAND2X2M U32 ( .A(B[8]), .B(A[8]), .Y(n17) );
  NOR2X1M U33 ( .A(B[8]), .B(A[8]), .Y(n16) );
  NAND2BX1M U34 ( .AN(n24), .B(n26), .Y(n27) );
  CLKNAND2X2M U35 ( .A(B[10]), .B(A[10]), .Y(n26) );
  NOR2X1M U36 ( .A(B[10]), .B(A[10]), .Y(n24) );
endmodule


module Alu_16_bit_OPER_WIDTH8_OUT_WIDTH16_ALU_FUN_WIDTH4_DW02_mult_0 ( A, B, 
        TC, PRODUCT );
  input [7:0] A;
  input [7:0] B;
  output [15:0] PRODUCT;
  input TC;
  wire   \ab[7][7] , \ab[7][6] , \ab[7][5] , \ab[7][4] , \ab[7][3] ,
         \ab[7][2] , \ab[7][1] , \ab[7][0] , \ab[6][7] , \ab[6][6] ,
         \ab[6][5] , \ab[6][4] , \ab[6][3] , \ab[6][2] , \ab[6][1] ,
         \ab[6][0] , \ab[5][7] , \ab[5][6] , \ab[5][5] , \ab[5][4] ,
         \ab[5][3] , \ab[5][2] , \ab[5][1] , \ab[5][0] , \ab[4][7] ,
         \ab[4][6] , \ab[4][5] , \ab[4][4] , \ab[4][3] , \ab[4][2] ,
         \ab[4][1] , \ab[4][0] , \ab[3][7] , \ab[3][6] , \ab[3][5] ,
         \ab[3][4] , \ab[3][3] , \ab[3][2] , \ab[3][1] , \ab[3][0] ,
         \ab[2][7] , \ab[2][6] , \ab[2][5] , \ab[2][4] , \ab[2][3] ,
         \ab[2][2] , \ab[2][1] , \ab[2][0] , \ab[1][7] , \ab[1][6] ,
         \ab[1][5] , \ab[1][4] , \ab[1][3] , \ab[1][2] , \ab[1][1] ,
         \ab[1][0] , \ab[0][7] , \ab[0][6] , \ab[0][5] , \ab[0][4] ,
         \ab[0][3] , \ab[0][2] , \ab[0][1] , \CARRYB[7][6] , \CARRYB[7][5] ,
         \CARRYB[7][4] , \CARRYB[7][3] , \CARRYB[7][2] , \CARRYB[7][1] ,
         \CARRYB[7][0] , \CARRYB[6][6] , \CARRYB[6][5] , \CARRYB[6][4] ,
         \CARRYB[6][3] , \CARRYB[6][2] , \CARRYB[6][1] , \CARRYB[6][0] ,
         \CARRYB[5][6] , \CARRYB[5][5] , \CARRYB[5][4] , \CARRYB[5][3] ,
         \CARRYB[5][2] , \CARRYB[5][1] , \CARRYB[5][0] , \CARRYB[4][6] ,
         \CARRYB[4][5] , \CARRYB[4][4] , \CARRYB[4][3] , \CARRYB[4][2] ,
         \CARRYB[4][1] , \CARRYB[4][0] , \CARRYB[3][6] , \CARRYB[3][5] ,
         \CARRYB[3][4] , \CARRYB[3][3] , \CARRYB[3][2] , \CARRYB[3][1] ,
         \CARRYB[3][0] , \CARRYB[2][6] , \CARRYB[2][5] , \CARRYB[2][4] ,
         \CARRYB[2][3] , \CARRYB[2][2] , \CARRYB[2][1] , \CARRYB[2][0] ,
         \SUMB[7][6] , \SUMB[7][5] , \SUMB[7][4] , \SUMB[7][3] , \SUMB[7][2] ,
         \SUMB[7][1] , \SUMB[7][0] , \SUMB[6][6] , \SUMB[6][5] , \SUMB[6][4] ,
         \SUMB[6][3] , \SUMB[6][2] , \SUMB[6][1] , \SUMB[5][6] , \SUMB[5][5] ,
         \SUMB[5][4] , \SUMB[5][3] , \SUMB[5][2] , \SUMB[5][1] , \SUMB[4][6] ,
         \SUMB[4][5] , \SUMB[4][4] , \SUMB[4][3] , \SUMB[4][2] , \SUMB[4][1] ,
         \SUMB[3][6] , \SUMB[3][5] , \SUMB[3][4] , \SUMB[3][3] , \SUMB[3][2] ,
         \SUMB[3][1] , \SUMB[2][6] , \SUMB[2][5] , \SUMB[2][4] , \SUMB[2][3] ,
         \SUMB[2][2] , \SUMB[2][1] , \SUMB[1][6] , \SUMB[1][5] , \SUMB[1][4] ,
         \SUMB[1][3] , \SUMB[1][2] , \SUMB[1][1] , \A1[12] , \A1[11] ,
         \A1[10] , \A1[9] , \A1[8] , \A1[7] , \A1[6] , \A1[4] , \A1[3] ,
         \A1[2] , \A1[1] , \A1[0] , n3, n4, n5, n6, n7, n8, n9, n10, n11, n12,
         n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26,
         n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39;

  Alu_16_bit_OPER_WIDTH8_OUT_WIDTH16_ALU_FUN_WIDTH4_DW01_add_1 FS_1 ( .A({1'b0, 
        \A1[12] , \A1[11] , \A1[10] , \A1[9] , \A1[8] , \A1[7] , \A1[6] , 
        \SUMB[7][0] , \A1[4] , \A1[3] , \A1[2] , \A1[1] , \A1[0] }), .B({n10, 
        n16, n15, n14, n13, n11, n12, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .CI(1'b0), .SUM(PRODUCT[15:2]) );
  ADDFX2M S1_6_0 ( .A(\ab[6][0] ), .B(\CARRYB[5][0] ), .CI(\SUMB[5][1] ), .CO(
        \CARRYB[6][0] ), .S(\A1[4] ) );
  ADDFX2M S1_5_0 ( .A(\ab[5][0] ), .B(\CARRYB[4][0] ), .CI(\SUMB[4][1] ), .CO(
        \CARRYB[5][0] ), .S(\A1[3] ) );
  ADDFX2M S1_4_0 ( .A(\ab[4][0] ), .B(\CARRYB[3][0] ), .CI(\SUMB[3][1] ), .CO(
        \CARRYB[4][0] ), .S(\A1[2] ) );
  ADDFX2M S1_3_0 ( .A(\ab[3][0] ), .B(\CARRYB[2][0] ), .CI(\SUMB[2][1] ), .CO(
        \CARRYB[3][0] ), .S(\A1[1] ) );
  ADDFX2M S1_2_0 ( .A(\ab[2][0] ), .B(n6), .CI(\SUMB[1][1] ), .CO(
        \CARRYB[2][0] ), .S(\A1[0] ) );
  ADDFX2M S2_6_5 ( .A(\ab[6][5] ), .B(\CARRYB[5][5] ), .CI(\SUMB[5][6] ), .CO(
        \CARRYB[6][5] ), .S(\SUMB[6][5] ) );
  ADDFX2M S4_5 ( .A(\ab[7][5] ), .B(\CARRYB[6][5] ), .CI(\SUMB[6][6] ), .CO(
        \CARRYB[7][5] ), .S(\SUMB[7][5] ) );
  ADDFX2M S4_4 ( .A(\ab[7][4] ), .B(\CARRYB[6][4] ), .CI(\SUMB[6][5] ), .CO(
        \CARRYB[7][4] ), .S(\SUMB[7][4] ) );
  ADDFX2M S2_6_2 ( .A(\ab[6][2] ), .B(\CARRYB[5][2] ), .CI(\SUMB[5][3] ), .CO(
        \CARRYB[6][2] ), .S(\SUMB[6][2] ) );
  ADDFX2M S2_5_3 ( .A(\ab[5][3] ), .B(\CARRYB[4][3] ), .CI(\SUMB[4][4] ), .CO(
        \CARRYB[5][3] ), .S(\SUMB[5][3] ) );
  ADDFX2M S2_5_2 ( .A(\ab[5][2] ), .B(\CARRYB[4][2] ), .CI(\SUMB[4][3] ), .CO(
        \CARRYB[5][2] ), .S(\SUMB[5][2] ) );
  ADDFX2M S2_4_4 ( .A(\ab[4][4] ), .B(\CARRYB[3][4] ), .CI(\SUMB[3][5] ), .CO(
        \CARRYB[4][4] ), .S(\SUMB[4][4] ) );
  ADDFX2M S2_4_3 ( .A(\ab[4][3] ), .B(\CARRYB[3][3] ), .CI(\SUMB[3][4] ), .CO(
        \CARRYB[4][3] ), .S(\SUMB[4][3] ) );
  ADDFX2M S2_4_2 ( .A(\ab[4][2] ), .B(\CARRYB[3][2] ), .CI(\SUMB[3][3] ), .CO(
        \CARRYB[4][2] ), .S(\SUMB[4][2] ) );
  ADDFX2M S2_3_5 ( .A(\ab[3][5] ), .B(\CARRYB[2][5] ), .CI(\SUMB[2][6] ), .CO(
        \CARRYB[3][5] ), .S(\SUMB[3][5] ) );
  ADDFX2M S2_3_4 ( .A(\ab[3][4] ), .B(\CARRYB[2][4] ), .CI(\SUMB[2][5] ), .CO(
        \CARRYB[3][4] ), .S(\SUMB[3][4] ) );
  ADDFX2M S2_3_3 ( .A(\ab[3][3] ), .B(\CARRYB[2][3] ), .CI(\SUMB[2][4] ), .CO(
        \CARRYB[3][3] ), .S(\SUMB[3][3] ) );
  ADDFX2M S2_3_2 ( .A(\ab[3][2] ), .B(\CARRYB[2][2] ), .CI(\SUMB[2][3] ), .CO(
        \CARRYB[3][2] ), .S(\SUMB[3][2] ) );
  ADDFX2M S2_2_2 ( .A(\ab[2][2] ), .B(n5), .CI(\SUMB[1][3] ), .CO(
        \CARRYB[2][2] ), .S(\SUMB[2][2] ) );
  ADDFX2M S2_6_4 ( .A(\ab[6][4] ), .B(\CARRYB[5][4] ), .CI(\SUMB[5][5] ), .CO(
        \CARRYB[6][4] ), .S(\SUMB[6][4] ) );
  ADDFX2M S2_5_5 ( .A(\ab[5][5] ), .B(\CARRYB[4][5] ), .CI(\SUMB[4][6] ), .CO(
        \CARRYB[5][5] ), .S(\SUMB[5][5] ) );
  ADDFX2M S2_6_3 ( .A(\ab[6][3] ), .B(\CARRYB[5][3] ), .CI(\SUMB[5][4] ), .CO(
        \CARRYB[6][3] ), .S(\SUMB[6][3] ) );
  ADDFX2M S2_5_4 ( .A(\ab[5][4] ), .B(\CARRYB[4][4] ), .CI(\SUMB[4][5] ), .CO(
        \CARRYB[5][4] ), .S(\SUMB[5][4] ) );
  ADDFX2M S2_4_5 ( .A(\ab[4][5] ), .B(\CARRYB[3][5] ), .CI(\SUMB[3][6] ), .CO(
        \CARRYB[4][5] ), .S(\SUMB[4][5] ) );
  ADDFX2M S2_2_5 ( .A(\ab[2][5] ), .B(n9), .CI(\SUMB[1][6] ), .CO(
        \CARRYB[2][5] ), .S(\SUMB[2][5] ) );
  ADDFX2M S2_2_4 ( .A(\ab[2][4] ), .B(n8), .CI(\SUMB[1][5] ), .CO(
        \CARRYB[2][4] ), .S(\SUMB[2][4] ) );
  ADDFX2M S2_2_3 ( .A(\ab[2][3] ), .B(n4), .CI(\SUMB[1][4] ), .CO(
        \CARRYB[2][3] ), .S(\SUMB[2][3] ) );
  ADDFX2M S4_0 ( .A(\ab[7][0] ), .B(\CARRYB[6][0] ), .CI(\SUMB[6][1] ), .CO(
        \CARRYB[7][0] ), .S(\SUMB[7][0] ) );
  ADDFX2M S4_3 ( .A(\ab[7][3] ), .B(\CARRYB[6][3] ), .CI(\SUMB[6][4] ), .CO(
        \CARRYB[7][3] ), .S(\SUMB[7][3] ) );
  ADDFX2M S4_2 ( .A(\ab[7][2] ), .B(\CARRYB[6][2] ), .CI(\SUMB[6][3] ), .CO(
        \CARRYB[7][2] ), .S(\SUMB[7][2] ) );
  ADDFX2M S5_6 ( .A(\ab[7][6] ), .B(\CARRYB[6][6] ), .CI(\ab[6][7] ), .CO(
        \CARRYB[7][6] ), .S(\SUMB[7][6] ) );
  ADDFX2M S3_6_6 ( .A(\ab[6][6] ), .B(\CARRYB[5][6] ), .CI(\ab[5][7] ), .CO(
        \CARRYB[6][6] ), .S(\SUMB[6][6] ) );
  ADDFX2M S3_5_6 ( .A(\ab[5][6] ), .B(\CARRYB[4][6] ), .CI(\ab[4][7] ), .CO(
        \CARRYB[5][6] ), .S(\SUMB[5][6] ) );
  ADDFX2M S3_4_6 ( .A(\ab[4][6] ), .B(\CARRYB[3][6] ), .CI(\ab[3][7] ), .CO(
        \CARRYB[4][6] ), .S(\SUMB[4][6] ) );
  ADDFX2M S2_6_1 ( .A(\ab[6][1] ), .B(\CARRYB[5][1] ), .CI(\SUMB[5][2] ), .CO(
        \CARRYB[6][1] ), .S(\SUMB[6][1] ) );
  ADDFX2M S2_5_1 ( .A(\ab[5][1] ), .B(\CARRYB[4][1] ), .CI(\SUMB[4][2] ), .CO(
        \CARRYB[5][1] ), .S(\SUMB[5][1] ) );
  ADDFX2M S2_4_1 ( .A(\ab[4][1] ), .B(\CARRYB[3][1] ), .CI(\SUMB[3][2] ), .CO(
        \CARRYB[4][1] ), .S(\SUMB[4][1] ) );
  ADDFX2M S2_3_1 ( .A(\ab[3][1] ), .B(\CARRYB[2][1] ), .CI(\SUMB[2][2] ), .CO(
        \CARRYB[3][1] ), .S(\SUMB[3][1] ) );
  ADDFX2M S2_2_1 ( .A(\ab[2][1] ), .B(n3), .CI(\SUMB[1][2] ), .CO(
        \CARRYB[2][1] ), .S(\SUMB[2][1] ) );
  ADDFX2M S3_3_6 ( .A(\ab[3][6] ), .B(\CARRYB[2][6] ), .CI(\ab[2][7] ), .CO(
        \CARRYB[3][6] ), .S(\SUMB[3][6] ) );
  ADDFX2M S3_2_6 ( .A(\ab[2][6] ), .B(n7), .CI(\ab[1][7] ), .CO(\CARRYB[2][6] ), .S(\SUMB[2][6] ) );
  ADDFX2M S4_1 ( .A(\ab[7][1] ), .B(\CARRYB[6][1] ), .CI(\SUMB[6][2] ), .CO(
        \CARRYB[7][1] ), .S(\SUMB[7][1] ) );
  AND2X2M U2 ( .A(\ab[0][2] ), .B(\ab[1][1] ), .Y(n3) );
  AND2X2M U3 ( .A(\ab[0][4] ), .B(\ab[1][3] ), .Y(n4) );
  AND2X2M U4 ( .A(\ab[0][3] ), .B(\ab[1][2] ), .Y(n5) );
  AND2X2M U5 ( .A(\ab[0][1] ), .B(\ab[1][0] ), .Y(n6) );
  AND2X2M U6 ( .A(\ab[0][7] ), .B(\ab[1][6] ), .Y(n7) );
  AND2X2M U7 ( .A(\ab[0][5] ), .B(\ab[1][4] ), .Y(n8) );
  AND2X2M U8 ( .A(\ab[0][6] ), .B(\ab[1][5] ), .Y(n9) );
  AND2X2M U9 ( .A(\CARRYB[7][6] ), .B(\ab[7][7] ), .Y(n10) );
  INVX2M U10 ( .A(\ab[0][6] ), .Y(n22) );
  INVX2M U11 ( .A(\ab[0][7] ), .Y(n23) );
  CLKXOR2X2M U12 ( .A(\CARRYB[7][6] ), .B(\ab[7][7] ), .Y(\A1[12] ) );
  CLKXOR2X2M U13 ( .A(\CARRYB[7][1] ), .B(\SUMB[7][2] ), .Y(\A1[7] ) );
  CLKXOR2X2M U14 ( .A(\CARRYB[7][2] ), .B(\SUMB[7][3] ), .Y(\A1[8] ) );
  INVX2M U15 ( .A(\ab[0][3] ), .Y(n19) );
  INVX2M U16 ( .A(\ab[0][4] ), .Y(n20) );
  INVX2M U17 ( .A(\ab[0][5] ), .Y(n21) );
  XNOR2X2M U18 ( .A(\ab[1][2] ), .B(n19), .Y(\SUMB[1][2] ) );
  AND2X2M U19 ( .A(\CARRYB[7][1] ), .B(\SUMB[7][2] ), .Y(n11) );
  AND2X2M U20 ( .A(\CARRYB[7][0] ), .B(\SUMB[7][1] ), .Y(n12) );
  CLKXOR2X2M U21 ( .A(\CARRYB[7][4] ), .B(\SUMB[7][5] ), .Y(\A1[10] ) );
  CLKXOR2X2M U22 ( .A(\CARRYB[7][5] ), .B(\SUMB[7][6] ), .Y(\A1[11] ) );
  INVX2M U23 ( .A(\ab[0][2] ), .Y(n18) );
  AND2X2M U24 ( .A(\CARRYB[7][2] ), .B(\SUMB[7][3] ), .Y(n13) );
  AND2X2M U25 ( .A(\CARRYB[7][3] ), .B(\SUMB[7][4] ), .Y(n14) );
  AND2X2M U26 ( .A(\CARRYB[7][4] ), .B(\SUMB[7][5] ), .Y(n15) );
  CLKXOR2X2M U27 ( .A(\CARRYB[7][3] ), .B(\SUMB[7][4] ), .Y(\A1[9] ) );
  XNOR2X2M U28 ( .A(\CARRYB[7][0] ), .B(n17), .Y(\A1[6] ) );
  INVX2M U29 ( .A(\SUMB[7][1] ), .Y(n17) );
  AND2X2M U30 ( .A(\CARRYB[7][5] ), .B(\SUMB[7][6] ), .Y(n16) );
  CLKXOR2X2M U31 ( .A(\ab[1][0] ), .B(\ab[0][1] ), .Y(PRODUCT[1]) );
  XNOR2X2M U32 ( .A(\ab[1][4] ), .B(n21), .Y(\SUMB[1][4] ) );
  XNOR2X2M U33 ( .A(\ab[1][5] ), .B(n22), .Y(\SUMB[1][5] ) );
  XNOR2X2M U34 ( .A(\ab[1][6] ), .B(n23), .Y(\SUMB[1][6] ) );
  XNOR2X2M U35 ( .A(\ab[1][3] ), .B(n20), .Y(\SUMB[1][3] ) );
  INVX2M U36 ( .A(A[1]), .Y(n38) );
  INVX2M U37 ( .A(A[0]), .Y(n39) );
  INVX2M U38 ( .A(B[6]), .Y(n25) );
  INVX2M U39 ( .A(B[7]), .Y(n24) );
  XNOR2X2M U40 ( .A(\ab[1][1] ), .B(n18), .Y(\SUMB[1][1] ) );
  INVX2M U41 ( .A(A[2]), .Y(n37) );
  INVX2M U42 ( .A(A[3]), .Y(n36) );
  INVX2M U43 ( .A(A[4]), .Y(n35) );
  INVX2M U44 ( .A(B[1]), .Y(n30) );
  INVX2M U45 ( .A(A[6]), .Y(n33) );
  INVX2M U46 ( .A(A[7]), .Y(n32) );
  INVX2M U47 ( .A(A[5]), .Y(n34) );
  INVX2M U48 ( .A(B[3]), .Y(n28) );
  INVX2M U49 ( .A(B[5]), .Y(n26) );
  INVX2M U50 ( .A(B[4]), .Y(n27) );
  INVX2M U51 ( .A(B[0]), .Y(n31) );
  INVX2M U52 ( .A(B[2]), .Y(n29) );
  NOR2X1M U54 ( .A(n32), .B(n24), .Y(\ab[7][7] ) );
  NOR2X1M U55 ( .A(n32), .B(n25), .Y(\ab[7][6] ) );
  NOR2X1M U56 ( .A(n32), .B(n26), .Y(\ab[7][5] ) );
  NOR2X1M U57 ( .A(n32), .B(n27), .Y(\ab[7][4] ) );
  NOR2X1M U58 ( .A(n32), .B(n28), .Y(\ab[7][3] ) );
  NOR2X1M U59 ( .A(n32), .B(n29), .Y(\ab[7][2] ) );
  NOR2X1M U60 ( .A(n32), .B(n30), .Y(\ab[7][1] ) );
  NOR2X1M U61 ( .A(n32), .B(n31), .Y(\ab[7][0] ) );
  NOR2X1M U62 ( .A(n24), .B(n33), .Y(\ab[6][7] ) );
  NOR2X1M U63 ( .A(n25), .B(n33), .Y(\ab[6][6] ) );
  NOR2X1M U64 ( .A(n26), .B(n33), .Y(\ab[6][5] ) );
  NOR2X1M U65 ( .A(n27), .B(n33), .Y(\ab[6][4] ) );
  NOR2X1M U66 ( .A(n28), .B(n33), .Y(\ab[6][3] ) );
  NOR2X1M U67 ( .A(n29), .B(n33), .Y(\ab[6][2] ) );
  NOR2X1M U68 ( .A(n30), .B(n33), .Y(\ab[6][1] ) );
  NOR2X1M U69 ( .A(n31), .B(n33), .Y(\ab[6][0] ) );
  NOR2X1M U70 ( .A(n24), .B(n34), .Y(\ab[5][7] ) );
  NOR2X1M U71 ( .A(n25), .B(n34), .Y(\ab[5][6] ) );
  NOR2X1M U72 ( .A(n26), .B(n34), .Y(\ab[5][5] ) );
  NOR2X1M U73 ( .A(n27), .B(n34), .Y(\ab[5][4] ) );
  NOR2X1M U74 ( .A(n28), .B(n34), .Y(\ab[5][3] ) );
  NOR2X1M U75 ( .A(n29), .B(n34), .Y(\ab[5][2] ) );
  NOR2X1M U76 ( .A(n30), .B(n34), .Y(\ab[5][1] ) );
  NOR2X1M U77 ( .A(n31), .B(n34), .Y(\ab[5][0] ) );
  NOR2X1M U78 ( .A(n24), .B(n35), .Y(\ab[4][7] ) );
  NOR2X1M U79 ( .A(n25), .B(n35), .Y(\ab[4][6] ) );
  NOR2X1M U80 ( .A(n26), .B(n35), .Y(\ab[4][5] ) );
  NOR2X1M U81 ( .A(n27), .B(n35), .Y(\ab[4][4] ) );
  NOR2X1M U82 ( .A(n28), .B(n35), .Y(\ab[4][3] ) );
  NOR2X1M U83 ( .A(n29), .B(n35), .Y(\ab[4][2] ) );
  NOR2X1M U84 ( .A(n30), .B(n35), .Y(\ab[4][1] ) );
  NOR2X1M U85 ( .A(n31), .B(n35), .Y(\ab[4][0] ) );
  NOR2X1M U86 ( .A(n24), .B(n36), .Y(\ab[3][7] ) );
  NOR2X1M U87 ( .A(n25), .B(n36), .Y(\ab[3][6] ) );
  NOR2X1M U88 ( .A(n26), .B(n36), .Y(\ab[3][5] ) );
  NOR2X1M U89 ( .A(n27), .B(n36), .Y(\ab[3][4] ) );
  NOR2X1M U90 ( .A(n28), .B(n36), .Y(\ab[3][3] ) );
  NOR2X1M U91 ( .A(n29), .B(n36), .Y(\ab[3][2] ) );
  NOR2X1M U92 ( .A(n30), .B(n36), .Y(\ab[3][1] ) );
  NOR2X1M U93 ( .A(n31), .B(n36), .Y(\ab[3][0] ) );
  NOR2X1M U94 ( .A(n24), .B(n37), .Y(\ab[2][7] ) );
  NOR2X1M U95 ( .A(n25), .B(n37), .Y(\ab[2][6] ) );
  NOR2X1M U96 ( .A(n26), .B(n37), .Y(\ab[2][5] ) );
  NOR2X1M U97 ( .A(n27), .B(n37), .Y(\ab[2][4] ) );
  NOR2X1M U98 ( .A(n28), .B(n37), .Y(\ab[2][3] ) );
  NOR2X1M U99 ( .A(n29), .B(n37), .Y(\ab[2][2] ) );
  NOR2X1M U100 ( .A(n30), .B(n37), .Y(\ab[2][1] ) );
  NOR2X1M U101 ( .A(n31), .B(n37), .Y(\ab[2][0] ) );
  NOR2X1M U102 ( .A(n24), .B(n38), .Y(\ab[1][7] ) );
  NOR2X1M U103 ( .A(n25), .B(n38), .Y(\ab[1][6] ) );
  NOR2X1M U104 ( .A(n26), .B(n38), .Y(\ab[1][5] ) );
  NOR2X1M U105 ( .A(n27), .B(n38), .Y(\ab[1][4] ) );
  NOR2X1M U106 ( .A(n28), .B(n38), .Y(\ab[1][3] ) );
  NOR2X1M U107 ( .A(n29), .B(n38), .Y(\ab[1][2] ) );
  NOR2X1M U108 ( .A(n30), .B(n38), .Y(\ab[1][1] ) );
  NOR2X1M U109 ( .A(n31), .B(n38), .Y(\ab[1][0] ) );
  NOR2X1M U110 ( .A(n24), .B(n39), .Y(\ab[0][7] ) );
  NOR2X1M U111 ( .A(n25), .B(n39), .Y(\ab[0][6] ) );
  NOR2X1M U112 ( .A(n26), .B(n39), .Y(\ab[0][5] ) );
  NOR2X1M U113 ( .A(n27), .B(n39), .Y(\ab[0][4] ) );
  NOR2X1M U114 ( .A(n28), .B(n39), .Y(\ab[0][3] ) );
  NOR2X1M U115 ( .A(n29), .B(n39), .Y(\ab[0][2] ) );
  NOR2X1M U116 ( .A(n30), .B(n39), .Y(\ab[0][1] ) );
  NOR2X1M U117 ( .A(n31), .B(n39), .Y(PRODUCT[0]) );
endmodule


module Alu_16_bit_OPER_WIDTH8_OUT_WIDTH16_ALU_FUN_WIDTH4 ( CLK_alu, RST_alu, 
        EN_alu, A, B, ALU_FUN, ALU_OUT, OUT_VALID );
  input [7:0] A;
  input [7:0] B;
  input [3:0] ALU_FUN;
  output [15:0] ALU_OUT;
  input CLK_alu, RST_alu, EN_alu;
  output OUT_VALID;
  wire   N91, N92, N93, N94, N95, N96, N97, N98, N99, N100, N101, N102, N103,
         N104, N105, N106, N107, N108, N109, N110, N111, N112, N113, N114,
         N115, N116, N117, N118, N119, N120, N121, N122, N123, N124, N127,
         N128, N129, N130, N131, N132, N133, N134, N167, N168, N169, n35, n36,
         n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50,
         n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64,
         n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78,
         n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92,
         n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105,
         n106, n107, n108, n109, n110, n111, n112, n113, n114, n115, n116,
         n117, n118, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15,
         n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29,
         n30, n31, n32, n33, n34, n119, n120, n121, n122, n123, n124, n125,
         n126, n127, n128, n129, n130, n131, n132, n133, n134, n135, n136,
         n137, n138, n139, n140, n141, n142, n143, n144, n145, n146, n147,
         n148, n149, n150, n151, n152;
  wire   [15:0] reg_OUT;

  Alu_16_bit_OPER_WIDTH8_OUT_WIDTH16_ALU_FUN_WIDTH4_DW_div_uns_0 div_45 ( .a({
        n15, n14, n13, n12, n11, n10, n9, n8}), .b({n7, n6, B[5:2], n5, B[0]}), 
        .quotient({N134, N133, N132, N131, N130, N129, N128, N127}) );
  Alu_16_bit_OPER_WIDTH8_OUT_WIDTH16_ALU_FUN_WIDTH4_DW01_sub_0 sub_38 ( .A({
        1'b0, n15, n14, n13, n12, n11, n10, n9, n8}), .B({1'b0, n7, n6, B[5:2], 
        n5, B[0]}), .CI(1'b0), .DIFF({N108, N107, N106, N105, N104, N103, N102, 
        N101, N100}) );
  Alu_16_bit_OPER_WIDTH8_OUT_WIDTH16_ALU_FUN_WIDTH4_DW01_add_0 add_35 ( .A({
        1'b0, n15, n14, n13, n12, n11, n10, n9, n8}), .B({1'b0, n7, n6, B[5:2], 
        n5, B[0]}), .CI(1'b0), .SUM({N99, N98, N97, N96, N95, N94, N93, N92, 
        N91}) );
  Alu_16_bit_OPER_WIDTH8_OUT_WIDTH16_ALU_FUN_WIDTH4_DW02_mult_0 mult_41 ( .A({
        n15, n14, n13, n12, n11, n10, n9, n8}), .B({n7, n6, B[5:2], n5, B[0]}), 
        .TC(1'b0), .PRODUCT({N124, N123, N122, N121, N120, N119, N118, N117, 
        N116, N115, N114, N113, N112, N111, N110, N109}) );
  DFFRQX2M \ALU_OUT_reg[15]  ( .D(reg_OUT[15]), .CK(CLK_alu), .RN(RST_alu), 
        .Q(ALU_OUT[15]) );
  DFFRQX2M \ALU_OUT_reg[14]  ( .D(reg_OUT[14]), .CK(CLK_alu), .RN(RST_alu), 
        .Q(ALU_OUT[14]) );
  DFFRQX2M \ALU_OUT_reg[13]  ( .D(reg_OUT[13]), .CK(CLK_alu), .RN(RST_alu), 
        .Q(ALU_OUT[13]) );
  DFFRQX2M \ALU_OUT_reg[12]  ( .D(reg_OUT[12]), .CK(CLK_alu), .RN(RST_alu), 
        .Q(ALU_OUT[12]) );
  DFFRQX2M \ALU_OUT_reg[11]  ( .D(reg_OUT[11]), .CK(CLK_alu), .RN(RST_alu), 
        .Q(ALU_OUT[11]) );
  DFFRQX2M \ALU_OUT_reg[10]  ( .D(reg_OUT[10]), .CK(CLK_alu), .RN(RST_alu), 
        .Q(ALU_OUT[10]) );
  DFFRQX2M \ALU_OUT_reg[9]  ( .D(reg_OUT[9]), .CK(CLK_alu), .RN(RST_alu), .Q(
        ALU_OUT[9]) );
  DFFRQX2M \ALU_OUT_reg[8]  ( .D(reg_OUT[8]), .CK(CLK_alu), .RN(RST_alu), .Q(
        ALU_OUT[8]) );
  DFFRQX2M \ALU_OUT_reg[7]  ( .D(reg_OUT[7]), .CK(CLK_alu), .RN(RST_alu), .Q(
        ALU_OUT[7]) );
  DFFRQX2M \ALU_OUT_reg[6]  ( .D(reg_OUT[6]), .CK(CLK_alu), .RN(RST_alu), .Q(
        ALU_OUT[6]) );
  DFFRQX2M \ALU_OUT_reg[5]  ( .D(reg_OUT[5]), .CK(CLK_alu), .RN(RST_alu), .Q(
        ALU_OUT[5]) );
  DFFRQX2M \ALU_OUT_reg[4]  ( .D(reg_OUT[4]), .CK(CLK_alu), .RN(RST_alu), .Q(
        ALU_OUT[4]) );
  DFFRQX2M \ALU_OUT_reg[3]  ( .D(reg_OUT[3]), .CK(CLK_alu), .RN(RST_alu), .Q(
        ALU_OUT[3]) );
  DFFRQX2M \ALU_OUT_reg[2]  ( .D(reg_OUT[2]), .CK(CLK_alu), .RN(RST_alu), .Q(
        ALU_OUT[2]) );
  DFFRQX2M \ALU_OUT_reg[1]  ( .D(reg_OUT[1]), .CK(CLK_alu), .RN(RST_alu), .Q(
        ALU_OUT[1]) );
  DFFRQX2M \ALU_OUT_reg[0]  ( .D(reg_OUT[0]), .CK(CLK_alu), .RN(RST_alu), .Q(
        ALU_OUT[0]) );
  DFFRQX2M OUT_VALID_reg ( .D(EN_alu), .CK(CLK_alu), .RN(RST_alu), .Q(
        OUT_VALID) );
  BUFX2M U3 ( .A(A[7]), .Y(n15) );
  BUFX2M U4 ( .A(A[6]), .Y(n14) );
  BUFX2M U5 ( .A(A[1]), .Y(n9) );
  INVX2M U8 ( .A(n97), .Y(n138) );
  INVX2M U9 ( .A(n47), .Y(n137) );
  INVX2M U10 ( .A(n53), .Y(n140) );
  INVX2M U11 ( .A(n102), .Y(n136) );
  OAI2BB1X2M U12 ( .A0N(N123), .A1N(n35), .B0(n36), .Y(reg_OUT[14]) );
  OAI2BB1X2M U13 ( .A0N(N124), .A1N(n35), .B0(n36), .Y(reg_OUT[15]) );
  OAI2BB1X2M U14 ( .A0N(N120), .A1N(n35), .B0(n36), .Y(reg_OUT[11]) );
  OAI2BB1X2M U15 ( .A0N(N121), .A1N(n35), .B0(n36), .Y(reg_OUT[12]) );
  OAI2BB1X2M U16 ( .A0N(N122), .A1N(n35), .B0(n36), .Y(reg_OUT[13]) );
  OAI2BB1X2M U17 ( .A0N(N118), .A1N(n35), .B0(n36), .Y(reg_OUT[9]) );
  OAI2BB1X2M U18 ( .A0N(N119), .A1N(n35), .B0(n36), .Y(reg_OUT[10]) );
  OAI21X2M U19 ( .A0(n3), .A1(n112), .B0(n111), .Y(n52) );
  OAI2B1X2M U20 ( .A1N(n110), .A0(n101), .B0(n111), .Y(n97) );
  NAND2X2M U21 ( .A(n141), .B(n110), .Y(n47) );
  INVX2M U22 ( .A(n50), .Y(n135) );
  INVX2M U23 ( .A(n112), .Y(n141) );
  NOR2X2M U24 ( .A(n101), .B(n3), .Y(n53) );
  NOR2BX2M U25 ( .AN(n113), .B(n3), .Y(n41) );
  NOR2BX2M U26 ( .AN(n40), .B(n133), .Y(n35) );
  NAND2X2M U27 ( .A(n113), .B(n110), .Y(n102) );
  OAI2BB2X1M U28 ( .B0(n146), .B1(n47), .A0N(N116), .A1N(n40), .Y(n46) );
  NOR2X2M U29 ( .A(ALU_FUN[2]), .B(ALU_FUN[1]), .Y(n113) );
  NOR2X2M U30 ( .A(n139), .B(n4), .Y(n110) );
  NAND3X2M U31 ( .A(n113), .B(n139), .C(n4), .Y(n50) );
  NAND2X2M U32 ( .A(ALU_FUN[2]), .B(ALU_FUN[1]), .Y(n101) );
  NAND2X2M U33 ( .A(ALU_FUN[2]), .B(n142), .Y(n112) );
  NAND2X2M U34 ( .A(EN_alu), .B(n42), .Y(n36) );
  INVX2M U35 ( .A(ALU_FUN[0]), .Y(n139) );
  INVX2M U36 ( .A(ALU_FUN[1]), .Y(n142) );
  NAND3X2M U37 ( .A(n113), .B(ALU_FUN[0]), .C(n4), .Y(n111) );
  AND4X2M U38 ( .A(N169), .B(n141), .C(n4), .D(n139), .Y(n100) );
  OAI2B11X2M U39 ( .A1N(N108), .A0(n102), .B0(n140), .C0(n138), .Y(n42) );
  NOR3BX2M U40 ( .AN(n4), .B(n101), .C(ALU_FUN[0]), .Y(n39) );
  NOR3BX2M U41 ( .AN(n4), .B(n139), .C(n112), .Y(n57) );
  NOR3X2M U42 ( .A(n3), .B(ALU_FUN[2]), .C(n142), .Y(n40) );
  OR2X2M U43 ( .A(n4), .B(ALU_FUN[0]), .Y(n3) );
  INVX2M U44 ( .A(EN_alu), .Y(n133) );
  AOI31X2M U45 ( .A0(n103), .A1(n104), .A2(n105), .B0(n133), .Y(reg_OUT[0]) );
  AOI22X1M U46 ( .A0(N100), .A1(n136), .B0(N91), .B1(n41), .Y(n103) );
  AOI222X1M U47 ( .A0(N109), .A1(n40), .B0(n53), .B1(n152), .C0(n8), .C1(n137), 
        .Y(n104) );
  AOI211X2M U48 ( .A0(n9), .A1(n57), .B0(n106), .C0(n107), .Y(n105) );
  OAI2BB1X2M U49 ( .A0N(N127), .A1N(n48), .B0(n114), .Y(n106) );
  AOI31X2M U50 ( .A0(N167), .A1(n4), .A2(n115), .B0(n100), .Y(n114) );
  NOR3X2M U51 ( .A(n142), .B(ALU_FUN[2]), .C(ALU_FUN[0]), .Y(n115) );
  AOI31X2M U52 ( .A0(n90), .A1(n91), .A2(n92), .B0(n133), .Y(reg_OUT[1]) );
  AOI222X1M U53 ( .A0(N92), .A1(n41), .B0(N110), .B1(n40), .C0(N101), .C1(n136), .Y(n90) );
  AOI222X1M U54 ( .A0(n9), .A1(n137), .B0(n10), .B1(n57), .C0(n53), .C1(n126), 
        .Y(n91) );
  AOI211X2M U55 ( .A0(n8), .A1(n39), .B0(n93), .C0(n94), .Y(n92) );
  OAI2BB1X2M U56 ( .A0N(N128), .A1N(n48), .B0(n98), .Y(n93) );
  AOI31X2M U57 ( .A0(N168), .A1(n4), .A2(n99), .B0(n100), .Y(n98) );
  NOR3X2M U58 ( .A(n139), .B(ALU_FUN[2]), .C(n142), .Y(n99) );
  AOI31X2M U59 ( .A0(n83), .A1(n84), .A2(n85), .B0(n133), .Y(reg_OUT[2]) );
  AOI22X1M U60 ( .A0(N102), .A1(n136), .B0(N93), .B1(n41), .Y(n83) );
  AOI222X1M U61 ( .A0(N111), .A1(n40), .B0(n53), .B1(n151), .C0(n10), .C1(n137), .Y(n84) );
  AOI221XLM U62 ( .A0(n9), .A1(n39), .B0(n11), .B1(n57), .C0(n86), .Y(n85) );
  AOI31X2M U63 ( .A0(n76), .A1(n77), .A2(n78), .B0(n133), .Y(reg_OUT[3]) );
  AOI22X1M U64 ( .A0(N103), .A1(n136), .B0(N94), .B1(n41), .Y(n76) );
  AOI222X1M U65 ( .A0(N112), .A1(n40), .B0(n53), .B1(n150), .C0(n11), .C1(n137), .Y(n77) );
  AOI221XLM U66 ( .A0(n10), .A1(n39), .B0(n12), .B1(n57), .C0(n79), .Y(n78) );
  AOI31X2M U67 ( .A0(n69), .A1(n70), .A2(n71), .B0(n133), .Y(reg_OUT[4]) );
  AOI22X1M U68 ( .A0(N104), .A1(n136), .B0(N95), .B1(n41), .Y(n69) );
  AOI222X1M U69 ( .A0(N113), .A1(n40), .B0(n53), .B1(n149), .C0(n12), .C1(n137), .Y(n70) );
  AOI221XLM U70 ( .A0(n11), .A1(n39), .B0(n57), .B1(n13), .C0(n72), .Y(n71) );
  AOI31X2M U71 ( .A0(n62), .A1(n63), .A2(n64), .B0(n133), .Y(reg_OUT[5]) );
  AOI22X1M U72 ( .A0(N105), .A1(n136), .B0(N96), .B1(n41), .Y(n62) );
  AOI222X1M U73 ( .A0(N114), .A1(n40), .B0(n53), .B1(n148), .C0(n13), .C1(n137), .Y(n63) );
  AOI221XLM U74 ( .A0(n12), .A1(n39), .B0(n57), .B1(n14), .C0(n65), .Y(n64) );
  AOI21X2M U75 ( .A0(n37), .A1(n38), .B0(n133), .Y(reg_OUT[8]) );
  AOI21X2M U76 ( .A0(N99), .A1(n41), .B0(n42), .Y(n37) );
  AOI22X1M U77 ( .A0(n15), .A1(n39), .B0(N117), .B1(n40), .Y(n38) );
  AOI31X2M U78 ( .A0(n54), .A1(n55), .A2(n56), .B0(n133), .Y(reg_OUT[6]) );
  AOI22X1M U79 ( .A0(N106), .A1(n136), .B0(N97), .B1(n41), .Y(n54) );
  AOI221XLM U80 ( .A0(n13), .A1(n39), .B0(n57), .B1(n15), .C0(n58), .Y(n56) );
  AOI222X1M U81 ( .A0(N115), .A1(n40), .B0(n53), .B1(n147), .C0(n137), .C1(n14), .Y(n55) );
  AOI31X2M U82 ( .A0(n43), .A1(n44), .A2(n45), .B0(n133), .Y(reg_OUT[7]) );
  AOI22X1M U83 ( .A0(n14), .A1(n39), .B0(n53), .B1(n146), .Y(n43) );
  AOI222X1M U84 ( .A0(n7), .A1(n134), .B0(N134), .B1(n48), .C0(n49), .C1(n143), 
        .Y(n44) );
  AOI221XLM U85 ( .A0(N107), .A1(n136), .B0(N98), .B1(n41), .C0(n46), .Y(n45)
         );
  INVX2M U86 ( .A(n6), .Y(n132) );
  OAI2B2X1M U87 ( .A1N(n5), .A0(n95), .B0(n5), .B1(n96), .Y(n94) );
  AOI221XLM U88 ( .A0(n135), .A1(n126), .B0(n9), .B1(n52), .C0(n137), .Y(n95)
         );
  AOI221XLM U89 ( .A0(n9), .A1(n135), .B0(n97), .B1(n126), .C0(n53), .Y(n96)
         );
  OAI221X1M U90 ( .A0(n10), .A1(n138), .B0(n50), .B1(n151), .C0(n140), .Y(n89)
         );
  OAI221X1M U91 ( .A0(n11), .A1(n138), .B0(n50), .B1(n150), .C0(n140), .Y(n82)
         );
  OAI221X1M U92 ( .A0(n12), .A1(n138), .B0(n50), .B1(n149), .C0(n140), .Y(n75)
         );
  OAI221X1M U93 ( .A0(n13), .A1(n138), .B0(n50), .B1(n148), .C0(n140), .Y(n68)
         );
  OAI221X1M U94 ( .A0(n14), .A1(n138), .B0(n50), .B1(n147), .C0(n140), .Y(n61)
         );
  OAI221X1M U95 ( .A0(n15), .A1(n138), .B0(n146), .B1(n50), .C0(n140), .Y(n49)
         );
  INVX2M U96 ( .A(n16), .Y(n128) );
  INVX2M U97 ( .A(n27), .Y(n130) );
  OAI21X2M U98 ( .A0(n59), .A1(n132), .B0(n60), .Y(n58) );
  AOI221XLM U99 ( .A0(n135), .A1(n147), .B0(n14), .B1(n52), .C0(n137), .Y(n59)
         );
  AOI22X1M U100 ( .A0(N133), .A1(n48), .B0(n61), .B1(n132), .Y(n60) );
  INVX2M U101 ( .A(n51), .Y(n134) );
  AOI221XLM U102 ( .A0(n52), .A1(n15), .B0(n146), .B1(n135), .C0(n137), .Y(n51) );
  INVX2M U103 ( .A(n9), .Y(n126) );
  BUFX2M U104 ( .A(ALU_FUN[3]), .Y(n4) );
  INVX2M U105 ( .A(n15), .Y(n146) );
  INVX2M U106 ( .A(n14), .Y(n147) );
  INVX2M U107 ( .A(n8), .Y(n152) );
  INVX2M U108 ( .A(n10), .Y(n151) );
  INVX2M U109 ( .A(n11), .Y(n150) );
  INVX2M U110 ( .A(n13), .Y(n148) );
  INVX2M U111 ( .A(n12), .Y(n149) );
  INVX2M U112 ( .A(n7), .Y(n143) );
  BUFX2M U113 ( .A(B[6]), .Y(n6) );
  BUFX2M U114 ( .A(B[7]), .Y(n7) );
  BUFX2M U115 ( .A(B[1]), .Y(n5) );
  BUFX2M U116 ( .A(A[5]), .Y(n13) );
  OAI21X2M U117 ( .A0(n87), .A1(n129), .B0(n88), .Y(n86) );
  AOI221XLM U118 ( .A0(n135), .A1(n151), .B0(n10), .B1(n52), .C0(n137), .Y(n87) );
  AOI22X1M U119 ( .A0(N129), .A1(n48), .B0(n89), .B1(n129), .Y(n88) );
  BUFX2M U120 ( .A(A[4]), .Y(n12) );
  BUFX2M U121 ( .A(A[3]), .Y(n11) );
  OAI21X2M U122 ( .A0(n80), .A1(n131), .B0(n81), .Y(n79) );
  AOI221XLM U123 ( .A0(n135), .A1(n150), .B0(n11), .B1(n52), .C0(n137), .Y(n80) );
  AOI22X1M U124 ( .A0(N130), .A1(n48), .B0(n82), .B1(n131), .Y(n81) );
  BUFX2M U125 ( .A(A[2]), .Y(n10) );
  OAI21X2M U126 ( .A0(n73), .A1(n145), .B0(n74), .Y(n72) );
  AOI221XLM U127 ( .A0(n135), .A1(n149), .B0(n12), .B1(n52), .C0(n137), .Y(n73) );
  AOI22X1M U128 ( .A0(N131), .A1(n48), .B0(n75), .B1(n145), .Y(n74) );
  INVX2M U129 ( .A(B[4]), .Y(n145) );
  BUFX2M U130 ( .A(A[0]), .Y(n8) );
  OAI21X2M U131 ( .A0(n66), .A1(n144), .B0(n67), .Y(n65) );
  AOI221XLM U132 ( .A0(n135), .A1(n148), .B0(n13), .B1(n52), .C0(n137), .Y(n66) );
  AOI22X1M U133 ( .A0(N132), .A1(n48), .B0(n68), .B1(n144), .Y(n67) );
  INVX2M U134 ( .A(B[5]), .Y(n144) );
  OAI2B2X1M U135 ( .A1N(B[0]), .A0(n108), .B0(B[0]), .B1(n109), .Y(n107) );
  AOI221XLM U136 ( .A0(n135), .A1(n152), .B0(n8), .B1(n52), .C0(n137), .Y(n108) );
  AOI221XLM U137 ( .A0(n8), .A1(n135), .B0(n97), .B1(n152), .C0(n53), .Y(n109)
         );
  INVX2M U138 ( .A(B[0]), .Y(n127) );
  INVX2M U139 ( .A(B[2]), .Y(n129) );
  AND3X2M U140 ( .A(n110), .B(ALU_FUN[1]), .C(n116), .Y(n48) );
  AOI21X2M U141 ( .A0(n117), .A1(n118), .B0(ALU_FUN[2]), .Y(n116) );
  NOR4X1M U142 ( .A(n7), .B(n6), .C(B[5]), .D(B[4]), .Y(n118) );
  NOR4X1M U143 ( .A(B[3]), .B(B[2]), .C(n5), .D(B[0]), .Y(n117) );
  INVX2M U144 ( .A(B[3]), .Y(n131) );
  NOR2X1M U145 ( .A(n146), .B(n7), .Y(n122) );
  NAND2BX1M U146 ( .AN(B[4]), .B(n12), .Y(n31) );
  NAND2BX1M U147 ( .AN(n12), .B(B[4]), .Y(n20) );
  CLKNAND2X2M U148 ( .A(n31), .B(n20), .Y(n33) );
  NOR2X1M U149 ( .A(n131), .B(n11), .Y(n28) );
  NOR2X1M U150 ( .A(n129), .B(n10), .Y(n19) );
  NOR2X1M U151 ( .A(n127), .B(n8), .Y(n16) );
  CLKNAND2X2M U152 ( .A(n10), .B(n129), .Y(n30) );
  NAND2BX1M U153 ( .AN(n19), .B(n30), .Y(n25) );
  AOI21X1M U154 ( .A0(n16), .A1(n126), .B0(n5), .Y(n17) );
  AOI211X1M U155 ( .A0(n9), .A1(n128), .B0(n25), .C0(n17), .Y(n18) );
  CLKNAND2X2M U156 ( .A(n11), .B(n131), .Y(n29) );
  OAI31X1M U157 ( .A0(n28), .A1(n19), .A2(n18), .B0(n29), .Y(n21) );
  NAND2BX1M U158 ( .AN(n13), .B(B[5]), .Y(n120) );
  OAI211X1M U159 ( .A0(n33), .A1(n21), .B0(n20), .C0(n120), .Y(n22) );
  NAND2BX1M U160 ( .AN(B[5]), .B(n13), .Y(n32) );
  XNOR2X1M U161 ( .A(n14), .B(n6), .Y(n119) );
  AOI32X1M U162 ( .A0(n22), .A1(n32), .A2(n119), .B0(n6), .B1(n147), .Y(n23)
         );
  CLKNAND2X2M U163 ( .A(n7), .B(n146), .Y(n123) );
  OAI21X1M U164 ( .A0(n122), .A1(n23), .B0(n123), .Y(N169) );
  CLKNAND2X2M U165 ( .A(n8), .B(n127), .Y(n26) );
  OA21X1M U166 ( .A0(n26), .A1(n126), .B0(n5), .Y(n24) );
  AOI211X1M U167 ( .A0(n26), .A1(n126), .B0(n25), .C0(n24), .Y(n27) );
  AOI31X1M U168 ( .A0(n130), .A1(n30), .A2(n29), .B0(n28), .Y(n34) );
  OAI2B11X1M U169 ( .A1N(n34), .A0(n33), .B0(n32), .C0(n31), .Y(n121) );
  AOI32X1M U170 ( .A0(n121), .A1(n120), .A2(n119), .B0(n14), .B1(n132), .Y(
        n124) );
  AOI2B1X1M U171 ( .A1N(n124), .A0(n123), .B0(n122), .Y(n125) );
  CLKINVX1M U172 ( .A(n125), .Y(N168) );
  NOR2X1M U173 ( .A(N169), .B(N168), .Y(N167) );
endmodule


module FIFO_WR_ADDR4 ( W_clk, W_rst_n, W_inc, Wq2_ptr, W_ptr, W_addr, W_full
 );
  input [4:0] Wq2_ptr;
  output [4:0] W_ptr;
  output [3:0] W_addr;
  input W_clk, W_rst_n, W_inc;
  output W_full;
  wire   \reg_W_bin[4] , N0, wire_W_full, n1, n2, n3, n4, n5, n6,
         \add_28/carry[4] , \add_28/carry[3] , \add_28/carry[2] ,
         \add_28/carry[1] ;
  wire   [4:0] wire_W_bin_next;
  wire   [3:0] wire_W_gray;

  DFFRQX2M \reg_W_bin_reg[4]  ( .D(wire_W_bin_next[4]), .CK(W_clk), .RN(
        W_rst_n), .Q(\reg_W_bin[4] ) );
  DFFRQX2M \reg_W_bin_reg[3]  ( .D(wire_W_bin_next[3]), .CK(W_clk), .RN(
        W_rst_n), .Q(W_addr[3]) );
  DFFRQX2M \reg_W_bin_reg[0]  ( .D(wire_W_bin_next[0]), .CK(W_clk), .RN(
        W_rst_n), .Q(W_addr[0]) );
  DFFRQX2M \reg_W_bin_reg[2]  ( .D(wire_W_bin_next[2]), .CK(W_clk), .RN(
        W_rst_n), .Q(W_addr[2]) );
  DFFRQX2M \reg_W_bin_reg[1]  ( .D(wire_W_bin_next[1]), .CK(W_clk), .RN(
        W_rst_n), .Q(W_addr[1]) );
  DFFRQX2M W_full_reg ( .D(wire_W_full), .CK(W_clk), .RN(W_rst_n), .Q(W_full)
         );
  DFFRQX2M \W_ptr_reg[4]  ( .D(wire_W_bin_next[4]), .CK(W_clk), .RN(W_rst_n), 
        .Q(W_ptr[4]) );
  DFFRQX2M \W_ptr_reg[0]  ( .D(wire_W_gray[0]), .CK(W_clk), .RN(W_rst_n), .Q(
        W_ptr[0]) );
  DFFRQX2M \W_ptr_reg[1]  ( .D(wire_W_gray[1]), .CK(W_clk), .RN(W_rst_n), .Q(
        W_ptr[1]) );
  DFFRQX2M \W_ptr_reg[2]  ( .D(wire_W_gray[2]), .CK(W_clk), .RN(W_rst_n), .Q(
        W_ptr[2]) );
  DFFRQX2M \W_ptr_reg[3]  ( .D(wire_W_gray[3]), .CK(W_clk), .RN(W_rst_n), .Q(
        W_ptr[3]) );
  CLKXOR2X2M U3 ( .A(wire_W_bin_next[2]), .B(wire_W_bin_next[3]), .Y(
        wire_W_gray[2]) );
  CLKXOR2X2M U4 ( .A(wire_W_bin_next[1]), .B(wire_W_bin_next[2]), .Y(
        wire_W_gray[1]) );
  CLKXOR2X2M U5 ( .A(wire_W_bin_next[3]), .B(wire_W_bin_next[4]), .Y(
        wire_W_gray[3]) );
  CLKXOR2X2M U6 ( .A(wire_W_bin_next[1]), .B(wire_W_bin_next[0]), .Y(
        wire_W_gray[0]) );
  XNOR2X2M U7 ( .A(wire_W_gray[3]), .B(Wq2_ptr[3]), .Y(n4) );
  XNOR2X2M U8 ( .A(wire_W_gray[1]), .B(Wq2_ptr[1]), .Y(n6) );
  XNOR2X2M U9 ( .A(wire_W_gray[0]), .B(Wq2_ptr[0]), .Y(n5) );
  NOR4X1M U10 ( .A(n1), .B(n2), .C(n3), .D(n4), .Y(wire_W_full) );
  NAND2X2M U11 ( .A(n5), .B(n6), .Y(n1) );
  XNOR2X2M U12 ( .A(wire_W_bin_next[4]), .B(Wq2_ptr[4]), .Y(n3) );
  CLKXOR2X2M U13 ( .A(Wq2_ptr[2]), .B(wire_W_gray[2]), .Y(n2) );
  NOR2BX2M U14 ( .AN(W_inc), .B(W_full), .Y(N0) );
  CLKXOR2X2M U15 ( .A(\reg_W_bin[4] ), .B(\add_28/carry[4] ), .Y(
        wire_W_bin_next[4]) );
  AND2X1M U16 ( .A(W_addr[3]), .B(\add_28/carry[3] ), .Y(\add_28/carry[4] ) );
  CLKXOR2X2M U17 ( .A(W_addr[3]), .B(\add_28/carry[3] ), .Y(wire_W_bin_next[3]) );
  AND2X1M U18 ( .A(W_addr[2]), .B(\add_28/carry[2] ), .Y(\add_28/carry[3] ) );
  CLKXOR2X2M U19 ( .A(W_addr[2]), .B(\add_28/carry[2] ), .Y(wire_W_bin_next[2]) );
  AND2X1M U20 ( .A(W_addr[1]), .B(\add_28/carry[1] ), .Y(\add_28/carry[2] ) );
  CLKXOR2X2M U21 ( .A(W_addr[1]), .B(\add_28/carry[1] ), .Y(wire_W_bin_next[1]) );
  AND2X1M U22 ( .A(N0), .B(W_addr[0]), .Y(\add_28/carry[1] ) );
  CLKXOR2X2M U23 ( .A(N0), .B(W_addr[0]), .Y(wire_W_bin_next[0]) );
endmodule


module FIFO_RD_ADDR4 ( R_clk, R_rst_n, R_inc, Rq2_ptr, R_ptr, R_addr, R_empty
 );
  input [4:0] Rq2_ptr;
  output [4:0] R_ptr;
  output [3:0] R_addr;
  input R_clk, R_rst_n, R_inc;
  output R_empty;
  wire   \reg_R_bin[4] , N0, wire_R_empty, \add_28/carry[4] ,
         \add_28/carry[3] , \add_28/carry[2] , \add_28/carry[1] , n1, n2, n3,
         n4, n5, n6, n7, n8;
  wire   [4:0] wire_R_bin_next;
  wire   [3:0] wire_R_gray;

  DFFRQX2M \reg_R_bin_reg[4]  ( .D(wire_R_bin_next[4]), .CK(R_clk), .RN(
        R_rst_n), .Q(\reg_R_bin[4] ) );
  DFFRQX2M \reg_R_bin_reg[3]  ( .D(wire_R_bin_next[3]), .CK(R_clk), .RN(
        R_rst_n), .Q(R_addr[3]) );
  DFFSQX2M R_empty_reg ( .D(wire_R_empty), .CK(R_clk), .SN(R_rst_n), .Q(
        R_empty) );
  DFFRQX2M \reg_R_bin_reg[0]  ( .D(wire_R_bin_next[0]), .CK(R_clk), .RN(
        R_rst_n), .Q(R_addr[0]) );
  DFFRQX2M \reg_R_bin_reg[1]  ( .D(wire_R_bin_next[1]), .CK(R_clk), .RN(
        R_rst_n), .Q(R_addr[1]) );
  DFFRQX2M \reg_R_bin_reg[2]  ( .D(wire_R_bin_next[2]), .CK(R_clk), .RN(
        R_rst_n), .Q(R_addr[2]) );
  DFFRQX2M \R_ptr_reg[4]  ( .D(wire_R_bin_next[4]), .CK(R_clk), .RN(R_rst_n), 
        .Q(R_ptr[4]) );
  DFFRQX2M \R_ptr_reg[0]  ( .D(wire_R_gray[0]), .CK(R_clk), .RN(R_rst_n), .Q(
        R_ptr[0]) );
  DFFRQX2M \R_ptr_reg[1]  ( .D(wire_R_gray[1]), .CK(R_clk), .RN(R_rst_n), .Q(
        R_ptr[1]) );
  DFFRQX2M \R_ptr_reg[2]  ( .D(wire_R_gray[2]), .CK(R_clk), .RN(R_rst_n), .Q(
        R_ptr[2]) );
  DFFRQX2M \R_ptr_reg[3]  ( .D(wire_R_gray[3]), .CK(R_clk), .RN(R_rst_n), .Q(
        R_ptr[3]) );
  CLKXOR2X2M U3 ( .A(wire_R_bin_next[2]), .B(wire_R_bin_next[1]), .Y(
        wire_R_gray[1]) );
  CLKXOR2X2M U4 ( .A(wire_R_bin_next[4]), .B(wire_R_bin_next[3]), .Y(
        wire_R_gray[3]) );
  CLKXOR2X2M U5 ( .A(wire_R_bin_next[3]), .B(wire_R_bin_next[2]), .Y(
        wire_R_gray[2]) );
  CLKXOR2X2M U6 ( .A(wire_R_bin_next[1]), .B(wire_R_bin_next[0]), .Y(
        wire_R_gray[0]) );
  NOR2BX2M U7 ( .AN(R_inc), .B(R_empty), .Y(N0) );
  CLKXOR2X2M U8 ( .A(\reg_R_bin[4] ), .B(\add_28/carry[4] ), .Y(
        wire_R_bin_next[4]) );
  AND2X1M U9 ( .A(R_addr[3]), .B(\add_28/carry[3] ), .Y(\add_28/carry[4] ) );
  CLKXOR2X2M U10 ( .A(R_addr[3]), .B(\add_28/carry[3] ), .Y(wire_R_bin_next[3]) );
  AND2X1M U11 ( .A(R_addr[2]), .B(\add_28/carry[2] ), .Y(\add_28/carry[3] ) );
  CLKXOR2X2M U12 ( .A(R_addr[2]), .B(\add_28/carry[2] ), .Y(wire_R_bin_next[2]) );
  AND2X1M U13 ( .A(R_addr[1]), .B(\add_28/carry[1] ), .Y(\add_28/carry[2] ) );
  CLKXOR2X2M U14 ( .A(R_addr[1]), .B(\add_28/carry[1] ), .Y(wire_R_bin_next[1]) );
  AND2X1M U15 ( .A(N0), .B(R_addr[0]), .Y(\add_28/carry[1] ) );
  CLKXOR2X2M U16 ( .A(N0), .B(R_addr[0]), .Y(wire_R_bin_next[0]) );
  CLKXOR2X2M U17 ( .A(Rq2_ptr[2]), .B(wire_R_gray[2]), .Y(n8) );
  NOR2BX1M U18 ( .AN(Rq2_ptr[0]), .B(wire_R_gray[0]), .Y(n1) );
  OAI2B2X1M U19 ( .A1N(wire_R_gray[1]), .A0(n1), .B0(Rq2_ptr[1]), .B1(n1), .Y(
        n4) );
  NOR2BX1M U20 ( .AN(wire_R_gray[0]), .B(Rq2_ptr[0]), .Y(n2) );
  OAI2B2X1M U21 ( .A1N(Rq2_ptr[1]), .A0(n2), .B0(wire_R_gray[1]), .B1(n2), .Y(
        n3) );
  CLKNAND2X2M U22 ( .A(n4), .B(n3), .Y(n7) );
  CLKXOR2X2M U23 ( .A(Rq2_ptr[3]), .B(wire_R_gray[3]), .Y(n6) );
  CLKXOR2X2M U24 ( .A(Rq2_ptr[4]), .B(wire_R_bin_next[4]), .Y(n5) );
  NOR4X1M U25 ( .A(n8), .B(n7), .C(n6), .D(n5), .Y(wire_R_empty) );
endmodule


module BIT_SYNC_NUM_STAGES2_BUS_WIDTH5_0 ( CLK, RST, ASYNC, SYNC );
  input [4:0] ASYNC;
  output [4:0] SYNC;
  input CLK, RST;
  wire   \sync_reg[0][4] , \sync_reg[0][3] , \sync_reg[0][2] ,
         \sync_reg[0][1] , \sync_reg[0][0] ;

  DFFRQX2M \sync_reg_reg[1][1]  ( .D(\sync_reg[0][1] ), .CK(CLK), .RN(RST), 
        .Q(SYNC[1]) );
  DFFRQX2M \sync_reg_reg[1][4]  ( .D(\sync_reg[0][4] ), .CK(CLK), .RN(RST), 
        .Q(SYNC[4]) );
  DFFRQX2M \sync_reg_reg[1][3]  ( .D(\sync_reg[0][3] ), .CK(CLK), .RN(RST), 
        .Q(SYNC[3]) );
  DFFRQX2M \sync_reg_reg[1][2]  ( .D(\sync_reg[0][2] ), .CK(CLK), .RN(RST), 
        .Q(SYNC[2]) );
  DFFRQX2M \sync_reg_reg[1][0]  ( .D(\sync_reg[0][0] ), .CK(CLK), .RN(RST), 
        .Q(SYNC[0]) );
  DFFRQX2M \sync_reg_reg[0][4]  ( .D(ASYNC[4]), .CK(CLK), .RN(RST), .Q(
        \sync_reg[0][4] ) );
  DFFRQX2M \sync_reg_reg[0][3]  ( .D(ASYNC[3]), .CK(CLK), .RN(RST), .Q(
        \sync_reg[0][3] ) );
  DFFRQX2M \sync_reg_reg[0][2]  ( .D(ASYNC[2]), .CK(CLK), .RN(RST), .Q(
        \sync_reg[0][2] ) );
  DFFRQX2M \sync_reg_reg[0][1]  ( .D(ASYNC[1]), .CK(CLK), .RN(RST), .Q(
        \sync_reg[0][1] ) );
  DFFRQX2M \sync_reg_reg[0][0]  ( .D(ASYNC[0]), .CK(CLK), .RN(RST), .Q(
        \sync_reg[0][0] ) );
endmodule


module BIT_SYNC_NUM_STAGES2_BUS_WIDTH5_1 ( CLK, RST, ASYNC, SYNC );
  input [4:0] ASYNC;
  output [4:0] SYNC;
  input CLK, RST;
  wire   \sync_reg[0][4] , \sync_reg[0][3] , \sync_reg[0][2] ,
         \sync_reg[0][1] , \sync_reg[0][0] ;

  DFFRQX2M \sync_reg_reg[1][4]  ( .D(\sync_reg[0][4] ), .CK(CLK), .RN(RST), 
        .Q(SYNC[4]) );
  DFFRQX2M \sync_reg_reg[1][3]  ( .D(\sync_reg[0][3] ), .CK(CLK), .RN(RST), 
        .Q(SYNC[3]) );
  DFFRQX2M \sync_reg_reg[1][1]  ( .D(\sync_reg[0][1] ), .CK(CLK), .RN(RST), 
        .Q(SYNC[1]) );
  DFFRQX2M \sync_reg_reg[1][0]  ( .D(\sync_reg[0][0] ), .CK(CLK), .RN(RST), 
        .Q(SYNC[0]) );
  DFFRQX2M \sync_reg_reg[1][2]  ( .D(\sync_reg[0][2] ), .CK(CLK), .RN(RST), 
        .Q(SYNC[2]) );
  DFFRQX2M \sync_reg_reg[0][4]  ( .D(ASYNC[4]), .CK(CLK), .RN(RST), .Q(
        \sync_reg[0][4] ) );
  DFFRQX2M \sync_reg_reg[0][3]  ( .D(ASYNC[3]), .CK(CLK), .RN(RST), .Q(
        \sync_reg[0][3] ) );
  DFFRQX2M \sync_reg_reg[0][2]  ( .D(ASYNC[2]), .CK(CLK), .RN(RST), .Q(
        \sync_reg[0][2] ) );
  DFFRQX2M \sync_reg_reg[0][1]  ( .D(ASYNC[1]), .CK(CLK), .RN(RST), .Q(
        \sync_reg[0][1] ) );
  DFFRQX2M \sync_reg_reg[0][0]  ( .D(ASYNC[0]), .CK(CLK), .RN(RST), .Q(
        \sync_reg[0][0] ) );
endmodule


module FIFO_MEM_CNTRL_ADDR4_DATA8_DEPTH16 ( W_clk, W_rst, W_inc, W_full, 
        W_addr, R_addr, W_data, R_data );
  input [3:0] W_addr;
  input [3:0] R_addr;
  input [7:0] W_data;
  output [7:0] R_data;
  input W_clk, W_rst, W_inc, W_full;
  wire   N10, N11, N12, N13, \MEM[0][7] , \MEM[0][6] , \MEM[0][5] ,
         \MEM[0][4] , \MEM[0][3] , \MEM[0][2] , \MEM[0][1] , \MEM[0][0] ,
         \MEM[1][7] , \MEM[1][6] , \MEM[1][5] , \MEM[1][4] , \MEM[1][3] ,
         \MEM[1][2] , \MEM[1][1] , \MEM[1][0] , \MEM[2][7] , \MEM[2][6] ,
         \MEM[2][5] , \MEM[2][4] , \MEM[2][3] , \MEM[2][2] , \MEM[2][1] ,
         \MEM[2][0] , \MEM[3][7] , \MEM[3][6] , \MEM[3][5] , \MEM[3][4] ,
         \MEM[3][3] , \MEM[3][2] , \MEM[3][1] , \MEM[3][0] , \MEM[4][7] ,
         \MEM[4][6] , \MEM[4][5] , \MEM[4][4] , \MEM[4][3] , \MEM[4][2] ,
         \MEM[4][1] , \MEM[4][0] , \MEM[5][7] , \MEM[5][6] , \MEM[5][5] ,
         \MEM[5][4] , \MEM[5][3] , \MEM[5][2] , \MEM[5][1] , \MEM[5][0] ,
         \MEM[6][7] , \MEM[6][6] , \MEM[6][5] , \MEM[6][4] , \MEM[6][3] ,
         \MEM[6][2] , \MEM[6][1] , \MEM[6][0] , \MEM[7][7] , \MEM[7][6] ,
         \MEM[7][5] , \MEM[7][4] , \MEM[7][3] , \MEM[7][2] , \MEM[7][1] ,
         \MEM[7][0] , \MEM[8][7] , \MEM[8][6] , \MEM[8][5] , \MEM[8][4] ,
         \MEM[8][3] , \MEM[8][2] , \MEM[8][1] , \MEM[8][0] , \MEM[9][7] ,
         \MEM[9][6] , \MEM[9][5] , \MEM[9][4] , \MEM[9][3] , \MEM[9][2] ,
         \MEM[9][1] , \MEM[9][0] , \MEM[10][7] , \MEM[10][6] , \MEM[10][5] ,
         \MEM[10][4] , \MEM[10][3] , \MEM[10][2] , \MEM[10][1] , \MEM[10][0] ,
         \MEM[11][7] , \MEM[11][6] , \MEM[11][5] , \MEM[11][4] , \MEM[11][3] ,
         \MEM[11][2] , \MEM[11][1] , \MEM[11][0] , \MEM[12][7] , \MEM[12][6] ,
         \MEM[12][5] , \MEM[12][4] , \MEM[12][3] , \MEM[12][2] , \MEM[12][1] ,
         \MEM[12][0] , \MEM[13][7] , \MEM[13][6] , \MEM[13][5] , \MEM[13][4] ,
         \MEM[13][3] , \MEM[13][2] , \MEM[13][1] , \MEM[13][0] , \MEM[14][7] ,
         \MEM[14][6] , \MEM[14][5] , \MEM[14][4] , \MEM[14][3] , \MEM[14][2] ,
         \MEM[14][1] , \MEM[14][0] , \MEM[15][7] , \MEM[15][6] , \MEM[15][5] ,
         \MEM[15][4] , \MEM[15][3] , \MEM[15][2] , \MEM[15][1] , \MEM[15][0] ,
         n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25,
         n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39,
         n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53,
         n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67,
         n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81,
         n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95,
         n96, n97, n98, n99, n100, n101, n102, n103, n104, n105, n106, n107,
         n108, n109, n110, n111, n112, n113, n114, n115, n116, n117, n118,
         n119, n120, n121, n122, n123, n124, n125, n126, n127, n128, n129,
         n130, n131, n132, n133, n134, n135, n136, n137, n138, n139, n140,
         n141, n142, n143, n144, n145, n146, n147, n148, n149, n150, n151,
         n152, n153, n154, n155, n156, n157, n158, n159, n160, n161, n162,
         n163, n164, n165, n166, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11,
         n167, n168, n169, n170, n171, n172, n173, n174, n175, n176, n177,
         n178, n179, n180, n181, n182, n183, n184, n185, n186, n187, n188,
         n189, n190, n191, n192, n193, n194, n195, n196, n197, n198, n199,
         n200, n201, n202, n203, n204, n205, n206, n207, n208, n209, n210,
         n211, n212, n213, n214, n215, n216, n217, n218, n219, n220, n221,
         n222, n223, n224, n225, n226, n227, n228, n229, n230, n231, n232,
         n233, n234, n235, n236, n237, n238, n239, n240, n241, n242, n243,
         n244, n245, n246, n247, n248, n249, n250, n251, n252, n253, n254,
         n255, n256, n257, n258, n259, n260, n261, n262, n263, n264, n265,
         n266, n267, n268, n269, n270, n271, n272, n273, n274, n275, n276,
         n277, n278, n279, n280, n281, n282, n283, n284, n285, n286, n287,
         n288, n289, n290, n291, n292, n293;
  assign N10 = R_addr[0];
  assign N11 = R_addr[1];
  assign N12 = R_addr[2];
  assign N13 = R_addr[3];

  DFFRQX2M \MEM_reg[1][7]  ( .D(n158), .CK(W_clk), .RN(n268), .Q(\MEM[1][7] )
         );
  DFFRQX2M \MEM_reg[1][6]  ( .D(n157), .CK(W_clk), .RN(n268), .Q(\MEM[1][6] )
         );
  DFFRQX2M \MEM_reg[1][5]  ( .D(n156), .CK(W_clk), .RN(n268), .Q(\MEM[1][5] )
         );
  DFFRQX2M \MEM_reg[1][4]  ( .D(n155), .CK(W_clk), .RN(n268), .Q(\MEM[1][4] )
         );
  DFFRQX2M \MEM_reg[1][3]  ( .D(n154), .CK(W_clk), .RN(n268), .Q(\MEM[1][3] )
         );
  DFFRQX2M \MEM_reg[1][2]  ( .D(n153), .CK(W_clk), .RN(n269), .Q(\MEM[1][2] )
         );
  DFFRQX2M \MEM_reg[1][1]  ( .D(n152), .CK(W_clk), .RN(n269), .Q(\MEM[1][1] )
         );
  DFFRQX2M \MEM_reg[1][0]  ( .D(n151), .CK(W_clk), .RN(n269), .Q(\MEM[1][0] )
         );
  DFFRQX2M \MEM_reg[3][7]  ( .D(n142), .CK(W_clk), .RN(n269), .Q(\MEM[3][7] )
         );
  DFFRQX2M \MEM_reg[3][6]  ( .D(n141), .CK(W_clk), .RN(n269), .Q(\MEM[3][6] )
         );
  DFFRQX2M \MEM_reg[3][5]  ( .D(n140), .CK(W_clk), .RN(n270), .Q(\MEM[3][5] )
         );
  DFFRQX2M \MEM_reg[3][4]  ( .D(n139), .CK(W_clk), .RN(n270), .Q(\MEM[3][4] )
         );
  DFFRQX2M \MEM_reg[3][3]  ( .D(n138), .CK(W_clk), .RN(n270), .Q(\MEM[3][3] )
         );
  DFFRQX2M \MEM_reg[3][2]  ( .D(n137), .CK(W_clk), .RN(n270), .Q(\MEM[3][2] )
         );
  DFFRQX2M \MEM_reg[3][1]  ( .D(n136), .CK(W_clk), .RN(n270), .Q(\MEM[3][1] )
         );
  DFFRQX2M \MEM_reg[3][0]  ( .D(n135), .CK(W_clk), .RN(n270), .Q(\MEM[3][0] )
         );
  DFFRQX2M \MEM_reg[5][7]  ( .D(n126), .CK(W_clk), .RN(n271), .Q(\MEM[5][7] )
         );
  DFFRQX2M \MEM_reg[5][6]  ( .D(n125), .CK(W_clk), .RN(n271), .Q(\MEM[5][6] )
         );
  DFFRQX2M \MEM_reg[5][5]  ( .D(n124), .CK(W_clk), .RN(n271), .Q(\MEM[5][5] )
         );
  DFFRQX2M \MEM_reg[5][4]  ( .D(n123), .CK(W_clk), .RN(n271), .Q(\MEM[5][4] )
         );
  DFFRQX2M \MEM_reg[5][3]  ( .D(n122), .CK(W_clk), .RN(n271), .Q(\MEM[5][3] )
         );
  DFFRQX2M \MEM_reg[5][2]  ( .D(n121), .CK(W_clk), .RN(n271), .Q(\MEM[5][2] )
         );
  DFFRQX2M \MEM_reg[5][1]  ( .D(n120), .CK(W_clk), .RN(n271), .Q(\MEM[5][1] )
         );
  DFFRQX2M \MEM_reg[5][0]  ( .D(n119), .CK(W_clk), .RN(n271), .Q(\MEM[5][0] )
         );
  DFFRQX2M \MEM_reg[7][7]  ( .D(n110), .CK(W_clk), .RN(n272), .Q(\MEM[7][7] )
         );
  DFFRQX2M \MEM_reg[7][6]  ( .D(n109), .CK(W_clk), .RN(n272), .Q(\MEM[7][6] )
         );
  DFFRQX2M \MEM_reg[7][5]  ( .D(n108), .CK(W_clk), .RN(n272), .Q(\MEM[7][5] )
         );
  DFFRQX2M \MEM_reg[7][4]  ( .D(n107), .CK(W_clk), .RN(n272), .Q(\MEM[7][4] )
         );
  DFFRQX2M \MEM_reg[7][3]  ( .D(n106), .CK(W_clk), .RN(n272), .Q(\MEM[7][3] )
         );
  DFFRQX2M \MEM_reg[7][2]  ( .D(n105), .CK(W_clk), .RN(n272), .Q(\MEM[7][2] )
         );
  DFFRQX2M \MEM_reg[7][1]  ( .D(n104), .CK(W_clk), .RN(n272), .Q(\MEM[7][1] )
         );
  DFFRQX2M \MEM_reg[7][0]  ( .D(n103), .CK(W_clk), .RN(n272), .Q(\MEM[7][0] )
         );
  DFFRQX2M \MEM_reg[9][7]  ( .D(n94), .CK(W_clk), .RN(n273), .Q(\MEM[9][7] )
         );
  DFFRQX2M \MEM_reg[9][6]  ( .D(n93), .CK(W_clk), .RN(n273), .Q(\MEM[9][6] )
         );
  DFFRQX2M \MEM_reg[9][5]  ( .D(n92), .CK(W_clk), .RN(n273), .Q(\MEM[9][5] )
         );
  DFFRQX2M \MEM_reg[9][4]  ( .D(n91), .CK(W_clk), .RN(n273), .Q(\MEM[9][4] )
         );
  DFFRQX2M \MEM_reg[9][3]  ( .D(n90), .CK(W_clk), .RN(n273), .Q(\MEM[9][3] )
         );
  DFFRQX2M \MEM_reg[9][2]  ( .D(n89), .CK(W_clk), .RN(n273), .Q(\MEM[9][2] )
         );
  DFFRQX2M \MEM_reg[9][1]  ( .D(n88), .CK(W_clk), .RN(n274), .Q(\MEM[9][1] )
         );
  DFFRQX2M \MEM_reg[9][0]  ( .D(n87), .CK(W_clk), .RN(n274), .Q(\MEM[9][0] )
         );
  DFFRQX2M \MEM_reg[11][7]  ( .D(n78), .CK(W_clk), .RN(n274), .Q(\MEM[11][7] )
         );
  DFFRQX2M \MEM_reg[11][6]  ( .D(n77), .CK(W_clk), .RN(n274), .Q(\MEM[11][6] )
         );
  DFFRQX2M \MEM_reg[11][5]  ( .D(n76), .CK(W_clk), .RN(n274), .Q(\MEM[11][5] )
         );
  DFFRQX2M \MEM_reg[11][4]  ( .D(n75), .CK(W_clk), .RN(n275), .Q(\MEM[11][4] )
         );
  DFFRQX2M \MEM_reg[11][3]  ( .D(n74), .CK(W_clk), .RN(n275), .Q(\MEM[11][3] )
         );
  DFFRQX2M \MEM_reg[11][2]  ( .D(n73), .CK(W_clk), .RN(n275), .Q(\MEM[11][2] )
         );
  DFFRQX2M \MEM_reg[11][1]  ( .D(n72), .CK(W_clk), .RN(n275), .Q(\MEM[11][1] )
         );
  DFFRQX2M \MEM_reg[11][0]  ( .D(n71), .CK(W_clk), .RN(n275), .Q(\MEM[11][0] )
         );
  DFFRQX2M \MEM_reg[13][7]  ( .D(n62), .CK(W_clk), .RN(n276), .Q(\MEM[13][7] )
         );
  DFFRQX2M \MEM_reg[13][6]  ( .D(n61), .CK(W_clk), .RN(n276), .Q(\MEM[13][6] )
         );
  DFFRQX2M \MEM_reg[13][5]  ( .D(n60), .CK(W_clk), .RN(n276), .Q(\MEM[13][5] )
         );
  DFFRQX2M \MEM_reg[13][4]  ( .D(n59), .CK(W_clk), .RN(n276), .Q(\MEM[13][4] )
         );
  DFFRQX2M \MEM_reg[13][3]  ( .D(n58), .CK(W_clk), .RN(n276), .Q(\MEM[13][3] )
         );
  DFFRQX2M \MEM_reg[13][2]  ( .D(n57), .CK(W_clk), .RN(n276), .Q(\MEM[13][2] )
         );
  DFFRQX2M \MEM_reg[13][1]  ( .D(n56), .CK(W_clk), .RN(n276), .Q(\MEM[13][1] )
         );
  DFFRQX2M \MEM_reg[13][0]  ( .D(n55), .CK(W_clk), .RN(n276), .Q(\MEM[13][0] )
         );
  DFFRQX2M \MEM_reg[15][7]  ( .D(n46), .CK(W_clk), .RN(n277), .Q(\MEM[15][7] )
         );
  DFFRQX2M \MEM_reg[15][6]  ( .D(n45), .CK(W_clk), .RN(n277), .Q(\MEM[15][6] )
         );
  DFFRQX2M \MEM_reg[15][5]  ( .D(n44), .CK(W_clk), .RN(n277), .Q(\MEM[15][5] )
         );
  DFFRQX2M \MEM_reg[15][4]  ( .D(n43), .CK(W_clk), .RN(n277), .Q(\MEM[15][4] )
         );
  DFFRQX2M \MEM_reg[15][3]  ( .D(n42), .CK(W_clk), .RN(n277), .Q(\MEM[15][3] )
         );
  DFFRQX2M \MEM_reg[15][2]  ( .D(n41), .CK(W_clk), .RN(n277), .Q(\MEM[15][2] )
         );
  DFFRQX2M \MEM_reg[15][1]  ( .D(n40), .CK(W_clk), .RN(n277), .Q(\MEM[15][1] )
         );
  DFFRQX2M \MEM_reg[15][0]  ( .D(n39), .CK(W_clk), .RN(n277), .Q(\MEM[15][0] )
         );
  DFFRQX2M \MEM_reg[0][7]  ( .D(n166), .CK(W_clk), .RN(n268), .Q(\MEM[0][7] )
         );
  DFFRQX2M \MEM_reg[0][6]  ( .D(n165), .CK(W_clk), .RN(n268), .Q(\MEM[0][6] )
         );
  DFFRQX2M \MEM_reg[0][5]  ( .D(n164), .CK(W_clk), .RN(n268), .Q(\MEM[0][5] )
         );
  DFFRQX2M \MEM_reg[0][4]  ( .D(n163), .CK(W_clk), .RN(n268), .Q(\MEM[0][4] )
         );
  DFFRQX2M \MEM_reg[0][3]  ( .D(n162), .CK(W_clk), .RN(n268), .Q(\MEM[0][3] )
         );
  DFFRQX2M \MEM_reg[0][2]  ( .D(n161), .CK(W_clk), .RN(n268), .Q(\MEM[0][2] )
         );
  DFFRQX2M \MEM_reg[0][1]  ( .D(n160), .CK(W_clk), .RN(n268), .Q(\MEM[0][1] )
         );
  DFFRQX2M \MEM_reg[0][0]  ( .D(n159), .CK(W_clk), .RN(n268), .Q(\MEM[0][0] )
         );
  DFFRQX2M \MEM_reg[2][7]  ( .D(n150), .CK(W_clk), .RN(n269), .Q(\MEM[2][7] )
         );
  DFFRQX2M \MEM_reg[2][6]  ( .D(n149), .CK(W_clk), .RN(n269), .Q(\MEM[2][6] )
         );
  DFFRQX2M \MEM_reg[2][5]  ( .D(n148), .CK(W_clk), .RN(n269), .Q(\MEM[2][5] )
         );
  DFFRQX2M \MEM_reg[2][4]  ( .D(n147), .CK(W_clk), .RN(n269), .Q(\MEM[2][4] )
         );
  DFFRQX2M \MEM_reg[2][3]  ( .D(n146), .CK(W_clk), .RN(n269), .Q(\MEM[2][3] )
         );
  DFFRQX2M \MEM_reg[2][2]  ( .D(n145), .CK(W_clk), .RN(n269), .Q(\MEM[2][2] )
         );
  DFFRQX2M \MEM_reg[2][1]  ( .D(n144), .CK(W_clk), .RN(n269), .Q(\MEM[2][1] )
         );
  DFFRQX2M \MEM_reg[2][0]  ( .D(n143), .CK(W_clk), .RN(n269), .Q(\MEM[2][0] )
         );
  DFFRQX2M \MEM_reg[4][7]  ( .D(n134), .CK(W_clk), .RN(n270), .Q(\MEM[4][7] )
         );
  DFFRQX2M \MEM_reg[4][6]  ( .D(n133), .CK(W_clk), .RN(n270), .Q(\MEM[4][6] )
         );
  DFFRQX2M \MEM_reg[4][5]  ( .D(n132), .CK(W_clk), .RN(n270), .Q(\MEM[4][5] )
         );
  DFFRQX2M \MEM_reg[4][4]  ( .D(n131), .CK(W_clk), .RN(n270), .Q(\MEM[4][4] )
         );
  DFFRQX2M \MEM_reg[4][3]  ( .D(n130), .CK(W_clk), .RN(n270), .Q(\MEM[4][3] )
         );
  DFFRQX2M \MEM_reg[4][2]  ( .D(n129), .CK(W_clk), .RN(n270), .Q(\MEM[4][2] )
         );
  DFFRQX2M \MEM_reg[4][1]  ( .D(n128), .CK(W_clk), .RN(n270), .Q(\MEM[4][1] )
         );
  DFFRQX2M \MEM_reg[4][0]  ( .D(n127), .CK(W_clk), .RN(n271), .Q(\MEM[4][0] )
         );
  DFFRQX2M \MEM_reg[6][7]  ( .D(n118), .CK(W_clk), .RN(n271), .Q(\MEM[6][7] )
         );
  DFFRQX2M \MEM_reg[6][6]  ( .D(n117), .CK(W_clk), .RN(n271), .Q(\MEM[6][6] )
         );
  DFFRQX2M \MEM_reg[6][5]  ( .D(n116), .CK(W_clk), .RN(n271), .Q(\MEM[6][5] )
         );
  DFFRQX2M \MEM_reg[6][4]  ( .D(n115), .CK(W_clk), .RN(n271), .Q(\MEM[6][4] )
         );
  DFFRQX2M \MEM_reg[6][3]  ( .D(n114), .CK(W_clk), .RN(n272), .Q(\MEM[6][3] )
         );
  DFFRQX2M \MEM_reg[6][2]  ( .D(n113), .CK(W_clk), .RN(n272), .Q(\MEM[6][2] )
         );
  DFFRQX2M \MEM_reg[6][1]  ( .D(n112), .CK(W_clk), .RN(n272), .Q(\MEM[6][1] )
         );
  DFFRQX2M \MEM_reg[6][0]  ( .D(n111), .CK(W_clk), .RN(n272), .Q(\MEM[6][0] )
         );
  DFFRQX2M \MEM_reg[8][7]  ( .D(n102), .CK(W_clk), .RN(n272), .Q(\MEM[8][7] )
         );
  DFFRQX2M \MEM_reg[8][6]  ( .D(n101), .CK(W_clk), .RN(n273), .Q(\MEM[8][6] )
         );
  DFFRQX2M \MEM_reg[8][5]  ( .D(n100), .CK(W_clk), .RN(n273), .Q(\MEM[8][5] )
         );
  DFFRQX2M \MEM_reg[8][4]  ( .D(n99), .CK(W_clk), .RN(n273), .Q(\MEM[8][4] )
         );
  DFFRQX2M \MEM_reg[8][3]  ( .D(n98), .CK(W_clk), .RN(n273), .Q(\MEM[8][3] )
         );
  DFFRQX2M \MEM_reg[8][2]  ( .D(n97), .CK(W_clk), .RN(n273), .Q(\MEM[8][2] )
         );
  DFFRQX2M \MEM_reg[8][1]  ( .D(n96), .CK(W_clk), .RN(n273), .Q(\MEM[8][1] )
         );
  DFFRQX2M \MEM_reg[8][0]  ( .D(n95), .CK(W_clk), .RN(n273), .Q(\MEM[8][0] )
         );
  DFFRQX2M \MEM_reg[10][7]  ( .D(n86), .CK(W_clk), .RN(n274), .Q(\MEM[10][7] )
         );
  DFFRQX2M \MEM_reg[10][6]  ( .D(n85), .CK(W_clk), .RN(n274), .Q(\MEM[10][6] )
         );
  DFFRQX2M \MEM_reg[10][5]  ( .D(n84), .CK(W_clk), .RN(n274), .Q(\MEM[10][5] )
         );
  DFFRQX2M \MEM_reg[10][4]  ( .D(n83), .CK(W_clk), .RN(n274), .Q(\MEM[10][4] )
         );
  DFFRQX2M \MEM_reg[10][3]  ( .D(n82), .CK(W_clk), .RN(n274), .Q(\MEM[10][3] )
         );
  DFFRQX2M \MEM_reg[10][2]  ( .D(n81), .CK(W_clk), .RN(n274), .Q(\MEM[10][2] )
         );
  DFFRQX2M \MEM_reg[10][1]  ( .D(n80), .CK(W_clk), .RN(n274), .Q(\MEM[10][1] )
         );
  DFFRQX2M \MEM_reg[10][0]  ( .D(n79), .CK(W_clk), .RN(n274), .Q(\MEM[10][0] )
         );
  DFFRQX2M \MEM_reg[12][7]  ( .D(n70), .CK(W_clk), .RN(n275), .Q(\MEM[12][7] )
         );
  DFFRQX2M \MEM_reg[12][6]  ( .D(n69), .CK(W_clk), .RN(n275), .Q(\MEM[12][6] )
         );
  DFFRQX2M \MEM_reg[12][5]  ( .D(n68), .CK(W_clk), .RN(n275), .Q(\MEM[12][5] )
         );
  DFFRQX2M \MEM_reg[12][4]  ( .D(n67), .CK(W_clk), .RN(n275), .Q(\MEM[12][4] )
         );
  DFFRQX2M \MEM_reg[12][3]  ( .D(n66), .CK(W_clk), .RN(n275), .Q(\MEM[12][3] )
         );
  DFFRQX2M \MEM_reg[12][2]  ( .D(n65), .CK(W_clk), .RN(n275), .Q(\MEM[12][2] )
         );
  DFFRQX2M \MEM_reg[12][1]  ( .D(n64), .CK(W_clk), .RN(n275), .Q(\MEM[12][1] )
         );
  DFFRQX2M \MEM_reg[12][0]  ( .D(n63), .CK(W_clk), .RN(n275), .Q(\MEM[12][0] )
         );
  DFFRQX2M \MEM_reg[14][7]  ( .D(n54), .CK(W_clk), .RN(n276), .Q(\MEM[14][7] )
         );
  DFFRQX2M \MEM_reg[14][6]  ( .D(n53), .CK(W_clk), .RN(n276), .Q(\MEM[14][6] )
         );
  DFFRQX2M \MEM_reg[14][5]  ( .D(n52), .CK(W_clk), .RN(n276), .Q(\MEM[14][5] )
         );
  DFFRQX2M \MEM_reg[14][4]  ( .D(n51), .CK(W_clk), .RN(n276), .Q(\MEM[14][4] )
         );
  DFFRQX2M \MEM_reg[14][3]  ( .D(n50), .CK(W_clk), .RN(n276), .Q(\MEM[14][3] )
         );
  DFFRQX2M \MEM_reg[14][2]  ( .D(n49), .CK(W_clk), .RN(n277), .Q(\MEM[14][2] )
         );
  DFFRQX2M \MEM_reg[14][1]  ( .D(n48), .CK(W_clk), .RN(n277), .Q(\MEM[14][1] )
         );
  DFFRQX2M \MEM_reg[14][0]  ( .D(n47), .CK(W_clk), .RN(n277), .Q(\MEM[14][0] )
         );
  NOR2X2M U2 ( .A(n285), .B(n284), .Y(n13) );
  NOR2X2M U3 ( .A(W_addr[1]), .B(W_addr[2]), .Y(n24) );
  NOR2X2M U4 ( .A(n284), .B(W_addr[2]), .Y(n21) );
  NOR2X2M U5 ( .A(n285), .B(W_addr[1]), .Y(n18) );
  BUFX2M U6 ( .A(n278), .Y(n276) );
  BUFX2M U7 ( .A(n279), .Y(n275) );
  BUFX2M U8 ( .A(n279), .Y(n274) );
  BUFX2M U9 ( .A(n280), .Y(n273) );
  BUFX2M U10 ( .A(n280), .Y(n272) );
  BUFX2M U11 ( .A(n281), .Y(n271) );
  BUFX2M U12 ( .A(n281), .Y(n270) );
  BUFX2M U13 ( .A(n282), .Y(n269) );
  BUFX2M U14 ( .A(n282), .Y(n268) );
  BUFX2M U15 ( .A(n278), .Y(n277) );
  NAND2X2M U16 ( .A(n16), .B(n13), .Y(n15) );
  NAND2X2M U17 ( .A(n31), .B(n13), .Y(n30) );
  INVX2M U18 ( .A(n1), .Y(n264) );
  BUFX2M U19 ( .A(W_rst), .Y(n278) );
  BUFX2M U20 ( .A(W_rst), .Y(n279) );
  BUFX2M U21 ( .A(W_rst), .Y(n280) );
  BUFX2M U22 ( .A(W_rst), .Y(n281) );
  BUFX2M U23 ( .A(W_rst), .Y(n282) );
  NAND2X2M U24 ( .A(n18), .B(n14), .Y(n17) );
  NAND2X2M U25 ( .A(n18), .B(n16), .Y(n19) );
  NAND2X2M U26 ( .A(n21), .B(n14), .Y(n20) );
  NAND2X2M U27 ( .A(n21), .B(n16), .Y(n22) );
  NAND2X2M U28 ( .A(n24), .B(n14), .Y(n23) );
  NAND2X2M U29 ( .A(n24), .B(n16), .Y(n26) );
  NAND2X2M U30 ( .A(n29), .B(n18), .Y(n32) );
  NAND2X2M U31 ( .A(n31), .B(n18), .Y(n33) );
  NAND2X2M U32 ( .A(n29), .B(n21), .Y(n34) );
  NAND2X2M U33 ( .A(n31), .B(n21), .Y(n35) );
  NAND2X2M U34 ( .A(n29), .B(n24), .Y(n36) );
  NAND2X2M U35 ( .A(n31), .B(n24), .Y(n38) );
  NAND2X2M U36 ( .A(n29), .B(n13), .Y(n28) );
  NAND2X2M U37 ( .A(n13), .B(n14), .Y(n12) );
  AND2X2M U38 ( .A(n25), .B(n283), .Y(n16) );
  AND2X2M U39 ( .A(n37), .B(n283), .Y(n31) );
  OR2X2M U40 ( .A(n262), .B(n263), .Y(n1) );
  INVX2M U41 ( .A(n2), .Y(n265) );
  INVX2M U42 ( .A(n4), .Y(n267) );
  INVX2M U43 ( .A(n3), .Y(n266) );
  INVX2M U44 ( .A(W_data[0]), .Y(n286) );
  INVX2M U45 ( .A(W_data[1]), .Y(n287) );
  INVX2M U46 ( .A(W_data[2]), .Y(n288) );
  INVX2M U47 ( .A(W_data[3]), .Y(n289) );
  INVX2M U48 ( .A(W_data[4]), .Y(n290) );
  INVX2M U49 ( .A(W_data[5]), .Y(n291) );
  INVX2M U50 ( .A(W_data[6]), .Y(n292) );
  INVX2M U51 ( .A(W_data[7]), .Y(n293) );
  OAI2BB2X1M U52 ( .B0(n12), .B1(n286), .A0N(\MEM[15][0] ), .A1N(n12), .Y(n39)
         );
  OAI2BB2X1M U53 ( .B0(n12), .B1(n287), .A0N(\MEM[15][1] ), .A1N(n12), .Y(n40)
         );
  OAI2BB2X1M U54 ( .B0(n12), .B1(n288), .A0N(\MEM[15][2] ), .A1N(n12), .Y(n41)
         );
  OAI2BB2X1M U55 ( .B0(n12), .B1(n289), .A0N(\MEM[15][3] ), .A1N(n12), .Y(n42)
         );
  OAI2BB2X1M U56 ( .B0(n12), .B1(n290), .A0N(\MEM[15][4] ), .A1N(n12), .Y(n43)
         );
  OAI2BB2X1M U57 ( .B0(n12), .B1(n291), .A0N(\MEM[15][5] ), .A1N(n12), .Y(n44)
         );
  OAI2BB2X1M U58 ( .B0(n12), .B1(n292), .A0N(\MEM[15][6] ), .A1N(n12), .Y(n45)
         );
  OAI2BB2X1M U59 ( .B0(n12), .B1(n293), .A0N(\MEM[15][7] ), .A1N(n12), .Y(n46)
         );
  OAI2BB2X1M U60 ( .B0(n286), .B1(n17), .A0N(\MEM[13][0] ), .A1N(n17), .Y(n55)
         );
  OAI2BB2X1M U61 ( .B0(n287), .B1(n17), .A0N(\MEM[13][1] ), .A1N(n17), .Y(n56)
         );
  OAI2BB2X1M U62 ( .B0(n288), .B1(n17), .A0N(\MEM[13][2] ), .A1N(n17), .Y(n57)
         );
  OAI2BB2X1M U63 ( .B0(n289), .B1(n17), .A0N(\MEM[13][3] ), .A1N(n17), .Y(n58)
         );
  OAI2BB2X1M U64 ( .B0(n290), .B1(n17), .A0N(\MEM[13][4] ), .A1N(n17), .Y(n59)
         );
  OAI2BB2X1M U65 ( .B0(n291), .B1(n17), .A0N(\MEM[13][5] ), .A1N(n17), .Y(n60)
         );
  OAI2BB2X1M U66 ( .B0(n292), .B1(n17), .A0N(\MEM[13][6] ), .A1N(n17), .Y(n61)
         );
  OAI2BB2X1M U67 ( .B0(n293), .B1(n17), .A0N(\MEM[13][7] ), .A1N(n17), .Y(n62)
         );
  OAI2BB2X1M U68 ( .B0(n286), .B1(n19), .A0N(\MEM[12][0] ), .A1N(n19), .Y(n63)
         );
  OAI2BB2X1M U69 ( .B0(n287), .B1(n19), .A0N(\MEM[12][1] ), .A1N(n19), .Y(n64)
         );
  OAI2BB2X1M U70 ( .B0(n288), .B1(n19), .A0N(\MEM[12][2] ), .A1N(n19), .Y(n65)
         );
  OAI2BB2X1M U71 ( .B0(n289), .B1(n19), .A0N(\MEM[12][3] ), .A1N(n19), .Y(n66)
         );
  OAI2BB2X1M U72 ( .B0(n290), .B1(n19), .A0N(\MEM[12][4] ), .A1N(n19), .Y(n67)
         );
  OAI2BB2X1M U73 ( .B0(n291), .B1(n19), .A0N(\MEM[12][5] ), .A1N(n19), .Y(n68)
         );
  OAI2BB2X1M U74 ( .B0(n292), .B1(n19), .A0N(\MEM[12][6] ), .A1N(n19), .Y(n69)
         );
  OAI2BB2X1M U75 ( .B0(n293), .B1(n19), .A0N(\MEM[12][7] ), .A1N(n19), .Y(n70)
         );
  OAI2BB2X1M U76 ( .B0(n286), .B1(n20), .A0N(\MEM[11][0] ), .A1N(n20), .Y(n71)
         );
  OAI2BB2X1M U77 ( .B0(n287), .B1(n20), .A0N(\MEM[11][1] ), .A1N(n20), .Y(n72)
         );
  OAI2BB2X1M U78 ( .B0(n288), .B1(n20), .A0N(\MEM[11][2] ), .A1N(n20), .Y(n73)
         );
  OAI2BB2X1M U79 ( .B0(n289), .B1(n20), .A0N(\MEM[11][3] ), .A1N(n20), .Y(n74)
         );
  OAI2BB2X1M U80 ( .B0(n290), .B1(n20), .A0N(\MEM[11][4] ), .A1N(n20), .Y(n75)
         );
  OAI2BB2X1M U81 ( .B0(n291), .B1(n20), .A0N(\MEM[11][5] ), .A1N(n20), .Y(n76)
         );
  OAI2BB2X1M U82 ( .B0(n292), .B1(n20), .A0N(\MEM[11][6] ), .A1N(n20), .Y(n77)
         );
  OAI2BB2X1M U83 ( .B0(n293), .B1(n20), .A0N(\MEM[11][7] ), .A1N(n20), .Y(n78)
         );
  OAI2BB2X1M U84 ( .B0(n286), .B1(n22), .A0N(\MEM[10][0] ), .A1N(n22), .Y(n79)
         );
  OAI2BB2X1M U85 ( .B0(n287), .B1(n22), .A0N(\MEM[10][1] ), .A1N(n22), .Y(n80)
         );
  OAI2BB2X1M U86 ( .B0(n288), .B1(n22), .A0N(\MEM[10][2] ), .A1N(n22), .Y(n81)
         );
  OAI2BB2X1M U87 ( .B0(n289), .B1(n22), .A0N(\MEM[10][3] ), .A1N(n22), .Y(n82)
         );
  OAI2BB2X1M U88 ( .B0(n290), .B1(n22), .A0N(\MEM[10][4] ), .A1N(n22), .Y(n83)
         );
  OAI2BB2X1M U89 ( .B0(n291), .B1(n22), .A0N(\MEM[10][5] ), .A1N(n22), .Y(n84)
         );
  OAI2BB2X1M U90 ( .B0(n292), .B1(n22), .A0N(\MEM[10][6] ), .A1N(n22), .Y(n85)
         );
  OAI2BB2X1M U91 ( .B0(n293), .B1(n22), .A0N(\MEM[10][7] ), .A1N(n22), .Y(n86)
         );
  OAI2BB2X1M U92 ( .B0(n286), .B1(n23), .A0N(\MEM[9][0] ), .A1N(n23), .Y(n87)
         );
  OAI2BB2X1M U93 ( .B0(n287), .B1(n23), .A0N(\MEM[9][1] ), .A1N(n23), .Y(n88)
         );
  OAI2BB2X1M U94 ( .B0(n288), .B1(n23), .A0N(\MEM[9][2] ), .A1N(n23), .Y(n89)
         );
  OAI2BB2X1M U95 ( .B0(n289), .B1(n23), .A0N(\MEM[9][3] ), .A1N(n23), .Y(n90)
         );
  OAI2BB2X1M U96 ( .B0(n290), .B1(n23), .A0N(\MEM[9][4] ), .A1N(n23), .Y(n91)
         );
  OAI2BB2X1M U97 ( .B0(n291), .B1(n23), .A0N(\MEM[9][5] ), .A1N(n23), .Y(n92)
         );
  OAI2BB2X1M U98 ( .B0(n292), .B1(n23), .A0N(\MEM[9][6] ), .A1N(n23), .Y(n93)
         );
  OAI2BB2X1M U99 ( .B0(n293), .B1(n23), .A0N(\MEM[9][7] ), .A1N(n23), .Y(n94)
         );
  OAI2BB2X1M U100 ( .B0(n286), .B1(n26), .A0N(\MEM[8][0] ), .A1N(n26), .Y(n95)
         );
  OAI2BB2X1M U101 ( .B0(n287), .B1(n26), .A0N(\MEM[8][1] ), .A1N(n26), .Y(n96)
         );
  OAI2BB2X1M U102 ( .B0(n288), .B1(n26), .A0N(\MEM[8][2] ), .A1N(n26), .Y(n97)
         );
  OAI2BB2X1M U103 ( .B0(n289), .B1(n26), .A0N(\MEM[8][3] ), .A1N(n26), .Y(n98)
         );
  OAI2BB2X1M U104 ( .B0(n290), .B1(n26), .A0N(\MEM[8][4] ), .A1N(n26), .Y(n99)
         );
  OAI2BB2X1M U105 ( .B0(n291), .B1(n26), .A0N(\MEM[8][5] ), .A1N(n26), .Y(n100) );
  OAI2BB2X1M U106 ( .B0(n292), .B1(n26), .A0N(\MEM[8][6] ), .A1N(n26), .Y(n101) );
  OAI2BB2X1M U107 ( .B0(n293), .B1(n26), .A0N(\MEM[8][7] ), .A1N(n26), .Y(n102) );
  OAI2BB2X1M U108 ( .B0(n286), .B1(n15), .A0N(\MEM[14][0] ), .A1N(n15), .Y(n47) );
  OAI2BB2X1M U109 ( .B0(n287), .B1(n15), .A0N(\MEM[14][1] ), .A1N(n15), .Y(n48) );
  OAI2BB2X1M U110 ( .B0(n288), .B1(n15), .A0N(\MEM[14][2] ), .A1N(n15), .Y(n49) );
  OAI2BB2X1M U111 ( .B0(n289), .B1(n15), .A0N(\MEM[14][3] ), .A1N(n15), .Y(n50) );
  OAI2BB2X1M U112 ( .B0(n290), .B1(n15), .A0N(\MEM[14][4] ), .A1N(n15), .Y(n51) );
  OAI2BB2X1M U113 ( .B0(n291), .B1(n15), .A0N(\MEM[14][5] ), .A1N(n15), .Y(n52) );
  OAI2BB2X1M U114 ( .B0(n292), .B1(n15), .A0N(\MEM[14][6] ), .A1N(n15), .Y(n53) );
  OAI2BB2X1M U115 ( .B0(n293), .B1(n15), .A0N(\MEM[14][7] ), .A1N(n15), .Y(n54) );
  OAI2BB2X1M U116 ( .B0(n286), .B1(n28), .A0N(\MEM[7][0] ), .A1N(n28), .Y(n103) );
  OAI2BB2X1M U117 ( .B0(n287), .B1(n28), .A0N(\MEM[7][1] ), .A1N(n28), .Y(n104) );
  OAI2BB2X1M U118 ( .B0(n288), .B1(n28), .A0N(\MEM[7][2] ), .A1N(n28), .Y(n105) );
  OAI2BB2X1M U119 ( .B0(n289), .B1(n28), .A0N(\MEM[7][3] ), .A1N(n28), .Y(n106) );
  OAI2BB2X1M U120 ( .B0(n290), .B1(n28), .A0N(\MEM[7][4] ), .A1N(n28), .Y(n107) );
  OAI2BB2X1M U121 ( .B0(n291), .B1(n28), .A0N(\MEM[7][5] ), .A1N(n28), .Y(n108) );
  OAI2BB2X1M U122 ( .B0(n292), .B1(n28), .A0N(\MEM[7][6] ), .A1N(n28), .Y(n109) );
  OAI2BB2X1M U123 ( .B0(n293), .B1(n28), .A0N(\MEM[7][7] ), .A1N(n28), .Y(n110) );
  OAI2BB2X1M U124 ( .B0(n286), .B1(n30), .A0N(\MEM[6][0] ), .A1N(n30), .Y(n111) );
  OAI2BB2X1M U125 ( .B0(n287), .B1(n30), .A0N(\MEM[6][1] ), .A1N(n30), .Y(n112) );
  OAI2BB2X1M U126 ( .B0(n288), .B1(n30), .A0N(\MEM[6][2] ), .A1N(n30), .Y(n113) );
  OAI2BB2X1M U127 ( .B0(n289), .B1(n30), .A0N(\MEM[6][3] ), .A1N(n30), .Y(n114) );
  OAI2BB2X1M U128 ( .B0(n290), .B1(n30), .A0N(\MEM[6][4] ), .A1N(n30), .Y(n115) );
  OAI2BB2X1M U129 ( .B0(n291), .B1(n30), .A0N(\MEM[6][5] ), .A1N(n30), .Y(n116) );
  OAI2BB2X1M U130 ( .B0(n292), .B1(n30), .A0N(\MEM[6][6] ), .A1N(n30), .Y(n117) );
  OAI2BB2X1M U131 ( .B0(n293), .B1(n30), .A0N(\MEM[6][7] ), .A1N(n30), .Y(n118) );
  OAI2BB2X1M U132 ( .B0(n286), .B1(n32), .A0N(\MEM[5][0] ), .A1N(n32), .Y(n119) );
  OAI2BB2X1M U133 ( .B0(n287), .B1(n32), .A0N(\MEM[5][1] ), .A1N(n32), .Y(n120) );
  OAI2BB2X1M U134 ( .B0(n288), .B1(n32), .A0N(\MEM[5][2] ), .A1N(n32), .Y(n121) );
  OAI2BB2X1M U135 ( .B0(n289), .B1(n32), .A0N(\MEM[5][3] ), .A1N(n32), .Y(n122) );
  OAI2BB2X1M U136 ( .B0(n290), .B1(n32), .A0N(\MEM[5][4] ), .A1N(n32), .Y(n123) );
  OAI2BB2X1M U137 ( .B0(n291), .B1(n32), .A0N(\MEM[5][5] ), .A1N(n32), .Y(n124) );
  OAI2BB2X1M U138 ( .B0(n292), .B1(n32), .A0N(\MEM[5][6] ), .A1N(n32), .Y(n125) );
  OAI2BB2X1M U139 ( .B0(n293), .B1(n32), .A0N(\MEM[5][7] ), .A1N(n32), .Y(n126) );
  OAI2BB2X1M U140 ( .B0(n286), .B1(n33), .A0N(\MEM[4][0] ), .A1N(n33), .Y(n127) );
  OAI2BB2X1M U141 ( .B0(n287), .B1(n33), .A0N(\MEM[4][1] ), .A1N(n33), .Y(n128) );
  OAI2BB2X1M U142 ( .B0(n288), .B1(n33), .A0N(\MEM[4][2] ), .A1N(n33), .Y(n129) );
  OAI2BB2X1M U143 ( .B0(n289), .B1(n33), .A0N(\MEM[4][3] ), .A1N(n33), .Y(n130) );
  OAI2BB2X1M U144 ( .B0(n290), .B1(n33), .A0N(\MEM[4][4] ), .A1N(n33), .Y(n131) );
  OAI2BB2X1M U145 ( .B0(n291), .B1(n33), .A0N(\MEM[4][5] ), .A1N(n33), .Y(n132) );
  OAI2BB2X1M U146 ( .B0(n292), .B1(n33), .A0N(\MEM[4][6] ), .A1N(n33), .Y(n133) );
  OAI2BB2X1M U147 ( .B0(n293), .B1(n33), .A0N(\MEM[4][7] ), .A1N(n33), .Y(n134) );
  OAI2BB2X1M U148 ( .B0(n286), .B1(n34), .A0N(\MEM[3][0] ), .A1N(n34), .Y(n135) );
  OAI2BB2X1M U149 ( .B0(n287), .B1(n34), .A0N(\MEM[3][1] ), .A1N(n34), .Y(n136) );
  OAI2BB2X1M U150 ( .B0(n288), .B1(n34), .A0N(\MEM[3][2] ), .A1N(n34), .Y(n137) );
  OAI2BB2X1M U151 ( .B0(n289), .B1(n34), .A0N(\MEM[3][3] ), .A1N(n34), .Y(n138) );
  OAI2BB2X1M U152 ( .B0(n290), .B1(n34), .A0N(\MEM[3][4] ), .A1N(n34), .Y(n139) );
  OAI2BB2X1M U153 ( .B0(n291), .B1(n34), .A0N(\MEM[3][5] ), .A1N(n34), .Y(n140) );
  OAI2BB2X1M U154 ( .B0(n292), .B1(n34), .A0N(\MEM[3][6] ), .A1N(n34), .Y(n141) );
  OAI2BB2X1M U155 ( .B0(n293), .B1(n34), .A0N(\MEM[3][7] ), .A1N(n34), .Y(n142) );
  OAI2BB2X1M U156 ( .B0(n286), .B1(n35), .A0N(\MEM[2][0] ), .A1N(n35), .Y(n143) );
  OAI2BB2X1M U157 ( .B0(n287), .B1(n35), .A0N(\MEM[2][1] ), .A1N(n35), .Y(n144) );
  OAI2BB2X1M U158 ( .B0(n288), .B1(n35), .A0N(\MEM[2][2] ), .A1N(n35), .Y(n145) );
  OAI2BB2X1M U159 ( .B0(n289), .B1(n35), .A0N(\MEM[2][3] ), .A1N(n35), .Y(n146) );
  OAI2BB2X1M U160 ( .B0(n290), .B1(n35), .A0N(\MEM[2][4] ), .A1N(n35), .Y(n147) );
  OAI2BB2X1M U161 ( .B0(n291), .B1(n35), .A0N(\MEM[2][5] ), .A1N(n35), .Y(n148) );
  OAI2BB2X1M U162 ( .B0(n292), .B1(n35), .A0N(\MEM[2][6] ), .A1N(n35), .Y(n149) );
  OAI2BB2X1M U163 ( .B0(n293), .B1(n35), .A0N(\MEM[2][7] ), .A1N(n35), .Y(n150) );
  OAI2BB2X1M U164 ( .B0(n286), .B1(n36), .A0N(\MEM[1][0] ), .A1N(n36), .Y(n151) );
  OAI2BB2X1M U165 ( .B0(n287), .B1(n36), .A0N(\MEM[1][1] ), .A1N(n36), .Y(n152) );
  OAI2BB2X1M U166 ( .B0(n288), .B1(n36), .A0N(\MEM[1][2] ), .A1N(n36), .Y(n153) );
  OAI2BB2X1M U167 ( .B0(n289), .B1(n36), .A0N(\MEM[1][3] ), .A1N(n36), .Y(n154) );
  OAI2BB2X1M U168 ( .B0(n290), .B1(n36), .A0N(\MEM[1][4] ), .A1N(n36), .Y(n155) );
  OAI2BB2X1M U169 ( .B0(n291), .B1(n36), .A0N(\MEM[1][5] ), .A1N(n36), .Y(n156) );
  OAI2BB2X1M U170 ( .B0(n292), .B1(n36), .A0N(\MEM[1][6] ), .A1N(n36), .Y(n157) );
  OAI2BB2X1M U171 ( .B0(n293), .B1(n36), .A0N(\MEM[1][7] ), .A1N(n36), .Y(n158) );
  OAI2BB2X1M U172 ( .B0(n286), .B1(n38), .A0N(\MEM[0][0] ), .A1N(n38), .Y(n159) );
  OAI2BB2X1M U173 ( .B0(n287), .B1(n38), .A0N(\MEM[0][1] ), .A1N(n38), .Y(n160) );
  OAI2BB2X1M U174 ( .B0(n288), .B1(n38), .A0N(\MEM[0][2] ), .A1N(n38), .Y(n161) );
  OAI2BB2X1M U175 ( .B0(n289), .B1(n38), .A0N(\MEM[0][3] ), .A1N(n38), .Y(n162) );
  OAI2BB2X1M U176 ( .B0(n290), .B1(n38), .A0N(\MEM[0][4] ), .A1N(n38), .Y(n163) );
  OAI2BB2X1M U177 ( .B0(n291), .B1(n38), .A0N(\MEM[0][5] ), .A1N(n38), .Y(n164) );
  OAI2BB2X1M U178 ( .B0(n292), .B1(n38), .A0N(\MEM[0][6] ), .A1N(n38), .Y(n165) );
  OAI2BB2X1M U179 ( .B0(n293), .B1(n38), .A0N(\MEM[0][7] ), .A1N(n38), .Y(n166) );
  NOR2BX2M U180 ( .AN(W_inc), .B(W_full), .Y(n27) );
  AND2X2M U181 ( .A(n25), .B(W_addr[0]), .Y(n14) );
  AND2X2M U182 ( .A(n37), .B(W_addr[0]), .Y(n29) );
  NOR2BX2M U183 ( .AN(n27), .B(W_addr[3]), .Y(n37) );
  AND2X2M U184 ( .A(W_addr[3]), .B(n27), .Y(n25) );
  INVX2M U185 ( .A(W_addr[2]), .Y(n285) );
  INVX2M U186 ( .A(W_addr[1]), .Y(n284) );
  INVX2M U187 ( .A(W_addr[0]), .Y(n283) );
  OR2X2M U188 ( .A(n262), .B(N10), .Y(n2) );
  OR2X2M U189 ( .A(n263), .B(N11), .Y(n3) );
  OR2X2M U190 ( .A(N10), .B(N11), .Y(n4) );
  INVX2M U191 ( .A(N11), .Y(n262) );
  INVX2M U192 ( .A(N10), .Y(n263) );
  INVX2M U193 ( .A(N13), .Y(n260) );
  INVX2M U194 ( .A(N12), .Y(n261) );
  AOI22X1M U195 ( .A0(\MEM[10][0] ), .A1(n265), .B0(\MEM[11][0] ), .B1(n264), 
        .Y(n6) );
  AOI22X1M U196 ( .A0(\MEM[8][0] ), .A1(n267), .B0(\MEM[9][0] ), .B1(n266), 
        .Y(n5) );
  CLKNAND2X2M U197 ( .A(N13), .B(n261), .Y(n244) );
  AOI21X1M U198 ( .A0(n6), .A1(n5), .B0(n244), .Y(n171) );
  AOI22X1M U199 ( .A0(\MEM[14][0] ), .A1(n265), .B0(\MEM[15][0] ), .B1(n264), 
        .Y(n8) );
  AOI22X1M U200 ( .A0(\MEM[12][0] ), .A1(n267), .B0(\MEM[13][0] ), .B1(n266), 
        .Y(n7) );
  CLKNAND2X2M U201 ( .A(N13), .B(N12), .Y(n247) );
  AOI21X1M U202 ( .A0(n8), .A1(n7), .B0(n247), .Y(n170) );
  AOI22X1M U203 ( .A0(\MEM[2][0] ), .A1(n265), .B0(\MEM[3][0] ), .B1(n264), 
        .Y(n10) );
  AOI22X1M U204 ( .A0(\MEM[0][0] ), .A1(n267), .B0(\MEM[1][0] ), .B1(n266), 
        .Y(n9) );
  CLKNAND2X2M U205 ( .A(n261), .B(n260), .Y(n250) );
  AOI21X1M U206 ( .A0(n10), .A1(n9), .B0(n250), .Y(n169) );
  AOI22X1M U207 ( .A0(\MEM[6][0] ), .A1(n265), .B0(\MEM[7][0] ), .B1(n264), 
        .Y(n167) );
  AOI22X1M U208 ( .A0(\MEM[4][0] ), .A1(n267), .B0(\MEM[5][0] ), .B1(n266), 
        .Y(n11) );
  CLKNAND2X2M U209 ( .A(N12), .B(n260), .Y(n253) );
  AOI21X1M U210 ( .A0(n167), .A1(n11), .B0(n253), .Y(n168) );
  OR4X1M U211 ( .A(n171), .B(n170), .C(n169), .D(n168), .Y(R_data[0]) );
  AOI22X1M U212 ( .A0(\MEM[10][1] ), .A1(n265), .B0(\MEM[11][1] ), .B1(n264), 
        .Y(n173) );
  AOI22X1M U213 ( .A0(\MEM[8][1] ), .A1(n267), .B0(\MEM[9][1] ), .B1(n266), 
        .Y(n172) );
  AOI21X1M U214 ( .A0(n173), .A1(n172), .B0(n244), .Y(n183) );
  AOI22X1M U215 ( .A0(\MEM[14][1] ), .A1(n265), .B0(\MEM[15][1] ), .B1(n264), 
        .Y(n175) );
  AOI22X1M U216 ( .A0(\MEM[12][1] ), .A1(n267), .B0(\MEM[13][1] ), .B1(n266), 
        .Y(n174) );
  AOI21X1M U217 ( .A0(n175), .A1(n174), .B0(n247), .Y(n182) );
  AOI22X1M U218 ( .A0(\MEM[2][1] ), .A1(n265), .B0(\MEM[3][1] ), .B1(n264), 
        .Y(n177) );
  AOI22X1M U219 ( .A0(\MEM[0][1] ), .A1(n267), .B0(\MEM[1][1] ), .B1(n266), 
        .Y(n176) );
  AOI21X1M U220 ( .A0(n177), .A1(n176), .B0(n250), .Y(n181) );
  AOI22X1M U221 ( .A0(\MEM[6][1] ), .A1(n265), .B0(\MEM[7][1] ), .B1(n264), 
        .Y(n179) );
  AOI22X1M U222 ( .A0(\MEM[4][1] ), .A1(n267), .B0(\MEM[5][1] ), .B1(n266), 
        .Y(n178) );
  AOI21X1M U223 ( .A0(n179), .A1(n178), .B0(n253), .Y(n180) );
  OR4X1M U224 ( .A(n183), .B(n182), .C(n181), .D(n180), .Y(R_data[1]) );
  AOI22X1M U225 ( .A0(\MEM[10][2] ), .A1(n265), .B0(\MEM[11][2] ), .B1(n264), 
        .Y(n185) );
  AOI22X1M U226 ( .A0(\MEM[8][2] ), .A1(n267), .B0(\MEM[9][2] ), .B1(n266), 
        .Y(n184) );
  AOI21X1M U227 ( .A0(n185), .A1(n184), .B0(n244), .Y(n195) );
  AOI22X1M U228 ( .A0(\MEM[14][2] ), .A1(n265), .B0(\MEM[15][2] ), .B1(n264), 
        .Y(n187) );
  AOI22X1M U229 ( .A0(\MEM[12][2] ), .A1(n267), .B0(\MEM[13][2] ), .B1(n266), 
        .Y(n186) );
  AOI21X1M U230 ( .A0(n187), .A1(n186), .B0(n247), .Y(n194) );
  AOI22X1M U231 ( .A0(\MEM[2][2] ), .A1(n265), .B0(\MEM[3][2] ), .B1(n264), 
        .Y(n189) );
  AOI22X1M U232 ( .A0(\MEM[0][2] ), .A1(n267), .B0(\MEM[1][2] ), .B1(n266), 
        .Y(n188) );
  AOI21X1M U233 ( .A0(n189), .A1(n188), .B0(n250), .Y(n193) );
  AOI22X1M U234 ( .A0(\MEM[6][2] ), .A1(n265), .B0(\MEM[7][2] ), .B1(n264), 
        .Y(n191) );
  AOI22X1M U235 ( .A0(\MEM[4][2] ), .A1(n267), .B0(\MEM[5][2] ), .B1(n266), 
        .Y(n190) );
  AOI21X1M U236 ( .A0(n191), .A1(n190), .B0(n253), .Y(n192) );
  OR4X1M U237 ( .A(n195), .B(n194), .C(n193), .D(n192), .Y(R_data[2]) );
  AOI22X1M U238 ( .A0(\MEM[10][3] ), .A1(n265), .B0(\MEM[11][3] ), .B1(n264), 
        .Y(n197) );
  AOI22X1M U239 ( .A0(\MEM[8][3] ), .A1(n267), .B0(\MEM[9][3] ), .B1(n266), 
        .Y(n196) );
  AOI21X1M U240 ( .A0(n197), .A1(n196), .B0(n244), .Y(n207) );
  AOI22X1M U241 ( .A0(\MEM[14][3] ), .A1(n265), .B0(\MEM[15][3] ), .B1(n264), 
        .Y(n199) );
  AOI22X1M U242 ( .A0(\MEM[12][3] ), .A1(n267), .B0(\MEM[13][3] ), .B1(n266), 
        .Y(n198) );
  AOI21X1M U243 ( .A0(n199), .A1(n198), .B0(n247), .Y(n206) );
  AOI22X1M U244 ( .A0(\MEM[2][3] ), .A1(n265), .B0(\MEM[3][3] ), .B1(n264), 
        .Y(n201) );
  AOI22X1M U245 ( .A0(\MEM[0][3] ), .A1(n267), .B0(\MEM[1][3] ), .B1(n266), 
        .Y(n200) );
  AOI21X1M U246 ( .A0(n201), .A1(n200), .B0(n250), .Y(n205) );
  AOI22X1M U247 ( .A0(\MEM[6][3] ), .A1(n265), .B0(\MEM[7][3] ), .B1(n264), 
        .Y(n203) );
  AOI22X1M U248 ( .A0(\MEM[4][3] ), .A1(n267), .B0(\MEM[5][3] ), .B1(n266), 
        .Y(n202) );
  AOI21X1M U249 ( .A0(n203), .A1(n202), .B0(n253), .Y(n204) );
  OR4X1M U250 ( .A(n207), .B(n206), .C(n205), .D(n204), .Y(R_data[3]) );
  AOI22X1M U251 ( .A0(\MEM[10][4] ), .A1(n265), .B0(\MEM[11][4] ), .B1(n264), 
        .Y(n209) );
  AOI22X1M U252 ( .A0(\MEM[8][4] ), .A1(n267), .B0(\MEM[9][4] ), .B1(n266), 
        .Y(n208) );
  AOI21X1M U253 ( .A0(n209), .A1(n208), .B0(n244), .Y(n219) );
  AOI22X1M U254 ( .A0(\MEM[14][4] ), .A1(n265), .B0(\MEM[15][4] ), .B1(n264), 
        .Y(n211) );
  AOI22X1M U255 ( .A0(\MEM[12][4] ), .A1(n267), .B0(\MEM[13][4] ), .B1(n266), 
        .Y(n210) );
  AOI21X1M U256 ( .A0(n211), .A1(n210), .B0(n247), .Y(n218) );
  AOI22X1M U257 ( .A0(\MEM[2][4] ), .A1(n265), .B0(\MEM[3][4] ), .B1(n264), 
        .Y(n213) );
  AOI22X1M U258 ( .A0(\MEM[0][4] ), .A1(n267), .B0(\MEM[1][4] ), .B1(n266), 
        .Y(n212) );
  AOI21X1M U259 ( .A0(n213), .A1(n212), .B0(n250), .Y(n217) );
  AOI22X1M U260 ( .A0(\MEM[6][4] ), .A1(n265), .B0(\MEM[7][4] ), .B1(n264), 
        .Y(n215) );
  AOI22X1M U261 ( .A0(\MEM[4][4] ), .A1(n267), .B0(\MEM[5][4] ), .B1(n266), 
        .Y(n214) );
  AOI21X1M U262 ( .A0(n215), .A1(n214), .B0(n253), .Y(n216) );
  OR4X1M U263 ( .A(n219), .B(n218), .C(n217), .D(n216), .Y(R_data[4]) );
  AOI22X1M U264 ( .A0(\MEM[10][5] ), .A1(n265), .B0(\MEM[11][5] ), .B1(n264), 
        .Y(n221) );
  AOI22X1M U265 ( .A0(\MEM[8][5] ), .A1(n267), .B0(\MEM[9][5] ), .B1(n266), 
        .Y(n220) );
  AOI21X1M U266 ( .A0(n221), .A1(n220), .B0(n244), .Y(n231) );
  AOI22X1M U267 ( .A0(\MEM[14][5] ), .A1(n265), .B0(\MEM[15][5] ), .B1(n264), 
        .Y(n223) );
  AOI22X1M U268 ( .A0(\MEM[12][5] ), .A1(n267), .B0(\MEM[13][5] ), .B1(n266), 
        .Y(n222) );
  AOI21X1M U269 ( .A0(n223), .A1(n222), .B0(n247), .Y(n230) );
  AOI22X1M U270 ( .A0(\MEM[2][5] ), .A1(n265), .B0(\MEM[3][5] ), .B1(n264), 
        .Y(n225) );
  AOI22X1M U271 ( .A0(\MEM[0][5] ), .A1(n267), .B0(\MEM[1][5] ), .B1(n266), 
        .Y(n224) );
  AOI21X1M U272 ( .A0(n225), .A1(n224), .B0(n250), .Y(n229) );
  AOI22X1M U273 ( .A0(\MEM[6][5] ), .A1(n265), .B0(\MEM[7][5] ), .B1(n264), 
        .Y(n227) );
  AOI22X1M U274 ( .A0(\MEM[4][5] ), .A1(n267), .B0(\MEM[5][5] ), .B1(n266), 
        .Y(n226) );
  AOI21X1M U275 ( .A0(n227), .A1(n226), .B0(n253), .Y(n228) );
  OR4X1M U276 ( .A(n231), .B(n230), .C(n229), .D(n228), .Y(R_data[5]) );
  AOI22X1M U277 ( .A0(\MEM[10][6] ), .A1(n265), .B0(\MEM[11][6] ), .B1(n264), 
        .Y(n233) );
  AOI22X1M U278 ( .A0(\MEM[8][6] ), .A1(n267), .B0(\MEM[9][6] ), .B1(n266), 
        .Y(n232) );
  AOI21X1M U279 ( .A0(n233), .A1(n232), .B0(n244), .Y(n243) );
  AOI22X1M U280 ( .A0(\MEM[14][6] ), .A1(n265), .B0(\MEM[15][6] ), .B1(n264), 
        .Y(n235) );
  AOI22X1M U281 ( .A0(\MEM[12][6] ), .A1(n267), .B0(\MEM[13][6] ), .B1(n266), 
        .Y(n234) );
  AOI21X1M U282 ( .A0(n235), .A1(n234), .B0(n247), .Y(n242) );
  AOI22X1M U283 ( .A0(\MEM[2][6] ), .A1(n265), .B0(\MEM[3][6] ), .B1(n264), 
        .Y(n237) );
  AOI22X1M U284 ( .A0(\MEM[0][6] ), .A1(n267), .B0(\MEM[1][6] ), .B1(n266), 
        .Y(n236) );
  AOI21X1M U285 ( .A0(n237), .A1(n236), .B0(n250), .Y(n241) );
  AOI22X1M U286 ( .A0(\MEM[6][6] ), .A1(n265), .B0(\MEM[7][6] ), .B1(n264), 
        .Y(n239) );
  AOI22X1M U287 ( .A0(\MEM[4][6] ), .A1(n267), .B0(\MEM[5][6] ), .B1(n266), 
        .Y(n238) );
  AOI21X1M U288 ( .A0(n239), .A1(n238), .B0(n253), .Y(n240) );
  OR4X1M U289 ( .A(n243), .B(n242), .C(n241), .D(n240), .Y(R_data[6]) );
  AOI22X1M U290 ( .A0(\MEM[10][7] ), .A1(n265), .B0(\MEM[11][7] ), .B1(n264), 
        .Y(n246) );
  AOI22X1M U291 ( .A0(\MEM[8][7] ), .A1(n267), .B0(\MEM[9][7] ), .B1(n266), 
        .Y(n245) );
  AOI21X1M U292 ( .A0(n246), .A1(n245), .B0(n244), .Y(n259) );
  AOI22X1M U293 ( .A0(\MEM[14][7] ), .A1(n265), .B0(\MEM[15][7] ), .B1(n264), 
        .Y(n249) );
  AOI22X1M U294 ( .A0(\MEM[12][7] ), .A1(n267), .B0(\MEM[13][7] ), .B1(n266), 
        .Y(n248) );
  AOI21X1M U295 ( .A0(n249), .A1(n248), .B0(n247), .Y(n258) );
  AOI22X1M U296 ( .A0(\MEM[2][7] ), .A1(n265), .B0(\MEM[3][7] ), .B1(n264), 
        .Y(n252) );
  AOI22X1M U297 ( .A0(\MEM[0][7] ), .A1(n267), .B0(\MEM[1][7] ), .B1(n266), 
        .Y(n251) );
  AOI21X1M U298 ( .A0(n252), .A1(n251), .B0(n250), .Y(n257) );
  AOI22X1M U299 ( .A0(\MEM[6][7] ), .A1(n265), .B0(\MEM[7][7] ), .B1(n264), 
        .Y(n255) );
  AOI22X1M U300 ( .A0(\MEM[4][7] ), .A1(n267), .B0(\MEM[5][7] ), .B1(n266), 
        .Y(n254) );
  AOI21X1M U301 ( .A0(n255), .A1(n254), .B0(n253), .Y(n256) );
  OR4X1M U302 ( .A(n259), .B(n258), .C(n257), .D(n256), .Y(R_data[7]) );
endmodule


module ASYNC_FIFO_DATASIZE8_ADDRSIZE4_DEPTHSIZE16 ( W_CLK, W_RST_N, W_INC, 
        W_DATA, R_CLK, R_RST_N, R_INC, W_FULL, R_DATA, R_EMPTY );
  input [7:0] W_DATA;
  output [7:0] R_DATA;
  input W_CLK, W_RST_N, W_INC, R_CLK, R_RST_N, R_INC;
  output W_FULL, R_EMPTY;
  wire   n1, n2, n3, n4;
  wire   [4:0] Wq2_rptr;
  wire   [4:0] W_ptr;
  wire   [3:0] W_ADDR;
  wire   [4:0] Rq2_wptr;
  wire   [4:0] R_ptr;
  wire   [3:0] R_ADDR;

  FIFO_WR_ADDR4 u_fifo_wr ( .W_clk(W_CLK), .W_rst_n(n3), .W_inc(W_INC), 
        .Wq2_ptr(Wq2_rptr), .W_ptr(W_ptr), .W_addr(W_ADDR), .W_full(W_FULL) );
  FIFO_RD_ADDR4 u_fifo_rd ( .R_clk(R_CLK), .R_rst_n(n1), .R_inc(R_INC), 
        .Rq2_ptr(Rq2_wptr), .R_ptr(R_ptr), .R_addr(R_ADDR), .R_empty(R_EMPTY)
         );
  BIT_SYNC_NUM_STAGES2_BUS_WIDTH5_0 u_sync_w2r ( .CLK(R_CLK), .RST(n1), 
        .ASYNC(W_ptr), .SYNC(Rq2_wptr) );
  BIT_SYNC_NUM_STAGES2_BUS_WIDTH5_1 u_sync_r2w ( .CLK(W_CLK), .RST(n3), 
        .ASYNC(R_ptr), .SYNC(Wq2_rptr) );
  FIFO_MEM_CNTRL_ADDR4_DATA8_DEPTH16 u_fifo_mem ( .W_clk(W_CLK), .W_rst(n3), 
        .W_inc(W_INC), .W_full(W_FULL), .W_addr(W_ADDR), .R_addr(R_ADDR), 
        .W_data(W_DATA), .R_data(R_DATA) );
  INVX2M U1 ( .A(n4), .Y(n3) );
  INVX2M U2 ( .A(W_RST_N), .Y(n4) );
  INVX2M U3 ( .A(n2), .Y(n1) );
  INVX2M U4 ( .A(R_RST_N), .Y(n2) );
endmodule


module Serializer_WIDTH8 ( i_Clk_s, i_RST_s, i_Data_Valid_s, i_P_Data_s, 
        i_Busy_s, i_Ser_En_s, o_Ser_DATA_s, o_Ser_Done_s );
  input [7:0] i_P_Data_s;
  input i_Clk_s, i_RST_s, i_Data_Valid_s, i_Busy_s, i_Ser_En_s;
  output o_Ser_DATA_s, o_Ser_Done_s;
  wire   N24, N25, N26, N27, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14,
         n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n1, n2, n3,
         n26;
  wire   [7:1] reg_data;
  wire   [3:0] count_ser;

  DFFRQX2M \reg_data_reg[6]  ( .D(n20), .CK(i_Clk_s), .RN(i_RST_s), .Q(
        reg_data[6]) );
  DFFRQX2M \reg_data_reg[5]  ( .D(n21), .CK(i_Clk_s), .RN(i_RST_s), .Q(
        reg_data[5]) );
  DFFRQX2M \reg_data_reg[4]  ( .D(n22), .CK(i_Clk_s), .RN(i_RST_s), .Q(
        reg_data[4]) );
  DFFRQX2M \reg_data_reg[3]  ( .D(n23), .CK(i_Clk_s), .RN(i_RST_s), .Q(
        reg_data[3]) );
  DFFRQX2M \reg_data_reg[2]  ( .D(n24), .CK(i_Clk_s), .RN(i_RST_s), .Q(
        reg_data[2]) );
  DFFRQX2M \reg_data_reg[1]  ( .D(n25), .CK(i_Clk_s), .RN(i_RST_s), .Q(
        reg_data[1]) );
  DFFRQX2M \reg_data_reg[0]  ( .D(n18), .CK(i_Clk_s), .RN(i_RST_s), .Q(
        o_Ser_DATA_s) );
  DFFRQX2M \reg_data_reg[7]  ( .D(n19), .CK(i_Clk_s), .RN(i_RST_s), .Q(
        reg_data[7]) );
  DFFRQX2M \count_ser_reg[3]  ( .D(N27), .CK(i_Clk_s), .RN(i_RST_s), .Q(
        count_ser[3]) );
  DFFRQX2M \count_ser_reg[2]  ( .D(N26), .CK(i_Clk_s), .RN(i_RST_s), .Q(
        count_ser[2]) );
  DFFRQX2M \count_ser_reg[1]  ( .D(N25), .CK(i_Clk_s), .RN(i_RST_s), .Q(
        count_ser[1]) );
  DFFRQX2M \count_ser_reg[0]  ( .D(N24), .CK(i_Clk_s), .RN(i_RST_s), .Q(
        count_ser[0]) );
  INVX2M U3 ( .A(i_Ser_En_s), .Y(n2) );
  NOR2X2M U4 ( .A(n2), .B(n1), .Y(n6) );
  NOR2X2M U5 ( .A(n1), .B(n6), .Y(n4) );
  OAI2BB1X2M U6 ( .A0N(o_Ser_DATA_s), .A1N(n4), .B0(n5), .Y(n18) );
  AOI22X1M U7 ( .A0(reg_data[1]), .A1(n6), .B0(i_P_Data_s[0]), .B1(n1), .Y(n5)
         );
  OAI2BB1X2M U8 ( .A0N(reg_data[1]), .A1N(n4), .B0(n13), .Y(n25) );
  AOI22X1M U9 ( .A0(reg_data[2]), .A1(n6), .B0(i_P_Data_s[1]), .B1(n1), .Y(n13) );
  OAI2BB1X2M U10 ( .A0N(n4), .A1N(reg_data[2]), .B0(n12), .Y(n24) );
  AOI22X1M U11 ( .A0(reg_data[3]), .A1(n6), .B0(i_P_Data_s[2]), .B1(n1), .Y(
        n12) );
  OAI2BB1X2M U12 ( .A0N(n4), .A1N(reg_data[3]), .B0(n11), .Y(n23) );
  AOI22X1M U13 ( .A0(reg_data[4]), .A1(n6), .B0(i_P_Data_s[3]), .B1(n1), .Y(
        n11) );
  OAI2BB1X2M U14 ( .A0N(n4), .A1N(reg_data[4]), .B0(n10), .Y(n22) );
  AOI22X1M U15 ( .A0(reg_data[5]), .A1(n6), .B0(i_P_Data_s[4]), .B1(n1), .Y(
        n10) );
  OAI2BB1X2M U16 ( .A0N(n4), .A1N(reg_data[5]), .B0(n9), .Y(n21) );
  AOI22X1M U17 ( .A0(reg_data[6]), .A1(n6), .B0(i_P_Data_s[5]), .B1(n1), .Y(n9) );
  OAI2BB1X2M U18 ( .A0N(n4), .A1N(reg_data[6]), .B0(n8), .Y(n20) );
  AOI22X1M U19 ( .A0(reg_data[7]), .A1(n6), .B0(i_P_Data_s[6]), .B1(n1), .Y(n8) );
  AO22X1M U20 ( .A0(n4), .A1(reg_data[7]), .B0(i_P_Data_s[7]), .B1(n1), .Y(n19) );
  NOR3X2M U21 ( .A(n15), .B(count_ser[3]), .C(n26), .Y(o_Ser_Done_s) );
  OAI2BB2X1M U22 ( .B0(n16), .B1(n2), .A0N(count_ser[2]), .A1N(N24), .Y(N26)
         );
  AOI32X1M U23 ( .A0(count_ser[0]), .A1(n26), .A2(count_ser[1]), .B0(
        count_ser[2]), .B1(n3), .Y(n16) );
  NAND2X2M U24 ( .A(count_ser[1]), .B(count_ser[0]), .Y(n15) );
  AOI2B1X1M U25 ( .A1N(o_Ser_Done_s), .A0(n14), .B0(n2), .Y(N27) );
  OAI21X2M U26 ( .A0(n15), .A1(n26), .B0(count_ser[3]), .Y(n14) );
  NOR2X2M U27 ( .A(n2), .B(count_ser[0]), .Y(N24) );
  BUFX2M U28 ( .A(n7), .Y(n1) );
  NOR2BX2M U29 ( .AN(i_Data_Valid_s), .B(i_Busy_s), .Y(n7) );
  NOR2X2M U30 ( .A(n17), .B(n2), .Y(N25) );
  CLKXOR2X2M U31 ( .A(count_ser[0]), .B(n3), .Y(n17) );
  INVX2M U32 ( .A(count_ser[2]), .Y(n26) );
  INVX2M U33 ( .A(count_ser[1]), .Y(n3) );
endmodule


module FSM ( i_Clk_fsm, i_RST_fsm, i_PAR_EN_fsm, i_Data_Valid_fsm, 
        i_Ser_Done_fsm, o_Ser_EN_fsm, o_Busy_fsm, o_Mux_Sel_fsm );
  output [1:0] o_Mux_Sel_fsm;
  input i_Clk_fsm, i_RST_fsm, i_PAR_EN_fsm, i_Data_Valid_fsm, i_Ser_Done_fsm;
  output o_Ser_EN_fsm, o_Busy_fsm;
  wire   busy, n4, n5, n6, n7, n8, n1, n2;
  wire   [2:0] Current_state;
  wire   [2:0] Next_state;

  DFFRQX2M \Current_state_reg[0]  ( .D(Next_state[0]), .CK(i_Clk_fsm), .RN(
        i_RST_fsm), .Q(Current_state[0]) );
  DFFRQX2M o_Busy_fsm_reg ( .D(busy), .CK(i_Clk_fsm), .RN(i_RST_fsm), .Q(
        o_Busy_fsm) );
  DFFRQX2M \Current_state_reg[1]  ( .D(Next_state[1]), .CK(i_Clk_fsm), .RN(
        i_RST_fsm), .Q(Current_state[1]) );
  DFFRQX2M \Current_state_reg[2]  ( .D(Next_state[2]), .CK(i_Clk_fsm), .RN(
        i_RST_fsm), .Q(Current_state[2]) );
  INVX2M U3 ( .A(n4), .Y(o_Ser_EN_fsm) );
  NAND2X2M U4 ( .A(o_Mux_Sel_fsm[1]), .B(n6), .Y(n4) );
  INVX2M U5 ( .A(n8), .Y(o_Mux_Sel_fsm[0]) );
  XNOR2X2M U6 ( .A(Current_state[0]), .B(Current_state[1]), .Y(n6) );
  NOR2X2M U7 ( .A(n1), .B(Current_state[2]), .Y(n8) );
  NOR2X2M U8 ( .A(n2), .B(Current_state[2]), .Y(o_Mux_Sel_fsm[1]) );
  NOR2BX2M U9 ( .AN(o_Mux_Sel_fsm[1]), .B(n5), .Y(Next_state[2]) );
  AOI2B1X1M U10 ( .A1N(i_PAR_EN_fsm), .A0(i_Ser_Done_fsm), .B0(n1), .Y(n5) );
  INVX2M U11 ( .A(Current_state[1]), .Y(n2) );
  INVX2M U12 ( .A(Current_state[0]), .Y(n1) );
  OAI22X1M U13 ( .A0(i_Ser_Done_fsm), .A1(o_Mux_Sel_fsm[0]), .B0(
        Current_state[1]), .B1(n7), .Y(Next_state[0]) );
  AOI2B1X1M U14 ( .A1N(Current_state[2]), .A0(i_Data_Valid_fsm), .B0(n8), .Y(
        n7) );
  OAI21X2M U15 ( .A0(Current_state[2]), .A1(n6), .B0(n4), .Y(Next_state[1]) );
  OAI21X2M U16 ( .A0(Current_state[0]), .A1(n2), .B0(o_Mux_Sel_fsm[0]), .Y(
        busy) );
endmodule


module Parity_Calc_WIDTH8 ( i_Clk_p, i_RST_p, i_Data_Valid_p, i_DATA, 
        i_PAR_TYP_p, i_PAR_En_p, i_Busy_p, o_Par_bit );
  input [7:0] i_DATA;
  input i_Clk_p, i_RST_p, i_Data_Valid_p, i_PAR_TYP_p, i_PAR_En_p, i_Busy_p;
  output o_Par_bit;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14;
  wire   [7:0] data;

  DFFRQX2M \data_reg[5]  ( .D(n12), .CK(i_Clk_p), .RN(i_RST_p), .Q(data[5]) );
  DFFRQX2M \data_reg[1]  ( .D(n8), .CK(i_Clk_p), .RN(i_RST_p), .Q(data[1]) );
  DFFRQX2M \data_reg[4]  ( .D(n11), .CK(i_Clk_p), .RN(i_RST_p), .Q(data[4]) );
  DFFRQX2M \data_reg[0]  ( .D(n7), .CK(i_Clk_p), .RN(i_RST_p), .Q(data[0]) );
  DFFRQX2M \data_reg[2]  ( .D(n9), .CK(i_Clk_p), .RN(i_RST_p), .Q(data[2]) );
  DFFRQX2M \data_reg[3]  ( .D(n10), .CK(i_Clk_p), .RN(i_RST_p), .Q(data[3]) );
  DFFRQX2M \data_reg[6]  ( .D(n13), .CK(i_Clk_p), .RN(i_RST_p), .Q(data[6]) );
  DFFRQX2M \data_reg[7]  ( .D(n14), .CK(i_Clk_p), .RN(i_RST_p), .Q(data[7]) );
  AO2B2X2M U2 ( .B0(i_DATA[0]), .B1(n6), .A0(data[0]), .A1N(n6), .Y(n7) );
  AO2B2X2M U3 ( .B0(i_DATA[1]), .B1(n6), .A0(data[1]), .A1N(n6), .Y(n8) );
  AO2B2X2M U4 ( .B0(i_DATA[2]), .B1(n6), .A0(data[2]), .A1N(n6), .Y(n9) );
  AO2B2X2M U5 ( .B0(i_DATA[3]), .B1(n6), .A0(data[3]), .A1N(n6), .Y(n10) );
  AO2B2X2M U6 ( .B0(i_DATA[4]), .B1(n6), .A0(data[4]), .A1N(n6), .Y(n11) );
  AO2B2X2M U7 ( .B0(i_DATA[5]), .B1(n6), .A0(data[5]), .A1N(n6), .Y(n12) );
  AO2B2X2M U8 ( .B0(i_DATA[6]), .B1(n6), .A0(data[6]), .A1N(n6), .Y(n13) );
  AO2B2X2M U9 ( .B0(i_DATA[7]), .B1(n6), .A0(data[7]), .A1N(n6), .Y(n14) );
  XNOR2X2M U10 ( .A(data[2]), .B(data[3]), .Y(n4) );
  NOR2BX2M U11 ( .AN(i_PAR_En_p), .B(n1), .Y(o_Par_bit) );
  XOR3XLM U12 ( .A(n2), .B(i_PAR_TYP_p), .C(n3), .Y(n1) );
  XOR3XLM U13 ( .A(data[1]), .B(data[0]), .C(n4), .Y(n3) );
  XOR3XLM U14 ( .A(data[5]), .B(data[4]), .C(n5), .Y(n2) );
  CLKXOR2X2M U15 ( .A(data[7]), .B(data[6]), .Y(n5) );
  NOR2BX2M U16 ( .AN(i_Data_Valid_p), .B(i_Busy_p), .Y(n6) );
endmodule


module Mux ( i_Clk_mux, i_RST_mux, i_mux_sel, i_IN_0_mux, i_IN_1_mux, 
        i_IN_2_mux, i_IN_3_mux, o_OUT_mux );
  input [1:0] i_mux_sel;
  input i_Clk_mux, i_RST_mux, i_IN_0_mux, i_IN_1_mux, i_IN_2_mux, i_IN_3_mux;
  output o_OUT_mux;
  wire   OUT, n2, n3, n1;

  DFFRQX2M o_OUT_mux_reg ( .D(OUT), .CK(i_Clk_mux), .RN(i_RST_mux), .Q(
        o_OUT_mux) );
  OAI2B2X1M U3 ( .A1N(i_mux_sel[1]), .A0(n2), .B0(i_mux_sel[1]), .B1(n3), .Y(
        OUT) );
  AOI22X1M U4 ( .A0(i_IN_0_mux), .A1(n1), .B0(i_mux_sel[0]), .B1(i_IN_1_mux), 
        .Y(n3) );
  AOI22X1M U5 ( .A0(i_IN_2_mux), .A1(n1), .B0(i_IN_3_mux), .B1(i_mux_sel[0]), 
        .Y(n2) );
  INVX2M U6 ( .A(i_mux_sel[0]), .Y(n1) );
endmodule


module UART_TX_8_0_1 ( i_CLK_TX, i_RST_TX, i_DATA_Valid_TX, i_DATA_TX, 
        i_PAR_EN_TX, i_PAR_TYP_TX, o_OUT_TX, o_BUSY_TX );
  input [7:0] i_DATA_TX;
  input i_CLK_TX, i_RST_TX, i_DATA_Valid_TX, i_PAR_EN_TX, i_PAR_TYP_TX;
  output o_OUT_TX, o_BUSY_TX;
  wire   SER_EN_TX, SER_DATA_TX, SER_DONE_TX, PARITY_BIT_TX, n1, n2;
  wire   [1:0] MUS_SEL_TX;

  Serializer_WIDTH8 SER ( .i_Clk_s(i_CLK_TX), .i_RST_s(n1), .i_Data_Valid_s(
        i_DATA_Valid_TX), .i_P_Data_s(i_DATA_TX), .i_Busy_s(o_BUSY_TX), 
        .i_Ser_En_s(SER_EN_TX), .o_Ser_DATA_s(SER_DATA_TX), .o_Ser_Done_s(
        SER_DONE_TX) );
  FSM fsm_tx ( .i_Clk_fsm(i_CLK_TX), .i_RST_fsm(n1), .i_PAR_EN_fsm(i_PAR_EN_TX), .i_Data_Valid_fsm(i_DATA_Valid_TX), .i_Ser_Done_fsm(SER_DONE_TX), 
        .o_Ser_EN_fsm(SER_EN_TX), .o_Busy_fsm(o_BUSY_TX), .o_Mux_Sel_fsm(
        MUS_SEL_TX) );
  Parity_Calc_WIDTH8 PER_TX ( .i_Clk_p(i_CLK_TX), .i_RST_p(n1), 
        .i_Data_Valid_p(i_DATA_Valid_TX), .i_DATA(i_DATA_TX), .i_PAR_TYP_p(
        i_PAR_TYP_TX), .i_PAR_En_p(i_PAR_EN_TX), .i_Busy_p(o_BUSY_TX), 
        .o_Par_bit(PARITY_BIT_TX) );
  Mux mux_tx ( .i_Clk_mux(i_CLK_TX), .i_RST_mux(n1), .i_mux_sel(MUS_SEL_TX), 
        .i_IN_0_mux(1'b0), .i_IN_1_mux(1'b1), .i_IN_2_mux(SER_DATA_TX), 
        .i_IN_3_mux(PARITY_BIT_TX), .o_OUT_mux(o_OUT_TX) );
  INVX2M U3 ( .A(n2), .Y(n1) );
  INVX2M U4 ( .A(i_RST_TX), .Y(n2) );
endmodule


module edge_bit_cont_PRESCALE6_DATA_BITS8 ( clk_cont, rst_cont, 
        Enable_sampling_cont, prescale_cont, parity_en_cont, bit_cont, 
        edge_cont );
  input [5:0] prescale_cont;
  output [3:0] bit_cont;
  output [5:0] edge_cont;
  input clk_cont, rst_cont, Enable_sampling_cont, parity_en_cont;
  wire   N11, N12, N13, N14, N15, N16, N17, N18, N21, N22, N23, N24, N32, N33,
         N34, N35, N36, N37, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22,
         n23, n24, n25, n26, n27, n28, \add_26/carry[5] , \add_26/carry[4] ,
         \add_26/carry[3] , \add_26/carry[2] , n1, n2, n3, n4, n5, n6, n7, n8,
         n9, n10, n11, n12, n29, n30, n31, n32, n33, n34, n35, n36;

  DFFRQX2M \bit_cont_reg[3]  ( .D(n25), .CK(clk_cont), .RN(rst_cont), .Q(
        bit_cont[3]) );
  DFFRQX2M \bit_cont_reg[2]  ( .D(n26), .CK(clk_cont), .RN(rst_cont), .Q(
        bit_cont[2]) );
  DFFRQX2M \bit_cont_reg[1]  ( .D(n27), .CK(clk_cont), .RN(rst_cont), .Q(
        bit_cont[1]) );
  DFFRQX2M \bit_cont_reg[0]  ( .D(n28), .CK(clk_cont), .RN(rst_cont), .Q(
        bit_cont[0]) );
  DFFRQX2M \edge_cont_reg[5]  ( .D(N37), .CK(clk_cont), .RN(rst_cont), .Q(
        edge_cont[5]) );
  DFFRQX2M \edge_cont_reg[0]  ( .D(N32), .CK(clk_cont), .RN(rst_cont), .Q(
        edge_cont[0]) );
  DFFRQX2M \edge_cont_reg[2]  ( .D(N34), .CK(clk_cont), .RN(rst_cont), .Q(
        edge_cont[2]) );
  DFFRQX2M \edge_cont_reg[1]  ( .D(N33), .CK(clk_cont), .RN(rst_cont), .Q(
        edge_cont[1]) );
  DFFRQX2M \edge_cont_reg[3]  ( .D(N35), .CK(clk_cont), .RN(rst_cont), .Q(
        edge_cont[3]) );
  DFFRQX2M \edge_cont_reg[4]  ( .D(N36), .CK(clk_cont), .RN(rst_cont), .Q(
        edge_cont[4]) );
  INVX2M U3 ( .A(n16), .Y(n31) );
  NOR2X2M U4 ( .A(n32), .B(n20), .Y(n16) );
  INVX2M U5 ( .A(Enable_sampling_cont), .Y(n32) );
  NAND2X2M U6 ( .A(Enable_sampling_cont), .B(n33), .Y(n24) );
  NOR2X2M U7 ( .A(n33), .B(n32), .Y(n20) );
  INVX2M U8 ( .A(N18), .Y(n33) );
  NOR2BX2M U9 ( .AN(N21), .B(n24), .Y(N33) );
  NOR2BX2M U10 ( .AN(N22), .B(n24), .Y(N34) );
  NOR2BX2M U11 ( .AN(N23), .B(n24), .Y(N35) );
  NOR2BX2M U12 ( .AN(N24), .B(n24), .Y(N36) );
  OAI32X1M U13 ( .A0(n13), .A1(bit_cont[3]), .A2(n14), .B0(n15), .B1(n36), .Y(
        n25) );
  AOI2B1X1M U14 ( .A1N(n13), .A0(n14), .B0(n16), .Y(n15) );
  NAND3X2M U15 ( .A(bit_cont[1]), .B(bit_cont[0]), .C(bit_cont[2]), .Y(n14) );
  OAI22X1M U16 ( .A0(n34), .A1(n31), .B0(bit_cont[0]), .B1(n13), .Y(n28) );
  OAI22X1M U17 ( .A0(n35), .A1(n31), .B0(n19), .B1(n13), .Y(n27) );
  XNOR2X2M U18 ( .A(bit_cont[0]), .B(bit_cont[1]), .Y(n19) );
  NAND2X2M U19 ( .A(n20), .B(n21), .Y(n13) );
  OAI2B2X1M U20 ( .A1N(parity_en_cont), .A0(n22), .B0(parity_en_cont), .B1(n23), .Y(n21) );
  NOR4X1M U21 ( .A(bit_cont[2]), .B(bit_cont[0]), .C(n36), .D(n35), .Y(n22) );
  NOR4X1M U22 ( .A(bit_cont[2]), .B(bit_cont[1]), .C(n34), .D(n36), .Y(n23) );
  NOR2X2M U23 ( .A(n1), .B(n24), .Y(N37) );
  XNOR2X2M U24 ( .A(\add_26/carry[5] ), .B(edge_cont[5]), .Y(n1) );
  NOR2X2M U25 ( .A(edge_cont[0]), .B(n24), .Y(N32) );
  NOR2X2M U26 ( .A(n17), .B(n32), .Y(n26) );
  CLKXOR2X2M U27 ( .A(n18), .B(bit_cont[2]), .Y(n17) );
  NAND3X2M U28 ( .A(bit_cont[0]), .B(N18), .C(bit_cont[1]), .Y(n18) );
  INVX2M U29 ( .A(bit_cont[0]), .Y(n34) );
  INVX2M U30 ( .A(bit_cont[1]), .Y(n35) );
  INVX2M U31 ( .A(bit_cont[3]), .Y(n36) );
  ADDHX1M U32 ( .A(edge_cont[3]), .B(\add_26/carry[3] ), .CO(\add_26/carry[4] ), .S(N23) );
  ADDHX1M U33 ( .A(edge_cont[1]), .B(edge_cont[0]), .CO(\add_26/carry[2] ), 
        .S(N21) );
  ADDHX1M U34 ( .A(edge_cont[2]), .B(\add_26/carry[2] ), .CO(\add_26/carry[3] ), .S(N22) );
  ADDHX1M U35 ( .A(edge_cont[4]), .B(\add_26/carry[4] ), .CO(\add_26/carry[5] ), .S(N24) );
  OR2X2M U36 ( .A(prescale_cont[1]), .B(prescale_cont[0]), .Y(n2) );
  CLKINVX1M U37 ( .A(prescale_cont[0]), .Y(N11) );
  OAI2BB1X1M U38 ( .A0N(prescale_cont[0]), .A1N(prescale_cont[1]), .B0(n2), 
        .Y(N12) );
  OR2X1M U39 ( .A(n2), .B(prescale_cont[2]), .Y(n3) );
  OAI2BB1X1M U40 ( .A0N(n2), .A1N(prescale_cont[2]), .B0(n3), .Y(N13) );
  OR2X1M U41 ( .A(n3), .B(prescale_cont[3]), .Y(n4) );
  OAI2BB1X1M U42 ( .A0N(n3), .A1N(prescale_cont[3]), .B0(n4), .Y(N14) );
  OR2X1M U43 ( .A(n4), .B(prescale_cont[4]), .Y(n5) );
  OAI2BB1X1M U44 ( .A0N(n4), .A1N(prescale_cont[4]), .B0(n5), .Y(N15) );
  NOR2X1M U45 ( .A(n5), .B(prescale_cont[5]), .Y(N17) );
  AO21XLM U46 ( .A0(n5), .A1(prescale_cont[5]), .B0(N17), .Y(N16) );
  NOR2BX1M U47 ( .AN(N11), .B(edge_cont[0]), .Y(n6) );
  OAI2B2X1M U48 ( .A1N(edge_cont[1]), .A0(n6), .B0(N12), .B1(n6), .Y(n10) );
  XNOR2X1M U49 ( .A(N16), .B(edge_cont[5]), .Y(n9) );
  NOR2BX1M U50 ( .AN(edge_cont[0]), .B(N11), .Y(n7) );
  OAI2B2X1M U51 ( .A1N(N12), .A0(n7), .B0(edge_cont[1]), .B1(n7), .Y(n8) );
  NAND4BX1M U52 ( .AN(N17), .B(n10), .C(n9), .D(n8), .Y(n30) );
  CLKXOR2X2M U53 ( .A(N15), .B(edge_cont[4]), .Y(n29) );
  CLKXOR2X2M U54 ( .A(N13), .B(edge_cont[2]), .Y(n12) );
  CLKXOR2X2M U55 ( .A(N14), .B(edge_cont[3]), .Y(n11) );
  NOR4X1M U56 ( .A(n30), .B(n29), .C(n12), .D(n11), .Y(N18) );
endmodule


module FSM_RX_PRESCALE6_DATA_BITS8 ( clk_fsm, rst_fsm, data_in_fsm, 
        bit_cont_fsm, parity_en_fsm, edge_cont_fsm, prescale_fsm, 
        parity_err_fsm, stop_err_fsm, start_glitch_fsm, parity_check_en_fsm, 
        start_check_en_fsm, stop_check_en_fsm, deserializer_en_fsm, 
        data_valid_fsm, Enable_sampling_fsm, Data_sample_en_fsm );
  input [3:0] bit_cont_fsm;
  input [5:0] edge_cont_fsm;
  input [5:0] prescale_fsm;
  input clk_fsm, rst_fsm, data_in_fsm, parity_en_fsm, parity_err_fsm,
         stop_err_fsm, start_glitch_fsm;
  output parity_check_en_fsm, start_check_en_fsm, stop_check_en_fsm,
         deserializer_en_fsm, data_valid_fsm, Enable_sampling_fsm,
         Data_sample_en_fsm;
  wire   N35, N36, N37, N38, N39, N40, N65, N97, N98, data_valid_comb,
         \r93/carry[2] , \r93/carry[3] , \r93/carry[4] , n1, n2, n3, n4, n5,
         n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20,
         n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34,
         n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48,
         n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60;
  wire   [2:0] current_state_fsm;
  wire   [2:0] next_state_fsm;

  DFFRQX2M \current_state_fsm_reg[2]  ( .D(next_state_fsm[2]), .CK(clk_fsm), 
        .RN(rst_fsm), .Q(current_state_fsm[2]) );
  DFFRQX2M \current_state_fsm_reg[1]  ( .D(next_state_fsm[1]), .CK(clk_fsm), 
        .RN(rst_fsm), .Q(current_state_fsm[1]) );
  DFFRX1M \current_state_fsm_reg[0]  ( .D(next_state_fsm[0]), .CK(clk_fsm), 
        .RN(rst_fsm), .Q(n60) );
  DFFRQX2M data_valid_fsm_reg ( .D(data_valid_comb), .CK(clk_fsm), .RN(rst_fsm), .Q(data_valid_fsm) );
  XNOR2X2M U3 ( .A(prescale_fsm[4]), .B(\r93/carry[3] ), .Y(n1) );
  XNOR2X2M U4 ( .A(prescale_fsm[5]), .B(\r93/carry[4] ), .Y(n2) );
  OR4X1M U5 ( .A(n19), .B(n18), .C(n17), .D(n16), .Y(n3) );
  XNOR2X2M U6 ( .A(prescale_fsm[3]), .B(\r93/carry[2] ), .Y(n4) );
  NAND2X2M U7 ( .A(\r93/carry[4] ), .B(prescale_fsm[5]), .Y(n5) );
  OR2X2M U8 ( .A(prescale_fsm[1]), .B(prescale_fsm[0]), .Y(n7) );
  BUFX2M U9 ( .A(Data_sample_en_fsm), .Y(Enable_sampling_fsm) );
  AND2X1M U10 ( .A(\r93/carry[3] ), .B(prescale_fsm[4]), .Y(\r93/carry[4] ) );
  AND2X1M U11 ( .A(\r93/carry[2] ), .B(prescale_fsm[3]), .Y(\r93/carry[3] ) );
  OR2X1M U12 ( .A(prescale_fsm[2]), .B(prescale_fsm[1]), .Y(\r93/carry[2] ) );
  XNOR2X1M U13 ( .A(prescale_fsm[1]), .B(prescale_fsm[2]), .Y(N98) );
  CLKINVX1M U14 ( .A(prescale_fsm[0]), .Y(N35) );
  OAI2BB1X1M U15 ( .A0N(prescale_fsm[0]), .A1N(prescale_fsm[1]), .B0(n7), .Y(
        N36) );
  OR2X1M U16 ( .A(n7), .B(prescale_fsm[2]), .Y(n8) );
  OAI2BB1X1M U17 ( .A0N(n7), .A1N(prescale_fsm[2]), .B0(n8), .Y(N37) );
  OR2X1M U18 ( .A(n8), .B(prescale_fsm[3]), .Y(n9) );
  OAI2BB1X1M U19 ( .A0N(n8), .A1N(prescale_fsm[3]), .B0(n9), .Y(N38) );
  OR2X1M U20 ( .A(n9), .B(prescale_fsm[4]), .Y(n10) );
  OAI2BB1X1M U21 ( .A0N(n9), .A1N(prescale_fsm[4]), .B0(n10), .Y(N39) );
  NOR2X1M U22 ( .A(n10), .B(prescale_fsm[5]), .Y(N65) );
  AO21XLM U23 ( .A0(n10), .A1(prescale_fsm[5]), .B0(N65), .Y(N40) );
  CLKINVX1M U24 ( .A(prescale_fsm[1]), .Y(N97) );
  NOR2BX1M U25 ( .AN(N35), .B(edge_cont_fsm[0]), .Y(n11) );
  OAI2B2X1M U26 ( .A1N(edge_cont_fsm[1]), .A0(n11), .B0(N36), .B1(n11), .Y(n15) );
  XNOR2X1M U27 ( .A(N40), .B(edge_cont_fsm[5]), .Y(n14) );
  NOR2BX1M U28 ( .AN(edge_cont_fsm[0]), .B(N35), .Y(n12) );
  OAI2B2X1M U29 ( .A1N(N36), .A0(n12), .B0(edge_cont_fsm[1]), .B1(n12), .Y(n13) );
  NAND4BX1M U30 ( .AN(N65), .B(n15), .C(n14), .D(n13), .Y(n19) );
  CLKXOR2X2M U31 ( .A(N39), .B(edge_cont_fsm[4]), .Y(n18) );
  CLKXOR2X2M U32 ( .A(N37), .B(edge_cont_fsm[2]), .Y(n17) );
  CLKXOR2X2M U33 ( .A(N38), .B(edge_cont_fsm[3]), .Y(n16) );
  NOR2X1M U34 ( .A(n20), .B(n21), .Y(stop_check_en_fsm) );
  NOR3X1M U35 ( .A(n22), .B(current_state_fsm[1]), .C(n20), .Y(
        start_check_en_fsm) );
  NOR3X1M U36 ( .A(n23), .B(current_state_fsm[2]), .C(n20), .Y(
        parity_check_en_fsm) );
  AOI21BX1M U37 ( .A0(n5), .A1(edge_cont_fsm[5]), .B0N(n24), .Y(n20) );
  OAI221X1M U38 ( .A0(edge_cont_fsm[4]), .A1(n2), .B0(edge_cont_fsm[5]), .B1(
        n5), .C0(n25), .Y(n24) );
  OAI2BB2X1M U39 ( .B0(n26), .B1(n27), .A0N(n2), .A1N(edge_cont_fsm[4]), .Y(
        n25) );
  NOR2X1M U40 ( .A(edge_cont_fsm[3]), .B(n1), .Y(n27) );
  AOI222X1M U41 ( .A0(edge_cont_fsm[2]), .A1(n4), .B0(n28), .B1(n29), .C0(
        edge_cont_fsm[3]), .C1(n1), .Y(n26) );
  OAI211X1M U42 ( .A0(N98), .A1(n30), .B0(n31), .C0(N97), .Y(n29) );
  CLKINVX1M U43 ( .A(edge_cont_fsm[0]), .Y(n31) );
  AOI2BB2XLM U44 ( .B0(N98), .B1(n30), .A0N(n4), .A1N(edge_cont_fsm[2]), .Y(
        n28) );
  CLKINVX1M U45 ( .A(edge_cont_fsm[1]), .Y(n30) );
  CLKNAND2X2M U46 ( .A(n32), .B(n33), .Y(next_state_fsm[2]) );
  NAND4X1M U47 ( .A(bit_cont_fsm[3]), .B(deserializer_en_fsm), .C(n34), .D(n35), .Y(n33) );
  MXI2X1M U48 ( .A(n36), .B(n37), .S0(n3), .Y(n32) );
  NOR3X1M U49 ( .A(n23), .B(parity_err_fsm), .C(current_state_fsm[2]), .Y(n36)
         );
  NAND3X1M U50 ( .A(n38), .B(n39), .C(n40), .Y(next_state_fsm[1]) );
  AOI32X1M U51 ( .A0(n41), .A1(n42), .A2(current_state_fsm[1]), .B0(n43), .B1(
        n3), .Y(n40) );
  NAND4X1M U52 ( .A(n34), .B(n44), .C(n45), .D(n46), .Y(n38) );
  CLKINVX1M U53 ( .A(n47), .Y(n34) );
  OAI31X1M U54 ( .A0(n48), .A1(current_state_fsm[2]), .A2(current_state_fsm[1]), .B0(n49), .Y(next_state_fsm[0]) );
  OAI21X1M U55 ( .A0(n47), .A1(n45), .B0(deserializer_en_fsm), .Y(n49) );
  CLKINVX1M U56 ( .A(bit_cont_fsm[3]), .Y(n45) );
  CLKMX2X2M U57 ( .A(data_in_fsm), .B(n50), .S0(n60), .Y(n48) );
  NOR3X1M U58 ( .A(n46), .B(bit_cont_fsm[3]), .C(n47), .Y(n50) );
  NAND4X1M U59 ( .A(n51), .B(n52), .C(n53), .D(n54), .Y(n47) );
  NOR4X1M U60 ( .A(n55), .B(n56), .C(n57), .D(n58), .Y(n54) );
  CLKXOR2X2M U61 ( .A(edge_cont_fsm[5]), .B(N40), .Y(n58) );
  CLKXOR2X2M U62 ( .A(edge_cont_fsm[4]), .B(N39), .Y(n57) );
  CLKXOR2X2M U63 ( .A(edge_cont_fsm[3]), .B(N38), .Y(n56) );
  CLKXOR2X2M U64 ( .A(edge_cont_fsm[2]), .B(N37), .Y(n55) );
  NOR3X1M U65 ( .A(bit_cont_fsm[0]), .B(bit_cont_fsm[2]), .C(bit_cont_fsm[1]), 
        .Y(n53) );
  XNOR2X1M U66 ( .A(edge_cont_fsm[0]), .B(N35), .Y(n52) );
  XNOR2X1M U67 ( .A(edge_cont_fsm[1]), .B(N36), .Y(n51) );
  CLKINVX1M U68 ( .A(start_glitch_fsm), .Y(n46) );
  CLKINVX1M U69 ( .A(n39), .Y(deserializer_en_fsm) );
  CLKNAND2X2M U70 ( .A(n44), .B(current_state_fsm[1]), .Y(n39) );
  CLKINVX1M U71 ( .A(n22), .Y(n44) );
  NOR4X1M U72 ( .A(stop_err_fsm), .B(n59), .C(n21), .D(n3), .Y(data_valid_comb) );
  CLKINVX1M U73 ( .A(n37), .Y(n21) );
  NOR2X1M U74 ( .A(n41), .B(n23), .Y(n37) );
  NOR2X1M U75 ( .A(n35), .B(n42), .Y(n59) );
  CLKINVX1M U76 ( .A(parity_err_fsm), .Y(n42) );
  CLKINVX1M U77 ( .A(parity_en_fsm), .Y(n35) );
  CLKNAND2X2M U78 ( .A(n23), .B(n22), .Y(Data_sample_en_fsm) );
  CLKNAND2X2M U79 ( .A(n60), .B(n41), .Y(n22) );
  CLKINVX1M U80 ( .A(current_state_fsm[2]), .Y(n41) );
  CLKINVX1M U81 ( .A(n43), .Y(n23) );
  NOR2BX1M U82 ( .AN(current_state_fsm[1]), .B(n60), .Y(n43) );
endmodule


module Deserializer_WIDTH8_PRESCALE6 ( Clk_d, RST_d, Serial_Data_d, deser_en_d, 
        edge_cont_ds, prescale_ds, P_Data_d );
  input [5:0] edge_cont_ds;
  input [5:0] prescale_ds;
  output [7:0] P_Data_d;
  input Clk_d, RST_d, Serial_Data_d, deser_en_d;
  wire   N5, N6, N7, N8, N9, N10, N11, N12, n5, n6, n7, n8, n9, n10, n11, n13,
         n14, n15, n16, n17, n18, n19, n20, n21, n1, n2, n3, n4, n12, n22, n23,
         n24, n25, n26, n27, n28, n29, n30;

  DFFRX1M \shift_reg_reg[5]  ( .D(n19), .CK(Clk_d), .RN(RST_d), .Q(P_Data_d[5]), .QN(n7) );
  DFFRX1M \shift_reg_reg[1]  ( .D(n15), .CK(Clk_d), .RN(RST_d), .Q(P_Data_d[1]), .QN(n11) );
  DFFRX1M \shift_reg_reg[4]  ( .D(n18), .CK(Clk_d), .RN(RST_d), .Q(P_Data_d[4]), .QN(n8) );
  DFFRQX2M \shift_reg_reg[0]  ( .D(n14), .CK(Clk_d), .RN(RST_d), .Q(
        P_Data_d[0]) );
  DFFRX1M \shift_reg_reg[7]  ( .D(n21), .CK(Clk_d), .RN(RST_d), .Q(P_Data_d[7]), .QN(n5) );
  DFFRX1M \shift_reg_reg[3]  ( .D(n17), .CK(Clk_d), .RN(RST_d), .Q(P_Data_d[3]), .QN(n9) );
  DFFRX1M \shift_reg_reg[6]  ( .D(n20), .CK(Clk_d), .RN(RST_d), .Q(P_Data_d[6]), .QN(n6) );
  DFFRX1M \shift_reg_reg[2]  ( .D(n16), .CK(Clk_d), .RN(RST_d), .Q(P_Data_d[2]), .QN(n10) );
  INVX2M U3 ( .A(n13), .Y(n30) );
  NAND2X2M U4 ( .A(deser_en_d), .B(N12), .Y(n13) );
  OAI22X1M U5 ( .A0(n13), .A1(n10), .B0(n30), .B1(n11), .Y(n15) );
  OAI22X1M U6 ( .A0(n13), .A1(n9), .B0(n30), .B1(n10), .Y(n16) );
  OAI22X1M U7 ( .A0(n13), .A1(n8), .B0(n30), .B1(n9), .Y(n17) );
  OAI22X1M U8 ( .A0(n13), .A1(n7), .B0(n30), .B1(n8), .Y(n18) );
  OAI22X1M U9 ( .A0(n13), .A1(n6), .B0(n30), .B1(n7), .Y(n19) );
  OAI22X1M U10 ( .A0(n13), .A1(n5), .B0(n30), .B1(n6), .Y(n20) );
  OAI2BB2X1M U11 ( .B0(n13), .B1(n11), .A0N(P_Data_d[0]), .A1N(n13), .Y(n14)
         );
  OAI2BB2X1M U12 ( .B0(n30), .B1(n5), .A0N(Serial_Data_d), .A1N(n30), .Y(n21)
         );
  OR2X2M U13 ( .A(prescale_ds[1]), .B(prescale_ds[0]), .Y(n1) );
  CLKINVX1M U14 ( .A(prescale_ds[0]), .Y(N5) );
  OAI2BB1X1M U15 ( .A0N(prescale_ds[0]), .A1N(prescale_ds[1]), .B0(n1), .Y(N6)
         );
  OR2X1M U16 ( .A(n1), .B(prescale_ds[2]), .Y(n2) );
  OAI2BB1X1M U17 ( .A0N(n1), .A1N(prescale_ds[2]), .B0(n2), .Y(N7) );
  OR2X1M U18 ( .A(n2), .B(prescale_ds[3]), .Y(n3) );
  OAI2BB1X1M U19 ( .A0N(n2), .A1N(prescale_ds[3]), .B0(n3), .Y(N8) );
  OR2X1M U20 ( .A(n3), .B(prescale_ds[4]), .Y(n4) );
  OAI2BB1X1M U21 ( .A0N(n3), .A1N(prescale_ds[4]), .B0(n4), .Y(N9) );
  NOR2X1M U22 ( .A(n4), .B(prescale_ds[5]), .Y(N11) );
  AO21XLM U23 ( .A0(n4), .A1(prescale_ds[5]), .B0(N11), .Y(N10) );
  NOR2BX1M U24 ( .AN(N5), .B(edge_cont_ds[0]), .Y(n12) );
  OAI2B2X1M U25 ( .A1N(edge_cont_ds[1]), .A0(n12), .B0(N6), .B1(n12), .Y(n25)
         );
  XNOR2X1M U26 ( .A(N10), .B(edge_cont_ds[5]), .Y(n24) );
  NOR2BX1M U27 ( .AN(edge_cont_ds[0]), .B(N5), .Y(n22) );
  OAI2B2X1M U28 ( .A1N(N6), .A0(n22), .B0(edge_cont_ds[1]), .B1(n22), .Y(n23)
         );
  NAND4BX1M U29 ( .AN(N11), .B(n25), .C(n24), .D(n23), .Y(n29) );
  CLKXOR2X2M U30 ( .A(N9), .B(edge_cont_ds[4]), .Y(n28) );
  CLKXOR2X2M U31 ( .A(N7), .B(edge_cont_ds[2]), .Y(n27) );
  CLKXOR2X2M U32 ( .A(N8), .B(edge_cont_ds[3]), .Y(n26) );
  NOR4X1M U33 ( .A(n29), .B(n28), .C(n27), .D(n26), .Y(N12) );
endmodule


module Start_check ( clk_start, rst_start, start_chk_en_start, 
        sampled_bit_start, start_error );
  input clk_start, rst_start, start_chk_en_start, sampled_bit_start;
  output start_error;
  wire   n1;

  DFFRQX2M start_error_reg ( .D(n1), .CK(clk_start), .RN(rst_start), .Q(
        start_error) );
  AO2B2X2M U2 ( .B0(start_chk_en_start), .B1(sampled_bit_start), .A0(
        start_error), .A1N(start_chk_en_start), .Y(n1) );
endmodule


module Stop_check ( clk_stop, rst_stop, stop_chk_en_stop, sampled_bit_stop, 
        stop_error );
  input clk_stop, rst_stop, stop_chk_en_stop, sampled_bit_stop;
  output stop_error;
  wire   N5;

  DFFRQX2M stop_error_reg ( .D(N5), .CK(clk_stop), .RN(rst_stop), .Q(
        stop_error) );
  NOR2BX2M U3 ( .AN(stop_chk_en_stop), .B(sampled_bit_stop), .Y(N5) );
endmodule


module parity_check_0_1_8 ( clk_parity, rst_parity, PAR_TYP, 
        parity_chk_en_parity, sampled_bit_parity, data_in_parity, parity_error
 );
  input [7:0] data_in_parity;
  input clk_parity, rst_parity, PAR_TYP, parity_chk_en_parity,
         sampled_bit_parity;
  output parity_error;
  wire   N10, n1, n2, n3, n4, n5, n6;

  DFFRQX2M parity_error_reg ( .D(N10), .CK(clk_parity), .RN(rst_parity), .Q(
        parity_error) );
  NOR2BX2M U3 ( .AN(parity_chk_en_parity), .B(n1), .Y(N10) );
  XOR3XLM U4 ( .A(n2), .B(n3), .C(n4), .Y(n1) );
  XNOR2X2M U5 ( .A(sampled_bit_parity), .B(PAR_TYP), .Y(n4) );
  XOR3XLM U6 ( .A(data_in_parity[5]), .B(data_in_parity[4]), .C(n5), .Y(n3) );
  XNOR2X2M U7 ( .A(data_in_parity[7]), .B(data_in_parity[6]), .Y(n5) );
  XOR3XLM U8 ( .A(data_in_parity[1]), .B(data_in_parity[0]), .C(n6), .Y(n2) );
  XNOR2X2M U9 ( .A(data_in_parity[3]), .B(data_in_parity[2]), .Y(n6) );
endmodule


module Data_Sampling_PRESCALE6 ( clk_ds, rst_ds, Data_sample_en, edge_cont_ds, 
        prescale_ds, data_in_ds, sampled_bit_ds );
  input [5:0] edge_cont_ds;
  input [5:0] prescale_ds;
  input clk_ds, rst_ds, Data_sample_en, data_in_ds;
  output sampled_bit_ds;
  wire   sample1_ds, sample2_ds, sample3_ds, N6, N7, N8, N9, N10, N11, N12,
         N15, N16, N17, N18, N19, N21, N23, N24, N25, N26, n24, n25, n26, n27,
         \add_45/carry[4] , \add_45/carry[3] , \add_42/carry[4] ,
         \add_42/carry[3] , \add_42/carry[2] , n1, n2, n3, n4, n5, n6, n7, n8,
         n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22,
         n23, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40,
         n41, n42, n43, n44, n45, n46, n47, n48, n49, n50;
  assign N21 = prescale_ds[1];

  DFFSQX2M sample2_ds_reg ( .D(n26), .CK(clk_ds), .SN(rst_ds), .Q(sample2_ds)
         );
  DFFSQX2M sample1_ds_reg ( .D(n25), .CK(clk_ds), .SN(rst_ds), .Q(sample1_ds)
         );
  DFFSQX2M sample3_ds_reg ( .D(n27), .CK(clk_ds), .SN(rst_ds), .Q(sample3_ds)
         );
  DFFSQX2M sampled_bit_ds_reg ( .D(n24), .CK(clk_ds), .SN(rst_ds), .Q(
        sampled_bit_ds) );
  XNOR2X2M U3 ( .A(n36), .B(prescale_ds[2]), .Y(n37) );
  OR2X2M U4 ( .A(prescale_ds[2]), .B(N21), .Y(n1) );
  ADDHX1M U5 ( .A(prescale_ds[4]), .B(\add_42/carry[3] ), .CO(
        \add_42/carry[4] ), .S(N17) );
  ADDHX1M U6 ( .A(prescale_ds[3]), .B(\add_42/carry[2] ), .CO(
        \add_42/carry[3] ), .S(N16) );
  ADDHX1M U7 ( .A(prescale_ds[2]), .B(N21), .CO(\add_42/carry[2] ), .S(N15) );
  ADDHX1M U8 ( .A(prescale_ds[5]), .B(\add_42/carry[4] ), .CO(N19), .S(N18) );
  AND2X1M U9 ( .A(\add_45/carry[4] ), .B(prescale_ds[5]), .Y(N26) );
  CLKXOR2X2M U10 ( .A(prescale_ds[5]), .B(\add_45/carry[4] ), .Y(N25) );
  AND2X1M U11 ( .A(\add_45/carry[3] ), .B(prescale_ds[4]), .Y(
        \add_45/carry[4] ) );
  CLKXOR2X2M U12 ( .A(prescale_ds[4]), .B(\add_45/carry[3] ), .Y(N24) );
  AND2X1M U13 ( .A(prescale_ds[2]), .B(prescale_ds[3]), .Y(\add_45/carry[3] )
         );
  CLKXOR2X2M U14 ( .A(prescale_ds[3]), .B(prescale_ds[2]), .Y(N23) );
  CLKINVX1M U15 ( .A(N21), .Y(N6) );
  OAI2BB1X1M U16 ( .A0N(N21), .A1N(prescale_ds[2]), .B0(n1), .Y(N7) );
  OR2X1M U17 ( .A(n1), .B(prescale_ds[3]), .Y(n2) );
  OAI2BB1X1M U18 ( .A0N(n1), .A1N(prescale_ds[3]), .B0(n2), .Y(N8) );
  XNOR2X1M U19 ( .A(prescale_ds[4]), .B(n2), .Y(N9) );
  NOR3X1M U20 ( .A(prescale_ds[4]), .B(prescale_ds[5]), .C(n2), .Y(N11) );
  OAI21X1M U21 ( .A0(prescale_ds[4]), .A1(n2), .B0(prescale_ds[5]), .Y(n3) );
  NAND2BX1M U22 ( .AN(N11), .B(n3), .Y(N10) );
  NOR2BX1M U23 ( .AN(edge_cont_ds[0]), .B(N6), .Y(n4) );
  OAI2B2X1M U24 ( .A1N(N7), .A0(n4), .B0(edge_cont_ds[1]), .B1(n4), .Y(n7) );
  NOR2BX1M U25 ( .AN(N6), .B(edge_cont_ds[0]), .Y(n5) );
  OAI2B2X1M U26 ( .A1N(edge_cont_ds[1]), .A0(n5), .B0(N7), .B1(n5), .Y(n6) );
  NAND4BBX1M U27 ( .AN(N11), .BN(edge_cont_ds[5]), .C(n7), .D(n6), .Y(n11) );
  CLKXOR2X2M U28 ( .A(N10), .B(edge_cont_ds[4]), .Y(n10) );
  CLKXOR2X2M U29 ( .A(N8), .B(edge_cont_ds[2]), .Y(n9) );
  CLKXOR2X2M U30 ( .A(N9), .B(edge_cont_ds[3]), .Y(n8) );
  NOR4X1M U31 ( .A(n11), .B(n10), .C(n9), .D(n8), .Y(N12) );
  CLKMX2X2M U32 ( .A(sample3_ds), .B(data_in_ds), .S0(n12), .Y(n27) );
  NOR2X1M U33 ( .A(n13), .B(n14), .Y(n12) );
  MXI2X1M U34 ( .A(n15), .B(n16), .S0(n17), .Y(n26) );
  NOR2BX1M U35 ( .AN(n18), .B(n19), .Y(n17) );
  MXI2X1M U36 ( .A(n20), .B(n16), .S0(n21), .Y(n25) );
  AND2X1M U37 ( .A(Data_sample_en), .B(N12), .Y(n21) );
  CLKINVX1M U38 ( .A(data_in_ds), .Y(n16) );
  CLKMX2X2M U39 ( .A(sampled_bit_ds), .B(n22), .S0(n23), .Y(n24) );
  NOR4BX1M U40 ( .AN(n14), .B(n28), .C(n29), .D(n13), .Y(n23) );
  CLKNAND2X2M U41 ( .A(n18), .B(n19), .Y(n13) );
  NAND4X1M U42 ( .A(n30), .B(n31), .C(n32), .D(n33), .Y(n19) );
  NOR3X1M U43 ( .A(n34), .B(edge_cont_ds[5]), .C(n35), .Y(n33) );
  CLKXOR2X2M U44 ( .A(N21), .B(edge_cont_ds[0]), .Y(n35) );
  CLKXOR2X2M U45 ( .A(prescale_ds[5]), .B(edge_cont_ds[4]), .Y(n34) );
  XNOR2X1M U46 ( .A(edge_cont_ds[2]), .B(prescale_ds[3]), .Y(n32) );
  XNOR2X1M U47 ( .A(edge_cont_ds[3]), .B(prescale_ds[4]), .Y(n31) );
  CLKXOR2X2M U48 ( .A(n36), .B(prescale_ds[2]), .Y(n30) );
  NOR2BX1M U49 ( .AN(Data_sample_en), .B(N12), .Y(n18) );
  CLKNAND2X2M U50 ( .A(n37), .B(n38), .Y(n29) );
  XNOR2X1M U51 ( .A(edge_cont_ds[0]), .B(N21), .Y(n38) );
  CLKINVX1M U52 ( .A(edge_cont_ds[1]), .Y(n36) );
  NAND4X1M U53 ( .A(n39), .B(n40), .C(n41), .D(n42), .Y(n28) );
  XNOR2X1M U54 ( .A(edge_cont_ds[2]), .B(N23), .Y(n42) );
  XNOR2X1M U55 ( .A(edge_cont_ds[3]), .B(N24), .Y(n41) );
  XNOR2X1M U56 ( .A(edge_cont_ds[4]), .B(N25), .Y(n40) );
  XNOR2X1M U57 ( .A(edge_cont_ds[5]), .B(N26), .Y(n39) );
  NAND4X1M U58 ( .A(n43), .B(n44), .C(n45), .D(n46), .Y(n14) );
  NOR3X1M U59 ( .A(n47), .B(n48), .C(n49), .Y(n46) );
  CLKXOR2X2M U60 ( .A(edge_cont_ds[4]), .B(N18), .Y(n49) );
  CLKXOR2X2M U61 ( .A(edge_cont_ds[1]), .B(N15), .Y(n48) );
  CLKXOR2X2M U62 ( .A(edge_cont_ds[0]), .B(N6), .Y(n47) );
  XNOR2X1M U63 ( .A(edge_cont_ds[2]), .B(N16), .Y(n45) );
  XNOR2X1M U64 ( .A(edge_cont_ds[3]), .B(N17), .Y(n44) );
  XNOR2X1M U65 ( .A(edge_cont_ds[5]), .B(N19), .Y(n43) );
  OAI21X1M U66 ( .A0(n15), .A1(n20), .B0(n50), .Y(n22) );
  OAI21X1M U67 ( .A0(sample1_ds), .A1(sample2_ds), .B0(sample3_ds), .Y(n50) );
  CLKINVX1M U68 ( .A(sample1_ds), .Y(n20) );
  CLKINVX1M U69 ( .A(sample2_ds), .Y(n15) );
endmodule


module UART_RX_8_6_0_1 ( i_Clk_RX, i_RST_RX, i_Serial_Data_RX, i_PAR_EN_RX, 
        i_PAR_TYP_RX, i_Prescale_RX, o_P_Data_RX, o_Data_Valid_RX, 
        o_Stop_Error_RX, o_Parity_Error_RX );
  input [5:0] i_Prescale_RX;
  output [7:0] o_P_Data_RX;
  input i_Clk_RX, i_RST_RX, i_Serial_Data_RX, i_PAR_EN_RX, i_PAR_TYP_RX;
  output o_Data_Valid_RX, o_Stop_Error_RX, o_Parity_Error_RX;
  wire   enable_cont, start_error, parity_chk_en, start_chk_en, stop_chk_en,
         deser_en, data_sampled_en, sampled_bit, n1, n2;
  wire   [3:0] bit_cont;
  wire   [5:0] edge_cont;

  edge_bit_cont_PRESCALE6_DATA_BITS8 edge_bit_counter ( .clk_cont(i_Clk_RX), 
        .rst_cont(n1), .Enable_sampling_cont(enable_cont), .prescale_cont(
        i_Prescale_RX), .parity_en_cont(i_PAR_EN_RX), .bit_cont(bit_cont), 
        .edge_cont(edge_cont) );
  FSM_RX_PRESCALE6_DATA_BITS8 fsm_rx ( .clk_fsm(i_Clk_RX), .rst_fsm(n1), 
        .data_in_fsm(i_Serial_Data_RX), .bit_cont_fsm(bit_cont), 
        .parity_en_fsm(i_PAR_EN_RX), .edge_cont_fsm(edge_cont), .prescale_fsm(
        i_Prescale_RX), .parity_err_fsm(o_Parity_Error_RX), .stop_err_fsm(
        o_Stop_Error_RX), .start_glitch_fsm(start_error), 
        .parity_check_en_fsm(parity_chk_en), .start_check_en_fsm(start_chk_en), 
        .stop_check_en_fsm(stop_chk_en), .deserializer_en_fsm(deser_en), 
        .data_valid_fsm(o_Data_Valid_RX), .Enable_sampling_fsm(enable_cont), 
        .Data_sample_en_fsm(data_sampled_en) );
  Deserializer_WIDTH8_PRESCALE6 deserializer ( .Clk_d(i_Clk_RX), .RST_d(n1), 
        .Serial_Data_d(sampled_bit), .deser_en_d(deser_en), .edge_cont_ds(
        edge_cont), .prescale_ds(i_Prescale_RX), .P_Data_d(o_P_Data_RX) );
  Start_check start_checker ( .clk_start(i_Clk_RX), .rst_start(n1), 
        .start_chk_en_start(start_chk_en), .sampled_bit_start(sampled_bit), 
        .start_error(start_error) );
  Stop_check stop_checker ( .clk_stop(i_Clk_RX), .rst_stop(n1), 
        .stop_chk_en_stop(stop_chk_en), .sampled_bit_stop(sampled_bit), 
        .stop_error(o_Stop_Error_RX) );
  parity_check_0_1_8 parity_checker ( .clk_parity(i_Clk_RX), .rst_parity(n1), 
        .PAR_TYP(i_PAR_TYP_RX), .parity_chk_en_parity(parity_chk_en), 
        .sampled_bit_parity(sampled_bit), .data_in_parity(o_P_Data_RX), 
        .parity_error(o_Parity_Error_RX) );
  Data_Sampling_PRESCALE6 data_sampler ( .clk_ds(i_Clk_RX), .rst_ds(n1), 
        .Data_sample_en(data_sampled_en), .edge_cont_ds(edge_cont), 
        .prescale_ds(i_Prescale_RX), .data_in_ds(i_Serial_Data_RX), 
        .sampled_bit_ds(sampled_bit) );
  INVX2M U1 ( .A(n2), .Y(n1) );
  INVX2M U2 ( .A(i_RST_RX), .Y(n2) );
endmodule


module UART_TOP_8_6_0_1_0_1 ( i_CLK_TX, i_CLK_RX, i_RST, i_DATA_Valid_TX, 
        i_DATA_TX, i_PAR_EN_TX, i_PAR_TYP_TX, i_Serial_Data_RX, i_PAR_EN_RX, 
        i_PAR_TYP_RX, i_Prescale_RX, o_OUT_TX, o_BUSY_TX, o_P_Data_RX, 
        o_Data_Valid_RX, o_Stop_Error_RX, o_Parity_Error_RX );
  input [7:0] i_DATA_TX;
  input [5:0] i_Prescale_RX;
  output [7:0] o_P_Data_RX;
  input i_CLK_TX, i_CLK_RX, i_RST, i_DATA_Valid_TX, i_PAR_EN_TX, i_PAR_TYP_TX,
         i_Serial_Data_RX, i_PAR_EN_RX, i_PAR_TYP_RX;
  output o_OUT_TX, o_BUSY_TX, o_Data_Valid_RX, o_Stop_Error_RX,
         o_Parity_Error_RX;
  wire   n1, n2;

  UART_TX_8_0_1 u_uart_tx ( .i_CLK_TX(i_CLK_TX), .i_RST_TX(n1), 
        .i_DATA_Valid_TX(i_DATA_Valid_TX), .i_DATA_TX(i_DATA_TX), 
        .i_PAR_EN_TX(i_PAR_EN_TX), .i_PAR_TYP_TX(i_PAR_TYP_TX), .o_OUT_TX(
        o_OUT_TX), .o_BUSY_TX(o_BUSY_TX) );
  UART_RX_8_6_0_1 u_uart_rx ( .i_Clk_RX(i_CLK_RX), .i_RST_RX(n1), 
        .i_Serial_Data_RX(i_Serial_Data_RX), .i_PAR_EN_RX(i_PAR_EN_RX), 
        .i_PAR_TYP_RX(i_PAR_TYP_RX), .i_Prescale_RX(i_Prescale_RX), 
        .o_P_Data_RX(o_P_Data_RX), .o_Data_Valid_RX(o_Data_Valid_RX), 
        .o_Stop_Error_RX(o_Stop_Error_RX), .o_Parity_Error_RX(
        o_Parity_Error_RX) );
  INVX2M U1 ( .A(n2), .Y(n1) );
  INVX2M U2 ( .A(i_RST), .Y(n2) );
endmodule


module SYS_CTRL_WIDTH8_ADDR4 ( CLK, RST_N, ALU_OUT, ALU_OUT_Valid, RD_DATA, 
        RD_DATA_VLD, FIFO_FULL, RX_DATA, RX_VLD, ALU_FUN, ALU_EN, CLKG_EN, 
        WR_EN, RD_EN, ADDR_S, WR_DATA_S, TX_P_DATA, TX_D_VLD, CLK_DIV_EN );
  input [15:0] ALU_OUT;
  input [7:0] RD_DATA;
  input [7:0] RX_DATA;
  output [3:0] ALU_FUN;
  output [3:0] ADDR_S;
  output [7:0] WR_DATA_S;
  output [7:0] TX_P_DATA;
  input CLK, RST_N, ALU_OUT_Valid, RD_DATA_VLD, FIFO_FULL, RX_VLD;
  output ALU_EN, CLKG_EN, WR_EN, RD_EN, TX_D_VLD, CLK_DIV_EN;
  wire   \byte_counter[0] , n14, n15, n16, n17, n19, n20, n31, n32, n33, n34,
         n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48,
         n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62,
         n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76,
         n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90,
         n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103,
         n104, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n18, n21, n22,
         n23, n24, n25, n26, n27, n28, n29, n30, n105, n106;
  wire   [3:0] current_state;
  wire   [3:0] next_state;
  wire   [15:0] reg_alu_out;

  DFFRQX2M \reg_alu_out_reg[1]  ( .D(n83), .CK(CLK), .RN(RST_N), .Q(
        reg_alu_out[1]) );
  DFFRQX2M \reg_alu_out_reg[2]  ( .D(n84), .CK(CLK), .RN(RST_N), .Q(
        reg_alu_out[2]) );
  DFFRQX2M \reg_alu_out_reg[3]  ( .D(n85), .CK(CLK), .RN(RST_N), .Q(
        reg_alu_out[3]) );
  DFFRQX2M \reg_alu_out_reg[4]  ( .D(n86), .CK(CLK), .RN(RST_N), .Q(
        reg_alu_out[4]) );
  DFFRQX2M \reg_alu_out_reg[5]  ( .D(n87), .CK(CLK), .RN(RST_N), .Q(
        reg_alu_out[5]) );
  DFFRQX2M \reg_alu_out_reg[6]  ( .D(n88), .CK(CLK), .RN(RST_N), .Q(
        reg_alu_out[6]) );
  DFFRQX2M \reg_alu_out_reg[7]  ( .D(n89), .CK(CLK), .RN(RST_N), .Q(
        reg_alu_out[7]) );
  DFFRQX2M \reg_alu_out_reg[0]  ( .D(n98), .CK(CLK), .RN(RST_N), .Q(
        reg_alu_out[0]) );
  DFFRQX2M \reg_alu_out_reg[8]  ( .D(n90), .CK(CLK), .RN(RST_N), .Q(
        reg_alu_out[8]) );
  DFFRQX2M \reg_alu_out_reg[9]  ( .D(n91), .CK(CLK), .RN(RST_N), .Q(
        reg_alu_out[9]) );
  DFFRQX2M \reg_alu_out_reg[10]  ( .D(n92), .CK(CLK), .RN(RST_N), .Q(
        reg_alu_out[10]) );
  DFFRQX2M \reg_alu_out_reg[11]  ( .D(n93), .CK(CLK), .RN(RST_N), .Q(
        reg_alu_out[11]) );
  DFFRQX2M \reg_alu_out_reg[12]  ( .D(n94), .CK(CLK), .RN(RST_N), .Q(
        reg_alu_out[12]) );
  DFFRQX2M \reg_alu_out_reg[13]  ( .D(n95), .CK(CLK), .RN(RST_N), .Q(
        reg_alu_out[13]) );
  DFFRQX2M \reg_alu_out_reg[14]  ( .D(n96), .CK(CLK), .RN(RST_N), .Q(
        reg_alu_out[14]) );
  DFFRQX2M \reg_alu_out_reg[15]  ( .D(n97), .CK(CLK), .RN(RST_N), .Q(
        reg_alu_out[15]) );
  DFFRQX2M \byte_counter_reg[0]  ( .D(n104), .CK(CLK), .RN(RST_N), .Q(
        \byte_counter[0] ) );
  DFFRX1M \byte_counter_reg[1]  ( .D(n103), .CK(CLK), .RN(RST_N), .QN(n20) );
  DFFRX1M \reg_addr_reg[2]  ( .D(n100), .CK(CLK), .RN(RST_N), .QN(n15) );
  DFFRX1M \reg_addr_reg[3]  ( .D(n101), .CK(CLK), .RN(RST_N), .QN(n14) );
  DFFRX1M \reg_addr_reg[0]  ( .D(n102), .CK(CLK), .RN(RST_N), .QN(n17) );
  DFFRX1M \reg_addr_reg[1]  ( .D(n99), .CK(CLK), .RN(RST_N), .QN(n16) );
  DFFRX1M reg_alu_saved_reg ( .D(n82), .CK(CLK), .RN(RST_N), .QN(n19) );
  DFFRQX2M \current_state_reg[2]  ( .D(next_state[2]), .CK(CLK), .RN(RST_N), 
        .Q(current_state[2]) );
  DFFRQX2M \current_state_reg[3]  ( .D(next_state[3]), .CK(CLK), .RN(RST_N), 
        .Q(current_state[3]) );
  DFFRQX2M \current_state_reg[0]  ( .D(next_state[0]), .CK(CLK), .RN(RST_N), 
        .Q(current_state[0]) );
  DFFRQX2M \current_state_reg[1]  ( .D(next_state[1]), .CK(CLK), .RN(RST_N), 
        .Q(current_state[1]) );
  INVX2M U3 ( .A(1'b0), .Y(CLK_DIV_EN) );
  OAI221X1M U5 ( .A0(n38), .A1(n17), .B0(n105), .B1(n10), .C0(n55), .Y(
        ADDR_S[0]) );
  NOR2X2M U6 ( .A(n80), .B(n29), .Y(ALU_FUN[2]) );
  NOR2X2M U7 ( .A(n80), .B(n105), .Y(ALU_FUN[0]) );
  OAI21BX1M U8 ( .A0(n48), .A1(n106), .B0N(n61), .Y(ALU_EN) );
  OAI22X1M U9 ( .A0(n30), .A1(n10), .B0(n38), .B1(n16), .Y(ADDR_S[1]) );
  OAI22X1M U10 ( .A0(n29), .A1(n10), .B0(n38), .B1(n15), .Y(ADDR_S[2]) );
  OAI22X1M U11 ( .A0(n28), .A1(n10), .B0(n38), .B1(n14), .Y(ADDR_S[3]) );
  INVX2M U12 ( .A(RD_EN), .Y(n10) );
  INVX2M U13 ( .A(n40), .Y(n6) );
  NAND2X2M U14 ( .A(n80), .B(n7), .Y(CLKG_EN) );
  INVX2M U15 ( .A(n45), .Y(n7) );
  INVX2M U16 ( .A(n64), .Y(n3) );
  NOR2X2M U17 ( .A(n46), .B(n106), .Y(RD_EN) );
  NOR2BX2M U18 ( .AN(n48), .B(n61), .Y(n80) );
  NOR2X2M U19 ( .A(n80), .B(n30), .Y(ALU_FUN[1]) );
  NOR2X2M U20 ( .A(n31), .B(n9), .Y(n45) );
  NAND3X2M U21 ( .A(n9), .B(n22), .C(n81), .Y(n38) );
  NAND2X2M U22 ( .A(n45), .B(n54), .Y(n79) );
  NAND2BX2M U23 ( .AN(n67), .B(n79), .Y(TX_D_VLD) );
  AND2X2M U24 ( .A(n66), .B(n9), .Y(n36) );
  AND3X2M U25 ( .A(n38), .B(n55), .C(n34), .Y(n65) );
  NOR2X2M U26 ( .A(n65), .B(n105), .Y(WR_DATA_S[0]) );
  NOR2X2M U27 ( .A(n65), .B(n30), .Y(WR_DATA_S[1]) );
  NOR2X2M U28 ( .A(n65), .B(n29), .Y(WR_DATA_S[2]) );
  NOR2X2M U29 ( .A(n65), .B(n28), .Y(WR_DATA_S[3]) );
  NOR2X2M U30 ( .A(n65), .B(n27), .Y(WR_DATA_S[4]) );
  NOR2X2M U31 ( .A(n65), .B(n26), .Y(WR_DATA_S[5]) );
  NOR2X2M U32 ( .A(n65), .B(n25), .Y(WR_DATA_S[6]) );
  NOR2X2M U33 ( .A(n79), .B(n78), .Y(n69) );
  NOR2BX2M U34 ( .AN(n78), .B(n79), .Y(n70) );
  NOR2X2M U35 ( .A(n65), .B(n106), .Y(WR_EN) );
  NAND4X2M U36 ( .A(n33), .B(n10), .C(n34), .D(n35), .Y(next_state[2]) );
  AOI211X2M U37 ( .A0(n36), .A1(n24), .B0(n37), .C0(n8), .Y(n35) );
  NOR2X2M U38 ( .A(n80), .B(n28), .Y(ALU_FUN[3]) );
  NOR3X2M U39 ( .A(n106), .B(n9), .C(n58), .Y(n40) );
  NOR2X2M U40 ( .A(n7), .B(n54), .Y(n64) );
  OAI21X2M U41 ( .A0(n9), .A1(n58), .B0(n34), .Y(n57) );
  OAI21BX1M U42 ( .A0(n31), .A1(n4), .B0N(ALU_EN), .Y(next_state[3]) );
  INVX2M U43 ( .A(n32), .Y(n4) );
  INVX2M U44 ( .A(n42), .Y(n13) );
  INVX2M U45 ( .A(n55), .Y(n8) );
  INVX2M U46 ( .A(n53), .Y(n21) );
  NOR2X2M U47 ( .A(n23), .B(current_state[3]), .Y(n81) );
  NAND3X2M U48 ( .A(n81), .B(n22), .C(current_state[0]), .Y(n46) );
  INVX2M U49 ( .A(current_state[1]), .Y(n23) );
  NOR3BX2M U50 ( .AN(n36), .B(FIFO_FULL), .C(n24), .Y(n67) );
  NOR3X2M U51 ( .A(current_state[1]), .B(current_state[3]), .C(n22), .Y(n66)
         );
  NOR2X2M U52 ( .A(n19), .B(FIFO_FULL), .Y(n54) );
  INVX2M U53 ( .A(current_state[0]), .Y(n9) );
  NAND3X2M U54 ( .A(n23), .B(n22), .C(current_state[3]), .Y(n31) );
  NAND3X2M U55 ( .A(current_state[0]), .B(n81), .C(current_state[2]), .Y(n48)
         );
  NAND3X2M U56 ( .A(n81), .B(n9), .C(current_state[2]), .Y(n55) );
  INVX2M U57 ( .A(RX_DATA[1]), .Y(n30) );
  INVX2M U58 ( .A(RX_VLD), .Y(n106) );
  INVX2M U59 ( .A(RX_DATA[0]), .Y(n105) );
  INVX2M U60 ( .A(current_state[2]), .Y(n22) );
  INVX2M U61 ( .A(RD_DATA_VLD), .Y(n24) );
  OAI22X1M U62 ( .A0(RX_VLD), .A1(n48), .B0(n49), .B1(n50), .Y(n37) );
  NAND3X2M U63 ( .A(RX_DATA[0]), .B(RX_DATA[6]), .C(RX_DATA[4]), .Y(n50) );
  NAND4X2M U64 ( .A(RX_DATA[2]), .B(n51), .C(n30), .D(n26), .Y(n49) );
  OAI211X2M U65 ( .A0(RX_VLD), .A1(n46), .B0(n47), .C0(n12), .Y(n41) );
  NAND4X2M U66 ( .A(n29), .B(n25), .C(RX_DATA[0]), .D(n52), .Y(n47) );
  INVX2M U67 ( .A(n37), .Y(n12) );
  NOR2X2M U68 ( .A(n27), .B(n53), .Y(n52) );
  NOR3X2M U69 ( .A(current_state[0]), .B(current_state[1]), .C(n58), .Y(n60)
         );
  NOR2BX2M U70 ( .AN(RX_DATA[7]), .B(n65), .Y(WR_DATA_S[7]) );
  NOR2X2M U71 ( .A(n31), .B(current_state[0]), .Y(n61) );
  OAI2BB1X2M U72 ( .A0N(RD_DATA[0]), .A1N(n67), .B0(n77), .Y(TX_P_DATA[0]) );
  AOI22X1M U73 ( .A0(n69), .A1(reg_alu_out[8]), .B0(n70), .B1(reg_alu_out[0]), 
        .Y(n77) );
  OAI2BB1X2M U74 ( .A0N(RD_DATA[1]), .A1N(n67), .B0(n76), .Y(TX_P_DATA[1]) );
  AOI22X1M U75 ( .A0(n69), .A1(reg_alu_out[9]), .B0(n70), .B1(reg_alu_out[1]), 
        .Y(n76) );
  OAI2BB1X2M U76 ( .A0N(RD_DATA[2]), .A1N(n67), .B0(n75), .Y(TX_P_DATA[2]) );
  AOI22X1M U77 ( .A0(n69), .A1(reg_alu_out[10]), .B0(n70), .B1(reg_alu_out[2]), 
        .Y(n75) );
  OAI2BB1X2M U78 ( .A0N(RD_DATA[3]), .A1N(n67), .B0(n74), .Y(TX_P_DATA[3]) );
  AOI22X1M U79 ( .A0(n69), .A1(reg_alu_out[11]), .B0(n70), .B1(reg_alu_out[3]), 
        .Y(n74) );
  OAI2BB1X2M U80 ( .A0N(RD_DATA[4]), .A1N(n67), .B0(n73), .Y(TX_P_DATA[4]) );
  AOI22X1M U81 ( .A0(n69), .A1(reg_alu_out[12]), .B0(n70), .B1(reg_alu_out[4]), 
        .Y(n73) );
  OAI2BB1X2M U82 ( .A0N(RD_DATA[5]), .A1N(n67), .B0(n72), .Y(TX_P_DATA[5]) );
  AOI22X1M U83 ( .A0(n69), .A1(reg_alu_out[13]), .B0(n70), .B1(reg_alu_out[5]), 
        .Y(n72) );
  OAI2BB1X2M U84 ( .A0N(RD_DATA[6]), .A1N(n67), .B0(n71), .Y(TX_P_DATA[6]) );
  AOI22X1M U85 ( .A0(n69), .A1(reg_alu_out[14]), .B0(n70), .B1(reg_alu_out[6]), 
        .Y(n71) );
  OAI2BB1X2M U86 ( .A0N(RD_DATA[7]), .A1N(n67), .B0(n68), .Y(TX_P_DATA[7]) );
  AOI22X1M U87 ( .A0(n69), .A1(reg_alu_out[15]), .B0(n70), .B1(reg_alu_out[7]), 
        .Y(n68) );
  AND4X2M U88 ( .A(RX_DATA[7]), .B(RX_DATA[3]), .C(n60), .D(RX_VLD), .Y(n51)
         );
  OAI211X2M U89 ( .A0(RX_VLD), .A1(n38), .B0(n11), .C0(n39), .Y(next_state[1])
         );
  AOI221XLM U90 ( .A0(n40), .A1(n23), .B0(n18), .B1(RX_VLD), .C0(n8), .Y(n39)
         );
  INVX2M U91 ( .A(n41), .Y(n11) );
  INVX2M U92 ( .A(n34), .Y(n18) );
  NAND2X2M U93 ( .A(n66), .B(current_state[0]), .Y(n34) );
  INVX2M U94 ( .A(RX_DATA[2]), .Y(n29) );
  NAND3X2M U95 ( .A(RX_DATA[1]), .B(n51), .C(RX_DATA[5]), .Y(n53) );
  OR2X2M U96 ( .A(current_state[3]), .B(current_state[2]), .Y(n58) );
  NAND4X2M U97 ( .A(n33), .B(n42), .C(n43), .D(n44), .Y(next_state[0]) );
  AOI32X1M U98 ( .A0(n21), .A1(n105), .A2(n56), .B0(n57), .B1(n106), .Y(n43)
         );
  AOI221XLM U99 ( .A0(n8), .A1(RX_VLD), .B0(n45), .B1(n32), .C0(n41), .Y(n44)
         );
  NOR3X2M U100 ( .A(RX_DATA[2]), .B(RX_DATA[6]), .C(RX_DATA[4]), .Y(n56) );
  INVX2M U101 ( .A(RX_DATA[3]), .Y(n28) );
  OAI32X1M U102 ( .A0(n7), .A1(\byte_counter[0] ), .A2(n64), .B0(n5), .B1(n3), 
        .Y(n104) );
  OAI32X1M U103 ( .A0(n62), .A1(n5), .A2(n7), .B0(n63), .B1(n20), .Y(n103) );
  NAND2X2M U104 ( .A(n3), .B(n20), .Y(n62) );
  AOI21X2M U105 ( .A0(n45), .A1(n5), .B0(n64), .Y(n63) );
  NAND2X2M U106 ( .A(ALU_OUT_Valid), .B(n61), .Y(n42) );
  OAI22X1M U107 ( .A0(n105), .A1(n6), .B0(n40), .B1(n17), .Y(n102) );
  OAI22X1M U108 ( .A0(n28), .A1(n6), .B0(n40), .B1(n14), .Y(n101) );
  OAI22X1M U109 ( .A0(n29), .A1(n6), .B0(n40), .B1(n15), .Y(n100) );
  OAI22X1M U110 ( .A0(n30), .A1(n6), .B0(n40), .B1(n16), .Y(n99) );
  NAND4X2M U111 ( .A(RX_DATA[2]), .B(n51), .C(RX_DATA[6]), .D(n59), .Y(n33) );
  NOR4X1M U112 ( .A(RX_DATA[5]), .B(RX_DATA[4]), .C(RX_DATA[1]), .D(RX_DATA[0]), .Y(n59) );
  NAND2X2M U113 ( .A(n20), .B(n5), .Y(n78) );
  NAND3X2M U114 ( .A(n54), .B(n20), .C(\byte_counter[0] ), .Y(n32) );
  OAI21X2M U115 ( .A0(n60), .A1(n19), .B0(n42), .Y(n82) );
  INVX2M U116 ( .A(RX_DATA[4]), .Y(n27) );
  INVX2M U117 ( .A(RX_DATA[6]), .Y(n25) );
  INVX2M U118 ( .A(RX_DATA[5]), .Y(n26) );
  INVX2M U119 ( .A(\byte_counter[0] ), .Y(n5) );
  AO22X1M U120 ( .A0(n42), .A1(reg_alu_out[0]), .B0(ALU_OUT[0]), .B1(n13), .Y(
        n98) );
  AO22X1M U121 ( .A0(n42), .A1(reg_alu_out[15]), .B0(ALU_OUT[15]), .B1(n13), 
        .Y(n97) );
  AO22X1M U122 ( .A0(n42), .A1(reg_alu_out[14]), .B0(ALU_OUT[14]), .B1(n13), 
        .Y(n96) );
  AO22X1M U123 ( .A0(n42), .A1(reg_alu_out[13]), .B0(ALU_OUT[13]), .B1(n13), 
        .Y(n95) );
  AO22X1M U124 ( .A0(n42), .A1(reg_alu_out[12]), .B0(ALU_OUT[12]), .B1(n13), 
        .Y(n94) );
  AO22X1M U125 ( .A0(n42), .A1(reg_alu_out[11]), .B0(ALU_OUT[11]), .B1(n13), 
        .Y(n93) );
  AO22X1M U126 ( .A0(n42), .A1(reg_alu_out[10]), .B0(ALU_OUT[10]), .B1(n13), 
        .Y(n92) );
  AO22X1M U127 ( .A0(n42), .A1(reg_alu_out[9]), .B0(ALU_OUT[9]), .B1(n13), .Y(
        n91) );
  AO22X1M U128 ( .A0(n42), .A1(reg_alu_out[8]), .B0(ALU_OUT[8]), .B1(n13), .Y(
        n90) );
  AO22X1M U129 ( .A0(n42), .A1(reg_alu_out[7]), .B0(ALU_OUT[7]), .B1(n13), .Y(
        n89) );
  AO22X1M U130 ( .A0(n42), .A1(reg_alu_out[6]), .B0(ALU_OUT[6]), .B1(n13), .Y(
        n88) );
  AO22X1M U131 ( .A0(n42), .A1(reg_alu_out[5]), .B0(ALU_OUT[5]), .B1(n13), .Y(
        n87) );
  AO22X1M U132 ( .A0(n42), .A1(reg_alu_out[4]), .B0(ALU_OUT[4]), .B1(n13), .Y(
        n86) );
  AO22X1M U133 ( .A0(n42), .A1(reg_alu_out[3]), .B0(ALU_OUT[3]), .B1(n13), .Y(
        n85) );
  AO22X1M U134 ( .A0(n42), .A1(reg_alu_out[2]), .B0(ALU_OUT[2]), .B1(n13), .Y(
        n84) );
  AO22X1M U135 ( .A0(n42), .A1(reg_alu_out[1]), .B0(ALU_OUT[1]), .B1(n13), .Y(
        n83) );
endmodule


module SYS_TOP ( REF_CLK, UART_CLK, RST, RX_IN, TX_OUT, PAR_ERR, STOP_ERR );
  input REF_CLK, UART_CLK, RST, RX_IN;
  output TX_OUT, PAR_ERR, STOP_ERR;
  wire   SYNC_REF_RST, SYNC_UART_RST, TX_CLK, RX_CLK, UART_TX_BUSY,
         UART_TX_BUSY_PULSE, CLK_GATE_EN, ALU_CLK, UART_RX_VALID,
         UART_RX_VALID_SYNC, WR_EN, RD_EN, RD_DATA_VALID, ALU_EN,
         ALU_OUT_VALID, UART_TX_VALID, FIFO_FULL, UART_TX_VALID_SYNC, n1, n2,
         n3, n4, n5;
  wire   [7:0] REG3_DIV_RATIO;
  wire   [7:0] PRESCALE_RX;
  wire   [7:0] REG2_UART_CONFIG;
  wire   [7:0] UART_RX_OUT;
  wire   [7:0] UART_RX_OUT_SYNC;
  wire   [7:0] WR_DATA;
  wire   [3:0] WR_ADDR;
  wire   [7:0] RD_DATA;
  wire   [7:0] REG0_A;
  wire   [7:0] REG1_B;
  wire   [3:0] ALU_FUN;
  wire   [15:0] ALU_RESULT;
  wire   [7:0] UART_TX_IN;
  wire   [7:0] UART_TX_IN_SYNC;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3;

  RST_SYNC_NUM_STAGES2_0 RST_SYNC_REF ( .CLK_Rsync(REF_CLK), .RST_Rsync(RST), 
        .SYNC_RST(SYNC_REF_RST) );
  RST_SYNC_NUM_STAGES2_1 RST_SYNC_UART ( .CLK_Rsync(UART_CLK), .RST_Rsync(RST), 
        .SYNC_RST(SYNC_UART_RST) );
  Clk_div_50_Div_Ratio8_0 CLK_DIV_TX ( .i_ref_clk(UART_CLK), .i_rst_n(n2), 
        .i_clk_en(1'b1), .i_div_ratio(REG3_DIV_RATIO), .o_div_clk(TX_CLK) );
  Clk_div_50_Div_Ratio8_1 CLK_DIV_RX ( .i_ref_clk(UART_CLK), .i_rst_n(n2), 
        .i_clk_en(1'b1), .i_div_ratio({1'b0, 1'b0, 1'b0, 1'b0, 
        PRESCALE_RX[3:0]}), .o_div_clk(RX_CLK) );
  CLK_DIV_MUX_WIDTH8 MUX_RX ( .IN(REG2_UART_CONFIG[7:2]), .OUT({
        SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, PRESCALE_RX[3:0]})
         );
  PULSE_GEN pulse_gen_busy ( .clk(TX_CLK), .rst(n2), .lvl_sig(UART_TX_BUSY), 
        .pulse_sig(UART_TX_BUSY_PULSE) );
  CLK_GATING U0_CLK_GATING ( .CLK(REF_CLK), .EN_CLK(CLK_GATE_EN), .CLK_GATED(
        ALU_CLK) );
  Data_SYNC_NUM_STAGES2_BUS_WIDTH8 D_SYNC ( .CLK(REF_CLK), .RST(n4), .ASYNC(
        UART_RX_OUT), .BUS_EN(UART_RX_VALID), .ENABLE_PULSE(UART_RX_VALID_SYNC), .SYNC_BUS(UART_RX_OUT_SYNC) );
  REG_file_WIDTH8_NO_OF_REG16_ADDR4 reg_file ( .CLK_regfile(REF_CLK), 
        .RST_regfile(n4), .WrData(WR_DATA), .Address(WR_ADDR), .WrEn(WR_EN), 
        .RdEn(RD_EN), .RdData(RD_DATA), .RdData_Valid(RD_DATA_VALID), .REG0(
        REG0_A), .REG1(REG1_B), .REG2(REG2_UART_CONFIG), .REG3(REG3_DIV_RATIO)
         );
  Alu_16_bit_OPER_WIDTH8_OUT_WIDTH16_ALU_FUN_WIDTH4 alu ( .CLK_alu(ALU_CLK), 
        .RST_alu(n4), .EN_alu(ALU_EN), .A(REG0_A), .B(REG1_B), .ALU_FUN(
        ALU_FUN), .ALU_OUT(ALU_RESULT), .OUT_VALID(ALU_OUT_VALID) );
  ASYNC_FIFO_DATASIZE8_ADDRSIZE4_DEPTHSIZE16 fifo_async ( .W_CLK(REF_CLK), 
        .W_RST_N(n4), .W_INC(UART_TX_VALID), .W_DATA(UART_TX_IN), .R_CLK(
        TX_CLK), .R_RST_N(n2), .R_INC(UART_TX_BUSY_PULSE), .W_FULL(FIFO_FULL), 
        .R_DATA(UART_TX_IN_SYNC), .R_EMPTY(UART_TX_VALID_SYNC) );
  UART_TOP_8_6_0_1_0_1 uart ( .i_CLK_TX(TX_CLK), .i_CLK_RX(RX_CLK), .i_RST(n2), 
        .i_DATA_Valid_TX(n1), .i_DATA_TX(UART_TX_IN_SYNC), .i_PAR_EN_TX(
        REG2_UART_CONFIG[0]), .i_PAR_TYP_TX(REG2_UART_CONFIG[1]), 
        .i_Serial_Data_RX(RX_IN), .i_PAR_EN_RX(REG2_UART_CONFIG[0]), 
        .i_PAR_TYP_RX(REG2_UART_CONFIG[1]), .i_Prescale_RX(
        REG2_UART_CONFIG[7:2]), .o_OUT_TX(TX_OUT), .o_BUSY_TX(UART_TX_BUSY), 
        .o_P_Data_RX(UART_RX_OUT), .o_Data_Valid_RX(UART_RX_VALID), 
        .o_Stop_Error_RX(STOP_ERR), .o_Parity_Error_RX(PAR_ERR) );
  SYS_CTRL_WIDTH8_ADDR4 control ( .CLK(REF_CLK), .RST_N(n4), .ALU_OUT(
        ALU_RESULT), .ALU_OUT_Valid(ALU_OUT_VALID), .RD_DATA(RD_DATA), 
        .RD_DATA_VLD(RD_DATA_VALID), .FIFO_FULL(FIFO_FULL), .RX_DATA(
        UART_RX_OUT_SYNC), .RX_VLD(UART_RX_VALID_SYNC), .ALU_FUN(ALU_FUN), 
        .ALU_EN(ALU_EN), .CLKG_EN(CLK_GATE_EN), .WR_EN(WR_EN), .RD_EN(RD_EN), 
        .ADDR_S(WR_ADDR), .WR_DATA_S(WR_DATA), .TX_P_DATA(UART_TX_IN), 
        .TX_D_VLD(UART_TX_VALID) );
  INVX2M U2 ( .A(n3), .Y(n2) );
  INVX2M U3 ( .A(UART_TX_VALID_SYNC), .Y(n1) );
  INVX4M U4 ( .A(n5), .Y(n4) );
  INVX2M U5 ( .A(SYNC_REF_RST), .Y(n5) );
  INVX2M U6 ( .A(SYNC_UART_RST), .Y(n3) );
endmodule

