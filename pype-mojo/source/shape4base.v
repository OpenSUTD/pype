module shape4base (
    input wire clk,  // clock
    input wire [2:0] orientation,
    input wire[5:0] address,
    output reg [50:0] outdata
  );
  
  (* rom_style = "block" *)
  
  reg [5:0] address_reg;
  reg[2:0] orientreg;
  
  always @(posedge clk) begin
    address_reg <= address;
    orientreg <= orientation;
    
  end

  /* Combinational Logic */
  always @* begin
      case({orientreg,address_reg})
          9'b000000000: outdata = 51'b000000000000000000000000010000000000000000000000000;
          9'b000000001: outdata = 51'b000000000000000000000001111100000000000000000000000;
          9'b000000010: outdata = 51'b000000000000000000000111111111000000000000000000000;
          9'b000000011: outdata = 51'b000000000000000000001111111111100000000000000000000;
          9'b000000100: outdata = 51'b000000000000000000011111111111110000000000000000000;
          9'b000000101: outdata = 51'b000000000000000000001111111111100000000000000000000;
          9'b000000110: outdata = 51'b000000000000000000001111111111100000000000000000000;
          9'b000000111: outdata = 51'b000000000000000000000111111111000000000000000000000;
          9'b000001000: outdata = 51'b000000000000000000000011111111000000000000000000000;
          9'b000001001: outdata = 51'b000000000000000000000001111110000000000000000000000;
          9'b000001010: outdata = 51'b000000000000000000000001111110000000000000000000000;
          9'b000001011: outdata = 51'b000000100000000000000000111100000000000000001000000;
          9'b000001100: outdata = 51'b000011110000000000000000011000000000000000011110000;
          9'b000001101: outdata = 51'b000111111000000000000000001000000000000000011111000;
          9'b000001110: outdata = 51'b011111111000000000000000000000000000000000111111110;
          9'b000001111: outdata = 51'b111111111100000000000000000000000000000000111111111;
          9'b000010000: outdata = 51'b111111111110000000000000000000000000000001111111111;
          9'b000010001: outdata = 51'b111111111111000000000000000000000000000001111111111;
          9'b000010010: outdata = 51'b111111111111000000000000000000000000000011111111111;
          9'b000010011: outdata = 51'b111111111111000000000000000000000000000111111111111;
          9'b000010100: outdata = 51'b111111111111100000000000000000000000000111111111111;
          9'b000010101: outdata = 51'b111111111111100000000000000000000000001111111111111;
          9'b000010110: outdata = 51'b111111111111100000000000000000000000001111111111111;
          9'b000010111: outdata = 51'b111111111111100000000000000000000000011111111111111;
          9'b000011000: outdata = 51'b111111111111000000000000000000000000011111111111111;
          9'b000011001: outdata = 51'b000000000000000000000000000000000000111111111111111;
          9'b000011010: outdata = 51'b000000000000000000000000000000000001111111111111111;
          9'b000011011: outdata = 51'b000000000000000000000000000000000001111111111111111;
          9'b000011100: outdata = 51'b000000000000000000000000000000000011111111111111111;
          9'b000011101: outdata = 51'b000000000000000000000000000000000011111111111111111;
          9'b000011110: outdata = 51'b000000000000000000000000000000000111111111111111111;
          9'b000011111: outdata = 51'b000000000000000000000000000000000111111111111111111;
          9'b000100000: outdata = 51'b000000000000000000000000000000001111111111111111111;
          9'b000100001: outdata = 51'b000000000000000000000000000000001111111111111111111;
          9'b000100010: outdata = 51'b000000000000000000000000000000011111111111111111111;
          9'b000100011: outdata = 51'b000000000000000000000000000000111111111111111111111;
          9'b000100100: outdata = 51'b000000000000000000000000000000111111111111111111111;
          9'b000100101: outdata = 51'b111111111111100000000000000001111111111111111111111;
          9'b000100110: outdata = 51'b111111111111100000000000000001111111111111111111111;
          9'b000100111: outdata = 51'b111111111111000000000000000011111111111111111111111;
          9'b000101000: outdata = 51'b111111111111000000000000000011111111111111111111111;
          9'b000101001: outdata = 51'b111111111110000000000000000111111111111111111111111;
          9'b000101010: outdata = 51'b111111111100000000000000001111111111111111111111111;
          9'b000101011: outdata = 51'b111111111100000000000000001111111111111111111111111;
          9'b000101100: outdata = 51'b111111111000000000000000011111111111111111111111111;
          9'b000101101: outdata = 51'b011111111000000000000000011111111111111111111111110;
          9'b000101110: outdata = 51'b000111110000000000000000111111111111111111111111000;
          9'b000101111: outdata = 51'b000011110000000000000000111111111111111111111110000;
          9'b000110000: outdata = 51'b000000100000000000000001111111111111111111111000000;
          9'b000110001: outdata = 51'b000000000000000000000011111111111111111111100000000;
          9'b000110010: outdata = 51'b000000000000000000000011111111111111111111000000000;
          9'b000110011: outdata = 51'b000000000000000000000111111111111111111100000000000;
          9'b000110100: outdata = 51'b000000000000000000000111111111111111110000000000000;
          9'b000110101: outdata = 51'b000000000000000000001111111111111111100000000000000;
          9'b000110110: outdata = 51'b000000000000000000001111111111111110000000000000000;
          9'b000110111: outdata = 51'b000000000000000000011111111111111000000000000000000;
          9'b000111000: outdata = 51'b000000000000000000001111111111100000000000000000000;
          9'b000111001: outdata = 51'b000000000000000000000111111111000000000000000000000;
          9'b000111010: outdata = 51'b000000000000000000000001111100000000000000000000000;
          9'b000111011: outdata = 51'b000000000000000000000000010000000000000000000000000;

          9'b001000000: outdata = 51'b000000000000000000000000010000000000000000000000000;
          9'b001000001: outdata = 51'b000000000000000000000001111100000000000000000000000;
          9'b001000010: outdata = 51'b000000000000000000000111111111000000000000000000000;
          9'b001000011: outdata = 51'b000000000000000000001111111111100000000000000000000;
          9'b001000100: outdata = 51'b000000000000000000011111111111110000000000000000000;
          9'b001000101: outdata = 51'b000000000000000000001111111111110000000000000000000;
          9'b001000110: outdata = 51'b000000000000000000001111111111100000000000000000000;
          9'b001000111: outdata = 51'b000000000000000000001111111111100000000000000000000;
          9'b001001000: outdata = 51'b000000000000000000001111111111100000000000000000000;
          9'b001001001: outdata = 51'b000000000000000000000111111111100000000000000000000;
          9'b001001010: outdata = 51'b000000000000000000000111111111000000000000000000000;
          9'b001001011: outdata = 51'b000000100000000000000111111111000000000000001000000;
          9'b001001100: outdata = 51'b000011100000000000000011111111000000000000011110000;
          9'b001001101: outdata = 51'b000111110000000000000001111110000000000000011111000;
          9'b001001110: outdata = 51'b011111110000000000000000111100000000000000111111110;
          9'b001001111: outdata = 51'b111111111000000000000000011000000000000000111111111;
          9'b001010000: outdata = 51'b111111111000000000000000000000000000000000111111111;
          9'b001010001: outdata = 51'b111111111100000000000000000000000000000001111111111;
          9'b001010010: outdata = 51'b111111111100000000000000000000000000000001111111111;
          9'b001010011: outdata = 51'b111111111100000000000000000000000000000011111111111;
          9'b001010100: outdata = 51'b111111111110000000000000000000000000000011111111111;
          9'b001010101: outdata = 51'b111111111110000000000000000000000000000011111111111;
          9'b001010110: outdata = 51'b111111111111000000000000000000000000000111111111111;
          9'b001010111: outdata = 51'b000000000000000000000000000000000000000000000000000;
          9'b001011000: outdata = 51'b000000000000000000000000000000000000000000000000000;
          9'b001011001: outdata = 51'b000000000000000000000000000000000000000000000000000;
          9'b001011010: outdata = 51'b000000000000000000000000000000000000000000000000000;
          9'b001011011: outdata = 51'b000000000000000000000000000000000000000000000000000;
          9'b001011100: outdata = 51'b000000000000000000000000000000000000000000000000000;
          9'b001011101: outdata = 51'b000000000000000000000000000000000000000000000000000;
          9'b001011110: outdata = 51'b000000000000000000000000000000000000000000000000000;
          9'b001011111: outdata = 51'b000000000000000000000000000000000000000000000000000;
          9'b001100000: outdata = 51'b000000000000000000000000000000000000000000000000000;
          9'b001100001: outdata = 51'b000000000000000000000000000000000000000000000000000;
          9'b001100010: outdata = 51'b000000000000000000000000000000000000000000000000000;
          9'b001100011: outdata = 51'b000000000000000000000000000000000000000000000000000;
          9'b001100100: outdata = 51'b000000000000000000000000000000000000000000000000000;
          9'b001100101: outdata = 51'b111111111111111111111111111111111111111111111111111;
          9'b001100110: outdata = 51'b111111111111111111111111111111111111111111111111111;
          9'b001100111: outdata = 51'b111111111111111111111111111111111111111111111111111;
          9'b001101000: outdata = 51'b111111111111111111111111111111111111111111111111111;
          9'b001101001: outdata = 51'b111111111111111111111111111111111111111111111111111;
          9'b001101010: outdata = 51'b111111111111111111111111111111111111111111111111111;
          9'b001101011: outdata = 51'b111111111111111111111111111111111111111111111111111;
          9'b001101100: outdata = 51'b111111111111111111111111111111111111111111111111111;
          9'b001101101: outdata = 51'b011111111111111111111111111111111111111111111111110;
          9'b001101110: outdata = 51'b000111111111111111111111111111111111111111111111000;
          9'b001101111: outdata = 51'b000011111111111111111111111111111111111111111110000;
          9'b001110000: outdata = 51'b000000111111111111111111111111111111111111111000000;
          9'b001110001: outdata = 51'b000000001111111111111111111111111111111111100000000;
          9'b001110010: outdata = 51'b000000000111111111111111111111111111111111000000000;
          9'b001110011: outdata = 51'b000000000001111111111111111111111111111100000000000;
          9'b001110100: outdata = 51'b000000000000011111111111111111111111110000000000000;
          9'b001110101: outdata = 51'b000000000000001111111111111111111111100000000000000;
          9'b001110110: outdata = 51'b000000000000000011111111111111111110000000000000000;
          9'b001110111: outdata = 51'b000000000000000000111111111111111000000000000000000;
          9'b001111000: outdata = 51'b000000000000000000001111111111100000000000000000000;
          9'b001111001: outdata = 51'b000000000000000000000111111111000000000000000000000;
          9'b001111010: outdata = 51'b000000000000000000000001111100000000000000000000000;
          9'b001111011: outdata = 51'b000000000000000000000000010000000000000000000000000;

          9'b010000000: outdata = 51'b000000000000000000000000010000000000000000000000000;
          9'b010000001: outdata = 51'b000000000000000000000001111100000000000000000000000;
          9'b010000010: outdata = 51'b000000000000000000000111111111000000000000000000000;
          9'b010000011: outdata = 51'b000000000000000000001111111111100000000000000000000;
          9'b010000100: outdata = 51'b000000000000000000011111111111110000000000000000000;
          9'b010000101: outdata = 51'b000000000000000000001111111111100000000000000000000;
          9'b010000110: outdata = 51'b000000000000000000001111111111100000000000000000000;
          9'b010000111: outdata = 51'b000000000000000000000111111111000000000000000000000;
          9'b010001000: outdata = 51'b000000000000000000000111111110000000000000000000000;
          9'b010001001: outdata = 51'b000000000000000000000011111100000000000000000000000;
          9'b010001010: outdata = 51'b000000000000000000000011111100000000000000000000000;
          9'b010001011: outdata = 51'b000000100000000000000001111000000000000000001000000;
          9'b010001100: outdata = 51'b000011110000000000000000110000000000000000011110000;
          9'b010001101: outdata = 51'b000111110000000000000000100000000000000000111111000;
          9'b010001110: outdata = 51'b011111111000000000000000000000000000000000111111110;
          9'b010001111: outdata = 51'b111111111000000000000000000000000000000001111111111;
          9'b010010000: outdata = 51'b111111111100000000000000000000000000000011111111111;
          9'b010010001: outdata = 51'b111111111100000000000000000000000000000111111111111;
          9'b010010010: outdata = 51'b111111111110000000000000000000000000000111111111111;
          9'b010010011: outdata = 51'b111111111111000000000000000000000000000111111111111;
          9'b010010100: outdata = 51'b111111111111000000000000000000000000001111111111111;
          9'b010010101: outdata = 51'b111111111111100000000000000000000000001111111111111;
          9'b010010110: outdata = 51'b111111111111100000000000000000000000001111111111111;
          9'b010010111: outdata = 51'b111111111111110000000000000000000000001111111111111;
          9'b010011000: outdata = 51'b111111111111110000000000000000000000000111111111111;
          9'b010011001: outdata = 51'b111111111111111000000000000000000000000000000000000;
          9'b010011010: outdata = 51'b111111111111111100000000000000000000000000000000000;
          9'b010011011: outdata = 51'b111111111111111100000000000000000000000000000000000;
          9'b010011100: outdata = 51'b111111111111111110000000000000000000000000000000000;
          9'b010011101: outdata = 51'b111111111111111110000000000000000000000000000000000;
          9'b010011110: outdata = 51'b111111111111111111000000000000000000000000000000000;
          9'b010011111: outdata = 51'b111111111111111111000000000000000000000000000000000;
          9'b010100000: outdata = 51'b111111111111111111100000000000000000000000000000000;
          9'b010100001: outdata = 51'b111111111111111111100000000000000000000000000000000;
          9'b010100010: outdata = 51'b111111111111111111110000000000000000000000000000000;
          9'b010100011: outdata = 51'b111111111111111111111000000000000000000000000000000;
          9'b010100100: outdata = 51'b111111111111111111111000000000000000000000000000000;
          9'b010100101: outdata = 51'b111111111111111111111100000000000000001111111111111;
          9'b010100110: outdata = 51'b111111111111111111111100000000000000001111111111111;
          9'b010100111: outdata = 51'b111111111111111111111110000000000000000111111111111;
          9'b010101000: outdata = 51'b111111111111111111111110000000000000000111111111111;
          9'b010101001: outdata = 51'b111111111111111111111111000000000000000011111111111;
          9'b010101010: outdata = 51'b111111111111111111111111100000000000000001111111111;
          9'b010101011: outdata = 51'b111111111111111111111111100000000000000001111111111;
          9'b010101100: outdata = 51'b111111111111111111111111110000000000000000111111111;
          9'b010101101: outdata = 51'b011111111111111111111111110000000000000000111111110;
          9'b010101110: outdata = 51'b000111111111111111111111111000000000000000011111000;
          9'b010101111: outdata = 51'b000011111111111111111111111000000000000000011110000;
          9'b010110000: outdata = 51'b000000111111111111111111111100000000000000001000000;
          9'b010110001: outdata = 51'b000000001111111111111111111110000000000000000000000;
          9'b010110010: outdata = 51'b000000000111111111111111111110000000000000000000000;
          9'b010110011: outdata = 51'b000000000001111111111111111111000000000000000000000;
          9'b010110100: outdata = 51'b000000000000011111111111111111000000000000000000000;
          9'b010110101: outdata = 51'b000000000000001111111111111111100000000000000000000;
          9'b010110110: outdata = 51'b000000000000000011111111111111100000000000000000000;
          9'b010110111: outdata = 51'b000000000000000000111111111111110000000000000000000;
          9'b010111000: outdata = 51'b000000000000000000001111111111100000000000000000000;
          9'b010111001: outdata = 51'b000000000000000000000111111111000000000000000000000;
          9'b010111010: outdata = 51'b000000000000000000000001111100000000000000000000000;
          9'b010111011: outdata = 51'b000000000000000000000000010000000000000000000000000;

          default: outdata = 0;
          
          endcase
  end
  
endmodule
