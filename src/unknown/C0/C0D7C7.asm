
UNKNOWN_C0D7C7: ;$C0D7C7
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	LDA .LOWORD(UNKNOWN_7E1A42)
	ASL
	TAX
	LDA $4DBE
	STA .LOWORD(ENTITY_ABS_X_TABLE),X
	LDA .LOWORD(UNKNOWN_7E1A42)
	ASL
	TAX
	LDA $4DC0
	STA .LOWORD(ENTITY_ABS_Y_TABLE),X
	RTL
