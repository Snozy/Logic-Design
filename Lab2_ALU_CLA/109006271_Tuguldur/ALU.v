module CLA_4bit(A, B, Cin, S, Cout);
	
	parameter n = 4;
	input [n - 1: 0] A, B;
	input Cin;
	
	output [n - 1: 0] S;
	output Cout;

	wire [3:0] G,P,C;
	
	//Generate function
  	assign G = A&B;
  	//Propagate
  	assign P = A^B;
  	//Computation of carry bits
  	assign C[0] = Cin;
  	assign C[1] = G[0] | (P[0] & C[0]);
  	assign C[2] =  G[1] | (P[1]&G[0]) | (P[1]&P[0]&C[0]);
  	assign C[3] = G[2] | (P[2]&G[1]) | (P[2]&P[1]&G[0]) | (P[2]&P[1]&P[0]&C[0]) ;
  	//Compute Cous and S
  	assign Cout = G[3] | (P[3]&G[2]) | (P[3]&P[2]&G[1]) | (P[3]&P[2]&P[1]&G[0]) | (P[3]&P[2]&P[1]&P[0]&C[0]);
  	assign S = C ^ P;

endmodule

module Adder_16bit(A, B, Cin, S, Cout);

	parameter n = 16;
	parameter m = 4;

	input [n - 1: 0] A, B;
	input Cin;
	
	output [n - 1: 0] S;
	output Cout;
	
	//Please refer to P32 of slides.
	wire C4, C8, C12;
	wire [m - 1: 0] S0_3, S4_7, S8_11, S12_15;
	assign S = {S12_15,S8_11,S4_7,S0_3};
	
	CLA_4bit cla0(A[3:0], B[3:0], Cin, S0_3, C4);
	CLA_4bit cla1(A[7:4], B[7:4], C4, S4_7, C8);
	CLA_4bit cla2(A[11:8], B[11:8], C8, S8_11, C12);
	CLA_4bit cla3(A[15:12], B[15:12], C12, S12_15, Cout);
	
endmodule

module ALU(A, B, Cin, Mode, Y, Cout, Overflow);

	//Initialize the parameter.
	parameter n = 16;
	parameter m = 4;
	
	//Declare inputs.
	input [n - 1: 0] A, B;
	input Cin;
	input [m - 1: 0] Mode;	
	
	//Declare outputs.
	output reg [n - 1: 0] Y;
	output reg Cout;
	output reg Overflow;
	
	//You can add whatever wire or reg variables if you want.
	wire [n - 1:0] Sum, Sub;
	wire CoutSum, CoutSub;

    Adder_16bit Add_AB(A, B, Cin, Sum, CoutSum);
    Adder_16bit Min_AB(A, (~B)+1'b1, Cin, Sub, CoutSub);


always@(*)begin
		case(Mode)
			//Logical shift A left by 1-bit.
			4'd0: begin
			 Y = A << 1'b1;
			 Cout = 1'b0;
			 Overflow = 0;
			end

			//Arithmetic shift A left by 1-bit.
			4'd1: begin
			 Y = A <<< 1'b1;
			 Cout = 1'b0;
             Overflow = 0;
			end

			//Logical shift A right by 1-bit.
			4'd2: begin
			 Y = A >> 1'b1;
			 Cout = 1'b0;
             Overflow = 0;
			end

			//Arithmetic shift A right by 1-bit.
			4'd3: begin
			 Y = A >>> 1'b1;
			 Y[15] = 1;
			 Cout = 1'b0;
             Overflow = 0;
			end

			//Add two numbers with cla.
			//Don't forget the Cout and Overflow.
			//Make use of CLA_16bit module.
			4'd4: begin
			 Y = Sum;
			 Cout = CoutSum;
			 Overflow = (~A[15]&~B[15]&Y[15])||(A[15]&B[15]&~Y[15]);
			end

			//Subtract B from A.
			//Don't forget the Cout and Overflow.
			//Make use of CLA_16bit module.
			4'd5: begin
			 Y = Sub;
			 Cout = CoutSub;
			 Overflow = (~A[15]&B[15]&Y[15])||(A[15]&~B[15]&~Y[15]);
			end

			//and
			4'd6: begin
			 Y = A & B;
			 Cout = 1'b0;
             Overflow = 0;
			end

			//or
			4'd7: begin
			 Y = A | B;
			 Cout = 1'b0;
             Overflow = 0;
			end

			//not A
			4'd8: begin
			 Y = ~A;
			 Cout = 1'b0;
             Overflow = 0;
			end

			//xor
			4'd9: begin
			 Y = A ^ B;
			 Cout = 1'b0;
             Overflow = 0;
			end

			//xnor
			4'd10: begin
			 Y = ~(A ^ B);
			 Cout = 1'b0;
             Overflow = 0;
			end

			//nor
			4'd11: begin
			 Y = ~(A | B);
			 Cout = 1'b0;
             Overflow = 0;
            end

			//binary to one-hot
			4'd12: begin
			 Y = 16'd1<<A[3:0];
             Overflow = 0;
			end

			//A
			4'd13: begin
			 Y = A;
			 Cout = 1'b0;
             Overflow = 0;
			end

			//B
			4'd14: begin
			 Y = B;
			 Cout = 1'b0;
			 Overflow = 0;
			end

            //find first one from left
			4'd15: begin
				casex(A)
                     16'b1xxxxxxxxxxxxxxx : Y = 4'd15;
                     16'b01xxxxxxxxxxxxxx : Y = 4'd14;
                     16'b001xxxxxxxxxxxxx : Y = 4'd13;
                     16'b0001xxxxxxxxxxxx : Y = 4'd12;
                     16'b00001xxxxxxxxxxx : Y = 4'd11;
                     16'b000001xxxxxxxxxx : Y = 4'd10;
                     16'b0000001xxxxxxxxx : Y = 4'd9;
                     16'b00000001xxxxxxxx : Y = 4'd8;
                     16'b000000001xxxxxxx : Y = 4'd7;
                     16'b0000000001xxxxxx : Y = 4'd6;
                     16'b00000000001xxxxx : Y = 4'd5;
                     16'b000000000001xxxx : Y = 4'd4;
                     16'b0000000000001xxx : Y = 4'd3;
                     16'b00000000000001xx : Y = 4'd2;
                     16'b000000000000001x : Y = 4'd1;
                     16'b0000000000000001 : Y = 4'd0;
				endcase
//			 Y = 4'd15;

//			  while(A[Y]==0)
//			     begin
//			     Y = Y - 4'd1;
//			     end
			
			 Cout = 1'b0;
			 Overflow =0;
			end
			//default is necessary
			default: begin
			Y  = 1'b0;
			end
		endcase

	end

endmodule















