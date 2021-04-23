//send the boards 50MHz clock to this and on the output will be 1Hz clock
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
