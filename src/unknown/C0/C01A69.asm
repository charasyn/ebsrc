
UNKNOWN_C01A69: ;$C01A69
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	LDY #$0000
	BRA @UNKNOWN1
@UNKNOWN0:
	TYA
	ASL
	TAX
	STZ .LOWORD(UNKNOWN_30X2_TABLE_35),X
	LDA #$FFFF
	STA .LOWORD(UNKNOWN_30X2_TABLE_24),X
	STA .LOWORD(ENTITY_TPT_ENTRIES),X
	INY
@UNKNOWN1:
	CPY #$001E
	BCC @UNKNOWN0
	RTL
