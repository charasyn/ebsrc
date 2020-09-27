
TARGET_ALLIES: ;$C26BFB
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE_CLOBBER 16
	MOVE_INT_CONSTANT 0, .LOWORD(BATTLER_TARGET_FLAGS)
	LDX #.LOWORD(BATTLERS_TABLE)
	LDA #$0000
	STA $0E
	BRA @UNKNOWN3
@UNKNOWN0:
	LDA a:battler::consciousness,X
	AND #$00FF
	BEQ @UNKNOWN2
	LDA a:battler::ally_or_enemy,X
	AND #$00FF
	BEQ @UNKNOWN1
	LDA a:battler::npc_id,X
	AND #$00FF
	BEQ @UNKNOWN2
@UNKNOWN1:
	LOADPTR POWERS_OF_TWO_32BIT, $06
	LDA $0E
	ASL
	ASL
	CLC
	ADC $06
	STA $06
	DEREFERENCE_PTR_TO $06, $0A
	MOVE_INT .LOWORD(BATTLER_TARGET_FLAGS), $06
	LDA $06
	ORA $0A
	STA $06
	LDA $08
	ORA $0C
	STA $08
	MOVE_INT $06, .LOWORD(BATTLER_TARGET_FLAGS)
@UNKNOWN2:
	TXA
	CLC
	ADC #.SIZEOF(battler)
	TAX
	LDA $0E
	INC
	STA $0E
@UNKNOWN3:
	CMP #$0020
	BCC @UNKNOWN0
	PLD
	RTL
