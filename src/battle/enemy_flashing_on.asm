
ENEMY_FLASHING_ON: ;$EF0052
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	PHD
	PHA
	TDC
	ADC #$FFEE
	TCD
	PLA
	STX $10
	STA $0E
	LDA .LOWORD(UNKNOWN_7E89D0)
	CMP #$FFFF
	BEQ @UNKNOWN0
	JSL ENEMY_FLASHING_OFF
@UNKNOWN0:
	LDX $10
	STX .LOWORD(UNKNOWN_7E89D0)
	LDA $0E
	STA.LOWORD(UNKNOWN_7E89D2)
	BEQ @UNKNOWN1
	LDX .LOWORD(UNKNOWN_7E89D0)
	LDA .LOWORD(UNKNOWN_7EAD82),X
	AND #$00FF
	LDY #.SIZEOF(battler)
	JSL MULT168
	TAX
	SEP #PROC_FLAGS::ACCUM8
	LDA #$0001
	STA .LOWORD(BATTLERS_TABLE)+74,X
	BRA @UNKNOWN2
@UNKNOWN1:
	.A16
	LDX .LOWORD(UNKNOWN_7E89D0)
	LDA .LOWORD(UNKNOWN_7EAD7A),X
	AND #$00FF
	LDY #.SIZEOF(battler)
	JSL MULT168
	TAX
	SEP #PROC_FLAGS::ACCUM8
	LDA #$0001
	STA .LOWORD(BATTLERS_TABLE)+74,X
@UNKNOWN2:
	REP #PROC_FLAGS::ACCUM8
	LDA #$0001
	STA .LOWORD(UNKNOWN_7EADA2)
	SEP #PROC_FLAGS::ACCUM8
	STA .LOWORD(UNKNOWN_7E9623)
	REP #PROC_FLAGS::ACCUM8
	PLD
	RTL
