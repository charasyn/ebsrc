
UNKNOWN_C0C62B: ;$C0C62B
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE_CLOBBER 20
	LDX .LOWORD(UNKNOWN_7E1A42)
	STX $12
	LDA #$0000
	STA $02
	TXA
	ASL
	TAX
	LDA .LOWORD(ENTITY_TPT_ENTRIES),X
	CMP #$7FFF
	BCC @UNKNOWN0
	BEQ @UNKNOWN0
	JSL UNKNOWN_C0C524
	CMP #$0000
	BEQ @UNKNOWN0
	LDA #$8000
	STA $02
@UNKNOWN0:
	LDX $12
	TXA
	ASL
	STA $12
	TAX
	LDA .LOWORD(UNKNOWN_30X2_TABLE_10),X
	STA $0E
	LDA $12
	TAX
	LDY .LOWORD(UNKNOWN_30X2_TABLE_9),X
	TAX
	LDA .LOWORD(ENTITY_ABS_Y_TABLE),X
	TAX
	STX $10
	LDA $12
	TAX
	LDA .LOWORD(ENTITY_ABS_X_TABLE),X
	LDX $10
	JSL UNKNOWN_C41EFF
	CLC
	ADC $02
	PLD
	RTL
