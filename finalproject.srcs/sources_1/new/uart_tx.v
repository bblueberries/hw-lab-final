`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/31/2021 10:15:58 PM
// Design Name: 
// Module Name: uart_tx
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

module uart_tx (
    input wire clk,         // Baud rate clock
    input wire reset,       // Reset signal
    input wire [7:0] tx_data, // 8-bit data to send
    input wire tx_start,    // Start transmission signal
//    output reg tx_busy,     // Busy signal
    output reg tx_out       // UART serial output
);
    reg [3:0] bit_counter;  // Count bits (start, 8 data, stop)
    reg [9:0] tx_shift_reg; // Shift register (start + data + stop)
    reg [1:0] state;        // State encoding: 0 = idle, 1 = load, 2 = transmit

    always @(posedge clk or posedge reset) begin
        if (reset) begin
            tx_out <= 1;
//            tx_busy <= 0;
            bit_counter <= 0;
            tx_shift_reg <= 10'b1111111111; // Idle state
            state <= 0; // Idle state
        end else begin
            case (state)
                0: begin // Idle
                    tx_out <= 1;
//                    tx_busy <= 0;
                    if (tx_start) begin
                        // Load start bit, data byte, and stop bit
                        tx_shift_reg <= {1'b1, tx_data, 1'b0}; // Stop + Data + Start
                        bit_counter <= 10;
//                        tx_busy <= 1;
                        state <= 1; // Transition to transmit
                    end
                end
                1: begin // Transmit
                    tx_out <= tx_shift_reg[0]; // Output the LSB
                    tx_shift_reg <= {1'b1, tx_shift_reg[9:1]}; // Shift right
                    bit_counter <= bit_counter - 1;
                    if (bit_counter == 1) begin
//                        tx_busy <= 0;
                        state <= 0; // Back to idle
                    end
                end
            endcase
        end
    end
endmodule



//module uart_tx(
//    input clk,
//    input [7:0] data_transmit,
//    input ena,
//    output reg sent,
//    output reg bit_out
//    );
    
//    reg last_ena;
//    reg sending = 0;
//    reg [7:0] count;
//    reg [7:0] temp;
    
//    always@(posedge clk) begin
//        if (~sending & ~last_ena & ena) begin
//            temp <= data_transmit;
//            sending <= 1;
//            sent <= 0;
//            count <= 0;
//        end
        
//        last_ena <= ena;
        
//        if (sending)    count <= count + 1;
//        else            begin count <= 0; bit_out <= 1; end
        
//        // sampling every 16 ticks
//        case (count)
//            8'd8: bit_out <= 0;
//            8'd24: bit_out <= temp[0];  
//            8'd40: bit_out <= temp[1];
//            8'd56: bit_out <= temp[2];
//            8'd72: bit_out <= temp[3];
//            8'd88: bit_out <= temp[4];
//            8'd104: bit_out <= temp[5];
//            8'd120: bit_out <= temp[6];
//            8'd136: bit_out <= temp[7];
//            8'd152: begin sent <= 1; sending <= 0; end
//        endcase
//    end
//endmodule