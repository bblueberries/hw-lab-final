`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/31/2021 10:15:58 PM
// Design Name: 
// Module Name: uart_rx
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

//module uart_rx (
//    input wire clk,              // Baud rate clock
//    input wire reset,            // Reset signal
//    input wire rx_in,            // UART serial input
//    output reg [7:0] rx_data,    // Received 1-byte data
//    output reg rx_ready          // Data ready signal
//);

//    reg [3:0] bit_counter;       // Count bits (start, 8 data, stop)
//    reg [7:0] rx_shift_reg;      // Shift register for received byte
//    reg sampling;                // Sampling in progress

//    always @(posedge clk or posedge reset) begin
//        if (reset) begin
//            bit_counter <= 0;
//            rx_shift_reg <= 0;
//            sampling <= 0;
//            rx_ready <= 0;
//        end else if (!sampling && !rx_in) begin
//            // Detect start bit
//            sampling <= 1;
//            bit_counter <= 9;    // 8 data bits + stop bit
//            rx_ready <= 0;
//        end else if (sampling) begin
//            if (bit_counter > 1) begin
//                // Shift in data bits
//                rx_shift_reg <= {rx_in, rx_shift_reg[7:1]};
//            end else if (bit_counter == 1) begin
//                // Stop bit (no error checking here)
//                rx_data <= rx_shift_reg;
//                rx_ready <= 1;
//            end

//            bit_counter <= bit_counter - 1;

//            if (bit_counter == 1) begin
//                sampling <= 0; // End of frame
//            end
//        end
//    end
//endmodule



module uart_rx(
    input clk,
    input bit_in,
    output reg received,
    output reg [7:0] data_out
    );
    
    reg last_bit;
    reg receiving = 0;
    reg [7:0] count;
    
    always@(posedge clk) begin
        if (~receiving & last_bit & ~bit_in) begin
            receiving <= 1;
            received <= 0;
            count <= 0;
        end

        last_bit <= bit_in;
        count <= (receiving) ? count+1 : 0;
        
        // sampling every 16 ticks
        case (count)
            8'd24:  data_out[0] <= bit_in;
            8'd40:  data_out[1] <= bit_in;
            8'd56:  data_out[2] <= bit_in;
            8'd72:  data_out[3] <= bit_in;
            8'd88:  data_out[4] <= bit_in;
            8'd104: data_out[5] <= bit_in;
            8'd120: data_out[6] <= bit_in;
            8'd136: data_out[7] <= bit_in;
            8'd152: begin received <= 1; receiving <= 0; end
        endcase
    end
endmodule