module LFSR(
  input clk,
  input rst_n,

  output reg [4:0] data
);

reg [4:0] data_next;

always @* begin
	
  data_next[4] = data[4]^data[1];
  data_next[3] = data[3]^data[0];
  data_next[2] = data[2]^data_next[4];
  data_next[1] = data[1]^data_next[3];
  data_next[0] = data[0]^data_next[2];
end

always @(posedge clk or negedge rst_n)
  if(!rst_n)
    data <= 5'h1f;
  else
  begin
    data <= data_next;
	 
	end

endmodule
