// Pong VGA game
// (c) fpga4fun.com

module mojo_top_0(
input clk,
input[4:0] io_button,
output reg [8:0] io_led,
output vga_h_sync,
output vga_v_sync,
output vga_R,
output vga_G,
output vga_B
);

wire inDisplayArea;
wire [10:0] CounterX;
wire [8:0] CounterY;

hvsync_generator_1 syncgen(.clk(clk), .vga_h_sync(vga_h_sync), .vga_v_sync(vga_v_sync), 
  .inDisplayArea(inDisplayArea), .CounterX(CounterX), .CounterY(CounterY));
  
tilesort_2 tiles(.clk(clk),.debug1(d1),.debug2(d2),.debug3(d3),.debug4(d4),.left(io_button[3]),.right(io_button[4]),.up(io_button[0]),.down(io_button[2]),.center(io_button[1]),.selector_out(selector),.shape0_out(tile1));
bannerdraw_3 banner(.clk(clk), .out(out));


/////////////////////////////////////////////////////////////////
wire R = selector|tile1;
wire G = selector|tile1;
wire B = selector|tile1;
reg vga_R, vga_G, vga_B;

always @(posedge clk)
begin
io_led[0] = io_button[0];
io_led[1] = io_button[1];
io_led[2] = io_button[2];
io_led[3] = io_button[3];
io_led[4] = io_button[4];
io_led[5] = d1;
io_led[6] = d2;
io_led[7] = d3;
io_led[8] = d4;
	vga_R <= R & inDisplayArea;
	vga_G <= G & inDisplayArea;
	vga_B <= B & inDisplayArea;
end

endmodule