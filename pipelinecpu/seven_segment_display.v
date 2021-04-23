module seven_segment_display
(
input [3:0] inputNumber,
output reg [6:0] displayOut
);

always @(*)
begin
        case(inputNumber)
                4'd0: displayOut <= 7'b1000000;
                4'd1: displayOut <= 7'b1111001;
                4'd2: displayOut <= 7'b0100100;
                4'd3: displayOut <= 7'b0110000;
                4'd4: displayOut <= 7'b0011001;
                4'd5: displayOut <= 7'b0010010;
                4'd6: displayOut <= 7'b0000010;
                4'd7: displayOut <= 7'b1111000;
                4'd8: displayOut <= 7'b0000000;
                4'd9: displayOut <= 7'b0010000;
                4'd10: displayOut <= 7'b0001000;
                4'd11: displayOut <= 7'b0000011;
                4'd12: displayOut <= 7'b1000110;
                4'd13: displayOut <= 7'b0100001;
                4'd14: displayOut <= 7'b0000110;
                4'd15: displayOut <= 7'b0001110;

        endcase
end

endmodule
