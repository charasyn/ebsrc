
UNKNOWN_C4C519:
	BEGIN_C_FUNCTION
	STACK_RESERVE_VARS
	STACK_RESERVE_INT32
	STACK_RESERVE_INT16
	STACK_RESERVE_PARAM_INT16
	END_STACK_VARS
	TXY
	STY @LOCAL01
	TAX
	JSR UNKNOWN_C4C45F
	LDY @LOCAL01
	TYA
	JSL INITIALIZE_MAP_PALETTE_FADE
	BRA @UNKNOWN2
@UNKNOWN0:
	LDA PAD_PRESS
	BEQ @UNKNOWN1
	LDA #.LOWORD(-1)
	BRA @UNKNOWN3
@UNKNOWN1:
	JSL UNKNOWN_C492D2
	JSL WAIT_UNTIL_NEXT_FRAME
	LDY @LOCAL01
	DEY
	STY @LOCAL01
@UNKNOWN2:
	LDY @LOCAL01
	BNE @UNKNOWN0
	LOADPTR BUFFER + $7800, @LOCAL00
	LDX #BPP4PALETTE_SIZE * 6
	LDA #.LOWORD(PALETTES) + BPP4PALETTE_SIZE * 2
	JSL MEMCPY16
	LDA #0
@UNKNOWN3:
	END_C_FUNCTION
