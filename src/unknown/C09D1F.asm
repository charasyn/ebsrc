
UNKNOWN_C09D1F: ;$C09D1F
	PHX
	JSR a:.LOWORD(UNKNOWN_C09D3E)
	LDA .LOWORD(UNKNOWN_7E125A),Y
	CPX #$FFFF
	BEQ @UNKNOWN0
	STA .LOWORD(UNKNOWN_7E125A),X
	PLX
	BRA @UNKNOWN1
@UNKNOWN0:
	PLX
	STA .LOWORD(UNKNOWN_30X2_TABLE_2),X
@UNKNOWN1:
	CPY .LOWORD(UNKNOWN_7E0A58)
	BNE @UNKNOWN2
	STA .LOWORD(UNKNOWN_7E0A58)
@UNKNOWN2:
	RTS
