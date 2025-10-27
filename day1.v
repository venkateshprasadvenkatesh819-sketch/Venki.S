module gate_design(
    input a, b,
    output and_out, or_out, xor_out
);
    assign and_out = a & b;
    assign or_out = a | b;
    assign xor_out = a ^ b;
endmodule