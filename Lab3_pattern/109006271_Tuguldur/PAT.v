module PAT(clk, reset, data, flag);
  
 input clk, reset, data;
 output flag;
 
 parameter  s0 = 4'b0000,
    s1 = 4'b0001,
    s2 = 4'b0010,
    s3 = 4'b0011,
    s4 = 4'b0100,
    s5 = 4'b0101,
    s6 = 4'b0110,
    s7 = 4'b0111,
    s8 = 4'b1000;

    
    //variables to save the current state and next state after data input.
    reg [3:0] now, next;

 //to change the flag
 assign flag = (now == s8)?1:0;
 // if(now == s8) assign flag = 1;
 // else assign flag = 0;
    
    //This always block will be triggered at the posedge of clock.
    always@(posedge clk)begin
        //If reset is "1", set now to 0.
        if(reset) begin
            now <= s0;
        end
        //Else, update the now with next state.
        else begin
            now <= next;
        end
    end

    //Use data input, next state change (based on truth table)
    always@(data, now)begin
        case (now)
   s0 : if(data == 0) next = s1;
     else next = s0;
   s1 : if(data == 0) next =s2;
     else next =s0;
   s2: if(data == 0) next =s2;
     else next =s3;
   s3: if(data == 0) next =s1;
     else next =s4;
   s4: if(data == 0) next =s5;
     else next =s0;
   s5: if(data == 0) next =s2;
     else next =s6;
   s6: if(data == 0) next =s1;
     else next =s7;
   s7: if(data == 0) next =s5;
     else next =s8;
   s8: if(data == 0) next =s1;
     else next =s0;
   default: next = s0;
  endcase
    end
 
endmodule