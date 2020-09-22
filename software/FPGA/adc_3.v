module adc_3(
			mclk_out, comp,
			sw_in, sw_up, sw_dn, sw_rst, sw_vref, sw_vref_n, so_dat,
			deb_0,deb_1,deb_2, led_red
		);

input mclk_out,comp;
output sw_in, sw_up,sw_dn,sw_rst,sw_vref,sw_vref_n,so_dat;
output deb_0,deb_1,deb_2;
reg[5:0] cnt;
reg[5:0] uart_divider;
reg[10:0] cnt_stat;
reg[10:0] cnt_runup;
reg[2:0] state = 3'd0;
reg[2:0] debug;
reg[0:0] sw_up_r, sw_dn_r, sw_rst_r, sw_vref_r, sw_in_r;
reg[0:0] runup_state_r,timer_gate_r;
reg uart_tx_start, uart_frame_start;
reg [2:0] uart_frame_state,uart_frame_r;
reg [3:0] uart_frame_cnt;
wire uart_busy,uart_tx_bit_clock;
reg deb;
reg [10:0] runup_cnt;
reg [15:0] rundown_cnt;
reg rundown_sign;
reg [31:0] frame_content;
reg [31:0] result_content;
reg [7:0] uart_tx_register;
reg mclk;
output led_red;
reg led_stat;

assign led_stat = led_red;


pll pll(.clock_in(mclk_out),.clock_out(mclk));
	 
always @ (posedge mclk) 
	if (cnt >= 49)  
		cnt <= 0;
	else
		cnt <= cnt + 1;

	 
always @ (posedge cnt[5]) 
begin
	led_stat <=~led_stat;
	uart_divider <= uart_divider + 1;
	if (state==0)
	begin
		if (cnt_stat==0)
			begin
			timer_gate_r<=0;
			sw_rst_r <= 1;
			sw_in_r <= 0;
			sw_vref_r <= 1;
			sw_up_r <= 0;
			sw_dn_r <= 0;
			uart_frame_start <=1;
			end
		if (cnt_stat>=39)
			begin
				led_stat <= ~led_stat;
			cnt_stat <= 0;
			state <= 1;
			cnt_runup <= 0;
			runup_state_r <=0;
			runup_cnt <=0;	
			end
		else
			begin
			cnt_stat <= cnt_stat + 1;
			end
	end
	
	if (state==1)
	begin
		uart_frame_start <=0;
		sw_rst_r <= 0;
		sw_in_r <= 1;
		sw_vref_r <= 1;
		if (runup_state_r==0)
			begin
			if (cnt_stat>=90)
				begin
				sw_up_r <= 1;
				sw_dn_r <= 0;
				end
			else
				begin
				sw_up_r <= 0;
				sw_dn_r <= 1;
				end			
			end
		else
			begin
			if (cnt_stat>=10)
				begin
				sw_up_r <= 1;
				sw_dn_r <= 0;
				end
			else
				begin
				sw_up_r <= 0;
				sw_dn_r <= 1;
				end			
			end	
		if (cnt_stat>=99)
			begin
			cnt_stat<=0;
			cnt_runup <= cnt_runup + 1;
			if (cnt_runup>=(200-1))
				begin
				state <= 2;
				end
			else
				begin
				if (comp==0) 
					begin
					runup_state_r <= 1;
					runup_cnt <= runup_cnt + 1;
					end
				else runup_state_r <= 0;
				end
			end
		else
			begin
			cnt_stat <= cnt_stat + 1;
			end
	end	 
	
	if (state==2)
	begin
		sw_rst_r <= 0;
		sw_in_r <= 0;
		sw_vref_r <= 0;
		sw_up_r <= 0;
		sw_dn_r <= 0;
		if (cnt_stat>=19)
			begin
			cnt_stat<=0;
			state <= 3;
			if (comp==0) runup_state_r <= 1;
			else runup_state_r <= 0;
			end
		else
			begin
			cnt_stat <= cnt_stat + 1;
			end
	end

	if (state==3)
	begin
		sw_rst_r <= 0;
		sw_in_r <= 0;
		sw_vref_r <= 0;
		if (runup_state_r==0)
			begin
			sw_up_r <= 0;
			sw_dn_r <= 1;
			rundown_sign <= 0;
			if (comp==1) timer_gate_r<=1;
			else timer_gate_r<=0;
			end
		else
			begin
			sw_up_r <= 1;
			sw_dn_r <= 0;
			rundown_sign <= 1;
			if (comp==0) timer_gate_r<=1;
			else timer_gate_r<=0;
			end	

		if (cnt_stat>=1199)
			begin
			cnt_stat<=0;
			state <= 0;
			result_content[30] <= rundown_sign;
			result_content[27:16] <= runup_cnt;
			result_content[15:0] <= rundown_cnt;
			end
		else
			begin
			cnt_stat <= cnt_stat + 1;
			end
	end	
	
	if (state==0) debug <= 1;
	if (state==1) debug <= 2;
	if (state==2) debug <= 4;

end

always @ (posedge mclk)
	begin
	if (state==2)
		begin
		rundown_cnt<=0;
		end
	if (state==3)
		begin
		if ((runup_state_r==0)&(comp==1))
			rundown_cnt <= rundown_cnt + 1;
		if ((runup_state_r==1)&(comp==0))
			rundown_cnt <= rundown_cnt + 1;		
		end
	end

	
assign deb_0 = so_dat;
assign deb_1 = uart_frame_r;
assign deb_2 = debug[0];
assign sw_up = sw_up_r;
assign sw_dn = sw_dn_r;
assign sw_rst = ~sw_rst_r;
assign sw_vref = ~sw_vref_r;
assign sw_vref_n = sw_vref_r;
assign sw_in = ~sw_in_r;
assign uart_tx_bit_clock = uart_divider[4];

always @ (posedge uart_tx_bit_clock)
	begin
	if (uart_frame_start)
		begin
		uart_frame_r <=1;
		end
	if ((uart_frame_r==1)&(uart_frame_start==0))
		begin
		uart_frame_r <=0;
		uart_frame_cnt <= 0;
		//frame_content <= 32'hAA550FF0;
		frame_content <= result_content;
		uart_frame_state <=0;		
		end
	if (uart_frame_state==0)
		begin
		if (uart_frame_cnt==3)
			uart_tx_register <= frame_content[7:0];
		if (uart_frame_cnt==2)
			uart_tx_register <= frame_content[15:8];
		if (uart_frame_cnt==1)
			uart_tx_register <= frame_content[23:16];
		if (uart_frame_cnt==0)
			uart_tx_register <= frame_content[31:24];			
		uart_tx_start<=1;
		if (uart_busy==1)
			uart_frame_state <=1;
		end
	else if (uart_frame_state==1)
		begin
		uart_tx_start<=0;
		if (uart_busy==0)
			begin
			if (uart_frame_cnt==3)
				begin
				uart_frame_state <=2;
				end
			else
				begin
				uart_frame_cnt <= uart_frame_cnt + 1;
				uart_frame_state <=0;
				end
			end
		end
	else if (uart_frame_state==2)
		begin
		end
	end


uart_tx uart_tx_a(
.uart_tx_bclk(uart_tx_bit_clock),
.uart_tx_start(uart_tx_start),
//.uart_tx_start(uart_frame_start),
.uart_tx_data(uart_tx_register),
//.uart_tx_data(8'hA6),
.uart_tx_pin(so_dat),
.uart_tx_busy(uart_busy)
);

endmodule

module uart_tx(
			input uart_tx_bclk, 
			input uart_tx_start,
			input [7:0] uart_tx_data,
			output reg uart_tx_pin,
			output reg uart_tx_busy
		);
reg[2:0] uart_tx_state;
reg[2:0] uart_tx_bit;

always @(posedge uart_tx_bclk)
	begin
	if (uart_tx_start==1)
		begin
		uart_tx_state<=0;
		end
	if (uart_tx_state==0)
		begin
		uart_tx_busy<=1;
		if (uart_tx_start==0)
			uart_tx_state<=1;
		end
	if (uart_tx_state==1)
		begin
		uart_tx_pin <=0;
		uart_tx_state<=2;
		uart_tx_bit<=0;
		end	
	else if (uart_tx_state==2)
		begin
//		uart_tx_busy = ~ uart_tx_busy;
		uart_tx_pin <= uart_tx_data[uart_tx_bit];
		if (uart_tx_bit<7)
			uart_tx_bit <= uart_tx_bit + 1;
		else
			begin
			uart_tx_state<=3;
			end
		end
	else if (uart_tx_state==3)
		begin
		uart_tx_pin <=1;
		uart_tx_state<=4;
		end		
	else if (uart_tx_state==4)
		begin
		uart_tx_busy<=0;
		end	
	end		
endmodule
