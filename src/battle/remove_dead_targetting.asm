
REMOVE_DEAD_TARGETTING: ;$C270E4
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE_CLOBBER 16
	LDX #$0000
	STX $0E
	BRA @UNKNOWN2
@UNKNOWN0:
	TXA
	JSL IS_CHAR_TARGETTED
	CMP #$0000
	BEQ @UNKNOWN1
	LDX $0E
	TXA
	LDY #.SIZEOF(battler)
	JSL MULT168
	TAX
	LDA .LOWORD(BATTLERS_TABLE)+battler::afflictions,X
	AND #$00FF
	CMP #STATUS_0::UNCONSCIOUS
	BNE @UNKNOWN1
	LDX $0E
	TXA
	JSL REMOVE_TARGET
@UNKNOWN1:
	LDX $0E
	INX
	STX $0E
@UNKNOWN2:
	CPX #$0020
	BCC @UNKNOWN0
	PLD
	RTS
