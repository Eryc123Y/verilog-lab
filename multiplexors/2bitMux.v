// a basic 2-bit multiplexer
`include "logic-gates/others.v"
module Mux (input a, b, sel, output out);
    wire nsel, out1, out2;
    Not not_sel(sel, nsel);
    And and1(a, nsel, out1);
    And and2(b, sel, out2);
    Or or1(out1, out2, out);
endmodule