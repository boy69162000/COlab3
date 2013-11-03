//Subject:     CO project 2 - Sign extend
//--------------------------------------------------------------------------------
//Version:     1
//--------------------------------------------------------------------------------
//Writer:
//----------------------------------------------
//Date:
//----------------------------------------------
//Description:
//--------------------------------------------------------------------------------

module Sign_Extend(
    data_i,
    sign_i,
    data_o
    );

//I/O ports
input   [16-1:0] data_i;
input            sign_i;
output  [32-1:0] data_o;

//Internal Signals
reg     [32-1:0] data_o;

//Sign extended
always@(*) begin
    case(sign_i)
        1'b1: begin
            case(data_i[15])
                1'b1: data_o <= {16'hffff, data_i[15:0]};
                1'b0: data_o <= {16'h0000, data_i[15:0]};
            endcase
        end
        1'b0: data_o <= {16'h0000, data_i[15:0]};
    endcase
end

endmodule

