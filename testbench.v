///////////////////////////////////////////////////////////////////////////////////
// Testbench for Component: Encoder_32
// Package: FIUSCIS-CDA
// Course: CDA3102 (Computer Architecture), Florida International University
// Developer: Trevor Cickovski
// License: MIT, (C) 2023 All Rights Reserved
///////////////////////////////////////////////////////////////////////////////////

module testbench();
`include "../Test/Test.v"

///////////////////////////////////////////////////////////////////////////////////
// Input: A (32-bit)
reg[31:0] A;
///////////////////////////////////////////////////////////////////////////////////

///////////////////////////////////////////////////////////////////////////////////
// Output: Q (5-bit)
wire[4:0] Q;
///////////////////////////////////////////////////////////////////////////////////

integer pos;

Encoder_32 myEncoder(
	.A0(A[0]),.A1(A[1]),.A2(A[2]),.A3(A[3]),.A4(A[4]),.A5(A[5]),.A6(A[6]),.A7(A[7]),
        .A8(A[8]),.A9(A[9]),.A10(A[10]),.A11(A[11]),.A12(A[12]),.A13(A[13]),.A14(A[14]),.A15(A[15]),
	.A16(A[16]),.A17(A[17]),.A18(A[18]),.A19(A[19]),.A20(A[20]),.A21(A[21]),.A22(A[22]),.A23(A[23]),
	.A24(A[24]),.A25(A[25]),.A26(A[26]),.A27(A[27]),.A28(A[28]),.A29(A[29]),.A30(A[30]),.A31(A[31]),
        .Q);

initial begin
////////////////////////////////////////////////////////////////////////
//  Testing: All 5-bit A values
for (pos=0; pos <= 31; pos = pos + 1) begin
   A = 0;
   A[pos] = 1;
//for (A = 5'b0000000000000000000000000000001; A <= 5'b10000000000000000000000000000000; A = A << 1) begin
   $display("Testing: A=%b", A);
   #10;
   verifyEqual5(Q, pos);
   // You need this because the counter will reset to 0 otherwise
   if (pos == 31) begin
    $display("All tests passed.");
    $stop;
   end
end
////////////////////////////////////////////////////////////////////////


end

endmodule