
PRINT_STRING:
	BEGIN_C_FUNCTION
	STACK_RESERVE_VARS
	STACK_RESERVE_INT32
	STACK_RESERVE_INT16
	STACK_RESERVE_PARAM_INT32
	STACK_RESERVE_PARAM_INT16
	END_STACK_VARS
	TAX
	STX @LOCAL01
	MOVE_INT @PARAM00, @VIRTUAL06
	LDA FORCE_CENTRE_TEXT_ALIGNMENT
	AND #$00FF
	BEQ @UNKNOWN1
	MOVE_INT @VIRTUAL06, @LOCAL00
	TXA
	JSL UNKNOWN_C43EF8
	BRA @UNKNOWN1
@UNKNOWN0:
	DEX
	STX @LOCAL01
	AND #$00FF
	INC @VIRTUAL06
	JSR PRINT_LETTER
@UNKNOWN1:
	LDA [@VIRTUAL06]
	AND #$00FF
	BEQ @UNKNOWN2
	LDX @LOCAL01
	BNE @UNKNOWN0
@UNKNOWN2:
	END_C_FUNCTION
