module counter #(
    parameter WIDTH = 8
)(
    input logic clk, //clk
    input logic rst, //rst
    input logic en, //load counter from data
    output logic [WIDTH-1:0] count //count output
);

always_ff @(posedge clk)
    if (rst) count <= {WIDTH{1'b0}};
    else count <= count + {{WIDTH-1{1'b0}},en};

endmodule