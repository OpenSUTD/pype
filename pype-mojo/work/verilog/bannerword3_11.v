module bannerword3_11 (
    input wire clk,  // clock
    input wire [4:0] address,  // reset
    output reg [69:0] outdata
  );
  
  (* rom_style = "block" *)
  
  reg [4:0] address_reg;

  /* Combinational Logic */
  always @* begin
    case(address_reg)
    0: outdata = 70'b1111110001111111110001111110000001111110000000000001111111110001111110;
    1: outdata = 70'b1111110001111111110001111110000001111110000000000001111111110001111110;
    2: outdata = 70'b1111110001111111110001111110000001111110000000000001111111110001111110;
    3: outdata = 70'b1110000000001110000001110001110001110001110000000000001110000001110001;
    4: outdata = 70'b1110000000001110000001110001110001110001110000000000001110000001110001;
    5: outdata = 70'b1110000000001110000001110001110001110001110000000000001110000001110001;
    6: outdata = 70'b1110000000001110000001110001110001110001110000000000001110000001110001;
    7: outdata = 70'b1110000000001110000001110001110001110001110000000000001110000001110001;
    8: outdata = 70'b1110000000001110000001110001110001110001110000000000001110000001110001;
    9: outdata = 70'b1110000000001110000001110001110001110001110000000000001110000001110001;
    10: outdata = 70'b1110000000001110000001110001110001110001110000000000001110000001110001;
    11: outdata = 70'b1110000000001110000001110001110001110001110000000000001110000001110001;
    12: outdata = 70'b1110000000001110000000001111110001110001110000000000001110000000001111;
    13: outdata = 70'b1110000000001110000000001111110001110001110000000000001110000000001111;
    14: outdata = 70'b1110000000001110000000001111110001110001110000000000001110000000001111;
    default: outdata = 0;
    endcase
  end
  
  /* Sequential Logic */
  always @(posedge clk) begin
    address_reg <= address;
  end
  
endmodule