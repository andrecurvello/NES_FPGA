/*
	Module:       GPIO_TEST
	Description:  Tests snes_controller module
	Author:       Sergio M
	Date:         8/11/14
*/

//=======================================================
//  This code is generated by Terasic System Builder
//=======================================================


module gpio_test(

	//////////// CLOCK //////////
	CLOCK_50, 	// BANK 4
	CLOCK2_50, 	// BANK 7
	CLOCK3_50, 	// BANK 3A

	//////////// LED (High Active) //////////
	LEDR,

	//////////// GPIO, GPIO connect to GPIO Default //////////
	GPIO,

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
output		    [17:0]		LEDR;

//////////// GPIO, GPIO connect to GPIO Default //////////
inout 		    [35:0]		GPIO;

//////////// Fan Control //////////
inout 		          		FAN_CTRL;

//=======================================================
//  REG/WIRE declarations
//=======================================================
wire [7:0]  buttons;        // Holds the buttons to be pressed


//=======================================================
//  Structural coding
//=======================================================

	//////////// FAN Control //////////
assign FAN_CTRL = 1'bz; // turn on FAN
assign LEDR     = buttons;
/*
snes_controller player1( GPIO[0],   // Latch
								 GPIO[4],   // Data
								 GPIO[2],   // Pulse
								 CLOCK_50,  // CLOCK
								 buttons    // snes buttons
								);
*/								
 nes_controller player2( GPIO[0],   // Latch
								 GPIO[4],   // Data
								 GPIO[2],   // Pulse
								 CLOCK_50,  // CLOCK
								 buttons    // snes buttons
								);

endmodule
