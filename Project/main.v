module main(input[4:0] seqNo, input clk, s3, s2, s1, s0, output reg isPlayer, wrong, correct, output reg [3:0] leds, track_seq, output [6:0] l3, l2, l1);


wire newclk;
oneHZClk(newclk,clk);

reg nxt;

reg [5:0] sc, sc2, lc;
wire [2:0] led_code, led_code2; 

Random r(led_code, led_code2, seqNo, sc, sc2);	


digitaltimer d1(sc, l1);
digitaltimer d2(sc2, l2);
digitaltimer d3(lc, l3);

initial
	begin
		isPlayer = 0; leds = 0; track_seq = 0;
		sc = 0; sc2 = 0; lc = 0;
		wrong = 0; correct = 0; nxt = 0;
	end




always@(s0, s1, s2, s3, isPlayer) begin 
	
	nxt = 0;
	
	if(isPlayer == 0)
		begin
			track_seq = 0;
			sc2 = 0;
			wrong = 0;
			correct = 0;
		end
	if(s0 == 1 && s1 == 1 && s2 == 1 && s3 == 1)
		track_seq = 0;
	if(s0 == 0 || s1 == 0 || s2 == 0 || s3 == 0)
		begin
			if(track_seq == 0) 
				begin
					if(isPlayer == 1)
						begin
							track_seq[0] = ~s0;
							track_seq[1] = ~s1;
							track_seq[2] = ~s2;
							track_seq[3] = ~s3;
							
							
							case(led_code2)
									0: if(s0 == 0) begin nxt = 1; end else begin nxt = 0; end
									1:	if(s1 == 0) begin nxt = 1; end else begin nxt = 0; end
									2:	if(s2 == 0) begin nxt = 1; end else begin nxt = 0; end
									3:	if(s3 == 0) begin nxt = 1; end else begin nxt = 0; end
										default: nxt = 0;
							endcase
							
							if(nxt == 1)
									if(sc2 == lc)
										begin
											correct = 1; sc2 = 0;
										end
									else
										sc2 = sc2 + 1;	
							else
								begin
									sc2 = 0; wrong = 1; 
								end
						end
				end
		
		end
	
end
	
always@(posedge newclk)
	begin
				if(isPlayer == 0)
						if(sc == lc)
							begin
								isPlayer = 1;
								sc = 0;
							end
						else
							sc = sc + 1;
				else
					begin
						sc = 0;
						if(correct == 1 || wrong == 1)
							begin
								isPlayer = 0;
								if(correct == 1)
									lc = lc + 1;
							end
					end
		
	end


always@(led_code)
	begin
		if(isPlayer == 0)
			case(led_code)
					0: leds = 4'b0001;
					1: leds = 4'b0010;
					2: leds = 4'b0100;
					3: leds = 4'b1000;
			endcase
		else
			leds = 4'b0000;
	end			


endmodule

