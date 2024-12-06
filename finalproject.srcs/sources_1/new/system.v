module system(
    output wire RsTx, 
    input wire RsRx,
    input clk ,
    input [7:0] sw, // for inc , dec 4 7-Seg // 7 is the most left
    input btnU,
    input btnD,
    input [1:0] JB,
    output [6:0] seg,
    output dp,
    output [3:0] an,

	output wire hsync, vsync,
	output wire [11:0] rgb
);

    assign JB[1] = Tx;
    wire Tx;
    
    wire [3:0] num3,num2,num1,num0; // left to right
  
    wire an0,an1,an2,an3;
    assign an={an3,an2,an1,an0};
    wire press;
    wire reset;
    singlePulser button(press,btnU,baud);
//    singlePulser button2(reset,btnD,clk);
    reg en, last_rec;
    reg [7:0] data_in;
    wire [7:0] data_out;
    wire [7:0] data_out_2;
    wire sent, received, received_2, baud;
    
    baudrate_gen baudrate_gen(clk, baud);
    uart_rx receiver(baud, JB[0], received, data_out);
    uart_tx transmitter(baud, data_in, en, sent, Tx);
//    uart_tx transmitter(baud, btnD, data_in, en, RsTx);
//    uart_rx receiver(baud, btnD , RsRx, data_out, received);
//    uart_rx receiver_2(baud, btnD , JB[1], data_out_2, received_2);
    
//    uart_rx receiver(baud, btnD , JB[0], data_out, received);
//    uart_tx transmitter(baud, btnD, data_in, en, Tx);
    reg [7:0] data_to_vga;
    always @(posedge baud) begin
        if (en) en = 0;
        if (~last_rec & received) begin //receive
            data_to_vga = data_out;
        end
        last_rec = received;
        if (press) begin data_in = sw[7:0]; en=1; end //send
    end
    
    assign num0 = data_to_vga[3:0];
    assign num1 = data_to_vga[7:4];
    assign num2 = data_in[3:0];
    assign num3 = data_in[7:4];
    quadSevenSeg q7seg(seg,dp,an0,an1,an2,an3,num0,num1,num2,num3,baud);
    

    vga_test vga_inst (
        .clk(clk),
        .hsync(hsync),
        .vsync(vsync),
        .reset(btnD),
        .en(received),
        .rgb(rgb),
        .data_in(data_to_vga),
    );

endmodule
