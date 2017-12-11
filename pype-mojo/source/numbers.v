module numbers (clk, en, digit, address, bitmap); 
    input  clk;
    input   en;
    input wire [3:0] orientation;
    input wire[3:0] address;
    output reg [5:0] bitmap;
    reg   [7:0] raddr;
    reg [3:0] digit_reg;
    reg[3:0] address_reg;
 always @(posedge clk)
 begin

    if (en)
     digit_reg <= digit;
     address_reg <= address;
     raddr <= {digit_reg,address_reg};
 end

 always @(raddr) 
 begin
    if (en)
       case(raddr)
          8'b00000000 : bitmap <= 6'b111111;
          8'b00000001 : bitmap <= 6'b111111;
          8'b00000010 : bitmap <= 6'b110011;
          8'b00000011 : bitmap <= 6'b110011;
          8'b00000100 : bitmap <= 6'b110011;
          8'b00000101 : bitmap <= 6'b110011;
          8'b00000110 : bitmap <= 6'b110011;
          8'b00000111 : bitmap <= 6'b110011;
          8'b00001000 : bitmap <= 6'b111111;
          8'b00001001 : bitmap <= 6'b111111;

          8'b00010000 : bitmap <= 6'b111100;
          8'b00010001 : bitmap <= 6'b111100;
          8'b00010010 : bitmap <= 6'b001100;
          8'b00010011 : bitmap <= 6'b001100;
          8'b00010100 : bitmap <= 6'b001100;
          8'b00010101 : bitmap <= 6'b001100;
          8'b00010110 : bitmap <= 6'b001100;
          8'b00010111 : bitmap <= 6'b001100;
          8'b00011000 : bitmap <= 6'b111111;
          8'b00011001 : bitmap <= 6'b111111;

          8'b00100000 : bitmap <= 6'b111100;
          8'b00100001 : bitmap <= 6'b111100;
          8'b00100010 : bitmap <= 6'b000011;
          8'b00100011 : bitmap <= 6'b000011;
          8'b00100100 : bitmap <= 6'b001100;
          8'b00100101 : bitmap <= 6'b001100;
          8'b00100110 : bitmap <= 6'b110000;
          8'b00100111 : bitmap <= 6'b110000;
          8'b00101000 : bitmap <= 6'b111111;
          8'b00101001 : bitmap <= 6'b111111;

          8'b00110000 : bitmap <= 6'b111100;
          8'b00110001 : bitmap <= 6'b111100;
          8'b00110010 : bitmap <= 6'b000011;
          8'b00110011 : bitmap <= 6'b000011;
          8'b00110100 : bitmap <= 6'b111100;
          8'b00110101 : bitmap <= 6'b111100;
          8'b00110110 : bitmap <= 6'b000011;
          8'b00110111 : bitmap <= 6'b000011;
          8'b00111000 : bitmap <= 6'b111111;
          8'b00111001 : bitmap <= 6'b111111;

          8'b01000000 : bitmap <= 6'b110000;
          8'b01000001 : bitmap <= 6'b110000;
          8'b01000010 : bitmap <= 6'b110011;
          8'b01000011 : bitmap <= 6'b110011;
          8'b01000100 : bitmap <= 6'b111111;
          8'b01000101 : bitmap <= 6'b111111;
          8'b01000110 : bitmap <= 6'b000011;
          8'b01000111 : bitmap <= 6'b000011;
          8'b01001000 : bitmap <= 6'b000011;
          8'b01001001 : bitmap <= 6'b000011;

          8'b01010000 : bitmap <= 6'b111111;
          8'b01010001 : bitmap <= 6'b111111;
          8'b01010010 : bitmap <= 6'b110000;
          8'b01010011 : bitmap <= 6'b110000;
          8'b01010100 : bitmap <= 6'b001100;
          8'b01010101 : bitmap <= 6'b001100;
          8'b01010110 : bitmap <= 6'b000011;
          8'b01010111 : bitmap <= 6'b000011;
          8'b01011000 : bitmap <= 6'b111111;
          8'b01011001 : bitmap <= 6'b111111;
          
          8'b01100000 : bitmap <= 6'b001111;
          8'b01100001 : bitmap <= 6'b001111;
          8'b01100010 : bitmap <= 6'b110000;
          8'b01100011 : bitmap <= 6'b110000;
          8'b01100100 : bitmap <= 6'b111111;
          8'b01100101 : bitmap <= 6'b111111;
          8'b01100110 : bitmap <= 6'b110011;
          8'b01100111 : bitmap <= 6'b110011;
          8'b01101000 : bitmap <= 6'b111111;
          8'b01101001 : bitmap <= 6'b111111;
          
          8'b01110000 : bitmap <= 6'b111111;
          8'b01110001 : bitmap <= 6'b111111;
          8'b01110010 : bitmap <= 6'b000011;
          8'b01110011 : bitmap <= 6'b000011;
          8'b01110100 : bitmap <= 6'b001100;
          8'b01110101 : bitmap <= 6'b001100;
          8'b01110110 : bitmap <= 6'b001100;
          8'b01110111 : bitmap <= 6'b001100;
          8'b01111000 : bitmap <= 6'b001100;
          8'b01111001 : bitmap <= 6'b001100;
          
          8'b10000000 : bitmap <= 6'b111100;
          8'b10000001 : bitmap <= 6'b111100;
          8'b10000010 : bitmap <= 6'b110011;
          8'b10000011 : bitmap <= 6'b110011;
          8'b10000100 : bitmap <= 6'b111111;
          8'b10000101 : bitmap <= 6'b111111;
          8'b10000110 : bitmap <= 6'b110011;
          8'b10000111 : bitmap <= 6'b110011;
          8'b10001000 : bitmap <= 6'b111111;
          8'b10001001 : bitmap <= 6'b111111;
          
          8'b10010000 : bitmap <= 6'b111100;
          8'b10010001 : bitmap <= 6'b111100;
          8'b10010010 : bitmap <= 6'b110011;
          8'b10010011 : bitmap <= 6'b110011;
          8'b10010100 : bitmap <= 6'b111111;
          8'b10010101 : bitmap <= 6'b111111;
          8'b10010110 : bitmap <= 6'b000011;
          8'b10010111 : bitmap <= 6'b000011;
          8'b10011000 : bitmap <= 6'b111100;
          8'b10011001 : bitmap <= 6'b111100;

          default: bitmap <= 0;
       endcase
    else bitmap <=0;
 end
        endmodule