
UNKNOWN_C468DC: ;$C468DC
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE 18
	STA $10
	LDX #$0000
	STX $0E
	LDA .LOWORD(UNKNOWN_7E1A42)
	ASL
	TAX
	LDA $10
	CMP .LOWORD(ENTITY_ABS_Y_TABLE),X
	BCS @UNKNOWN0
	LDX #$0001
	STX $0E
@UNKNOWN0:
	LDX $0E
	TXA
	PLD
	RTL
