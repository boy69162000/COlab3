//Subject:     CO project 2 - Decoder
//--------------------------------------------------------------------------------
//Version:     1
//--------------------------------------------------------------------------------
//Writer:      Luke
//----------------------------------------------
//Date:        2010/8/16
//----------------------------------------------
//Description:
//--------------------------------------------------------------------------------

module Decoder(
    instr_op_i,
    RegWrite_o,
    ALU_op_o,
    ALUSrc_o,
    RegDst_o,
    Branch_o,
    sign_o,
    BranchType_o,
    Jump_o,
    MemRead_o,
    MemWrite_o,
    MemtoReg_o,
    );

//I/O ports
input  [6-1:0] instr_op_i;

output         RegWrite_o;
output [3-1:0] ALU_op_o;
output         ALUSrc_o;
output [2-1:0] RegDst_o;
output         Branch_o;
output         sign_o;
output [2-1:0] BranchType_o;
output         Jump_o;
output         MemRead_o;
output         MemWrite_o;
output [2-1:0] MemtoReg_o;

//Internal Signals
reg    [3-1:0] ALU_op_o;
reg            ALUSrc_o;
reg            RegWrite_o;
reg    [2-1:0] RegDst_o;
reg            Branch_o;
reg            sign_o;
reg    [2-1:0] BranchType_o;
reg            Jump_o;
reg            MemRead_o;
reg            MemWrite_o;
reg    [2-1:0] MemtoReg_o;

//Main Function
always@(*) begin
    case(instr_op_i)
        6'b000011: begin
            RegWrite_o   <= 1'b1;
            ALU_op_o     <= 3'b011;
            Branch_o     <= 1'b0;
            RegDst_o     <= 2'b10;
            sign_o       <= 1'b1;
            BranchType_o <= 2'b00;
            Jump_o       <= 1'b1;
            MemRead_o    <= 1'b0;
            MemWrite_o   <= 1'b0;
            MemtoReg_o   <= 2'b11;
        end
        6'b100011: begin
            RegWrite_o   <= 1'b1;
            ALU_op_o     <= 3'b110;
            Branch_o     <= 1'b0;
            RegDst_o     <= 2'b00;
            sign_o       <= 1'b1;
            BranchType_o <= 2'b00;
            Jump_o       <= 1'b0;
            MemRead_o    <= 1'b1;
            MemWrite_o   <= 1'b0;
            MemtoReg_o   <= 2'b01;
        end
        6'b101011: begin
            RegWrite_o   <= 1'b0;
            ALU_op_o     <= 3'b110;
            Branch_o     <= 1'b0;
            RegDst_o     <= 2'b00;
            sign_o       <= 1'b1;
            BranchType_o <= 2'b00;
            Jump_o       <= 1'b0;
            MemRead_o    <= 1'b0;
            MemWrite_o   <= 1'b1;
            MemtoReg_o   <= 2'b00;
        end
        6'b000010: begin
            RegWrite_o   <= 1'b0;
            ALU_op_o     <= 3'b011;
            Branch_o     <= 1'b0;
            RegDst_o     <= 2'b01;
            sign_o       <= 1'b1;
            BranchType_o <= 2'b00;
            Jump_o       <= 1'b1;
            MemRead_o    <= 1'b0;
            MemWrite_o   <= 1'b0;
            MemtoReg_o   <= 2'b00;
        end
        6'b000111: begin
            RegWrite_o   <= 1'b0;
            ALU_op_o     <= 3'b011;
            Branch_o     <= 1'b1;
            RegDst_o     <= 2'b01;
            sign_o       <= 1'b1;
            BranchType_o <= 2'b01;
            Jump_o       <= 1'b0;
            MemRead_o    <= 1'b0;
            MemWrite_o   <= 1'b0;
            MemtoReg_o   <= 2'b00;
        end
        6'b000101: begin 
            RegWrite_o   <= 1'b0;
            ALU_op_o     <= 3'b011;
            Branch_o     <= 1'b1;
            RegDst_o     <= 2'b01;
            sign_o       <= 1'b1;
            BranchType_o <= 2'b11;
            Jump_o       <= 1'b0;
            MemRead_o    <= 1'b0;
            MemWrite_o   <= 1'b0;
            MemtoReg_o   <= 2'b00;
        end
        6'b000001: begin 
            RegWrite_o   <= 1'b0;
            ALU_op_o     <= 3'b011;
            Branch_o     <= 1'b1;
            RegDst_o     <= 2'b01;
            sign_o       <= 1'b1;
            BranchType_o <= 2'b10;
            Jump_o       <= 1'b0;
            MemRead_o    <= 1'b0;
            MemWrite_o   <= 1'b0;
            MemtoReg_o   <= 2'b00;
        end
        6'b000100: begin 
            RegWrite_o   <= 1'b0;
            ALU_op_o     <= 3'b011;
            Branch_o     <= 1'b1;
            RegDst_o     <= 2'b01;
            sign_o       <= 1'b1;
            BranchType_o <= 2'b00;
            Jump_o       <= 1'b0;
            MemRead_o    <= 1'b0;
            MemWrite_o   <= 1'b0;
            MemtoReg_o   <= 2'b00;
        end
        6'b001000: begin
            RegWrite_o   <= 1'b1;
            ALU_op_o     <= 3'b110;
            Branch_o     <= 1'b0;
            RegDst_o     <= 2'b00;
            sign_o       <= 1'b1;
            BranchType_o <= 2'b00;
            Jump_o       <= 1'b0;
            MemRead_o    <= 1'b0;
            MemWrite_o   <= 1'b0;
            MemtoReg_o   <= 2'b00;
        end
        6'b001111: begin
            RegWrite_o    <= 1'b1;
            ALU_op_o      <= 3'b110;
            Branch_o      <= 1'b0;
            RegDst_o      <= 2'b00;
            sign_o        <= 1'b1;
            BranchType_o  <= 2'b00;
            Jump_o        <= 1'b0;
            MemRead_o     <= 1'b0;
            MemWrite_o    <= 1'b0;
            MemtoReg_o    <= 2'b00;
        end
        6'b001101: begin
            RegWrite_o    <= 1'b1;
            ALU_op_o      <= 3'b101;
            Branch_o      <= 1'b0;
            RegDst_o      <= 2'b00;
            sign_o        <= 1'b0;
            BranchType_o  <= 2'b00;
            Jump_o        <= 1'b0;
            MemRead_o     <= 1'b0;
            MemWrite_o    <= 1'b0;
            MemtoReg_o    <= 2'b00;
        end
        default: begin
            RegWrite_o    <= 1'b1;
            ALU_op_o      <= 3'b000;
            ALUSrc_o      <= 1'b0;
            RegDst_o      <= 2'b01;
            Branch_o      <= 1'b0;
            sign_o        <= 1'b1;
            BranchType_o  <= 2'b00;
            Jump_o        <= 1'b0;
            MemRead_o     <= 1'b0;
            MemWrite_o    <= 1'b0;
            MemtoReg_o    <= 2'b00;
        end
    endcase

    ALUSrc_o <= instr_op_i[3] | instr_op_i[5];

end

endmodule

