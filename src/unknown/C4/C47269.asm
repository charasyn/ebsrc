
UNKNOWN_C47269: ;$C47269
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	LDA .LOWORD(UNKNOWN_7E1A42)
	ASL
	TAX
	LDA .LOWORD(ENTITY_ABS_X_TABLE),X
	LDY .LOWORD(ENTITY_ABS_Y_TABLE),X
	CMP .LOWORD(UNKNOWN_30X2_TABLE_3),X
	BCS @UNKNOWN0
	LDA #$0003
	BRA @UNKNOWN4
@UNKNOWN0:
	CMP .LOWORD(UNKNOWN_30X2_TABLE_4),X
	BCC @UNKNOWN1
	BEQ @UNKNOWN1
	LDA #$0007
	BRA @UNKNOWN4
@UNKNOWN1:
	TYA
	CMP .LOWORD(UNKNOWN_30X2_TABLE_5),X
	BCS @UNKNOWN2
	LDA #$0005
	BRA @UNKNOWN4
@UNKNOWN2:
	TYA
	CMP .LOWORD(UNKNOWN_30X2_TABLE_6),X
	BCC @UNKNOWN3
	BEQ @UNKNOWN3
	LDA #$0001
	BRA @UNKNOWN4
@UNKNOWN3:
	LDA #$0000
@UNKNOWN4:
	RTL
