module Counter4bit_Up(
        input clk_50M,
        input [7:0] inputNumber,
        input updn,
        input load,
        input enable,
        output [6:0] displayMSB,
        output [6:0] displayLSB
);

reg [7:0] out_CNT;
wire clk_1;
wire load_new;
always @(posedge clk_1)
begin
        if(enable)
                if(load_new)
                        out_CNT = inputNumber;
                else
                        begin
                                if(updn)
                                        out_CNT <= out_CNT +1;
                                else
																end
				end


				clock_divider(clk_50M, clk_1);
				edge_detection(clk_50M, clk_1, load, load_new);
				seven_segment_display MSB(out_CNT[7:4], displayMSB);
				seven_segment_display LSB(out_CNT[3:0], displayLSB);

				endmodule
