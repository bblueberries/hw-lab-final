module font_rom (
    input [7:0] ascii,        // 8-bit ASCII input
    input [2:0] row_index,    // Row index (0-7)
    output reg [7:0] char_data // 8-bit character data for one row
);

    // Character font ROM (8x8 grid for each character)
    // This is a 256-character font, each having 8 rows of 8 bits.
    reg [7:0] font_mem [0:255][0:7]; // Array for font data, 256 characters, each with 8 rows

    // Initialize the font memory with bitmaps for characters 'a', 'b', 'c', 'd', 'e'
    initial begin
        // Character 'a' (ASCII 0x61)
        font_mem[8'h61][0] = 8'b01111110;
        font_mem[8'h61][1] = 8'b01000001;
        font_mem[8'h61][2] = 8'b01000001;
        font_mem[8'h61][3] = 8'b01111111;
        font_mem[8'h61][4] = 8'b01000001;
        font_mem[8'h61][5] = 8'b01000001;
        font_mem[8'h61][6] = 8'b01000001;
        font_mem[8'h61][7] = 8'b01111110;

        // Character 'b' (ASCII 0x62)
        font_mem[8'h62][0] = 8'b01111111;
        font_mem[8'h62][1] = 8'b01000001;
        font_mem[8'h62][2] = 8'b01000001;
        font_mem[8'h62][3] = 8'b01111111;
        font_mem[8'h62][4] = 8'b01000001;
        font_mem[8'h62][5] = 8'b01000001;
        font_mem[8'h62][6] = 8'b01000001;
        font_mem[8'h62][7] = 8'b01111111;

        // Character 'c' (ASCII 0x63)
        font_mem[8'h63][0] = 8'b00111110;
        font_mem[8'h63][1] = 8'b01000001;
        font_mem[8'h63][2] = 8'b01000000;
        font_mem[8'h63][3] = 8'b01000000;
        font_mem[8'h63][4] = 8'b01000000;
        font_mem[8'h63][5] = 8'b01000001;
        font_mem[8'h63][6] = 8'b00111110;
        font_mem[8'h63][7] = 8'b00000000;

        // Character 'd' (ASCII 0x64)
        font_mem[8'h64][0] = 8'b01111101;
        font_mem[8'h64][1] = 8'b01000001;
        font_mem[8'h64][2] = 8'b01000001;
        font_mem[8'h64][3] = 8'b01111101;
        font_mem[8'h64][4] = 8'b01000001;
        font_mem[8'h64][5] = 8'b01000001;
        font_mem[8'h64][6] = 8'b01000001;
        font_mem[8'h64][7] = 8'b01111101;

        // Character 'e' (ASCII 0x65)
        font_mem[8'h65][0] = 8'b01111110;
        font_mem[8'h65][1] = 8'b01000001;
        font_mem[8'h65][2] = 8'b01000000;
        font_mem[8'h65][3] = 8'b01111110;
        font_mem[8'h65][4] = 8'b01000000;
        font_mem[8'h65][5] = 8'b01000001;
        font_mem[8'h65][6] = 8'b01000001;
        font_mem[8'h65][7] = 8'b01111110;
    end

    always @(*) begin
        // Fetch the character data for the given ASCII value and row index
        char_data = font_mem[ascii][row_index]; // Get the specific row for the character
    end
endmodule
