
DETERMINE_DODGE: ;$C284AD
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE_CLOBBER 16
	LDX .LOWORD(CURRENT_TARGET)
	LDA a:battler::afflictions + STATUS_GROUP::PERSISTENT_EASYHEAL,X
	AND #$00FF
	CMP #STATUS_0::PARALYZED
	BNE @UNKNOWN0
	LDA #$0000
	BRA @UNKNOWN8
@UNKNOWN0:
	LDX .LOWORD(CURRENT_TARGET)
	LDA a:battler::afflictions + STATUS_GROUP::TEMPORARY,X
	AND #$00FF
	CMP #STATUS_2::ASLEEP
	BNE @UNKNOWN1
	LDA #$0000
	BRA @UNKNOWN8
@UNKNOWN1:
	CMP #STATUS_2::IMMOBILIZED
	BNE @UNKNOWN2
	LDA #$0000
	BRA @UNKNOWN8
@UNKNOWN2:
	CMP #STATUS_2::SOLIDIFIED
	BNE @UNKNOWN3
	LDA #$0000
	BRA @UNKNOWN8
@UNKNOWN3:
	LDX .LOWORD(CURRENT_TARGET)
	LDA a:battler::speed,X
	ASL
	LDX .LOWORD(CURRENT_ATTACKER)
	SEC
	SBC a:battler::speed,X
	STA $0E
	STA $02
	LDA #$0000
	CLC
	SBC $02
	BRANCHGTS @UNKNOWN6
	LDA $0E
	JSR a:.LOWORD(SUCCESS_500)
	CMP #$0000
	BNE @UNKNOWN7
@UNKNOWN6:
	LDA #$0000
	BRA @UNKNOWN8
@UNKNOWN7:
	LDA #$0001
@UNKNOWN8:
	PLD
	RTS
