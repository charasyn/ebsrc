
UNKNOWN_C0A2E1: ;$C0A2E1
	LDX $88
	LDA .LOWORD(ENTITY_SCREEN_Y_TABLE),Y
	EOR .LOWORD(ENTITY_SCREEN_Y_TABLE),X
	BNE @UNKNOWN2
	LDA .LOWORD(ENTITY_ABS_X_TABLE),Y
	SEC
	SBC .LOWORD(ENTITY_ABS_X_TABLE),X
	BPL @UNKNOWN0
	EOR #$FFFF
	INC
@UNKNOWN0:
	LDY .LOWORD(UNKNOWN_30X2_TABLE_8),X
	TYX
	SEC
	SBC f:UNKNOWN_C0A2AB,X
	BPL @UNKNOWN1
	EOR #$FFFF
	INC
@UNKNOWN1:
	BEQ @UNKNOWN2
	DEC
@UNKNOWN2:
	RTS
