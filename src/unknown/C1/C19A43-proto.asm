
UNKNOWN_C19A43:
	BEGIN_C_FUNCTION
	STACK_RESERVE_VARS
	STACK_RESERVE_INT32
	STACK_RESERVE_INT32
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_RETURN_INT16
	END_STACK_VARS
	LDA #.LOWORD(WINDOW_TEXT_ATTRIBUTES_BACKUP)
	JSL UNKNOWN_C20A20
	CREATE_WINDOW_NEAR #WINDOW::UNKNOWN0D
	LOADPTR STATUS_EQUIP_WINDOW_TEXT_7, @LOCAL00
	LDX #12
	LDA #13
	JSL SET_WINDOW_TITLE
	LDA #0
	STA @VIRTUAL02
	BRA @UNKNOWN2
@UNKNOWN0:
	LDX @VIRTUAL02
	LDA GAME_STATE+game_state::escargo_express_items,X
	AND #$00FF
	TAY
	STY @LOCAL03
	LOADPTR ITEM_CONFIGURATION_TABLE, @VIRTUAL06
	TYA
	OPTIMIZED_MULT @VIRTUAL04, .SIZEOF(item)
	CLC
	ADC @VIRTUAL06
	STA @VIRTUAL06
	STA @LOCAL00
	LDA @VIRTUAL06+2
	STA @LOCAL00+2
	LDX #.SIZEOF(item::name)
	LDA #.LOWORD(TEMPORARY_TEXT_BUFFER)
	JSL MEMCPY16
	SEP #PROC_FLAGS::ACCUM8
	STZ TEMPORARY_TEXT_BUFFER+.SIZEOF(item::name)
	LDY @LOCAL03
	BEQ @UNKNOWN1
	REP #PROC_FLAGS::ACCUM8
	PROMOTENEARPTR TEMPORARY_TEXT_BUFFER, @VIRTUAL06
	REP #PROC_FLAGS::ACCUM8
	MOVE_INT @VIRTUAL06, @LOCAL00
	MOVE_INT_CONSTANT NULL, @LOCAL01
	JSR UNKNOWN_C113D1
@UNKNOWN1:
	REP #PROC_FLAGS::ACCUM8
	INC @VIRTUAL02
@UNKNOWN2:
	LDA @VIRTUAL02
	CMP #36
	BCC @UNKNOWN0
	LDY #1
	LDX #0
	LDA #2
	JSR UNKNOWN_C1180D
	LDA #1
	JSR SELECTION_MENU
	TAX
	STX @LOCAL02
	LDA #13
	JSL UNKNOWN_EF0115
	STZ FORCE_LEFT_TEXT_ALIGNMENT
	LDA #.LOWORD(WINDOW_TEXT_ATTRIBUTES_BACKUP)
	JSL UNKNOWN_C20ABC
	LDX @LOCAL02
	TXA
	PLD
	RTS
