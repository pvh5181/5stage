module clock_divider(
        input clk_50M,
        output reg clk_1
);
        reg [27:0] counter = 0;
        always@(posedge clk_50M)
        begin
                if(counter == 28'd25_000_000)
                begin
                        counter <= counter + 1;
                        clk_1 <= 1;
                end else if(counter == 28'd50_000_000)
                begin
                        counter <= 0;
                        clk_1 <= 0;
                end else begin
                        counter <= counter + 1;
                        clk_1 <= clk_1;
                end
        end
endmodule
module edge_detection
(
        input clk_50M,
        input clk_1,
        input load,
        output reg load_new
);
        reg load_hold;
        reg load_hold_old;
        reg load_old;

        always@(posedge clk_50M)
        begin
                load_old <= load;
                if(load_old == 1 & load == 0)
                        load_hold <= 1;
                else if (load_new == 1)
                        load_hold <= 0;
        end

        always@(posedge clk_1)
    begin
		load_hold_old <= load_hold;
		if(load_hold_old == 0 & load_hold == 1)
						load_new <= 1;
		else if (load_new == 1)
						load_new <= 0;
end
endmodule
