module vga_controller (
    input clk,             // 25 MHz clock (pixel clock for VGA)
    output reg hsync,      // Horizontal sync signal
    output reg vsync,      // Vertical sync signal
    output reg [9:0] x,    // Current X pixel position (0-639)
    output reg [9:0] y,    // Current Y pixel position (0-479)
    output reg display_area // Flag to indicate when we are in the display area
);

    // VGA 640x480 @ 60Hz timings
    // Horizontal parameters
    parameter H_SYNC_CYCLES = 96;      // Horizontal sync pulse width
    parameter H_BACK_PORCH = 48;       // Horizontal back porch (time between sync and display start)
    parameter H_ACTIVE_VIDEO = 640;    // Horizontal active video (the display width)
    parameter H_FRONT_PORCH = 16;      // Horizontal front porch (time after display end before next sync)
    parameter H_TOTAL_CYCLES = 800;    // Total horizontal cycles (H_SYNC_CYCLES + H_BACK_PORCH + H_ACTIVE_VIDEO + H_FRONT_PORCH)
    
    // Vertical parameters
    parameter V_SYNC_CYCLES = 2;       // Vertical sync pulse width
    parameter V_BACK_PORCH = 33;       // Vertical back porch (time between sync and display start)
    parameter V_ACTIVE_VIDEO = 480;    // Vertical active video (the display height)
    parameter V_FRONT_PORCH = 10;      // Vertical front porch (time after display end before next sync)
    parameter V_TOTAL_CYCLES = 525;    // Total vertical cycles (V_SYNC_CYCLES + V_BACK_PORCH + V_ACTIVE_VIDEO + V_FRONT_PORCH)
    
    // Counters for horizontal and vertical sync
    reg [9:0] h_counter; // Horizontal counter (0 to 799)
    reg [9:0] v_counter; // Vertical counter (0 to 524)
       // *** Generate 25MHz from 100MHz *********************************************************
	reg  [1:0] r_25MHz;
	wire w_25MHz;
	
	always @(posedge clk) // or posedge reset)
//		if(reset)
//		  r_25MHz <= 0;
//		else
		  r_25MHz <= r_25MHz + 1;
	assign w_25MHz = (r_25MHz == 0) ? 1 : 0; // assert tick 1/4 of the time
    // ****************************************************************************************
    // State machine to generate VGA timing signals
    always @(posedge w_25MHz) begin
        // Horizontal counter logic 
        if (h_counter == H_TOTAL_CYCLES - 1)
            h_counter <= 0;
        else
            h_counter <= h_counter + 1;
        
        // Vertical counter logic
        if (h_counter == H_TOTAL_CYCLES - 1) begin
            if (v_counter == V_TOTAL_CYCLES - 1)
                v_counter <= 0;
            else
                v_counter <= v_counter + 1;
        end
        
        // Generate horizontal sync signal (active low)
        if (h_counter < H_SYNC_CYCLES)
            hsync <= 0;
        else
            hsync <= 1;
        
        // Generate vertical sync signal (active low)
        if (v_counter < V_SYNC_CYCLES)
            vsync <= 0;
        else
            vsync <= 1;
        
        // Determine the x and y positions within the display area
        if (h_counter < H_ACTIVE_VIDEO && v_counter < V_ACTIVE_VIDEO) begin
            x <= h_counter;
            y <= v_counter;
            display_area <= 1; // We are in the visible area
        end else begin
            display_area <= 0; // Outside the visible area
        end
    end
endmodule
