module counter #(
    parameter WIDTH = 8
)(
    //interface signals
    input logic clk, //clk signal
    input logic rst, //reset signal
    input logic en,  //enable signal
    output logic [WIDTH-1:0] count  //count output
);

always_ff @(posedge clk, posedge rst)
    if(rst) count <= {WIDTH{1'b0}};
    else    count <= count + {{WIDTH-1{1'b0}}, en};

endmodule
