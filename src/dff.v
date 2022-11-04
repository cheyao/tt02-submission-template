module dff(input wire [7:0] io_in,
           output wire [7:0] io_out);
    wire clk;
    wire reset;
    wire d1;
    wire d2;
    wire d3;
    wire d4;
    wire d5;
    wire d6;

    assign clk = io_in[0];
    assign reset = io_in[1];
    assign d1 = io_in[2];
    assign d2 = io_in[3];
    assign d3 = io_in[4];
    assign d4 = io_in[5];
    assign d5 = io_in[6];
    assign d6 = io_in[7];

    reg dff1;
    reg dff2;
    reg dff3;
    reg dff4;
    reg dff5;
    reg dff6;

    assign io_out = {2'b0, dff6, dff5, dff4, dff3, dff2, dff1};

    always @(posedge clk) begin
        dff1 = d1;
        dff2 = d2;
        dff3 = d3;
        dff4 = d4;
        dff5 = d5;
        dff6 = d6;

        if (reset) begin
            dff1 = 0;
            dff2 = 0;
            dff3 = 0;
            dff4 = 0;
            dff5 = 0;
            dff6 = 0;
        end
    end
endmodule