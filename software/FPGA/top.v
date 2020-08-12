module main(input CLK_IN, input SPI_SCK, output SPI_MOSI, input SPI_MISO, input SPI_SSEL, output RLED);

wire CLK_PLL;
wire PLL_LOCK;

pll pll(.clock_in(CLK_IN),
       	.clock_out(CLK_PLL),
       	.locked(PLL_LOCK));

SPI_slave spi(.clk(CLK_PLL),
       		.SCK(SPI_SCK),
	       	.MOSI(SPI_MOSI),
	        .MISO(SPI_MISO),
		.SSEL(SPI_SSEL),
		.LED(RLED));
endmodule
