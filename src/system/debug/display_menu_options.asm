
DEBUG_DISPLAY_MENU_OPTIONS: ;$EFDB21
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	PHD
	TDC
	ADC #$FFEC
	TCD
	LOADPTR DEBUG_MENU_TEXT_2_LINE_1, $0E
	LDX #$0000
	TXA
	JSR a:.LOWORD(UNKNOWN_EFDABD)
	LOADPTR DEBUG_MENU_TEXT_2_LINE_2, $0E
	LDX #$0003
	LDA #$000B
	JSR a:.LOWORD(UNKNOWN_EFDABD)
	LDA #$0006
	STA $02
	LDY #$0000
	STY $12
	BRA @UNKNOWN1
@UNKNOWN0:
	LOADPTR DEBUG_MENU_TEXT_2_LINE_2, $06
	TYA
	STA $04
	ASL
	ASL
	ASL
	ASL
	ADC $04
	CLC
	ADC #$0011
	CLC
	ADC $06
	STA $06
	STA $0E
	LDA $08
	STA $10
	LDX $02
	LDA #$0008
	JSR a:.LOWORD(UNKNOWN_EFDABD)
	INC $02
	INC $02
	INC $02
	LDY $12
	INY
	STY $12
@UNKNOWN1:
	CPY #$0007
	BCC @UNKNOWN0
	PLD
	RTS
