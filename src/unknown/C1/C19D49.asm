
UNKNOWN_C19D49:
	BEGIN_C_FUNCTION
	STACK_RESERVE_VARS
	STACK_RESERVE_INT32
	STACK_RESERVE_INT16
	END_STACK_VARS
	LDA #0
	STA @LOCAL01
	BRA @UNKNOWN1
@UNKNOWN0:
	LDY #.SIZEOF(char_struct)
	JSL MULT168
	TAX
	LDA #$0400
	STA PARTY_CHARACTERS+char_struct::hp_pp_window_options,X
	LDA @LOCAL01
	INC
	STA @LOCAL01
@UNKNOWN1:
	CMP #PLAYER_CHAR_COUNT
	BCC @UNKNOWN0
	LOADPTR TEXT_WINDOW_FLAVOUR_PALETTES, @VIRTUAL06
	LDA GAME_STATE+game_state::text_flavour
	AND #$00FF
	DEC
	OPTIMIZED_MULT @VIRTUAL04, 3
	TAX
	LDA f:TEXT_WINDOW_PROPERTIES,X
	CLC
	ADC #24
	CLC
	ADC @VIRTUAL06
	STA @VIRTUAL06
	STA @LOCAL00
	LDA @VIRTUAL06+2
	STA @LOCAL00+2
	LDX #BPP2PALETTE_SIZE
	LDA #.LOWORD(PALETTES) + BPP2PALETTE_SIZE * 3
	JSL MEMCPY16
	SEP #PROC_FLAGS::ACCUM8
	LDA #PALETTE_UPLOAD::FULL
	STA PALETTE_UPLOAD_MODE
	REP #PROC_FLAGS::ACCUM8
	LDA #1
	STA REDRAW_ALL_WINDOWS
	END_C_FUNCTION
