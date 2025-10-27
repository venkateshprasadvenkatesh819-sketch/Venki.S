module testbench;
    reg a, b;
    wire and_out, or_out, xor_out;
    
    // Instantiate your design
    gate_design dut(a, b, and_out, or_out, xor_out);
    
    initial begin
        $dumpfile("wave.vcd");
        $dumpvars(0, testbench);
        
        // Test all input combinations
        a = 0; b = 0; #10;
        a = 0; b = 1; #10;
        a = 1; b = 0; #10;
        a = 1; b = 1; #10;
        
        $display("Test completed successfully!");
        $finish;
    end
endmodule