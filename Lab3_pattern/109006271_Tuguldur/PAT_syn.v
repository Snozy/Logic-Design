/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : K-2015.06-SP1
// Date      : Sun May 30 21:54:47 2021
/////////////////////////////////////////////////////////////


module PAT ( clk, reset, data, flag );
  input clk, reset, data;
  output flag;
  wire   N13, N14, N15, N16, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12,
         n13, n14, n15, n16, n17, n18, n19;
  wire   [3:0] now;

  DFFQX1 \now_reg[0]  ( .D(N13), .CK(clk), .Q(now[0]) );
  DFFQX1 \now_reg[3]  ( .D(N16), .CK(clk), .Q(now[3]) );
  DFFQX1 \now_reg[1]  ( .D(N14), .CK(clk), .Q(now[1]) );
  DFFQX1 \now_reg[2]  ( .D(N15), .CK(clk), .Q(now[2]) );
  XNOR2X1 U27 ( .A(n5), .B(n4), .Y(n10) );
  OAI22XL U28 ( .A0(n4), .A1(n5), .B0(n10), .B1(n3), .Y(n7) );
  NOR3X1 U29 ( .A(n1), .B(n7), .C(n8), .Y(flag) );
  XNOR2X1 U30 ( .A(now[2]), .B(n10), .Y(n8) );
  CLKINVX1 U31 ( .A(now[0]), .Y(n5) );
  CLKINVX1 U32 ( .A(now[2]), .Y(n3) );
  CLKINVX1 U33 ( .A(now[1]), .Y(n4) );
  AND4X1 U34 ( .A(n7), .B(n8), .C(n9), .D(data), .Y(N16) );
  AO21X1 U35 ( .A0(n9), .A1(n14), .B0(n11), .Y(N14) );
  OAI31XL U36 ( .A0(n4), .A1(now[2]), .A2(now[0]), .B0(n16), .Y(n14) );
  OAI211X1 U37 ( .A0(now[2]), .A1(n6), .B0(n4), .C0(now[0]), .Y(n16) );
  AO21X1 U38 ( .A0(n2), .A1(n9), .B0(n11), .Y(N15) );
  CLKINVX1 U39 ( .A(n12), .Y(n2) );
  AOI33X1 U40 ( .A0(now[0]), .A1(n13), .A2(data), .B0(now[2]), .B1(n6), .B2(
        n10), .Y(n12) );
  XNOR2X1 U41 ( .A(n3), .B(now[1]), .Y(n13) );
  AOI31X1 U42 ( .A0(n17), .A1(n15), .A2(n18), .B0(reset), .Y(N13) );
  NAND3X1 U43 ( .A(n6), .B(n1), .C(n10), .Y(n18) );
  NAND3X1 U44 ( .A(n5), .B(n3), .C(n19), .Y(n17) );
  OAI32X1 U45 ( .A0(n6), .A1(now[3]), .A2(n4), .B0(now[1]), .B1(data), .Y(n19)
         );
  NAND4X1 U46 ( .A(now[2]), .B(now[1]), .C(n5), .D(n1), .Y(n15) );
  NOR3X1 U47 ( .A(reset), .B(n6), .C(n15), .Y(n11) );
  NOR2X1 U48 ( .A(now[3]), .B(reset), .Y(n9) );
  CLKINVX1 U49 ( .A(now[3]), .Y(n1) );
  CLKINVX1 U50 ( .A(data), .Y(n6) );
endmodule

