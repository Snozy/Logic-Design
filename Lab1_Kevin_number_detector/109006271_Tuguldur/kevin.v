module kevin_G(in,out);
	parameter n=4;
	
	//IO port declaration
	input [n-1:0]in;//Input must be wire.
	output out;//Output can be wire or reg, default type is wire.
	
	//Save the output values from different gates. 
	wire not_a,not_b,not_c,not_d;
	wire and0,and1,and2,and3,and4;
	
	//Declare a gate.
	//<gate><gate name>(output,input1,input2,...);
	//Don't use duplicate <gate name>
	not not_a_gate(not_a,in[3]);
	not not_b_gate(not_b,in[2]);
	not not_c_gate(not_c,in[1]);
	not not_d_gate(not_d,in[0]);
	
	and first_and_gate(and0, not_a, not_c, in[0]);
	and second_and_gate(and1,in[3],in[2],not_d);
	and third_and_gate(and2,in[3],in[1],not_d);
	and fourth_and_gate(and3,not_a,in[2],in[1]);
	and fifth_and_gate(and4, not_b,not_c,in[0]);
	
	or first_or_gate(out,and0,and1,and2,and3,and4);
	
endmodule  

module kevin_D(in,out);
	parameter n=4;

	input [n-1:0]in;
	output out;

	//Be careful, "!" and "~" are different in Verilog.
	assign out=(!in[3]&!in[1]&in[0])|(in[3]&in[2]&!in[0])|(in[3]&in[1]&!in[0])|(!in[3]&in[2]&in[1])|(!in[2]&!in[1]&in[0]);
    //assign out=(~in[3]&~in[1]&in[0])|(in[3]&in[2]&~in[0])|(in[3]&in[1]&~in[0])|(~in[3]&in[2]&in[1])|(~in[2]&~in[1]&in[0]);
endmodule

module kevin_B(in,out);
	parameter n=4;
	
	input [n-1:0]in;
	output out;
	reg out;//It must be reg type because an always block is used to set it.
	
	always@(*)begin
		case(in)
			1,5,6,7,9,10,12,14:begin
				out=1'b1;
			end
			default:begin
				out=1'b0;
			end
		endcase
	end
	
	/*
	or can write as
	always@(*)begin
		out=1'b0;
		case(in)
			5,7,14,15:begin
				out=1'b1;
			end
		endcase
	end
	*/
	
endmodule
