
UNKNOWN_EFDA05: ;$EFDA05
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	PHD
	TDC
	ADC #$FFEE
	TCD
	LOADPTR UNKNOWN_7F0000, $06
	JSL UNKNOWN_C08726
	SEP #PROC_FLAGS::ACCUM8
	LDA #$0017
	STA a:.LOWORD(TM_MIRROR)
	LDA #$002F
	STA a:.LOWORD(UNKNOWN_7E000B)
	REP #PROC_FLAGS::ACCUM8
	STZ .LOWORD(UNKNOWN_7EB55D)
	STZ .LOWORD(UNKNOWN_7EB557)
	STZ .LOWORD(DEBUG_MENU_CURSOR_POSITION)
	STZ .LOWORD(UNKNOWN_7EB551)
	STZ .LOWORD(UNKNOWN_7EB55F)
	LDA #$0009
	JSL UNKNOWN_C08D79
	LDY #$0000
	LDX #$3800
	LDA #$0001
	JSL SET_BG1_VRAM_LOCATION
	LDY #$2000
	LDX #$5800
	LDA #$0001
	JSL SET_BG2_VRAM_LOCATION
	LDY #$6000
	LDX #$7C00
	LDA #$0000
	JSL SET_BG3_VRAM_LOCATION
	LDA #$0002
	JSL SET_OAM_SIZE
	LDA #$0000
	STA [$06]
	LDA $06
	STA $0E
	LDA $08
	STA $10
	LDY #$0000
	TYX
	SEP #PROC_FLAGS::ACCUM8
	LDA #$0003
	JSL UNKNOWN_C08616
	.A16
	LOADPTR UNKNOWN_EFF1BB, $0E
	LDX #$0200
	LDA #$0200
	JSL MEMCPY16
	JSL UNKNOWN_EFD95E
	STZ .LOWORD(UNKNOWN_7E0A4C)
	LDA #$0001
	STA .LOWORD(UNKNOWN_7E0A4E)
	LDY #$0034
	TYX
	LDA #$0000
	JSL UNKNOWN_C092F5
	STA .LOWORD(UNKNOWN_7EB553)
	STZ .LOWORD(UNKNOWN_7E4A58)
	STZ .LOWORD(UNKNOWN_7E4A5A)
	PLD
	RTS
