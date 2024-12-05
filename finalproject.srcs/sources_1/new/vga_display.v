module vga_display ( 
    input clk,                // 25 MHz clock (pixel clock for VGA)
    input [7:0] data_in,      // ASCII code of the character to display (from system.v)
    input en,                 // Enable signal to store new data_in (e.g., button press)
    output reg [3:0] vga_red,     // VGA Red signal
    output reg [3:0] vga_green,   // VGA Green signal
    output reg [3:0] vga_blue,    // VGA Blue signal
    output vga_hsync,         // VGA Horizontal Sync
    output vga_vsync          // VGA Vertical Sync
);

    wire [7:0] char_data;    // Character bitmap for one row (8 bits for 8 pixels)
    wire display_area;       // Flag to indicate if we are in the display area
    wire [9:0] x, y;         // Current pixel coordinates

    // Instantiate VGA controller
    vga_controller vga_ctrl (
        .clk(clk),
        .hsync(vga_hsync),
        .vsync(vga_vsync),
        .x(x),
        .y(y),
        .display_area(display_area)
    );

    // Instantiate font ROM to fetch character data based on ASCII code
    font_rom font_rom_inst (
        .ascii(char_array[i]),  // Use char_array[i] to fetch character data from the array
        .row_index(row_counter),  // Use row_counter to fetch the correct row
        .char_data(char_data)     // Get the character row data
    );

    reg [2:0] row_counter;  // Declare row_counter as a reg (3 bits, for 8 rows)
    reg [7:0] char_array[7:0];  // Array to store 8 characters (each is an 8-bit value)
    integer i;
    integer arrIdx = 0;      // Pointer to track the current index in the char_array

    localparam startX = 350;  // Starting X coordinate for the first character
    localparam startY = 70;   // Starting Y coordinate for the first character
    localparam numChar = 8;   // Number of characters to display (e.g., 8 characters)

    // Initialize the char_array with a default value (e.g., 'a') 
    initial begin 
        for (i = 0; i < numChar; i = i + 1) begin
            char_array[i] = 8'h61;  // Initialize all characters to 'a' (ASCII value 0x61)
        end
    end

    wire ensingle;
    singlePulser(ensingle,en,clk);
    always @(posedge clk) begin
        // Store the new data_in when en is high, and update the index
        if (en) begin
            char_array[arrIdx] <= data_in;  // Store the new character at the current index
            arrIdx <= (arrIdx + 1) % numChar;  // Increment arrIdx and wrap it around after 8 characters
        end

        // Default to blue background for out-of-bound areas
        vga_red   = 4'b0000;
        vga_green = 4'b0000;
        vga_blue  = 4'b1111;

        // Display characters if within display area
        if (display_area) begin
            for (i = 0; i < numChar; i = i + 1) begin
                // Check if the current pixel is within the area of this character
                if (x >= startX + (i * 8) && x < (startX + (i * 8) + 8) && y >= startY && y < (startY + 8)) begin
                    row_counter = y - startY;

                    // Check if the pixel is on or off for the character at char_array[i]
                    if (char_data[7 - (x - (startX + i * 8))]) begin
                        // Pixel is ON, set color (white for foreground)
                        vga_red   = 4'b1111;
                        vga_green = 4'b1111;
                        vga_blue  = 4'b1111;
                    end else begin
                        // Pixel is OFF, set background color (blue)
                        vga_red   = 4'b0000;
                        vga_green = 4'b0000;
                        vga_blue  = 4'b1111;
                    end
                end
            end
        end
    end
endmodule