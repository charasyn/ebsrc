
UNKNOWN_C48C02: ;$C48C02
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	LDA .LOWORD(UNKNOWN_7E1A42)
	ASL
	TAX
	LDA .LOWORD(ENTITY_ABS_X_TABLE),X
	SEC
	SBC a:.LOWORD(BG1_X_POS)
	CLC
	ADC .LOWORD(UNKNOWN_30X2_TABLE_3),X
	STA .LOWORD(ENTITY_SCREEN_X_TABLE),X
	LDA .LOWORD(UNKNOWN_7E1A42)
	ASL
	TAX
	LDA .LOWORD(ENTITY_ABS_Y_TABLE),X
	SEC
	SBC a:.LOWORD(BG1_Y_POS)
	CLC
	ADC .LOWORD(UNKNOWN_30X2_TABLE_4),X
	STA .LOWORD(ENTITY_SCREEN_Y_TABLE),X
	RTL
