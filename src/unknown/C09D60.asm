
UNKNOWN_C09D60: ;$C09D60
	STY $94
	STZ $00
	LDA .LOWORD(UNKNOWN_30X2_TABLE_2),X
	CMP $94
	BEQ @UNKNOWN1
@UNKNOWN0:
	INC $00
	TAY
	LDA .LOWORD(UNKNOWN_7E125A),Y
	CMP $94
	BNE @UNKNOWN0
@UNKNOWN1:
	LDA $00
	RTS
