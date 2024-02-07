
COFFEETEA_SCENE:
	BEGIN_C_FUNCTION_FAR
	STACK_RESERVE_VARS
	STACK_RESERVE_INT16
	STACK_RESERVE_PARAM_INT16
	END_STACK_VARS
	STA @VIRTUAL02
	LDY #0
	LDX #1
	TXA
	JSL FADE_OUT_WITH_MOSAIC
	JSL UNKNOWN_C49A56
	JSL OAM_CLEAR
	LDA @VIRTUAL02
	BNE @SELECT_COFFEE_BG1
	LDX #BATTLEBG_LAYER::COFFEE2
	BRA @SKIP_COFFEE_BG1
@SELECT_COFFEE_BG1:
	LDX #BATTLEBG_LAYER::TEA2
@SKIP_COFFEE_BG1:
	LDA @VIRTUAL02
	BNE @SELECT_COFFEE_BG2
	LDY #BATTLEBG_LAYER::COFFEE1
	BRA @SKIP_COFFEE_BG2
@SELECT_COFFEE_BG2:
	LDY #BATTLEBG_LAYER::TEA1
@SKIP_COFFEE_BG2:
	TYA
	JSL LOAD_BACKGROUND_ANIMATION
	LDX #1
	TXA
	JSL FADE_IN
	LDA #28
	STA FLYOVER_SCREEN_OFFSET
	LDA #0
	STA @VIRTUAL04
	LDA @VIRTUAL02
	BNE @SELECT_COFFEE_TEXT
	LOADPTR COFFEE_SEQUENCE_TEXT, @VIRTUAL06
	BRA @SKIP_COFFEE_TEXT
@SELECT_COFFEE_TEXT:
	LOADPTR TEA_SEQUENCE_TEXT, @VIRTUAL06
@SKIP_COFFEE_TEXT:
	STZ ENABLE_WORD_WRAP
@SCRIPT_PARSE_BEGIN:
	LDA [@VIRTUAL06]
	AND #$00FF
	INC @VIRTUAL06
	CMP #$00
	BEQ @END_OF_SCRIPT
	CMP #$09
	BEQ @PARSE_09
	CMP #$01
	BEQ @PARSE_01
	CMP #$08
	BEQ @PARSE_08
	BRA @PRINT_TEXT
@PARSE_09:
	LDA @VIRTUAL04
	JSL UNKNOWN_C49D1E
	TAX
	STX @LOCAL00
	LDA #24
	JSL UNKNOWN_C49B6E
	JSL UNKNOWN_C2DB3F
	BRA @UNKNOWN9
@UNKNOWN8:
	TXA
	JSL UNKNOWN_C49D1E
	TAX
	STX @LOCAL00
	JSR UNKNOWN_C49A4B
@UNKNOWN9:
	LDX @LOCAL00
	CPX #8192
	BCC @UNKNOWN8
	TXA
	SEC
	SBC #8192
	STA @VIRTUAL04
	LDA #24
	JSL UNKNOWN_C49C56
	BRA @SCRIPT_PARSE_BEGIN
@PARSE_01:
	SEP #PROC_FLAGS::ACCUM8
	LDA [@VIRTUAL06]
	REP #PROC_FLAGS::ACCUM8
	INC @VIRTUAL06
	JSL UNKNOWN_C49CA8
	BRA @SCRIPT_PARSE_BEGIN
@PARSE_08:
	LDA [@VIRTUAL06]
	AND #$00FF
	TAY
	INC @VIRTUAL06
	LDX #12
	TYA
	JSL UNKNOWN_C49CC3
	BRA @SCRIPT_PARSE_BEGIN
@PRINT_TEXT:
	LDY #12
	LDX #0
	JSL UNKNOWN_C49D16
	JMP @SCRIPT_PARSE_BEGIN
@END_OF_SCRIPT:
	LDX #1
	TXA
	JSL FADE_OUT
	BRA @UNKNOWN15
@UNKNOWN14:
	JSR UNKNOWN_C49A4B
@UNKNOWN15:
	LDA FADE_PARAMETERS + fade_parameters::step
	AND #$00FF
	BNE @UNKNOWN14
	JSL UNKNOWN_C08726
	JSL RELOAD_MAP
	LDY #.LOWORD(BG2_BUFFER)
	LDX #896
	BRA @UNKNOWN17
@UNKNOWN16:
	LDA #0
	STA __BSS_START__,Y
	INY
	INY
	DEX
@UNKNOWN17:
	BNE @UNKNOWN16
	LDA #$00FF
	STA ENABLE_WORD_WRAP
	JSL UNKNOWN_C08726
	JSL UNDRAW_FLYOVER_TEXT
	JSL UNKNOWN_C08744
	LDX #1
	TXA
	JSL FADE_IN
	END_C_FUNCTION
