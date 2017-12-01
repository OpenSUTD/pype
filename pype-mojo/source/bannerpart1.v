module bannerpart1 (
    input clk,  // clock
    input wire [6:0] address,  // reset
    output reg [117:0] data
  );
  
  (* rom_style = "block" *)
  
  reg [5:0] address_reg;

  /* Combinational Logic */
  always @* begin
    out = 0;
  end
  
  /* Sequential Logic */
  always @(posedge clk) begin
    address_reg <= address;
  end
  
endmodule
