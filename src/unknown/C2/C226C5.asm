
UNKNOWN_C226C5: ;$C226C5
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE 16
	TAX
	LDA .LOWORD(CURRENT_INTERACTING_EVENT_FLAG)
	JSL SET_EVENT_FLAG
	TAX
	STX $0E
	LDA .LOWORD(UNKNOWN_7E5D64)
	JSL UNKNOWN_C0C30C
	LDX $0E
	TXA
	PLD
	RTL
