module happy_verilog_tb;
	parameter delay=5;

	wire out_G,out_D,out_B;
	reg [3:0]in;
	integer i;

	initial begin
		//Give initial value.
		in=0;
		for(i=0;i<16;i=i+1)begin
			#delay
			$display("time=%4d,in=%b,out_G=%b,out_D=%b,out_B=%b",$time,in,out_G,out_D,out_B);
			if((out_G === 1'bx | out_D === 1'bx | out_B === 1'bx 
			| out_G === 1'bz|out_D === 1'bz|out_B === 1'bz) 
			||((in == 5 || in == 7 || in == 14 || in == 15)&&(out_G & out_D & out_B) == 0)
			||((in != 5 && in != 7 && in != 14 && in != 15)&&(out_G | out_D | out_B) == 1))
				begin
					$display("You got wrong answer!!");
					$finish;
				end
			in = in+1;
		end
		$display("Congratulations!!");
		$finish;
	end
	
	//Connect with the "gate level" module.
	happy_verilog_G hvg
	(
		.in(in),
		.out(out_G)
	);
	
	//Connect with the "dataflow" module.
	happy_verilog_D hvd
	(
		.in(in),
		.out(out_D)
	);
	
	//Connect with the "behavior" module.
	happy_verilog_B hvb
	(
		.in(in),
		.out(out_B)
	);

endmodule
