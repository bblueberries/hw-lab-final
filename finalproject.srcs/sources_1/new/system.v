module system(
    output wire RsTx, 
    input wire RsRx,
    input clk ,
    input [7:0] sw, // for inc , dec 4 7-Seg // 7 is the most left
    input btnU,
    input btnD,
    inout [1:0] JB,
    output [6:0] seg,
    output dp,
    output [3:0] an,
	output wire hsync, vsync,
	output wire [11:0] rgb
);

    wire Tx;
    assign JB[1] = Tx;
    
    wire [3:0] num3,num2,num1,num0; // left to right
  
    wire an0,an1,an2,an3;
    assign an={an3,an2,an1,an0};
    wire press;
    wire reset;
    singlePulser button(press,btnU,baud);
    reg en, last_rec;
    reg [7:0] data_in;
    wire [7:0] data_out;
    wire [7:0] data_out_2;
    wire sent, received , baud;
    
    baudrate_gen baudrate_gen(clk, baud);
    uart_rx receiver(baud, JB[0], received, data_out);
    uart_tx transmitter(baud, data_in, en, sent, Tx);


    reg enRead;
    always @(posedge baud) begin
        if (en) en = 0;
        if(enRead) enRead=0;
        if (~last_rec & received) begin //receive
            enRead=1;
        end
        if (press) begin 
            data_in = sw[7:0];
            en=1; 
        end //send
        last_rec = received;
    end
    
    assign num0 = data_out[3:0];
    assign num1 = data_out[7:4];
    assign num2 = data_in[3:0];
    assign num3 = data_in[7:4];
    quadSevenSeg q7seg(seg,dp,an0,an1,an2,an3,num0,num1,num2,num3,baud);
    
    vga_test vga_inst (
        .clk(clk),
        .hsync(hsync),
        .vsync(vsync),
        .reset(btnD),
        .en(enRead),
        .rgb(rgb),
        .data_in(data_out)
    );

endmodule
