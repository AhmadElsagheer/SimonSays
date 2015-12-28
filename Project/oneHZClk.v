module oneHZClk(output reg outClock, input inClock);
		reg [31:0] count;
	initial
	begin
	count = 32'd0;
	outClock = 1;
	end
	always@(posedge inClock)
	begin
		count = count+1;
		if(count == 32'd25000000)
		begin
			count <= 32'd0;
			outClock <= ~outClock;
		end
	end



endmodule
