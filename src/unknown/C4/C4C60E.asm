
UNKNOWN_C4C60E: ;$C4C60E
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE 16
	STA $02
	LDX #$FFFF
	LDA $02
	JSL UNKNOWN_C496E7
	LDA #$0000
	STA $0E
	BRA @UNKNOWN1
@UNKNOWN0:
	JSL UNKNOWN_C426ED
	JSL OAM_CLEAR
	JSL UNKNOWN_C09466
	JSL UPDATE_SCREEN
	JSL WAIT_UNTIL_NEXT_FRAME
	LDA $0E
	INC
	STA $0E
@UNKNOWN1:
	CMP $02
	BCC @UNKNOWN0
	JSL UNKNOWN_C49740
	PLD
	RTL
