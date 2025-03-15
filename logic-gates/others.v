`include "nand.v";

module And(input a, b, output out);
    wire nand_out;
    Nand nand1(a, b, nand_out);
    Nand nand2(nand_out, nand_out, out);
endmodule
    
module Or(input a, b, output out);
    wire nand_out1, nand_out2;
    Nand nand1(a, a, nand_out1);
    Nand nand2(b, b, nand_out2);
    Nand nand3(nand_out1, nand_out2, out);
endmodule

module Not(input a, output out);
    Nand nand1(a, a, out);
endmodule

module Nor(input a, b, output out);
    wire or_out;
    Or or1(a, b, or_out);
    Not not1(or_out, out);
endmodule

module Xor(input a, b, output out);
    wire nand_out, or_out
    Nand nand1(a, b, nand_out);
    Or or1(a, b, or_out);
    Nand nand2(nand_out, or_out, out);
endmodule