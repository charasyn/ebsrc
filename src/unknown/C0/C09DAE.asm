
UNKNOWN_C09DAE: ;$C09DAE
	STZ .LOWORD(UNKNOWN_7E0A4C)
	LDA #$003C
	STA .LOWORD(UNKNOWN_7E0A4E)
@UNKNOWN0:
	LDX $88
	JSR a:.LOWORD(UNKNOWN_C09D99)
	STA $96
	JSR a:.LOWORD(UNKNOWN_C09D99)
	CLC
	ADC .LOWORD(ENTITY_SCREEN_X_TABLE),X
	STA $98
	JSR a:.LOWORD(UNKNOWN_C09D99)
	CLC
	ADC .LOWORD(ENTITY_SCREEN_Y_TABLE),X
	STA $9A
	JSR a:.LOWORD(UNKNOWN_C09D99)
	CLC
	ADC .LOWORD(ENTITY_ABS_Z_TABLE),X
	STA .LOWORD(UNKNOWN_7E0A48)
	JSR a:.LOWORD(UNKNOWN_C09D99)
	STA .LOWORD(UNKNOWN_7E0A38)
	JSR a:.LOWORD(UNKNOWN_C09D99)
	CLC
	ADC .LOWORD(UNKNOWN_30X2_TABLE_4),X
	STA .LOWORD(UNKNOWN_7E0A3A)
	STX .LOWORD(UNKNOWN_7E0A3C)
	STZ .LOWORD(UNKNOWN_7E0A3E)
	STZ .LOWORD(UNKNOWN_7E0A40)
	STZ .LOWORD(UNKNOWN_7E0A42)
	STZ .LOWORD(UNKNOWN_7E0A44)
	STZ .LOWORD(UNKNOWN_7E0A46)
	STY $94
	LDY $9A
	LDX $98
	LDA $96
	AND #$7FFF
	JMP a:.LOWORD(UNKNOWN_C092F5_ENTRY2)
	JSR a:.LOWORD(UNKNOWN_C09D8D)
	STA .LOWORD(UNKNOWN_7E0A4C)
	JSR a:.LOWORD(UNKNOWN_C09D8D)
	STA .LOWORD(UNKNOWN_7E0A4E)
	BRA @UNKNOWN0
	JSR a:.LOWORD(UNKNOWN_C09D8D)
	STA .LOWORD(UNKNOWN_7E0A4C)
	INC
	INC
	STA .LOWORD(UNKNOWN_7E0A4E)
	BRA @UNKNOWN0
	JSR a:.LOWORD(UNKNOWN_C09D8D)
	STA .LOWORD(UNKNOWN_7E0A4C)
	TAX
	INC
	INC
	STA .LOWORD(UNKNOWN_7E0A4E)
	STY $94
	JSR a:.LOWORD(UNKNOWN_C09C3B)
	LDY $94
	JMP a:.LOWORD(@UNKNOWN0)
	STZ .LOWORD(UNKNOWN_7E0A4C)
	LDA #$003C
	STA .LOWORD(UNKNOWN_7E0A4E)
	STZ .LOWORD(UNKNOWN_7E0A3A)
	STZ .LOWORD(UNKNOWN_7E0A3E)
	STZ .LOWORD(UNKNOWN_7E0A40)
	STZ .LOWORD(UNKNOWN_7E0A42)
	STZ .LOWORD(UNKNOWN_7E0A44)
	STZ .LOWORD(UNKNOWN_7E0A46)
	STZ .LOWORD(UNKNOWN_7E0A48)
	JSR a:.LOWORD(UNKNOWN_C09D99)
	TAX
	JSR a:.LOWORD(UNKNOWN_C09D99)
	STY $94
	STA .LOWORD(UNKNOWN_7E0A38)
	LDA $88
	STA .LOWORD(UNKNOWN_7E0A3C)
	TXA
	AND #$7FFF
	JMP a:.LOWORD(UNKNOWN_C092F5_ENTRY2)
