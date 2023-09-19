module happy_verilog_G(in,out);
	parameter n=4;
	
	//IO port declaration
	input [n-1:0]in;//Input must be wire.
	output out;//Output can be wire or reg, default type is wire.
	
	//Save the output values from different gates. 
	wire not_a;
	wire and0,and1,and2;
	
	//Declare a gate.
	//<gate><gate name>(output,input1,input2,...);
	//Don't use duplicate <gate name>
	not not_gate(not_a,in[3]);
	
	and first_and_gate(and0,not_a,in[2],in[0]);
	and second_and_gate(and1,in[3],in[2],in[1]);
	and third_and_gate(and2,in[2],in[1],in[0]);
	
	or first_or_gate(out,and0,and1,and2);
	
endmodule  

module happy_verilog_D(in,out);
	parameter n=4;

	input [n-1:0]in;
	output out;

	//Be careful, "!" and "~" are different in Verilog.
	assign out=(!in[3]&in[2]&in[0])|(in[3]&in[2]&in[1])|(in[2]&in[1]&in[0]);

endmodule 
module happy_verilog_B(in,out);
	parameter n=4;
	
	input [n-1:0]in;
	output out;
	reg out;//It must be reg type because an always block is used to set it.
	
	always@(*)begin
		case(in)
			5,7,14,15:begin
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
