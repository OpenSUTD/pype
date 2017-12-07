module newshape7 (clk, en, orientation, address, bitmap); 
    input  clk;
    input   en;
    input wire [2:0] orientation;
    input wire[5:0] address;
    output reg [50:0] bitmap;
    reg   [8:0] raddr;
    reg [5:0] address_reg;
    reg[2:0] orient_reg;
 always @(posedge clk)
 begin

    if (en)
     address_reg <= address;
     orient_reg <= orientation;
     raddr <= {orient_reg,address_reg};
 end

 always @(raddr) 
 begin
    if (en)
       case(raddr)
    9'b000000000 : bitmap <= 51'b000000000000000000000000010000000000000000000000000;
    9'b000000001 : bitmap <= 51'b000000000000000000000001111100000000000000000000000;
    9'b000000010 : bitmap <= 51'b000000000000000000000111111111000000000000000000000;
    9'b000000011 : bitmap <= 51'b000000000000000000001111111111100000000000000000000;
    9'b000000100 : bitmap <= 51'b000000000000000000011111111111110000000000000000000;
    9'b000000101 : bitmap <= 51'b000000000000000000001111111111100000000000000000000;
    9'b000000110 : bitmap <= 51'b000000000000000000001111111111100000000000000000000;
    9'b000000111 : bitmap <= 51'b000000000000000000000111111111000000000000000000000;
    9'b000001000 : bitmap <= 51'b000000000000000000000111111111000000000000000000000;
    9'b000001001 : bitmap <= 51'b000000000000000000000011111110000000000000000000000;
    9'b000001010 : bitmap <= 51'b000000000000000000000011111110000000000000000000000;
    9'b000001011 : bitmap <= 51'b000000100000000000000001111100000000000000001000000;
    9'b000001100 : bitmap <= 51'b000011110000000000000000111000000000000000011110000;
    9'b000001101 : bitmap <= 51'b000111110000000000000000000000000000000000011111000;
    9'b000001110 : bitmap <= 51'b011111111000000000000000000000000000000000111111110;
    9'b000001111 : bitmap <= 51'b111111111000000000000000000000000000000000111111111;
    9'b000010000 : bitmap <= 51'b111111111100000000000000000000000000000001111111111;
    9'b000010001 : bitmap <= 51'b111111111100000000000000000000000000000001111111111;
    9'b000010010 : bitmap <= 51'b111111111110000000000000000000000000000011111111111;
    9'b000010011 : bitmap <= 51'b111111111111000000000000000000000000000111111111111;
    9'b000010100 : bitmap <= 51'b111111111111000000000000000000000000000111111111111;
    9'b000010101 : bitmap <= 51'b111111111111100000000000000000000000001111111111111;
    9'b000010110 : bitmap <= 51'b111111111111100000000000000000000000001111111111111;
    9'b000010111 : bitmap <= 51'b111111111111110000000000000000000000011111111111111;
    9'b000011000 : bitmap <= 51'b111111111111110000000000000000000000011111111111111;
    9'b000011001 : bitmap <= 51'b111111111111111000000000000000000000111111111111111;
    9'b000011010 : bitmap <= 51'b111111111111111100000000000000000001111111111111111;
    9'b000011011 : bitmap <= 51'b111111111111111100000000000000000001111111111111111;
    9'b000011100 : bitmap <= 51'b111111111111111110000000000000000011111111111111111;
    9'b000011101 : bitmap <= 51'b111111111111111110000000000000000011111111111111111;
    9'b000011110 : bitmap <= 51'b111111111111111110000000000000000111111111111111111;
    9'b000011111 : bitmap <= 51'b111111111111111110000000000000000111111111111111111;
    9'b000100000 : bitmap <= 51'b111111111111111100000000000000001111111111111111111;
    9'b000100001 : bitmap <= 51'b111111111111111100000000000000001111111111111111111;
    9'b000100010 : bitmap <= 51'b111111111111111000000000000000011111111111111111111;
    9'b000100011 : bitmap <= 51'b111111111111110000000000000000111111111111111111111;
    9'b000100100 : bitmap <= 51'b111111111111110000000000000000111111111111111111111;
    9'b000100101 : bitmap <= 51'b111111111111100000000000000001111111111111111111111;
    9'b000100110 : bitmap <= 51'b111111111111100000000000000001111111111111111111111;
    9'b000100111 : bitmap <= 51'b111111111111000000000000000011111111111111111111111;
    9'b000101000 : bitmap <= 51'b111111111111000000000000000011111111111111111111111;
    9'b000101001 : bitmap <= 51'b111111111110000000000000000111111111111111111111111;
    9'b000101010 : bitmap <= 51'b111111111100000000000000001111111111111111111111111;
    9'b000101011 : bitmap <= 51'b111111111100000000000000001111111111111111111111111;
    9'b000101100 : bitmap <= 51'b111111111000000000000000011111111111111111111111111;
    9'b000101101 : bitmap <= 51'b011111111000000000000000011111111111111111111111110;
    9'b000101110 : bitmap <= 51'b000111110000000000000000111111111111111111111111000;
    9'b000101111 : bitmap <= 51'b000011110000000000000000111111111111111111111110000;
    9'b000110000 : bitmap <= 51'b000000100000000000000001111111111111111111111000000;
    9'b000110001 : bitmap <= 51'b000000000000000000000011111111111111111111100000000;
    9'b000110010 : bitmap <= 51'b000000000000000000000011111111111111111111000000000;
    9'b000110011 : bitmap <= 51'b000000000000000000000111111111111111111100000000000;
    9'b000110100 : bitmap <= 51'b000000000000000000000111111111111111110000000000000;
    9'b000110101 : bitmap <= 51'b000000000000000000001111111111111111100000000000000;
    9'b000110110 : bitmap <= 51'b000000000000000000001111111111111110000000000000000;
    9'b000110111 : bitmap <= 51'b000000000000000000011111111111110000000000000000000;
    9'b000111000 : bitmap <= 51'b000000000000000000001111111111100000000000000000000;
    9'b000111001 : bitmap <= 51'b000000000000000000000111111111000000000000000000000;
    9'b000111010 : bitmap <= 51'b000000000000000000000001111100000000000000000000000;
    9'b000111011 : bitmap <= 51'b000000000000000000000000010000000000000000000000000;


    
    
    9'b001000000 : bitmap <= 51'b000000000000000000000000010000000000000000000000000;
    9'b001000001 : bitmap <= 51'b000000000000000000000001111100000000000000000000000;
    9'b001000010 : bitmap <= 51'b000000000000000000000111111111000000000000000000000;
    9'b001000011 : bitmap <= 51'b000000000000000000001111111111100000000000000000000;
    9'b001000100 : bitmap <= 51'b000000000000000000111111111111110000000000000000000;
    9'b001000101 : bitmap <= 51'b000000000000000011111111111111100000000000000000000;
    9'b001000110 : bitmap <= 51'b000000000000001111111111111111100000000000000000000;
    9'b001000111 : bitmap <= 51'b000000000000011111111111111111000000000000000000000;
    9'b001001000 : bitmap <= 51'b000000000001111111111111111111000000000000000000000;
    9'b001001001 : bitmap <= 51'b000000000111111111111111111110000000000000000000000;
    9'b001001010 : bitmap <= 51'b000000001111111111111111111110000000000000000000000;
    9'b001001011 : bitmap <= 51'b000000111111111111111111111100000000000000001000000;
    9'b001001100 : bitmap <= 51'b000011111111111111111111111000000000000000011110000;
    9'b001001101 : bitmap <= 51'b000111111111111111111111111000000000000000011111000;
    9'b001001110 : bitmap <= 51'b011111111111111111111111110000000000000000111111110;
    9'b001001111 : bitmap <= 51'b111111111111111111111111110000000000000000111111111;
    9'b001010000 : bitmap <= 51'b111111111111111111111111100000000000000001111111111;
    9'b001010001 : bitmap <= 51'b111111111111111111111111100000000000000001111111111;
    9'b001010010 : bitmap <= 51'b111111111111111111111111000000000000000011111111111;
    9'b001010011 : bitmap <= 51'b111111111111111111111110000000000000000011111111111;
    9'b001010100 : bitmap <= 51'b111111111111111111111110000000000000000011111111111;
    9'b001010101 : bitmap <= 51'b111111111111111111111100000000000000000011111111111;
    9'b001010110 : bitmap <= 51'b111111111111111111111100000000000000000001111111111;
    9'b001010111 : bitmap <= 51'b000000000000000000000000000000000000000000000000000;
    9'b001011000 : bitmap <= 51'b000000000000000000000000000000000000000000000000000;
    9'b001011001 : bitmap <= 51'b000000000000000000000000000000000000000000000000000;
    9'b001011010 : bitmap <= 51'b000000000000000000000000000000000000000000000000000;
    9'b001011011 : bitmap <= 51'b000000000000000000000000000000000000000000000000000;
    9'b001011100 : bitmap <= 51'b000000000000000000000000000000000000000000000000000;
    9'b001011101 : bitmap <= 51'b000000000000000000000000000000000000000000000000000;
    9'b001011110 : bitmap <= 51'b000000000000000000000000000000000000000000000000000;
    9'b001011111 : bitmap <= 51'b000000000000000000000000000000000000000000000000000;
    9'b001100000 : bitmap <= 51'b000000000000000000000000000000000000000000000000000;
    9'b001100001 : bitmap <= 51'b000000000000000000000000000000000000000000000000000;
    9'b001100010 : bitmap <= 51'b000000000000000000000000000000000000000000000000000;
    9'b001100011 : bitmap <= 51'b000000000000000000000000000000000000000000000000000;
    9'b001100100 : bitmap <= 51'b000000000000000000000000000000000000000000000000000;
    9'b001100101 : bitmap <= 51'b111111111111111111111111111111111111111111111111111;
    9'b001100110 : bitmap <= 51'b111111111111111111111111111111111111111111111111111;
    9'b001100111 : bitmap <= 51'b111111111111111111111111111111111111111111111111111;
    9'b001101000 : bitmap <= 51'b111111111111111111111111111111111111111111111111111;
    9'b001101001 : bitmap <= 51'b111111111111111111111111111111111111111111111111111;
    9'b001101010 : bitmap <= 51'b111111111111111111111111111111111111111111111111111;
    9'b001101011 : bitmap <= 51'b111111111111111111111111111111111111111111111111111;
    9'b001101100 : bitmap <= 51'b111111111111111111111111111111111111111111111111111;
    9'b001101101 : bitmap <= 51'b011111111111111111111111111111111111111111111111110;
    9'b001101110 : bitmap <= 51'b000111111111111111111111111111111111111111111111000;
    9'b001101111 : bitmap <= 51'b000011111111111111111111111111111111111111111110000;
    9'b001110000 : bitmap <= 51'b000000111111111111111111111111111111111111111000000;
    9'b001110001 : bitmap <= 51'b000000001111111111111111111111111111111111100000000;
    9'b001110010 : bitmap <= 51'b000000000111111111111111111111111111111111000000000;
    9'b001110011 : bitmap <= 51'b000000000001111111111111111111111111111100000000000;
    9'b001110100 : bitmap <= 51'b000000000000011111111111111111111111110000000000000;
    9'b001110101 : bitmap <= 51'b000000000000001111111111111111111111100000000000000;
    9'b001110110 : bitmap <= 51'b000000000000000011111111111111111110000000000000000;
    9'b001110111 : bitmap <= 51'b000000000000000000011111111111111000000000000000000;
    9'b001111000 : bitmap <= 51'b000000000000000000001111111111100000000000000000000;
    9'b001111001 : bitmap <= 51'b000000000000000000000111111111000000000000000000000;
    9'b001111010 : bitmap <= 51'b000000000000000000000001111100000000000000000000000;
    9'b001111011 : bitmap <= 51'b000000000000000000000000010000000000000000000000000;
    
    9'b010000000 : bitmap <= 51'b000000000000000000000000010000000000000000000000000;
    9'b010000001 : bitmap <= 51'b000000000000000000000001111100000000000000000000000;
    9'b010000010 : bitmap <= 51'b000000000000000000000111111111000000000000000000000;
    9'b010000011 : bitmap <= 51'b000000000000000000001111111111100000000000000000000;
    9'b010000100 : bitmap <= 51'b000000000000000000011111111111111000000000000000000;
    9'b010000101 : bitmap <= 51'b000000000000000000001111111111111110000000000000000;
    9'b010000110 : bitmap <= 51'b000000000000000000001111111111111111100000000000000;
    9'b010000111 : bitmap <= 51'b000000000000000000000111111111111111110000000000000;
    9'b010001000 : bitmap <= 51'b000000000000000000000111111111111111111100000000000;
    9'b010001001 : bitmap <= 51'b000000000000000000000011111111111111111111000000000;
    9'b010001010 : bitmap <= 51'b000000000000000000000011111111111111111111100000000;
    9'b010001011 : bitmap <= 51'b000000100000000000000001111111111111111111111000000;
    9'b010001100 : bitmap <= 51'b000011110000000000000000111111111111111111111110000;
    9'b010001101 : bitmap <= 51'b000111110000000000000000111111111111111111111111000;
    9'b010001110 : bitmap <= 51'b011111111000000000000000011111111111111111111111110;
    9'b010001111 : bitmap <= 51'b111111111000000000000000011111111111111111111111111;
    9'b010010000 : bitmap <= 51'b111111111100000000000000001111111111111111111111111;
    9'b010010001 : bitmap <= 51'b111111111100000000000000001111111111111111111111111;
    9'b010010010 : bitmap <= 51'b111111111110000000000000000111111111111111111111111;
    9'b010010011 : bitmap <= 51'b111111111111000000000000000011111111111111111111111;
    9'b010010100 : bitmap <= 51'b111111111111000000000000000011111111111111111111111;
    9'b010010101 : bitmap <= 51'b111111111111100000000000000001111111111111111111111;
    9'b010010110 : bitmap <= 51'b111111111111100000000000000001111111111111111111111;
    9'b010010111 : bitmap <= 51'b111111111111110000000000000000000000000000000000000;
    9'b010011000 : bitmap <= 51'b111111111111110000000000000000000000000000000000000;
    9'b010011001 : bitmap <= 51'b111111111111111000000000000000000000000000000000000;
    9'b010011010 : bitmap <= 51'b111111111111111100000000000000000000000000000000000;
    9'b010011011 : bitmap <= 51'b111111111111111100000000000000000000000000000000000;
    9'b010011100 : bitmap <= 51'b111111111111111110000000000000000000000000000000000;
    9'b010011101 : bitmap <= 51'b111111111111111110000000000000000000000000000000000;
    9'b010011110 : bitmap <= 51'b111111111111111111000000000000000000000000000000000;
    9'b010011111 : bitmap <= 51'b111111111111111111000000000000000000000000000000000;
    9'b010100000 : bitmap <= 51'b111111111111111111100000000000000000000000000000000;
    9'b010100001 : bitmap <= 51'b111111111111111111100000000000000000000000000000000;
    9'b010100010 : bitmap <= 51'b111111111111111111110000000000000000000000000000000;
    9'b010100011 : bitmap <= 51'b111111111111111111111000000000000000000000000000000;
    9'b010100100 : bitmap <= 51'b111111111111111111111000000000000000000000000000000;
    9'b010100101 : bitmap <= 51'b111111111111111111111100000000000000000001111111111;
    9'b010100110 : bitmap <= 51'b111111111111111111111100000000000000000011111111111;
    9'b010100111 : bitmap <= 51'b111111111111111111111110000000000000000011111111111;
    9'b010101000 : bitmap <= 51'b111111111111111111111110000000000000000011111111111;
    9'b010101001 : bitmap <= 51'b111111111111111111111111000000000000000011111111111;
    9'b010101010 : bitmap <= 51'b111111111111111111111111100000000000000001111111111;
    9'b010101011 : bitmap <= 51'b111111111111111111111111100000000000000001111111111;
    9'b010101100 : bitmap <= 51'b111111111111111111111111110000000000000000111111111;
    9'b010101101 : bitmap <= 51'b011111111111111111111111110000000000000000111111110;
    9'b010101110 : bitmap <= 51'b000111111111111111111111111000000000000000011111000;
    9'b010101111 : bitmap <= 51'b000011111111111111111111111000000000000000011110000;
    9'b010110000 : bitmap <= 51'b000000111111111111111111111100000000000000001000000;
    9'b010110001 : bitmap <= 51'b000000001111111111111111111110000000000000000000000;
    9'b010110010 : bitmap <= 51'b000000000111111111111111111110000000000000000000000;
    9'b010110011 : bitmap <= 51'b000000000001111111111111111111000000000000000000000;
    9'b010110100 : bitmap <= 51'b000000000000011111111111111111000000000000000000000;
    9'b010110101 : bitmap <= 51'b000000000000001111111111111111100000000000000000000;
    9'b010110110 : bitmap <= 51'b000000000000000011111111111111100000000000000000000;
    9'b010110111 : bitmap <= 51'b000000000000000000111111111111110000000000000000000;
    9'b010111000 : bitmap <= 51'b000000000000000000001111111111100000000000000000000;
    9'b010111001 : bitmap <= 51'b000000000000000000000111111111000000000000000000000;
    9'b010111010 : bitmap <= 51'b000000000000000000000001111100000000000000000000000;
    9'b010111011 : bitmap <= 51'b000000000000000000000000010000000000000000000000000;


    
    9'b011000000 : bitmap <= 51'b000000000000000000000000010000000000000000000000000;
    9'b011000001 : bitmap <= 51'b000000000000000000000001111100000000000000000000000;
    9'b011000010 : bitmap <= 51'b000000000000000000000111111111000000000000000000000;
    9'b011000011 : bitmap <= 51'b000000000000000000001111111111100000000000000000000;
    9'b011000100 : bitmap <= 51'b000000000000000000011111111111110000000000000000000;
    9'b011000101 : bitmap <= 51'b000000000000000011111111111111100000000000000000000;
    9'b011000110 : bitmap <= 51'b000000000000001111111111111111100000000000000000000;
    9'b011000111 : bitmap <= 51'b000000000000011111111111111111000000000000000000000;
    9'b011001000 : bitmap <= 51'b000000000001111111111111111111000000000000000000000;
    9'b011001001 : bitmap <= 51'b000000000111111111111111111110000000000000000000000;
    9'b011001010 : bitmap <= 51'b000000001111111111111111111110000000000000000000000;
    9'b011001011 : bitmap <= 51'b000000111111111111111111111100000000000000001000000;
    9'b011001100 : bitmap <= 51'b000011111111111111111111111000000000000000011110000;
    9'b011001101 : bitmap <= 51'b000111111111111111111111111000000000000000011111000;
    9'b011001110 : bitmap <= 51'b011111111111111111111111110000000000000000111111110;
    9'b011001111 : bitmap <= 51'b111111111111111111111111110000000000000000111111111;
    9'b011010000 : bitmap <= 51'b111111111111111111111111100000000000000001111111111;
    9'b011010001 : bitmap <= 51'b111111111111111111111111100000000000000001111111111;
    9'b011010010 : bitmap <= 51'b111111111111111111111111000000000000000011111111111;
    9'b011010011 : bitmap <= 51'b111111111111111111111110000000000000000111111111111;
    9'b011010100 : bitmap <= 51'b111111111111111111111110000000000000000111111111111;
    9'b011010101 : bitmap <= 51'b111111111111111111111100000000000000001111111111111;
    9'b011010110 : bitmap <= 51'b111111111111111111111100000000000000001111111111111;
    9'b011010111 : bitmap <= 51'b111111111111111111111000000000000000011111111111111;
    9'b011011000 : bitmap <= 51'b111111111111111111111000000000000000011111111111111;
    9'b011011001 : bitmap <= 51'b111111111111111111110000000000000000111111111111111;
    9'b011011010 : bitmap <= 51'b111111111111111111100000000000000001111111111111111;
    9'b011011011 : bitmap <= 51'b111111111111111111100000000000000001111111111111111;
    9'b011011100 : bitmap <= 51'b111111111111111111000000000000000011111111111111111;
    9'b011011101 : bitmap <= 51'b111111111111111111000000000000000011111111111111111;
    9'b011011110 : bitmap <= 51'b111111111111111110000000000000000011111111111111111;
    9'b011011111 : bitmap <= 51'b111111111111111110000000000000000011111111111111111;
    9'b011100000 : bitmap <= 51'b111111111111111100000000000000000001111111111111111;
    9'b011100001 : bitmap <= 51'b111111111111111100000000000000000001111111111111111;
    9'b011100010 : bitmap <= 51'b111111111111111000000000000000000000111111111111111;
    9'b011100011 : bitmap <= 51'b111111111111110000000000000000000000011111111111111;
    9'b011100100 : bitmap <= 51'b111111111111110000000000000000000000011111111111111;
    9'b011100101 : bitmap <= 51'b111111111111100000000000000000000000001111111111111;
    9'b011100110 : bitmap <= 51'b111111111111100000000000000000000000001111111111111;
    9'b011100111 : bitmap <= 51'b111111111111000000000000000000000000000111111111111;
    9'b011101000 : bitmap <= 51'b111111111111000000000000000000000000000111111111111;
    9'b011101001 : bitmap <= 51'b111111111110000000000000000000000000000011111111111;
    9'b011101010 : bitmap <= 51'b111111111100000000000000000000000000000001111111111;
    9'b011101011 : bitmap <= 51'b111111111100000000000000000000000000000001111111111;
    9'b011101100 : bitmap <= 51'b111111111000000000000000000000000000000000111111111;
    9'b011101101 : bitmap <= 51'b011111111000000000000000000000000000000000111111110;
    9'b011101110 : bitmap <= 51'b000111110000000000000000000000000000000000011111000;
    9'b011101111 : bitmap <= 51'b000011110000000000000000111000000000000000011110000;
    9'b011110000 : bitmap <= 51'b000000100000000000000001111100000000000000001000000;
    9'b011110001 : bitmap <= 51'b000000000000000000000011111110000000000000000000000;
    9'b011110010 : bitmap <= 51'b000000000000000000000011111110000000000000000000000;
    9'b011110011 : bitmap <= 51'b000000000000000000000111111111000000000000000000000;
    9'b011110100 : bitmap <= 51'b000000000000000000000111111111000000000000000000000;
    9'b011110101 : bitmap <= 51'b000000000000000000001111111111100000000000000000000;
    9'b011110110 : bitmap <= 51'b000000000000000000001111111111100000000000000000000;
    9'b011110111 : bitmap <= 51'b000000000000000000011111111111110000000000000000000;
    9'b011111000 : bitmap <= 51'b000000000000000000001111111111100000000000000000000;
    9'b011111001 : bitmap <= 51'b000000000000000000000111111111000000000000000000000;
    9'b011111010 : bitmap <= 51'b000000000000000000000001111100000000000000000000000;
    9'b011111011 : bitmap <= 51'b000000000000000000000000010000000000000000000000000;
    
    9'b100000000 : bitmap <= 51'b000000000000000000000000010000000000000000000000000;
    9'b100000001 : bitmap <= 51'b000000000000000000000001111100000000000000000000000;
    9'b100000010 : bitmap <= 51'b000000000000000000000111111111000000000000000000000;
    9'b100000011 : bitmap <= 51'b000000000000000000001111111111100000000000000000000;
    9'b100000100 : bitmap <= 51'b000000000000000000111111111111110000000000000000000;
    9'b100000101 : bitmap <= 51'b000000000000000011111111111111111110000000000000000;
    9'b100000110 : bitmap <= 51'b000000000000001111111111111111111111100000000000000;
    9'b100000111 : bitmap <= 51'b000000000000011111111111111111111111110000000000000;
    9'b100001000 : bitmap <= 51'b000000000001111111111111111111111111111100000000000;
    9'b100001001 : bitmap <= 51'b000000000111111111111111111111111111111111000000000;
    9'b100001010 : bitmap <= 51'b000000001111111111111111111111111111111111100000000;
    9'b100001011 : bitmap <= 51'b000000111111111111111111111111111111111111111000000;
    9'b100001100 : bitmap <= 51'b000011111111111111111111111111111111111111111110000;
    9'b100001101 : bitmap <= 51'b000111111111111111111111111111111111111111111111000;
    9'b100001110 : bitmap <= 51'b011111111111111111111111111111111111111111111111110;
    9'b100001111 : bitmap <= 51'b111111111111111111111111111111111111111111111111111;
    9'b100010000 : bitmap <= 51'b111111111111111111111111111111111111111111111111111;
    9'b100010001 : bitmap <= 51'b111111111111111111111111111111111111111111111111111;
    9'b100010010 : bitmap <= 51'b111111111111111111111111111111111111111111111111111;
    9'b100010011 : bitmap <= 51'b111111111111111111111111111111111111111111111111111;
    9'b100010100 : bitmap <= 51'b111111111111111111111111111111111111111111111111111;
    9'b100010101 : bitmap <= 51'b111111111111111111111111111111111111111111111111111;
    9'b100010110 : bitmap <= 51'b111111111111111111111111111111111111111111111111111;
    9'b100010111 : bitmap <= 51'b000000000000000000000000000000000000000000000000000;
    9'b100011000 : bitmap <= 51'b000000000000000000000000000000000000000000000000000;
    9'b100011001 : bitmap <= 51'b000000000000000000000000000000000000000000000000000;
    9'b100011010 : bitmap <= 51'b000000000000000000000000000000000000000000000000000;
    9'b100011011 : bitmap <= 51'b000000000000000000000000000000000000000000000000000;
    9'b100011100 : bitmap <= 51'b000000000000000000000000000000000000000000000000000;
    9'b100011101 : bitmap <= 51'b000000000000000000000000000000000000000000000000000;
    9'b100011110 : bitmap <= 51'b000000000000000000000000000000000000000000000000000;
    9'b100011111 : bitmap <= 51'b000000000000000000000000000000000000000000000000000;
    9'b100100000 : bitmap <= 51'b000000000000000000000000000000000000000000000000000;
    9'b100100001 : bitmap <= 51'b000000000000000000000000000000000000000000000000000;
    9'b100100010 : bitmap <= 51'b000000000000000000000000000000000000000000000000000;
    9'b100100011 : bitmap <= 51'b000000000000000000000000000000000000000000000000000;
    9'b100100100 : bitmap <= 51'b000000000000000000000000000000000000000000000000000;
    9'b100100101 : bitmap <= 51'b111111111100000000000000000001111111111111111111111;
    9'b100100110 : bitmap <= 51'b111111111110000000000000000001111111111111111111111;
    9'b100100111 : bitmap <= 51'b111111111110000000000000000011111111111111111111111;
    9'b100101000 : bitmap <= 51'b111111111110000000000000000011111111111111111111111;
    9'b100101001 : bitmap <= 51'b111111111110000000000000000111111111111111111111111;
    9'b100101010 : bitmap <= 51'b111111111100000000000000001111111111111111111111111;
    9'b100101011 : bitmap <= 51'b111111111100000000000000001111111111111111111111111;
    9'b100101100 : bitmap <= 51'b111111111000000000000000011111111111111111111111111;
    9'b100101101 : bitmap <= 51'b011111111000000000000000011111111111111111111111110;
    9'b100101110 : bitmap <= 51'b000111110000000000000000111111111111111111111111000;
    9'b100101111 : bitmap <= 51'b000011110000000000000000111111111111111111111110000;
    9'b100110000 : bitmap <= 51'b000000100000000000000001111111111111111111111000000;
    9'b100110001 : bitmap <= 51'b000000000000000000000011111111111111111111100000000;
    9'b100110010 : bitmap <= 51'b000000000000000000000011111111111111111111000000000;
    9'b100110011 : bitmap <= 51'b000000000000000000000111111111111111111100000000000;
    9'b100110100 : bitmap <= 51'b000000000000000000000111111111111111110000000000000;
    9'b100110101 : bitmap <= 51'b000000000000000000001111111111111111100000000000000;
    9'b100110110 : bitmap <= 51'b000000000000000000001111111111111110000000000000000;
    9'b100110111 : bitmap <= 51'b000000000000000000011111111111111000000000000000000;
    9'b100111000 : bitmap <= 51'b000000000000000000001111111111100000000000000000000;
    9'b100111001 : bitmap <= 51'b000000000000000000000111111111000000000000000000000;
    9'b100111010 : bitmap <= 51'b000000000000000000000001111100000000000000000000000;
    9'b100111011 : bitmap <= 51'b000000000000000000000000010000000000000000000000000;
    
    9'b101000000 : bitmap <= 51'b000000000000000000000000010000000000000000000000000;
    9'b101000001 : bitmap <= 51'b000000000000000000000001111100000000000000000000000;
    9'b101000010 : bitmap <= 51'b000000000000000000000111111111000000000000000000000;
    9'b101000011 : bitmap <= 51'b000000000000000000001111111111100000000000000000000;
    9'b101000100 : bitmap <= 51'b000000000000000000011111111111111000000000000000000;
    9'b101000101 : bitmap <= 51'b000000000000000000001111111111111110000000000000000;
    9'b101000110 : bitmap <= 51'b000000000000000000001111111111111111100000000000000;
    9'b101000111 : bitmap <= 51'b000000000000000000000111111111111111110000000000000;
    9'b101001000 : bitmap <= 51'b000000000000000000000111111111111111111100000000000;
    9'b101001001 : bitmap <= 51'b000000000000000000000011111111111111111111000000000;
    9'b101001010 : bitmap <= 51'b000000000000000000000011111111111111111111100000000;
    9'b101001011 : bitmap <= 51'b000000100000000000000001111111111111111111111000000;
    9'b101001100 : bitmap <= 51'b000011110000000000000000111111111111111111111110000;
    9'b101001101 : bitmap <= 51'b000111110000000000000000111111111111111111111111000;
    9'b101001110 : bitmap <= 51'b011111111000000000000000011111111111111111111111110;
    9'b101001111 : bitmap <= 51'b111111111000000000000000011111111111111111111111111;
    9'b101010000 : bitmap <= 51'b111111111100000000000000001111111111111111111111111;
    9'b101010001 : bitmap <= 51'b111111111100000000000000001111111111111111111111111;
    9'b101010010 : bitmap <= 51'b111111111110000000000000000111111111111111111111111;
    9'b101010011 : bitmap <= 51'b111111111110000000000000000011111111111111111111111;
    9'b101010100 : bitmap <= 51'b111111111110000000000000000011111111111111111111111;
    9'b101010101 : bitmap <= 51'b111111111110000000000000000001111111111111111111111;
    9'b101010110 : bitmap <= 51'b111111111100000000000000000001111111111111111111111;
    9'b101010111 : bitmap <= 51'b000000000000000000000000000000111111111111111111111;
    9'b101011000 : bitmap <= 51'b000000000000000000000000000000111111111111111111111;
    9'b101011001 : bitmap <= 51'b000000000000000000000000000000011111111111111111111;
    9'b101011010 : bitmap <= 51'b000000000000000000000000000000001111111111111111111;
    9'b101011011 : bitmap <= 51'b000000000000000000000000000000001111111111111111111;
    9'b101011100 : bitmap <= 51'b000000000000000000000000000000000111111111111111111;
    9'b101011101 : bitmap <= 51'b000000000000000000000000000000000111111111111111111;
    9'b101011110 : bitmap <= 51'b000000000000000000000000000000000011111111111111111;
    9'b101011111 : bitmap <= 51'b000000000000000000000000000000000011111111111111111;
    9'b101100000 : bitmap <= 51'b000000000000000000000000000000000001111111111111111;
    9'b101100001 : bitmap <= 51'b000000000000000000000000000000000001111111111111111;
    9'b101100010 : bitmap <= 51'b000000000000000000000000000000000000111111111111111;
    9'b101100011 : bitmap <= 51'b000000000000000000000000000000000000011111111111111;
    9'b101100100 : bitmap <= 51'b000000000000000000000000000000000000011111111111111;
    9'b101100101 : bitmap <= 51'b111111111111111111111100000000000000001111111111111;
    9'b101100110 : bitmap <= 51'b111111111111111111111100000000000000001111111111111;
    9'b101100111 : bitmap <= 51'b111111111111111111111110000000000000000111111111111;
    9'b101101000 : bitmap <= 51'b111111111111111111111110000000000000000111111111111;
    9'b101101001 : bitmap <= 51'b111111111111111111111111000000000000000011111111111;
    9'b101101010 : bitmap <= 51'b111111111111111111111111100000000000000001111111111;
    9'b101101011 : bitmap <= 51'b111111111111111111111111100000000000000001111111111;
    9'b101101100 : bitmap <= 51'b111111111111111111111111110000000000000000111111111;
    9'b101101101 : bitmap <= 51'b011111111111111111111111110000000000000000111111110;
    9'b101101110 : bitmap <= 51'b000111111111111111111111111000000000000000011111000;
    9'b101101111 : bitmap <= 51'b000011111111111111111111111000000000000000011110000;
    9'b101110000 : bitmap <= 51'b000000111111111111111111111100000000000000001000000;
    9'b101110001 : bitmap <= 51'b000000001111111111111111111110000000000000000000000;
    9'b101110010 : bitmap <= 51'b000000000111111111111111111110000000000000000000000;
    9'b101110011 : bitmap <= 51'b000000000001111111111111111111000000000000000000000;
    9'b101110100 : bitmap <= 51'b000000000000011111111111111111000000000000000000000;
    9'b101110101 : bitmap <= 51'b000000000000001111111111111111100000000000000000000;
    9'b101110110 : bitmap <= 51'b000000000000000011111111111111100000000000000000000;
    9'b101110111 : bitmap <= 51'b000000000000000000111111111111110000000000000000000;
    9'b101111000 : bitmap <= 51'b000000000000000000001111111111100000000000000000000;
    9'b101111001 : bitmap <= 51'b000000000000000000000111111111000000000000000000000;
    9'b101111010 : bitmap <= 51'b000000000000000000000001111100000000000000000000000;
    9'b101111011 : bitmap <= 51'b000000000000000000000000010000000000000000000000000;


    

    default: bitmap <= 0;
       endcase
 end
        endmodule