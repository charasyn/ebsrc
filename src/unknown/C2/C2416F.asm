
UNKNOWN_C2416F: ;$C2416F
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE_CLOBBER 16
	LDX #$0000
	STX $0E
	BRA @UNKNOWN1
@UNKNOWN0:
	LDX .LOWORD(CURRENT_ATTACKER)
	CMP a:battler::current_action,X
	BEQ @UNKNOWN6
	LDX $0E
	INX
	STX $0E
@UNKNOWN1:
	TXA
	ASL
	TAX
	LDA f:DEAD_TARGETTABLE_ACTIONS,X
	BNE @UNKNOWN0
	LDY #$0000
	STY $0E
	BRA @UNKNOWN5
@UNKNOWN2:
	TYA
	JSL IS_CHAR_TARGETTED
	CMP #$0000
	BEQ @UNKNOWN4
	LDY $0E
	TYA
	LDY #.SIZEOF(battler)
	JSL MULT168
	TAX
	LDA .LOWORD(BATTLERS_TABLE)+battler::consciousness,X
	AND #$00FF
	BEQ @UNKNOWN3
	LDA .LOWORD(BATTLERS_TABLE)+battler::afflictions,X
	AND #$00FF
	TAX
	CPX #STATUS_0::UNCONSCIOUS
	BEQ @UNKNOWN3
	CPX #STATUS_0::DIAMONDIZED
	BNE @UNKNOWN4
@UNKNOWN3:
	LDY $0E
	TYA
	JSL REMOVE_TARGET
@UNKNOWN4:
	LDY $0E
	INY
	STY $0E
@UNKNOWN5:
	CPY #$0020
	BCC @UNKNOWN2
@UNKNOWN6:
	PLD
	RTL
