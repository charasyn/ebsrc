
UNKNOWN_C4D830:
	BEGIN_C_FUNCTION_FAR
	STACK_RESERVE_VARS
	STACK_RESERVE_INT16
	STACK_RESERVE_INT32
	STACK_RESERVE_INT16
	STACK_RESERVE_PARAM_INT16
	END_STACK_VARS
	STA @LOCAL02
	BRA @UNKNOWN1
@UNKNOWN0:
	JSL UNKNOWN_C1004E
@UNKNOWN1:
	LDA WAIT_FOR_NAMING_SCREEN_ACTIONSCRIPT
	BNE @UNKNOWN0
	LOADPTR UNKNOWN_C3FD2D + (7*4), @VIRTUAL0A
	LDA @LOCAL02
	ASL
	ASL
	CLC
	ADC @VIRTUAL0A
	STA @VIRTUAL0A
	DEREFERENCE_PTR_TO @VIRTUAL0A, @VIRTUAL06
	BRA @UNKNOWN4
@UNKNOWN2:
	MOVE_INTX @VIRTUAL06, @VIRTUAL0A
	INC @VIRTUAL0A
	INC @VIRTUAL0A
	JSL UNKNOWN_C46028
	TAX
	CPX #.LOWORD(-1)
	BEQ @UNKNOWN3
	LOADPTR EVENT_SCRIPT_POINTERS, @VIRTUAL06
	MOVE_INT @VIRTUAL06, @LOCAL01
	LDA [@VIRTUAL0A]
	OPTIMIZED_MULT @VIRTUAL04, 3
	STA @LOCAL00
	INC
	INC
	CLC
	ADC @VIRTUAL06
	STA @VIRTUAL06
	LDA [@VIRTUAL06]
	AND #$00FF
	TAY
	LDA @LOCAL00
	PHA
	MOVE_INT @LOCAL01, @VIRTUAL06
	PLA
	CLC
	ADC @VIRTUAL06
	STA @VIRTUAL06
	LDA [@VIRTUAL06]
	JSL INIT_ENTITY_UNKNOWN1
@UNKNOWN3:
	MOVE_INT @VIRTUAL0A, @VIRTUAL06
	INC @VIRTUAL06
	INC @VIRTUAL06
@UNKNOWN4:
	LDA [@VIRTUAL06]
	BNE @UNKNOWN2
@UNKNOWN5:
	LDY #.LOWORD(ENTITY_SCRIPT_TABLE)
	LDA #.LOWORD(-1)
	STA @LOCAL00
	LDX #0
	BRA @UNKNOWN7
@UNKNOWN6:
	LDA __BSS_START__,Y
	STA @VIRTUAL02
	LDA @LOCAL00
	AND @VIRTUAL02
	STA @LOCAL00
	INY
	INY
	INX
@UNKNOWN7:
	CPX #PARTY_LEADER_ENTITY_INDEX - 1
	BCC @UNKNOWN6
	JSL UNKNOWN_C1004E
	LDA @LOCAL00
	CMP #.LOWORD(-1)
	BNE @UNKNOWN5
	END_C_FUNCTION
