
UNKNOWN_C08496: ;$C08496
	SEP #PROC_FLAGS::ACCUM8
@WAIT_UNTIL_READY:
	LDA .LOWORD(HVBJOY)
	LSR
	BCS @WAIT_UNTIL_READY
	JSR .LOWORD(READ_JOYPAD)
	JSR .LOWORD(UNKNOWN_C08456)
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8
	LDX #$0002
@UNKNOWN1:
	LDA <UNKNOWN_7E0077,X
	AND #$FFF0
	STA <UNKNOWN_7E0075
	LDA <PAD_1_STATE,X
	EOR #$FFFF
	AND <UNKNOWN_7E0075 + 0
	STA <PAD_1_PRESS,X
	LDA <UNKNOWN_7E0075 + 0
	CMP <PAD_1_STATE,X
	STA <PAD_1_STATE,X
	BEQ @UNKNOWN2
	LDA <PAD_1_PRESS,X
	STA <PAD_1_HELD,X
	LDA #$0014
	STA <UNKNOWN_7E0071,X
	BRA @UNKNOWN4
@UNKNOWN2:
	LDY <UNKNOWN_7E0071,X
	BEQ @UNKNOWN3
	DEC <UNKNOWN_7E0071,X
	STZ <PAD_1_HELD,X
	BRA @UNKNOWN4
@UNKNOWN3:
	STA <PAD_1_HELD,X
	LDA #$0003
	STA <UNKNOWN_7E0071,X
@UNKNOWN4:
	DEX
	DEX
	BPL @UNKNOWN1
	LDA f:DEBUG
	BNE @UNKNOWN5
	LDA <PAD_2_STATE + 0
	ORA <PAD_1_STATE + 0
	STA <PAD_1_STATE
	LDA <PAD_2_HELD + 0
	ORA <PAD_1_HELD + 0
	STA <PAD_1_HELD
	LDA <PAD_2_PRESS + 0
	ORA <PAD_1_PRESS + 0
	STA <PAD_1_PRESS
@UNKNOWN5:
	LDA <PAD_1_PRESS + 0
	BEQ @UNKNOWN6
	INC .LOWORD(UNKNOWN_7E0A34)
@UNKNOWN6:
	RTS
