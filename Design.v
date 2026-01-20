`timescale 1ns / 1ps

module Design_1 #(
parameter N=4
    )(
   input [N-1:0] in,
   input mode,
   output reg [N-1:0] out 
   );
   
   integer i;
   
   always @(*) begin
   if(mode == 1'b0)
   begin // binary -> gray 
   out = in ^ (in >>1); // input xor with right shifted input by 1 place 
   end
   else 
   begin // gray -> binary
   out[N-1] = in[N-1];  // MSB reamins the same
   for (i=N-2; i>=0; i=i-1)
   out[i]=out[i+1] ^ in[i]; // xor is done b/w the previous binary bit and current gray bit to get current binary bit
   end
   end
   
endmodule
