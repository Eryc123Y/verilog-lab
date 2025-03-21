`include "half_adder.v"
`include "../logic-gates/others.v"

module FullAdder(input a, b, cin, output sum, cout);
    wire sum1, carry1, carry2;
    HalfAdder ha1(a, b, sum1, carry1);
    HalfAdder ha2(sum1, cin, sum, carry2);
    Or or_gate(carry1, carry2, cout);
endmodule