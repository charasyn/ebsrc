
UNKNOWN_C46B8D: ;$C46B8D
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE 18
	TAX
	LDY .LOWORD(UNKNOWN_7E1A42)
	STY $10
	TXA
	JSL UNKNOWN_C4605A
	STA $0E
	LDY $10
	TYA
	ASL
	TAY
	LDA $0E
	ASL
	TAX
	LDA .LOWORD(ENTITY_ABS_X_TABLE),X
	STA .LOWORD(UNKNOWN_30X2_TABLE_9),Y
	LDA .LOWORD(ENTITY_ABS_Y_TABLE),X
	STA .LOWORD(UNKNOWN_30X2_TABLE_10),Y
	PLD
	RTL
