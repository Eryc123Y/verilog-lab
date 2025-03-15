`include "others.v"

module gates_test;
    reg a, b;
    wire and_out, or_out, not_out, nor_out, xor_out;
    
    // Instantiate all modules
    And and_gate(a, b, and_out);
    Or or_gate(a, b, or_out);
    Not not_gate(a, not_out);
    Nor nor_gate(a, b, nor_out);
    Xor xor_gate(a, b, xor_out);
    
    initial begin
        // Display header
        $display("Testing all logic gates");
        $display("a b | AND OR NOT NOR XOR");
        $display("----+----------------");
        
        // Test all combinations
        a = 0; b = 0;
        #10 $display("%b %b | %b   %b  %b   %b   %b", a, b, and_out, or_out, not_out, nor_out, xor_out);
        
        a = 0; b = 1;
        #10 $display("%b %b | %b   %b  %b   %b   %b", a, b, and_out, or_out, not_out, nor_out, xor_out);
        
        a = 1; b = 0;
        #10 $display("%b %b | %b   %b  %b   %b   %b", a, b, and_out, or_out, not_out, nor_out, xor_out);
        
        a = 1; b = 1;
        #10 $display("%b %b | %b   %b  %b   %b   %b", a, b, and_out, or_out, not_out, nor_out, xor_out);
    end
    
    // Generate waveform file (if your simulator supports it)
    initial begin
        $dumpfile("gates_test.vcd");
        $dumpvars(0, gates_test);
    end
endmodule