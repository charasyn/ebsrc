
UNKNOWN_C1FF99:
	BEGIN_C_FUNCTION_FAR
	STACK_RESERVE_VARS
	STACK_RESERVE_INT32
	STACK_RESERVE_INT16
	STACK_RESERVE_PARAM_INT16
	STACK_RESERVE_PARAM_INT16
	STACK_RESERVE_PARAM_INT32
	END_STACK_VARS
	TXY
	STY @LOCAL01
	TAX
	MOVE_INT @PARAM02, @VIRTUAL06
	MOVE_INT @VIRTUAL06, @LOCAL00
	TXA
	JSL UNKNOWN_C43E31
	STA @VIRTUAL02
	LDY @LOCAL01
	TYA
	ASL
	ASL
	ASL
	SEC
	SBC @VIRTUAL02
	LSR
	STA VWF_X
	LSR
	LSR
	LSR
	STA VWF_TILE
	END_C_FUNCTION
