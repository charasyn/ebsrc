
UNKNOWN_C42631: ;$C42631
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8
	STZ .LOWORD(UNKNOWN_7E3C22)
	STZ .LOWORD(UNKNOWN_7E3C24)
	STZ .LOWORD(UNKNOWN_7E3C26)
	STZ .LOWORD(UNKNOWN_7E3C28)
	TAY
	TXA
	CLC
	ADC #$0080
	AND #$00FF
	TAX
	PHX
	TYA
	JSL COSINE_SINE
	STA .LOWORD(UNKNOWN_7E3C23)
	LDA .LOWORD(UNKNOWN_7E3C23)
	BPL @UNKNOWN0
	LDA #$FF00
	ORA .LOWORD(UNKNOWN_7E3C24)
	STA .LOWORD(UNKNOWN_7E3C24)
@UNKNOWN0:
	PLX
	TYA
	JSL COSINE
	STA .LOWORD(UNKNOWN_7E3C27)
	LDA .LOWORD(UNKNOWN_7E3C27)
	BPL @UNKNOWN1
	LDA #$FF00
	ORA .LOWORD(UNKNOWN_7E3C28)
	STA .LOWORD(UNKNOWN_7E3C28)
@UNKNOWN1:
	LDA a:.LOWORD(BG1_X_POS)
	STA .LOWORD(UNKNOWN_7E3C2C)
	LDA a:.LOWORD(BG1_Y_POS)
	STA .LOWORD(UNKNOWN_7E3C30)
	STZ .LOWORD(UNKNOWN_7E3C2A)
	STZ .LOWORD(UNKNOWN_7E3C2E)
	RTL
