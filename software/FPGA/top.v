module top(input clk, input SCK, input MOSI, output MISO, input SSEL, output LED);

wire w_clk;
wire w_sck;
wire w_mosi;
wire w_mosi;
wire w_miso;
wire w_ssel;
wire w_led;

assign w_clk = clk;
assign w_sck = SCK;
assign w_mosi = MOSI;
assign w_miso = MISO;
assign w_ssel = SSEL;
assign w_led = LED;

spi_slave spi_slave(.clk(clk), .SCK(SCK), .MOSI(MOSI), .MISO(MISO), .SSEL(SSEL), .LED(LED));

endmodule
