module convert(output reg bla,input num);
	always@(num)
	bla=&num;
endmodule
