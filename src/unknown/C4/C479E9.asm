
UNKNOWN_C479E9: ;$C479E9
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE_CLOBBER 20
	LDA .LOWORD(UNKNOWN_7E1A42)
	ASL
	TAX
	LDA .LOWORD(ENTITY_ABS_X_TABLE),X
	SEC
	SBC a:.LOWORD(BG1_X_POS)
	STA $04
	LDA .LOWORD(ENTITY_ABS_Y_TABLE),X
	SEC
	SBC a:.LOWORD(BG1_Y_POS)
	STA $12
	LDA .LOWORD(UNKNOWN_30X2_TABLE_3),X
	STA $02
	LDA $12
	CLC
	ADC $02
	STA $0E
	LDA $04
	CLC
	ADC $02
	TAY
	LDX $10
	LDA $04
	SEC
	SBC $02
	JSL UNKNOWN_C47930
	PLD
	RTL
