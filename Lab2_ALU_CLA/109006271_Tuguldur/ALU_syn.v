/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : K-2015.06-SP1
// Date      : Wed May  5 20:56:57 2021
/////////////////////////////////////////////////////////////


module CLA_4bit_0 ( A, B, Cin, S, Cout );
  input [3:0] A;
  input [3:0] B;
  output [3:0] S;
  input Cin;
  output Cout;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9;

  XOR2X1 U1 ( .A(n1), .B(n2), .Y(S[3]) );
  XOR2X1 U2 ( .A(n3), .B(n4), .Y(S[2]) );
  XOR2X1 U3 ( .A(n5), .B(n6), .Y(S[1]) );
  XOR2X1 U4 ( .A(Cin), .B(n7), .Y(S[0]) );
  OAI2BB2XL U5 ( .B0(n2), .B1(n1), .A0N(B[3]), .A1N(A[3]), .Y(Cout) );
  XNOR2X1 U6 ( .A(A[3]), .B(B[3]), .Y(n1) );
  OA21XL U7 ( .A0(n4), .A1(n3), .B0(n8), .Y(n2) );
  OAI21XL U8 ( .A0(B[2]), .A1(A[2]), .B0(n8), .Y(n3) );
  NAND2X1 U9 ( .A(B[2]), .B(A[2]), .Y(n8) );
  OA21XL U10 ( .A0(n6), .A1(n5), .B0(n9), .Y(n4) );
  OAI21XL U11 ( .A0(B[1]), .A1(A[1]), .B0(n9), .Y(n5) );
  NAND2X1 U12 ( .A(B[1]), .B(A[1]), .Y(n9) );
  AOI22X1 U13 ( .A0(n7), .A1(Cin), .B0(A[0]), .B1(B[0]), .Y(n6) );
  XOR2X1 U14 ( .A(A[0]), .B(B[0]), .Y(n7) );
endmodule


module CLA_4bit_7 ( A, B, Cin, S, Cout );
  input [3:0] A;
  input [3:0] B;
  output [3:0] S;
  input Cin;
  output Cout;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9;

  XOR2X1 U1 ( .A(n1), .B(n2), .Y(S[3]) );
  XOR2X1 U2 ( .A(n3), .B(n4), .Y(S[2]) );
  XOR2X1 U3 ( .A(n5), .B(n6), .Y(S[1]) );
  XOR2X1 U4 ( .A(Cin), .B(n7), .Y(S[0]) );
  OAI2BB2XL U5 ( .B0(n2), .B1(n1), .A0N(B[3]), .A1N(A[3]), .Y(Cout) );
  XNOR2X1 U6 ( .A(A[3]), .B(B[3]), .Y(n1) );
  OA21XL U7 ( .A0(n4), .A1(n3), .B0(n8), .Y(n2) );
  OAI21XL U8 ( .A0(B[2]), .A1(A[2]), .B0(n8), .Y(n3) );
  NAND2X1 U9 ( .A(B[2]), .B(A[2]), .Y(n8) );
  OA21XL U10 ( .A0(n6), .A1(n5), .B0(n9), .Y(n4) );
  OAI21XL U11 ( .A0(B[1]), .A1(A[1]), .B0(n9), .Y(n5) );
  NAND2X1 U12 ( .A(B[1]), .B(A[1]), .Y(n9) );
  AOI22X1 U13 ( .A0(n7), .A1(Cin), .B0(A[0]), .B1(B[0]), .Y(n6) );
  XOR2X1 U14 ( .A(A[0]), .B(B[0]), .Y(n7) );
endmodule


module CLA_4bit_6 ( A, B, Cin, S, Cout );
  input [3:0] A;
  input [3:0] B;
  output [3:0] S;
  input Cin;
  output Cout;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9;

  XOR2X1 U1 ( .A(n1), .B(n2), .Y(S[3]) );
  XOR2X1 U2 ( .A(n3), .B(n4), .Y(S[2]) );
  XOR2X1 U3 ( .A(n5), .B(n6), .Y(S[1]) );
  XOR2X1 U4 ( .A(Cin), .B(n7), .Y(S[0]) );
  OAI2BB2XL U5 ( .B0(n2), .B1(n1), .A0N(B[3]), .A1N(A[3]), .Y(Cout) );
  XNOR2X1 U6 ( .A(A[3]), .B(B[3]), .Y(n1) );
  OA21XL U7 ( .A0(n4), .A1(n3), .B0(n8), .Y(n2) );
  OAI21XL U8 ( .A0(B[2]), .A1(A[2]), .B0(n8), .Y(n3) );
  NAND2X1 U9 ( .A(B[2]), .B(A[2]), .Y(n8) );
  OA21XL U10 ( .A0(n6), .A1(n5), .B0(n9), .Y(n4) );
  OAI21XL U11 ( .A0(B[1]), .A1(A[1]), .B0(n9), .Y(n5) );
  NAND2X1 U12 ( .A(B[1]), .B(A[1]), .Y(n9) );
  AOI22X1 U13 ( .A0(n7), .A1(Cin), .B0(A[0]), .B1(B[0]), .Y(n6) );
  XOR2X1 U14 ( .A(A[0]), .B(B[0]), .Y(n7) );
endmodule


module CLA_4bit_5 ( A, B, Cin, S, Cout );
  input [3:0] A;
  input [3:0] B;
  output [3:0] S;
  input Cin;
  output Cout;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9;

  XOR2X1 U1 ( .A(n1), .B(n2), .Y(S[3]) );
  XOR2X1 U2 ( .A(n3), .B(n4), .Y(S[2]) );
  XOR2X1 U3 ( .A(n5), .B(n6), .Y(S[1]) );
  XOR2X1 U4 ( .A(Cin), .B(n7), .Y(S[0]) );
  OAI2BB2XL U5 ( .B0(n2), .B1(n1), .A0N(B[3]), .A1N(A[3]), .Y(Cout) );
  XNOR2X1 U6 ( .A(A[3]), .B(B[3]), .Y(n1) );
  OA21XL U7 ( .A0(n4), .A1(n3), .B0(n8), .Y(n2) );
  OAI21XL U8 ( .A0(B[2]), .A1(A[2]), .B0(n8), .Y(n3) );
  NAND2X1 U9 ( .A(B[2]), .B(A[2]), .Y(n8) );
  OA21XL U10 ( .A0(n6), .A1(n5), .B0(n9), .Y(n4) );
  OAI21XL U11 ( .A0(B[1]), .A1(A[1]), .B0(n9), .Y(n5) );
  NAND2X1 U12 ( .A(B[1]), .B(A[1]), .Y(n9) );
  AOI22X1 U13 ( .A0(n7), .A1(Cin), .B0(A[0]), .B1(B[0]), .Y(n6) );
  XOR2X1 U14 ( .A(A[0]), .B(B[0]), .Y(n7) );
endmodule


module Adder_16bit_0 ( A, B, Cin, S, Cout );
  input [15:0] A;
  input [15:0] B;
  output [15:0] S;
  input Cin;
  output Cout;
  wire   C4, C8, C12;

  CLA_4bit_0 cla0 ( .A(A[3:0]), .B(B[3:0]), .Cin(Cin), .S(S[3:0]), .Cout(C4)
         );
  CLA_4bit_7 cla1 ( .A(A[7:4]), .B(B[7:4]), .Cin(C4), .S(S[7:4]), .Cout(C8) );
  CLA_4bit_6 cla2 ( .A(A[11:8]), .B(B[11:8]), .Cin(C8), .S(S[11:8]), .Cout(C12) );
  CLA_4bit_5 cla3 ( .A(A[15:12]), .B(B[15:12]), .Cin(C12), .S(S[15:12]), 
        .Cout(Cout) );
endmodule


module CLA_4bit_4 ( A, B, Cin, S, Cout );
  input [3:0] A;
  input [3:0] B;
  output [3:0] S;
  input Cin;
  output Cout;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9;

  XOR2X1 U1 ( .A(n1), .B(n2), .Y(S[3]) );
  XOR2X1 U2 ( .A(n3), .B(n4), .Y(S[2]) );
  XOR2X1 U3 ( .A(n5), .B(n6), .Y(S[1]) );
  XOR2X1 U4 ( .A(Cin), .B(n7), .Y(S[0]) );
  OAI2BB2XL U5 ( .B0(n2), .B1(n1), .A0N(B[3]), .A1N(A[3]), .Y(Cout) );
  XNOR2X1 U6 ( .A(A[3]), .B(B[3]), .Y(n1) );
  OA21XL U7 ( .A0(n4), .A1(n3), .B0(n8), .Y(n2) );
  OAI21XL U8 ( .A0(B[2]), .A1(A[2]), .B0(n8), .Y(n3) );
  NAND2X1 U9 ( .A(B[2]), .B(A[2]), .Y(n8) );
  OA21XL U10 ( .A0(n6), .A1(n5), .B0(n9), .Y(n4) );
  OAI21XL U11 ( .A0(B[1]), .A1(A[1]), .B0(n9), .Y(n5) );
  NAND2X1 U12 ( .A(B[1]), .B(A[1]), .Y(n9) );
  AOI22X1 U13 ( .A0(n7), .A1(Cin), .B0(A[0]), .B1(B[0]), .Y(n6) );
  XOR2X1 U14 ( .A(A[0]), .B(B[0]), .Y(n7) );
endmodule


module CLA_4bit_3 ( A, B, Cin, S, Cout );
  input [3:0] A;
  input [3:0] B;
  output [3:0] S;
  input Cin;
  output Cout;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9;

  XOR2X1 U1 ( .A(n1), .B(n2), .Y(S[3]) );
  XOR2X1 U2 ( .A(n3), .B(n4), .Y(S[2]) );
  XOR2X1 U3 ( .A(n5), .B(n6), .Y(S[1]) );
  XOR2X1 U4 ( .A(Cin), .B(n7), .Y(S[0]) );
  OAI2BB2XL U5 ( .B0(n2), .B1(n1), .A0N(B[3]), .A1N(A[3]), .Y(Cout) );
  XNOR2X1 U6 ( .A(A[3]), .B(B[3]), .Y(n1) );
  OA21XL U7 ( .A0(n4), .A1(n3), .B0(n8), .Y(n2) );
  OAI21XL U8 ( .A0(B[2]), .A1(A[2]), .B0(n8), .Y(n3) );
  NAND2X1 U9 ( .A(B[2]), .B(A[2]), .Y(n8) );
  OA21XL U10 ( .A0(n6), .A1(n5), .B0(n9), .Y(n4) );
  OAI21XL U11 ( .A0(B[1]), .A1(A[1]), .B0(n9), .Y(n5) );
  NAND2X1 U12 ( .A(B[1]), .B(A[1]), .Y(n9) );
  AOI22X1 U13 ( .A0(n7), .A1(Cin), .B0(A[0]), .B1(B[0]), .Y(n6) );
  XOR2X1 U14 ( .A(A[0]), .B(B[0]), .Y(n7) );
endmodule


module CLA_4bit_2 ( A, B, Cin, S, Cout );
  input [3:0] A;
  input [3:0] B;
  output [3:0] S;
  input Cin;
  output Cout;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9;

  XOR2X1 U1 ( .A(n1), .B(n2), .Y(S[3]) );
  XOR2X1 U2 ( .A(n3), .B(n4), .Y(S[2]) );
  XOR2X1 U3 ( .A(n5), .B(n6), .Y(S[1]) );
  XOR2X1 U4 ( .A(Cin), .B(n7), .Y(S[0]) );
  OAI2BB2XL U5 ( .B0(n2), .B1(n1), .A0N(B[3]), .A1N(A[3]), .Y(Cout) );
  XNOR2X1 U6 ( .A(A[3]), .B(B[3]), .Y(n1) );
  OA21XL U7 ( .A0(n4), .A1(n3), .B0(n8), .Y(n2) );
  OAI21XL U8 ( .A0(B[2]), .A1(A[2]), .B0(n8), .Y(n3) );
  NAND2X1 U9 ( .A(B[2]), .B(A[2]), .Y(n8) );
  OA21XL U10 ( .A0(n6), .A1(n5), .B0(n9), .Y(n4) );
  OAI21XL U11 ( .A0(B[1]), .A1(A[1]), .B0(n9), .Y(n5) );
  NAND2X1 U12 ( .A(B[1]), .B(A[1]), .Y(n9) );
  AOI22X1 U13 ( .A0(n7), .A1(Cin), .B0(A[0]), .B1(B[0]), .Y(n6) );
  XOR2X1 U14 ( .A(A[0]), .B(B[0]), .Y(n7) );
endmodule


module CLA_4bit_1 ( A, B, Cin, S, Cout );
  input [3:0] A;
  input [3:0] B;
  output [3:0] S;
  input Cin;
  output Cout;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9;

  XOR2X1 U1 ( .A(n1), .B(n2), .Y(S[3]) );
  XOR2X1 U2 ( .A(n3), .B(n4), .Y(S[2]) );
  XOR2X1 U3 ( .A(n5), .B(n6), .Y(S[1]) );
  XOR2X1 U4 ( .A(Cin), .B(n7), .Y(S[0]) );
  OAI2BB2XL U5 ( .B0(n2), .B1(n1), .A0N(B[3]), .A1N(A[3]), .Y(Cout) );
  XNOR2X1 U6 ( .A(A[3]), .B(B[3]), .Y(n1) );
  OA21XL U7 ( .A0(n4), .A1(n3), .B0(n8), .Y(n2) );
  OAI21XL U8 ( .A0(B[2]), .A1(A[2]), .B0(n8), .Y(n3) );
  NAND2X1 U9 ( .A(B[2]), .B(A[2]), .Y(n8) );
  OA21XL U10 ( .A0(n6), .A1(n5), .B0(n9), .Y(n4) );
  OAI21XL U11 ( .A0(B[1]), .A1(A[1]), .B0(n9), .Y(n5) );
  NAND2X1 U12 ( .A(B[1]), .B(A[1]), .Y(n9) );
  AOI22X1 U13 ( .A0(n7), .A1(Cin), .B0(A[0]), .B1(B[0]), .Y(n6) );
  XOR2X1 U14 ( .A(A[0]), .B(B[0]), .Y(n7) );
endmodule


module Adder_16bit_1 ( A, B, Cin, S, Cout );
  input [15:0] A;
  input [15:0] B;
  output [15:0] S;
  input Cin;
  output Cout;
  wire   C4, C8, C12;

  CLA_4bit_4 cla0 ( .A(A[3:0]), .B(B[3:0]), .Cin(Cin), .S(S[3:0]), .Cout(C4)
         );
  CLA_4bit_3 cla1 ( .A(A[7:4]), .B(B[7:4]), .Cin(C4), .S(S[7:4]), .Cout(C8) );
  CLA_4bit_2 cla2 ( .A(A[11:8]), .B(B[11:8]), .Cin(C8), .S(S[11:8]), .Cout(C12) );
  CLA_4bit_1 cla3 ( .A(A[15:12]), .B(B[15:12]), .Cin(C12), .S(S[15:12]), 
        .Cout(Cout) );
endmodule


module ALU ( A, B, Cin, Mode, Y, Cout, Overflow );
  input [15:0] A;
  input [15:0] B;
  input [3:0] Mode;
  output [15:0] Y;
  input Cin;
  output Cout, Overflow;
  wire   CoutSum, \_0_net_[15] , \_0_net_[14] , \_0_net_[13] , \_0_net_[12] ,
         \_0_net_[11] , \_0_net_[10] , \_0_net_[9] , \_0_net_[8] ,
         \_0_net_[7] , \_0_net_[6] , \_0_net_[5] , \_0_net_[4] , \_0_net_[3] ,
         \_0_net_[2] , \_0_net_[1] , \_0_net_[0] , CoutSub, N366, N367, N368,
         N369, N370, N371, N372, N373, N374, N375, N376, N377, N378, N379,
         N380, N381, N382, N383, N384, n198, n199, n200, n201, n202, n203,
         n204, n205, n206, n207, n208, n209, n210, n211, n212, n213, n214,
         n215, n216, n217, n218, n219, n220, n221, n222, n223, n224, n225,
         n226, n227, n228, n229, n230, n231, n232, n233, n234, n235, n236,
         n237, n238, n239, n240, n241, n242, n243, n244, n245, n246, n247,
         n248, n249, n250, n251, n252, n253, n254, n255, n256, n257, n258,
         n259, n260, n261, n262, n263, n264, n265, n266, n267, n268, n269,
         n270, n271, n272, n273, n274, n275, n276, n277, n278, n279, n280,
         n281, n282, n283, n284, n285, n286, n287, n288, n289, n290, n291,
         n292, n293, n294, n295, n296, n297, n298, n299, n300, n301, n302,
         n303, n304, n305, n306, n307, n308, n309, n310, n311, n312, n313,
         n314, n315, n316, n317, n318, n319, n320, n321, n322, n323, n324,
         n325, n326, n327, n328, n329, n330, n331, n332, n333, n334, n335,
         n336, n337, n338, n339, n340, n341, n342, n343, n344, n345, n346,
         n347, n348, n349, n350, n351, n352, n353, n354, n355, n356, n357,
         n358, n359, n360, n361, n362, n363, n364, n365, n366, n367, n368,
         n369, n370, n371, n372, n373, n374, n375, n376, n377, n378, n379,
         n380, n381, n382, n383, n384, n385, n386, n387, n388, n389, n390,
         n391, n392, n393, n394, n395, n396, n397, n398, n399, n400, n401,
         n402, n403, n404, n405, n406, n407, n408, n409, n410, n411, n412,
         n413;
  wire   [15:0] Sum;
  wire   [15:0] Sub;
  assign \_0_net_[0]  = B[0];

  Adder_16bit_0 Add_AB ( .A(A), .B({B[15:1], \_0_net_[0] }), .Cin(Cin), .S(Sum), .Cout(CoutSum) );
  Adder_16bit_1 Min_AB ( .A(A), .B({\_0_net_[15] , \_0_net_[14] , 
        \_0_net_[13] , \_0_net_[12] , \_0_net_[11] , \_0_net_[10] , 
        \_0_net_[9] , \_0_net_[8] , \_0_net_[7] , \_0_net_[6] , \_0_net_[5] , 
        \_0_net_[4] , \_0_net_[3] , \_0_net_[2] , \_0_net_[1] , \_0_net_[0] }), 
        .Cin(Cin), .S(Sub), .Cout(CoutSub) );
  TLATX1 Cout_reg ( .G(N383), .D(N384), .Q(Cout) );
  TLATX1 \Y_reg[15]  ( .G(N366), .D(N382), .Q(Y[15]) );
  TLATX1 \Y_reg[14]  ( .G(N366), .D(N381), .Q(Y[14]) );
  TLATX1 \Y_reg[13]  ( .G(N366), .D(N380), .Q(Y[13]) );
  TLATX1 \Y_reg[12]  ( .G(N366), .D(N379), .Q(Y[12]) );
  TLATX1 \Y_reg[11]  ( .G(N366), .D(N378), .Q(Y[11]) );
  TLATX1 \Y_reg[10]  ( .G(N366), .D(N377), .Q(Y[10]) );
  TLATX1 \Y_reg[9]  ( .G(N366), .D(N376), .Q(Y[9]) );
  TLATX1 \Y_reg[8]  ( .G(N366), .D(N375), .Q(Y[8]) );
  TLATX1 \Y_reg[7]  ( .G(N366), .D(N374), .Q(Y[7]) );
  TLATX1 \Y_reg[6]  ( .G(N366), .D(N373), .Q(Y[6]) );
  TLATX1 \Y_reg[5]  ( .G(N366), .D(N372), .Q(Y[5]) );
  TLATX1 \Y_reg[4]  ( .G(N366), .D(N371), .Q(Y[4]) );
  TLATX1 \Y_reg[3]  ( .G(N366), .D(N370), .Q(Y[3]) );
  TLATX1 \Y_reg[2]  ( .G(N366), .D(N369), .Q(Y[2]) );
  TLATX1 \Y_reg[1]  ( .G(N366), .D(N368), .Q(Y[1]) );
  TLATX1 \Y_reg[0]  ( .G(N366), .D(N367), .Q(Y[0]) );
  XNOR2X1 U219 ( .A(n198), .B(B[9]), .Y(\_0_net_[9] ) );
  XOR2X1 U220 ( .A(n199), .B(B[8]), .Y(\_0_net_[8] ) );
  NAND2BX1 U221 ( .AN(B[7]), .B(n200), .Y(n199) );
  XNOR2X1 U222 ( .A(n200), .B(B[7]), .Y(\_0_net_[7] ) );
  XOR2X1 U223 ( .A(n201), .B(B[6]), .Y(\_0_net_[6] ) );
  NAND2BX1 U224 ( .AN(B[5]), .B(n202), .Y(n201) );
  XNOR2X1 U225 ( .A(n202), .B(B[5]), .Y(\_0_net_[5] ) );
  XOR2X1 U226 ( .A(n203), .B(B[4]), .Y(\_0_net_[4] ) );
  NAND2X1 U227 ( .A(n204), .B(n205), .Y(n203) );
  XNOR2X1 U228 ( .A(n204), .B(B[3]), .Y(\_0_net_[3] ) );
  XNOR2X1 U229 ( .A(B[2]), .B(n206), .Y(\_0_net_[2] ) );
  NOR2X1 U230 ( .A(B[1]), .B(\_0_net_[0] ), .Y(n206) );
  XOR2X1 U231 ( .A(\_0_net_[0] ), .B(B[1]), .Y(\_0_net_[1] ) );
  XOR2X1 U232 ( .A(n207), .B(B[15]), .Y(\_0_net_[15] ) );
  NAND2BX1 U233 ( .AN(B[14]), .B(n208), .Y(n207) );
  XNOR2X1 U234 ( .A(n208), .B(B[14]), .Y(\_0_net_[14] ) );
  NOR2BX1 U235 ( .AN(n209), .B(B[13]), .Y(n208) );
  XNOR2X1 U236 ( .A(n209), .B(B[13]), .Y(\_0_net_[13] ) );
  NOR3BXL U237 ( .AN(n210), .B(B[11]), .C(B[12]), .Y(n209) );
  XOR2X1 U238 ( .A(n211), .B(B[12]), .Y(\_0_net_[12] ) );
  NAND2BX1 U239 ( .AN(B[11]), .B(n210), .Y(n211) );
  XNOR2X1 U240 ( .A(n210), .B(B[11]), .Y(\_0_net_[11] ) );
  NOR3BXL U241 ( .AN(n198), .B(B[10]), .C(B[9]), .Y(n210) );
  XOR2X1 U242 ( .A(n212), .B(B[10]), .Y(\_0_net_[10] ) );
  NAND2BX1 U243 ( .AN(B[9]), .B(n198), .Y(n212) );
  NOR3BXL U244 ( .AN(n200), .B(B[7]), .C(B[8]), .Y(n198) );
  NOR3BXL U245 ( .AN(n202), .B(B[5]), .C(B[6]), .Y(n200) );
  NOR3BXL U246 ( .AN(n204), .B(B[3]), .C(B[4]), .Y(n202) );
  NOR3X1 U247 ( .A(B[2]), .B(\_0_net_[0] ), .C(B[1]), .Y(n204) );
  MX4X1 U248 ( .A(n213), .B(n214), .C(n215), .D(n216), .S0(B[15]), .S1(n217), 
        .Y(Overflow) );
  NOR2X1 U249 ( .A(n218), .B(n219), .Y(n216) );
  AND2X1 U250 ( .A(n220), .B(Sum[15]), .Y(n215) );
  NOR2BX1 U251 ( .AN(n220), .B(Sum[15]), .Y(n214) );
  NOR2X1 U252 ( .A(Sub[15]), .B(n218), .Y(n213) );
  AO22X1 U253 ( .A0(CoutSub), .A1(n221), .B0(CoutSum), .B1(n220), .Y(N384) );
  NAND2X1 U254 ( .A(n222), .B(n223), .Y(N383) );
  OR4X1 U255 ( .A(n224), .B(n225), .C(n226), .D(n227), .Y(N382) );
  AO22X1 U256 ( .A0(n220), .A1(Sum[15]), .B0(n228), .B1(A[14]), .Y(n227) );
  OAI32X1 U257 ( .A0(n229), .A1(n230), .A2(n231), .B0(n232), .B1(n233), .Y(
        n226) );
  OAI21XL U258 ( .A0(n218), .A1(n219), .B0(n234), .Y(n225) );
  CLKMX2X2 U259 ( .A(n235), .B(n236), .S0(A[15]), .Y(n234) );
  CLKINVX1 U260 ( .A(Sub[15]), .Y(n219) );
  CLKINVX1 U261 ( .A(n221), .Y(n218) );
  MX3XL U262 ( .A(n237), .B(n238), .C(n239), .S0(n217), .S1(B[15]), .Y(n224)
         );
  NAND2X1 U263 ( .A(n240), .B(n241), .Y(n239) );
  MXI2X1 U264 ( .A(n242), .B(n237), .S0(n217), .Y(n240) );
  NAND2X1 U265 ( .A(n243), .B(n244), .Y(N381) );
  AOI221XL U266 ( .A0(Sum[14]), .A1(n220), .B0(A[13]), .B1(n228), .C0(n245), 
        .Y(n244) );
  OAI22XL U267 ( .A0(n217), .A1(n233), .B0(n230), .B1(n246), .Y(n245) );
  AOI211X1 U268 ( .A0(Sub[14]), .A1(n221), .B0(n247), .C0(n248), .Y(n243) );
  MXI2X1 U269 ( .A(n236), .B(n235), .S0(n249), .Y(n248) );
  MX3XL U270 ( .A(n237), .B(n238), .C(n250), .S0(n249), .S1(B[14]), .Y(n247)
         );
  NAND2X1 U271 ( .A(n251), .B(n241), .Y(n250) );
  MXI2X1 U272 ( .A(n242), .B(n237), .S0(n249), .Y(n251) );
  NAND2X1 U273 ( .A(n252), .B(n253), .Y(N380) );
  AOI221XL U274 ( .A0(Sum[13]), .A1(n220), .B0(A[12]), .B1(n228), .C0(n254), 
        .Y(n253) );
  OAI32X1 U275 ( .A0(n231), .A1(A[1]), .A2(n230), .B0(n233), .B1(n249), .Y(
        n254) );
  AOI211X1 U276 ( .A0(Sub[13]), .A1(n221), .B0(n255), .C0(n256), .Y(n252) );
  MXI2X1 U277 ( .A(n236), .B(n235), .S0(n257), .Y(n256) );
  MX3XL U278 ( .A(n237), .B(n238), .C(n258), .S0(n257), .S1(B[13]), .Y(n255)
         );
  NAND2X1 U279 ( .A(n259), .B(n241), .Y(n258) );
  MXI2X1 U280 ( .A(n242), .B(n237), .S0(n257), .Y(n259) );
  NAND2X1 U281 ( .A(n260), .B(n261), .Y(N379) );
  AOI221XL U282 ( .A0(Sum[12]), .A1(n220), .B0(A[11]), .B1(n228), .C0(n262), 
        .Y(n261) );
  OAI32X1 U283 ( .A0(n230), .A1(A[1]), .A2(A[0]), .B0(n233), .B1(n257), .Y(
        n262) );
  CLKINVX1 U284 ( .A(A[13]), .Y(n257) );
  NAND2X1 U285 ( .A(A[2]), .B(n263), .Y(n230) );
  AOI211X1 U286 ( .A0(Sub[12]), .A1(n221), .B0(n264), .C0(n265), .Y(n260) );
  MXI2X1 U287 ( .A(n236), .B(n235), .S0(n266), .Y(n265) );
  MX3XL U288 ( .A(n237), .B(n238), .C(n267), .S0(n266), .S1(B[12]), .Y(n264)
         );
  NAND2X1 U289 ( .A(n268), .B(n241), .Y(n267) );
  MXI2X1 U290 ( .A(n242), .B(n237), .S0(n266), .Y(n268) );
  NAND2X1 U291 ( .A(n269), .B(n270), .Y(N378) );
  AOI221XL U292 ( .A0(Sum[11]), .A1(n220), .B0(A[10]), .B1(n228), .C0(n271), 
        .Y(n270) );
  OAI32X1 U293 ( .A0(n272), .A1(n273), .A2(n231), .B0(n233), .B1(n266), .Y(
        n271) );
  CLKINVX1 U294 ( .A(A[12]), .Y(n266) );
  AOI211X1 U295 ( .A0(Sub[11]), .A1(n221), .B0(n274), .C0(n275), .Y(n269) );
  MXI2X1 U296 ( .A(n236), .B(n235), .S0(n276), .Y(n275) );
  MX3XL U297 ( .A(n237), .B(n238), .C(n277), .S0(n276), .S1(B[11]), .Y(n274)
         );
  NAND2X1 U298 ( .A(n278), .B(n241), .Y(n277) );
  MXI2X1 U299 ( .A(n242), .B(n237), .S0(n276), .Y(n278) );
  NAND2X1 U300 ( .A(n279), .B(n280), .Y(N377) );
  AOI221XL U301 ( .A0(Sum[10]), .A1(n220), .B0(A[9]), .B1(n228), .C0(n281), 
        .Y(n280) );
  OAI32X1 U302 ( .A0(n272), .A1(A[0]), .A2(n273), .B0(n233), .B1(n276), .Y(
        n281) );
  CLKINVX1 U303 ( .A(n263), .Y(n273) );
  AOI211X1 U304 ( .A0(Sub[10]), .A1(n221), .B0(n282), .C0(n283), .Y(n279) );
  MXI2X1 U305 ( .A(n236), .B(n235), .S0(n284), .Y(n283) );
  MX3XL U306 ( .A(n237), .B(n238), .C(n285), .S0(n284), .S1(B[10]), .Y(n282)
         );
  NAND2X1 U307 ( .A(n286), .B(n241), .Y(n285) );
  MXI2X1 U308 ( .A(n242), .B(n237), .S0(n284), .Y(n286) );
  NAND2X1 U309 ( .A(n287), .B(n288), .Y(N376) );
  AOI221XL U310 ( .A0(Sum[9]), .A1(n220), .B0(A[8]), .B1(n228), .C0(n289), .Y(
        n288) );
  OAI22XL U311 ( .A0(n233), .A1(n284), .B0(n231), .B1(n290), .Y(n289) );
  AOI211X1 U312 ( .A0(Sub[9]), .A1(n221), .B0(n291), .C0(n292), .Y(n287) );
  MXI2X1 U313 ( .A(n236), .B(n235), .S0(n293), .Y(n292) );
  MX3XL U314 ( .A(n237), .B(n238), .C(n294), .S0(n293), .S1(B[9]), .Y(n291) );
  NAND2X1 U315 ( .A(n295), .B(n241), .Y(n294) );
  MXI2X1 U316 ( .A(n242), .B(n237), .S0(n293), .Y(n295) );
  NAND2X1 U317 ( .A(n296), .B(n297), .Y(N375) );
  AOI221XL U318 ( .A0(Sum[8]), .A1(n220), .B0(A[7]), .B1(n228), .C0(n298), .Y(
        n297) );
  OAI22XL U319 ( .A0(n233), .A1(n293), .B0(A[0]), .B1(n290), .Y(n298) );
  NAND3X1 U320 ( .A(n229), .B(n299), .C(n263), .Y(n290) );
  NOR2X1 U321 ( .A(n300), .B(n301), .Y(n263) );
  CLKINVX1 U322 ( .A(A[9]), .Y(n293) );
  AOI211X1 U323 ( .A0(Sub[8]), .A1(n221), .B0(n302), .C0(n303), .Y(n296) );
  MXI2X1 U324 ( .A(n236), .B(n235), .S0(n304), .Y(n303) );
  MX3XL U325 ( .A(n237), .B(n238), .C(n305), .S0(n304), .S1(B[8]), .Y(n302) );
  NAND2X1 U326 ( .A(n306), .B(n241), .Y(n305) );
  MXI2X1 U327 ( .A(n242), .B(n237), .S0(n304), .Y(n306) );
  NAND2X1 U328 ( .A(n307), .B(n308), .Y(N374) );
  AOI221XL U329 ( .A0(Sum[7]), .A1(n220), .B0(A[6]), .B1(n228), .C0(n309), .Y(
        n308) );
  OAI32X1 U330 ( .A0(n310), .A1(n231), .A2(n229), .B0(n233), .B1(n304), .Y(
        n309) );
  CLKINVX1 U331 ( .A(A[8]), .Y(n304) );
  AOI211X1 U332 ( .A0(Sub[7]), .A1(n221), .B0(n311), .C0(n312), .Y(n307) );
  MXI2X1 U333 ( .A(n235), .B(n236), .S0(A[7]), .Y(n312) );
  MX3XL U334 ( .A(n238), .B(n237), .C(n313), .S0(A[7]), .S1(B[7]), .Y(n311) );
  NAND2X1 U335 ( .A(n314), .B(n241), .Y(n313) );
  MXI2X1 U336 ( .A(n237), .B(n242), .S0(A[7]), .Y(n314) );
  NAND2X1 U337 ( .A(n315), .B(n316), .Y(N373) );
  AOI221XL U338 ( .A0(Sum[6]), .A1(n220), .B0(A[5]), .B1(n228), .C0(n317), .Y(
        n316) );
  OAI2BB2XL U339 ( .B0(n246), .B1(n310), .A0N(n318), .A1N(A[7]), .Y(n317) );
  AOI211X1 U340 ( .A0(Sub[6]), .A1(n221), .B0(n319), .C0(n320), .Y(n315) );
  MXI2X1 U341 ( .A(n236), .B(n235), .S0(n321), .Y(n320) );
  MX3XL U342 ( .A(n237), .B(n238), .C(n322), .S0(n321), .S1(B[6]), .Y(n319) );
  NAND2X1 U343 ( .A(n323), .B(n241), .Y(n322) );
  MXI2X1 U344 ( .A(n242), .B(n237), .S0(n321), .Y(n323) );
  NAND2X1 U345 ( .A(n324), .B(n325), .Y(N372) );
  AOI221XL U346 ( .A0(Sum[5]), .A1(n220), .B0(A[4]), .B1(n228), .C0(n326), .Y(
        n325) );
  OAI32X1 U347 ( .A0(n310), .A1(A[1]), .A2(n231), .B0(n233), .B1(n321), .Y(
        n326) );
  AOI211X1 U348 ( .A0(Sub[5]), .A1(n221), .B0(n327), .C0(n328), .Y(n324) );
  MXI2X1 U349 ( .A(n236), .B(n235), .S0(n329), .Y(n328) );
  MX3XL U350 ( .A(n237), .B(n238), .C(n330), .S0(n329), .S1(B[5]), .Y(n327) );
  NAND2X1 U351 ( .A(n331), .B(n241), .Y(n330) );
  MXI2X1 U352 ( .A(n242), .B(n237), .S0(n329), .Y(n331) );
  NAND2X1 U353 ( .A(n332), .B(n333), .Y(N371) );
  AOI221XL U354 ( .A0(Sum[4]), .A1(n220), .B0(n228), .B1(A[3]), .C0(n334), .Y(
        n333) );
  OAI32X1 U355 ( .A0(n310), .A1(A[1]), .A2(A[0]), .B0(n233), .B1(n329), .Y(
        n334) );
  CLKINVX1 U356 ( .A(A[5]), .Y(n329) );
  NAND3BX1 U357 ( .AN(n301), .B(n300), .C(A[2]), .Y(n310) );
  AOI211X1 U358 ( .A0(Sub[4]), .A1(n221), .B0(n335), .C0(n336), .Y(n332) );
  MXI2X1 U359 ( .A(n235), .B(n236), .S0(A[4]), .Y(n336) );
  MX3XL U360 ( .A(n238), .B(n237), .C(n337), .S0(A[4]), .S1(B[4]), .Y(n335) );
  NAND2X1 U361 ( .A(n338), .B(n241), .Y(n337) );
  MXI2X1 U362 ( .A(n237), .B(n242), .S0(A[4]), .Y(n338) );
  NAND2X1 U363 ( .A(n339), .B(n340), .Y(N370) );
  AOI221XL U364 ( .A0(A[4]), .A1(n318), .B0(Sum[3]), .B1(n220), .C0(n341), .Y(
        n340) );
  OAI2BB2XL U365 ( .B0(n241), .B1(n205), .A0N(n342), .A1N(n343), .Y(n341) );
  AOI221XL U366 ( .A0(n228), .A1(A[2]), .B0(Sub[3]), .B1(n221), .C0(n344), .Y(
        n339) );
  MXI2X1 U367 ( .A(n345), .B(n346), .S0(n300), .Y(n344) );
  NOR2X1 U368 ( .A(n347), .B(n348), .Y(n346) );
  OAI31XL U369 ( .A0(n272), .A1(n301), .A2(n231), .B0(n235), .Y(n348) );
  MXI2X1 U370 ( .A(n349), .B(n350), .S0(n205), .Y(n347) );
  NOR2X1 U371 ( .A(n351), .B(n352), .Y(n345) );
  MXI2X1 U372 ( .A(n353), .B(n349), .S0(n205), .Y(n352) );
  CLKINVX1 U373 ( .A(B[3]), .Y(n205) );
  NAND2X1 U374 ( .A(n354), .B(n355), .Y(N369) );
  AOI221XL U375 ( .A0(n318), .A1(A[3]), .B0(Sum[2]), .B1(n220), .C0(n356), .Y(
        n355) );
  OAI2BB2XL U376 ( .B0(n241), .B1(n357), .A0N(n343), .A1N(n358), .Y(n356) );
  OAI21XL U377 ( .A0(n359), .A1(n360), .B0(n361), .Y(n358) );
  AOI221XL U378 ( .A0(n228), .A1(A[1]), .B0(Sub[2]), .B1(n221), .C0(n362), .Y(
        n354) );
  MXI2X1 U379 ( .A(n363), .B(n364), .S0(n299), .Y(n362) );
  NOR2X1 U380 ( .A(n365), .B(n366), .Y(n364) );
  OAI31XL U381 ( .A0(n246), .A1(A[3]), .A2(n301), .B0(n235), .Y(n366) );
  NAND2X1 U382 ( .A(A[1]), .B(n231), .Y(n246) );
  MXI2X1 U383 ( .A(n349), .B(n350), .S0(n357), .Y(n365) );
  NOR2X1 U384 ( .A(n351), .B(n367), .Y(n363) );
  MXI2X1 U385 ( .A(n353), .B(n349), .S0(n357), .Y(n367) );
  CLKINVX1 U386 ( .A(B[2]), .Y(n357) );
  CLKINVX1 U387 ( .A(n236), .Y(n351) );
  NAND4X1 U388 ( .A(n368), .B(n369), .C(n370), .D(n371), .Y(N368) );
  AOI211X1 U389 ( .A0(Sub[1]), .A1(n221), .B0(n372), .C0(n373), .Y(n371) );
  MXI2X1 U390 ( .A(n236), .B(n235), .S0(n229), .Y(n373) );
  MX3XL U391 ( .A(n237), .B(n238), .C(n374), .S0(n229), .S1(B[1]), .Y(n372) );
  NAND2X1 U392 ( .A(n375), .B(n241), .Y(n374) );
  MXI2X1 U393 ( .A(n242), .B(n237), .S0(n229), .Y(n375) );
  AOI22X1 U394 ( .A0(Sum[1]), .A1(n220), .B0(A[2]), .B1(n318), .Y(n370) );
  OAI21XL U395 ( .A0(n376), .A1(n228), .B0(A[0]), .Y(n369) );
  OAI31XL U396 ( .A0(n377), .A1(n378), .A2(n379), .B0(n343), .Y(n368) );
  CLKINVX1 U397 ( .A(n223), .Y(n343) );
  NOR2X1 U398 ( .A(n284), .B(n380), .Y(n378) );
  OAI221XL U399 ( .A0(n299), .A1(n381), .B0(n321), .B1(n360), .C0(n249), .Y(
        n377) );
  OAI211X1 U400 ( .A0(n229), .A1(n233), .B0(n382), .C0(n383), .Y(N367) );
  AOI221XL U401 ( .A0(Sum[0]), .A1(n220), .B0(Sub[0]), .B1(n221), .C0(n384), 
        .Y(n383) );
  CLKMX2X2 U402 ( .A(n385), .B(n386), .S0(n231), .Y(n384) );
  OAI211X1 U403 ( .A0(\_0_net_[0] ), .A1(n350), .B0(n235), .C0(n387), .Y(n386)
         );
  CLKINVX1 U404 ( .A(n376), .Y(n387) );
  NOR2X1 U405 ( .A(n388), .B(n301), .Y(n376) );
  CLKINVX1 U406 ( .A(n238), .Y(n350) );
  OAI21XL U407 ( .A0(n389), .A1(n390), .B0(n391), .Y(n238) );
  OAI21XL U408 ( .A0(\_0_net_[0] ), .A1(n349), .B0(n236), .Y(n385) );
  CLKINVX1 U409 ( .A(n237), .Y(n349) );
  AOI2BB2X1 U410 ( .B0(\_0_net_[0] ), .B1(n392), .A0N(n393), .A1N(n223), .Y(
        n382) );
  NAND3X1 U411 ( .A(Mode[3]), .B(Mode[0]), .C(n394), .Y(n223) );
  AOI211X1 U412 ( .A0(A[13]), .A1(n249), .B0(n395), .C0(n379), .Y(n393) );
  NAND3X1 U413 ( .A(n396), .B(n217), .C(n397), .Y(n379) );
  AOI2BB2X1 U414 ( .B0(n398), .B1(A[7]), .A0N(n381), .A1N(n300), .Y(n397) );
  CLKINVX1 U415 ( .A(A[15]), .Y(n217) );
  OAI21XL U416 ( .A0(n272), .A1(n381), .B0(n399), .Y(n395) );
  AOI33X1 U417 ( .A0(A[5]), .A1(n321), .A2(n398), .B0(A[9]), .B1(n284), .B2(
        n400), .Y(n399) );
  CLKINVX1 U418 ( .A(n380), .Y(n400) );
  CLKINVX1 U419 ( .A(A[10]), .Y(n284) );
  CLKINVX1 U420 ( .A(A[6]), .Y(n321) );
  OR4X1 U421 ( .A(A[4]), .B(n360), .C(A[5]), .D(A[6]), .Y(n381) );
  CLKINVX1 U422 ( .A(n398), .Y(n360) );
  NOR4X1 U423 ( .A(n380), .B(A[10]), .C(A[8]), .D(A[9]), .Y(n398) );
  NAND2X1 U424 ( .A(n361), .B(n276), .Y(n380) );
  CLKINVX1 U425 ( .A(A[11]), .Y(n276) );
  NAND2X1 U426 ( .A(A[1]), .B(n299), .Y(n272) );
  CLKINVX1 U427 ( .A(A[14]), .Y(n249) );
  NAND2X1 U428 ( .A(n401), .B(n241), .Y(n392) );
  OA21XL U429 ( .A0(n232), .A1(n402), .B0(n403), .Y(n241) );
  MXI2X1 U430 ( .A(n242), .B(n237), .S0(n231), .Y(n401) );
  NOR2X1 U431 ( .A(n390), .B(Mode[1]), .Y(n237) );
  NAND4X1 U432 ( .A(n301), .B(n231), .C(n222), .D(n404), .Y(N366) );
  NOR3BXL U433 ( .AN(n359), .B(n342), .C(n388), .Y(n404) );
  NAND3X1 U434 ( .A(n299), .B(n300), .C(n229), .Y(n388) );
  CLKINVX1 U435 ( .A(A[1]), .Y(n229) );
  CLKINVX1 U436 ( .A(A[3]), .Y(n300) );
  CLKINVX1 U437 ( .A(A[2]), .Y(n299) );
  NAND3X1 U438 ( .A(n361), .B(n396), .C(n405), .Y(n342) );
  NOR3X1 U439 ( .A(A[10]), .B(A[9]), .C(A[8]), .Y(n405) );
  NAND2X1 U440 ( .A(n361), .B(A[11]), .Y(n396) );
  NOR4X1 U441 ( .A(A[12]), .B(A[13]), .C(A[14]), .D(A[15]), .Y(n361) );
  NOR4X1 U442 ( .A(A[4]), .B(A[5]), .C(A[6]), .D(A[7]), .Y(n359) );
  AND4X1 U443 ( .A(n233), .B(n236), .C(n406), .D(n407), .Y(n222) );
  AND4X1 U444 ( .A(n390), .B(n235), .C(n403), .D(n353), .Y(n407) );
  CLKINVX1 U445 ( .A(n242), .Y(n353) );
  NAND2X1 U446 ( .A(n402), .B(n391), .Y(n242) );
  NAND3X1 U447 ( .A(n408), .B(n409), .C(Mode[1]), .Y(n391) );
  NAND2X1 U448 ( .A(n394), .B(n408), .Y(n403) );
  NAND3X1 U449 ( .A(n389), .B(n409), .C(n408), .Y(n235) );
  NAND3X1 U450 ( .A(Mode[0]), .B(n409), .C(Mode[3]), .Y(n390) );
  NOR3X1 U451 ( .A(n220), .B(n221), .C(n228), .Y(n406) );
  NOR3X1 U452 ( .A(Mode[2]), .B(Mode[3]), .C(Mode[1]), .Y(n228) );
  NOR3X1 U453 ( .A(n410), .B(Mode[3]), .C(n232), .Y(n221) );
  CLKINVX1 U454 ( .A(Mode[0]), .Y(n232) );
  NOR3X1 U455 ( .A(Mode[0]), .B(Mode[3]), .C(n410), .Y(n220) );
  NAND2X1 U456 ( .A(Mode[0]), .B(n411), .Y(n236) );
  OAI21XL U457 ( .A0(n410), .A1(n412), .B0(n402), .Y(n411) );
  NAND2X1 U458 ( .A(n394), .B(n412), .Y(n402) );
  NOR2X1 U459 ( .A(n389), .B(n409), .Y(n394) );
  CLKINVX1 U460 ( .A(n413), .Y(n410) );
  CLKINVX1 U461 ( .A(n318), .Y(n233) );
  NOR3X1 U462 ( .A(Mode[2]), .B(Mode[3]), .C(n389), .Y(n318) );
  CLKINVX1 U463 ( .A(Mode[1]), .Y(n389) );
  CLKINVX1 U464 ( .A(A[0]), .Y(n231) );
  NAND2X1 U465 ( .A(n408), .B(n413), .Y(n301) );
  NOR2X1 U466 ( .A(n409), .B(Mode[1]), .Y(n413) );
  CLKINVX1 U467 ( .A(Mode[2]), .Y(n409) );
  NOR2X1 U468 ( .A(n412), .B(Mode[0]), .Y(n408) );
  CLKINVX1 U469 ( .A(Mode[3]), .Y(n412) );
endmodule

