
UNKNOWN_C4C45F:
	BEGIN_C_FUNCTION
	STACK_RESERVE_VARS
	STACK_RESERVE_INT32
	STACK_RESERVE_INT32
	STACK_RESERVE_INT32
	STACK_RESERVE_INT16
	STACK_RESERVE_PARAM_INT16
	END_STACK_VARS
	TAX
	STX @LOCAL03
	LOADPTR BUFFER + $7800, @VIRTUAL06
	MOVE_INT @VIRTUAL06, @LOCAL02
	MOVE_INT @VIRTUAL06, @LOCAL00
	PROMOTENEARPTR PALETTES + BPP4PALETTE_SIZE * 2, @VIRTUAL06
	REP #PROC_FLAGS::ACCUM8
	MOVE_INT @VIRTUAL06, @LOCAL01
	LDA #BPP4PALETTE_SIZE * 6
	JSL MEMCPY24
	LDX @LOCAL03
	TXA
	ASL
	ASL
	ASL
	ASL
	ASL
	MOVE_INTX @LOCAL02, @VIRTUAL06
	CLC
	ADC @VIRTUAL06
	STA @VIRTUAL06
	STA @LOCAL00
	LDA @VIRTUAL06+2
	STA @LOCAL00+2
	PROMOTENEARPTR PALETTES + BPP4PALETTE_SIZE * 7, @VIRTUAL06
	REP #PROC_FLAGS::ACCUM8
	MOVE_INT @VIRTUAL06, @LOCAL01
	LDA #BPP4PALETTE_SIZE * 1
	JSL MEMCPY24
	LDX @LOCAL03
	TXA
	DEC
	ASL
	ASL
	ASL
	ASL
	ASL
	MOVE_INTX @LOCAL02, @VIRTUAL06
	CLC
	ADC @VIRTUAL06
	STA @VIRTUAL06
	STA @LOCAL00
	LDA @VIRTUAL06+2
	STA @LOCAL00+2
	PROMOTENEARPTR PALETTES + BPP4PALETTE_SIZE * 6, @VIRTUAL06
	REP #PROC_FLAGS::ACCUM8
	MOVE_INT @VIRTUAL06, @LOCAL01
	LDA #BPP4PALETTE_SIZE * 1
	JSL MEMCPY24
	END_C_FUNCTION
