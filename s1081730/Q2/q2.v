//-----
//Design Name: q2
//File Name: q2.v
//Function: use to add 1 or sub 1 with control
//Coder: s1081730
//-----

module q2 (address, d, c, s);

    output reg [15:0] address;
    input wire [15:0] d;
    input wire c, s;

    initial begin
        address = 16'h0000;
    end

    always @(*) begin
        if(c == 0) begin 
            address = d;
        end else begin
            if(s == 0) begin
                address = d + 1;
            end else begin
                address = d - 1;
            end
        end
    end
    
endmodule