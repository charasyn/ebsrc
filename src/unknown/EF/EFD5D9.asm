
UNKNOWN_EFD5D9: ;$EFD5D9
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE 22
	STA $02
	LDY #$0000
	LDX #$0001
	LDA #$0004
	JSL UNKNOWN_C08814
	JSL UNKNOWN_C0927C
	JSR a:.LOWORD(UNKNOWN_EFDA05)
	LOADPTR DEBUG_SOUND_MODE_MENU_TEXT, $06
	MOVE_INT $06, $12
	MOVE_INT $06, $0E
	LDX #$0005
	LDA #$000A
	JSR a:.LOWORD(UNKNOWN_EFDABD)
	LDA #$000E
	MOVE_INTX $12, $06
	CLC
	ADC $06
	STA $06
	STA $0E
	LDA $08
	STA $10
	LDX #$000A
	TXA
	JSR a:.LOWORD(UNKNOWN_EFDABD)
	LDA #$001C
	MOVE_INTX $12, $06
	CLC
	ADC $06
	STA $06
	STA $0E
	LDA $08
	STA $10
	LDX #$000C
	LDA #$000A
	JSR a:.LOWORD(UNKNOWN_EFDABD)
	LDA #$002A
	MOVE_INTX $12, $06
	CLC
	ADC $06
	STA $06
	STA $0E
	LDA $08
	STA $10
	LDX #$000E
	LDA #$000A
	JSR a:.LOWORD(UNKNOWN_EFDABD)
	LDA #$0038
	MOVE_INTX $12, $06
	CLC
	ADC $06
	STA $06
	STA $0E
	LDA $08
	STA $10
	LDX #$0014
	LDA #$0009
	JSR a:.LOWORD(UNKNOWN_EFDABD)
	LDA #$0046
	MOVE_INTX $12, $06
	CLC
	ADC $06
	STA $06
	STA $0E
	LDA $08
	STA $10
	LDX #$0016
	LDA #$000A
	JSR a:.LOWORD(UNKNOWN_EFDABD)
	LDA $02
	ASL
	TAX
	LDA #$0040
	STA .LOWORD(ENTITY_ABS_X_TABLE),X
	LDA #$0050
	STA .LOWORD(ENTITY_ABS_Y_TABLE),X
	LDY #$0000
	LDX #$0001
	LDA #$0004
	JSL UNKNOWN_C087CE
	PLD
	RTS
