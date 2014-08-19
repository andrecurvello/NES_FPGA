
//=======================================================
//  This code is generated by Terasic System Builder
//=======================================================

module VGA_test(

	//////////// CLOCK //////////
	CLOCK_50, 	// BANK 4
	CLOCK2_50, 	// BANK 7
	CLOCK3_50, 	// BANK 3A

	//////////// LED (High Active) //////////
	LEDG,
	LEDR,

	//////////// VGA //////////
	VGA_B,
	VGA_BLANK_N,
	VGA_CLK,
	VGA_G,
	VGA_HS,
	VGA_R,
	VGA_SYNC_N,
	VGA_VS,

	//////////// Fan Control //////////
	FAN_CTRL 
);

//=======================================================
//  PARAMETER declarations
//=======================================================


//=======================================================
//  PORT declarations
//=======================================================

//////////// CLOCK //////////
input 		          		CLOCK_50;
input 		          		CLOCK2_50;
input 		          		CLOCK3_50;

//////////// LED (High Active) //////////
output		     [8:0]		LEDG;
output		    [17:0]		LEDR;

//////////// VGA //////////
output		     [7:0]		VGA_B;
output		          		VGA_BLANK_N;
input		          			VGA_CLK;
output		     [7:0]		VGA_G;
output		        			VGA_HS;
output		     [7:0]		VGA_R;
output		          		VGA_SYNC_N;
output		         		VGA_VS;

//////////// Fan Control //////////
inout 		          		FAN_CTRL;


//=======================================================
//  REG/WIRE declarations
//=======================================================




//=======================================================
//  Structural coding
//=======================================================

//wire quad_A;
//wire quad_B;

	//////////// FAN Control //////////
assign FAN_CTRL = 1'bz; // turn on FAN
/*
pong game_test(
					CLOCK_50, 
					VGA_HS, 
					VGA_VS, 
					VGA_R, 
					VGA_G, 
					VGA_B,
					quad_A, 
					quad_B
					);
*/

/*
hvsync_generator game_test(
	CLOCK_50,
	VGA_HS, 
	VGA_VS, 
	VGA_R,
	VGA_B,
	VGA_G 
);
*/
/*
VGA_module game_test(
	CLOCK_50,
//	VGA_BLANK_N,
	VGA_HS, 
	VGA_VS, 
	VGA_R,
	VGA_B,
	VGA_G 
);*/

assign VGA_BLANK_N = 1'b1;
assign VGA_SYNC_N = 1'b0;

VGA_module game_test(
	CLOCK_50,
//	VGA_BLANK_N,
	VGA_R,
	VGA_G,
	VGA_B,
	VGA_HS, 
	VGA_VS
);

endmodule