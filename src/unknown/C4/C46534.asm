;A = sprite, X = movement ID
UNKNOWN_C46534: ;$C46534
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE 20
	STX $02
	STA $12
	LDA .LOWORD(UNKNOWN_7E1A42)
	ASL
	TAX
	LDA .LOWORD(ENTITY_ABS_X_TABLE),X
	STA $0E
	LDA .LOWORD(ENTITY_ABS_Y_TABLE),X
	STA $10
	LDY #$FFFF
	LDX $02
	LDA $12
	JSL PARSE_C3FC49_DATA
	PLD
	RTL
