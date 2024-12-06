module vga_test
	(
		input wire clk, reset,en,
		output wire hsync, vsync,
		output wire [11:0] rgb,
		input [7:0] data_in
	);
	
	//VGA/////////////////////////////////////////////////////////////////////////////
	// video status output from vga_sync to tell when to route out rgb signal to DAC
	wire video_on;
    wire [9:0] x,y; //Pixel location
        // instantiate vga_sync for the monitor sync and x,y pixel tracing
    vga_sync vga_sync_unit (.clk(clk), .reset(reset), .hsync(hsync), .vsync(vsync),
                            .video_on(video_on), .x(x), .y(y));
    //////////////////////////////////////////////////////////////////////////////////
    
    //COUNTER FOR LIVE DATA //////////////////////////////////////////////////////////
    //Instantiate a counter with counterValue representing the 0-9 count in ASCII
    wire [6:0] counterValue; 
    counter counter1(.clk(clk), .reset(reset), .out(counterValue));
    //////////////////////////////////////////////////////////////////////////////////
    
    //READ MEMORY FILE FOR INPUT ASCII ARRAY, CREATE SIGNAL ARRAY                       
    wire [6:0] ascii;  //Signal is concatenated with X coordinate to get a value for the ROM address                 
    wire [6:0] a[15:0]; //Each index of this array holds a 7-bit ASCII value
    wire d[15:0]; //Each index of this array holds a signal that says whether the i-th item in array a above should display
    wire displayContents; //Control signal to determine whether a character should be displayed on the screen
    reg [9:0] x_desired;
    reg [9:0] y_desired;
    //Read memory file for ascii inputs
    reg [6:0] readAscii [15:0];
    integer index;
    integer index_offset;
    integer line_num;
    initial begin
        index = 0;
        x_desired = 10'd80;
        y_desired = 10'd80;
        index_offset = 0;
        line_num = 0;
    end
    ///////////////////////////////////////////////////////////////////////////////////
    
    //INSTANTIATE TEXT GENERATION MODULES/////////////////////////////////////////////////////////

        textGeneration c0 (.clk(clk),.reset(reset),.asciiData(a[0]), .ascii_In(readAscii[0]), 
        .x(x),.y(y), .displayContents(d[0]), .x_desired(x_desired), .y_desired(y_desired)); 
                                                                                      
        textGeneration c1 (.clk(clk),.reset(reset),.asciiData(a[1]), .ascii_In(readAscii[1]), 
        .x(x),.y(y), .displayContents(d[1]), .x_desired(x_desired+8), .y_desired(y_desired));
        
        textGeneration c2 (.clk(clk),.reset(reset),.asciiData(a[2]), .ascii_In(readAscii[2]),
        .x(x),.y(y), .displayContents(d[2]), .x_desired(x_desired+16), .y_desired(y_desired));
        
        textGeneration c3 (.clk(clk),.reset(reset),.asciiData(a[3]), .ascii_In(readAscii[3]),
        .x(x),.y(y), .displayContents(d[3]), .x_desired(x_desired+24), .y_desired(y_desired));
        
        textGeneration c4 (.clk(clk),.reset(reset),.asciiData(a[4]), .ascii_In(readAscii[4]), 
        .x(x),.y(y), .displayContents(d[4]), .x_desired(x_desired+32), .y_desired(y_desired));
        
        textGeneration c5 (.clk(clk),.reset(reset),.asciiData(a[5]), .ascii_In(readAscii[5]),
        .x(x),.y(y), .displayContents(d[5]), .x_desired(x_desired+40), .y_desired(y_desired));
        
        textGeneration c6 (.clk(clk),.reset(reset),.asciiData(a[6]), .ascii_In(readAscii[6]),
        .x(x),.y(y), .displayContents(d[6]), .x_desired(x_desired+48), .y_desired(y_desired));
        
         textGeneration c7 (.clk(clk),.reset(reset),.asciiData(a[7]), .ascii_In(readAscii[7]),
        .x(x),.y(y), .displayContents(d[7]), .x_desired(x_desired+56), .y_desired(y_desired));

        textGeneration c8 (.clk(clk),.reset(reset),.asciiData(a[8]), .ascii_In(readAscii[8]), 
        .x(x),.y(y), .displayContents(d[8]), .x_desired(x_desired), .y_desired(y_desired+16)); 
                                                                                      
        textGeneration c9 (.clk(clk),.reset(reset),.asciiData(a[9]), .ascii_In(readAscii[9]), 
        .x(x),.y(y), .displayContents(d[9]), .x_desired(x_desired+8), .y_desired(y_desired+16));
        
        textGeneration c10 (.clk(clk),.reset(reset),.asciiData(a[10]), .ascii_In(readAscii[10]),
        .x(x),.y(y), .displayContents(d[10]), .x_desired(x_desired+16), .y_desired(y_desired+16));
        
        textGeneration c11 (.clk(clk),.reset(reset),.asciiData(a[11]), .ascii_In(readAscii[11]),
        .x(x),.y(y), .displayContents(d[11]), .x_desired(x_desired+24), .y_desired(y_desired+16));
        
        textGeneration c12 (.clk(clk),.reset(reset),.asciiData(a[12]), .ascii_In(readAscii[12]), 
        .x(x),.y(y), .displayContents(d[12]), .x_desired(x_desired+32), .y_desired(y_desired+16));
        
        textGeneration c13 (.clk(clk),.reset(reset),.asciiData(a[13]), .ascii_In(readAscii[13]),
        .x(x),.y(y), .displayContents(d[13]), .x_desired(x_desired+40), .y_desired(y_desired+16));
        
        textGeneration c14 (.clk(clk),.reset(reset),.asciiData(a[14]), .ascii_In(readAscii[14]),
        .x(x),.y(y), .displayContents(d[14]), .x_desired(x_desired+48), .y_desired(y_desired+16));
        
         textGeneration c15 (.clk(clk),.reset(reset),.asciiData(a[15]), .ascii_In(readAscii[15]),
        .x(x),.y(y), .displayContents(d[15]), .x_desired(x_desired+56), .y_desired(y_desired+16));
        
//         textGeneration c8 (.clk(clk),.reset(reset),.asciiData(a[8]), .ascii_In(counterValue),
//        .x(x),.y(y), .displayContents(d[8]), .x_desired(10'd152), .y_desired(10'd80));         

//Decoder to trigger displayContents signal high or low depending on which ASCII char is reached
    assign displayContents = d[0] ? d[0] :
                             d[1] ? d[1] :
                             d[2] ? d[2] :
                             d[3] ? d[3] :
                             d[4] ? d[4] :
                             d[5] ? d[5] :
                             d[6] ? d[6] :
                             d[7] ? d[7] :
                             d[8] ? d[8] :
                             d[9] ? d[9] : 
                             d[10] ? d[10] : 
                             d[11] ? d[11] :
                             d[12] ? d[12] :
                             d[13] ? d[13] :
                             d[14] ? d[14] :
                             d[15] ? d[15] :0;
//Decoder to assign correct ASCII value depending on which displayContents signal is used                        
    assign ascii = d[0] ? a[0] :
                   d[1] ? a[1] :
                   d[2] ? a[2] :
                   d[3] ? a[3] :
                   d[4] ? a[4] :
                   d[5] ? a[5] :
                   d[6] ? a[6] :
                   d[7] ? a[7] :
                   d[8] ? a[8] :
                   d[9] ? a[9] :
                   d[10] ? a[10] :
                   d[11] ? a[11] :
                   d[12] ? a[12] :
                   d[13] ? a[13] :
                   d[14] ? a[14] :
                   d[15] ? a[15] : 7'h00; //defaulted to 0
 
 //ASCII_ROM////////////////////////////////////////////////////////////       
    //Connections to ascii_rom
    wire [10:0] rom_addr;
    //Handle the row of the rom
    wire [3:0] rom_row;
    //Handle the column of the rom data
    wire [2:0] rom_col;
    //Wire to connect to rom_data of ascii_rom
    wire [7:0] rom_data;
    //Bit to signal display of data
    wire rom_bit;
    ascii_rom rom1(.clk(clk), .rom_addr(rom_addr), .data(rom_data));

    //Concatenate to get 11 bit rom_addr
    assign rom_row = y[3:0];
    assign rom_addr = {ascii, rom_row};
    assign rom_col = x[2:0];
    assign rom_bit = rom_data[~rom_col]; //need to negate since it initially displays mirrored
////////////////////////////////////////////////////////////////////////////////////////////////
     wire en_sync;
     baud_rate_sync_with_en2 baud_sync_inst (
            .clk(clk),             // 100 MHz clock
            .reset(reset),         // Reset signal
            .en_baud(en),     // Input at 9600 baud rate (generated from other module)
            .en2(en_sync)               // Output synchronized 'en' signal at 100 MHz
        );
///////////////////////////////////////////////////////////////////////////////////////////////
always @(posedge clk or posedge reset) begin
    if (reset) begin
    
        index <= 0;
        index_offset <= 0;
        line_num <= 0;
        
        x_desired <= 10'd80;
        y_desired <= 10'd80;

        readAscii[0] <= 7'h00;
        readAscii[1] <= 7'h00;
        readAscii[2] <= 7'h00;
        readAscii[3] <= 7'h00;
        readAscii[4] <= 7'h00;
        readAscii[5] <= 7'h00;
        readAscii[6] <= 7'h00;
        readAscii[7] <= 7'h00;
        readAscii[8] <= 7'h00;
        readAscii[9] <= 7'h00;
        readAscii[10] <= 7'h00;
        readAscii[11] <= 7'h00;
        readAscii[12] <= 7'h00;
        readAscii[13] <= 7'h00;
        readAscii[14] <= 7'h00;
        readAscii[15] <= 7'h00;
    end
end
     always @(posedge clk) begin
        if (en_sync) begin
            if(data_in[6:0] == 7'h7F) begin
               if(line_num==0)begin
                readAscii[(index-1+8)%8] = 7'h00;
                index = (index-1+8)%8;
               end
               else if(line_num==1)begin
                   if(index-1<0) begin 
                       index_offset=0;
                       line_num=0;
                       index=7;
                       end
                   else begin 
                   readAscii[index_offset + (index-1+8)%8] = 7'h00;
                   index=index-1;
                   end
                  end
               
            end
            else if(data_in[6:0] == 7'h0D) begin
                index_offset = 8;
                line_num = 1;
                index =0;
            end
                else begin
                    readAscii[index_offset + index] = data_in[6:0];
                    index = (index+1)%8;
                    
                    
                    end
        end
    end
///////////////////////////////////////////////////////////////////////////////////////////////
    
    //If video on then check
        //If rom_bit is on
            //If x and y are in the origin/end range
                //color white and black 
            //Else we are out of range so we should not modify anything, RGB set to blue
        //rom_bit is off display blue
    //Video_off display black
            
    assign rgb = video_on ? (
                rom_bit ? (
                    (displayContents) ? 
                    (index % 2 ? 12'hFFF : 12'hFF0) : 12'h8
                ) : 12'h8
            ) : 12'b0; 
endmodule