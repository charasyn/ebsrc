
SMAAAASH: ;$C283F8
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE_CLOBBER 20
	STZ .LOWORD(UNKNOWN_7EAA8E)
	LDX .LOWORD(CURRENT_ATTACKER)
	LDA a:.LOWORD(RAM) + battler::guts,X
	STA $12
	LDX .LOWORD(CURRENT_ATTACKER)
	LDA a:.LOWORD(RAM) + battler::ally_or_enemy,X
	AND #$00FF
	BNE @BYPASS_MINIMUM_GUTS
	LDA $12
	CMP #GUTS_FLOOR_FOR_SMAAAASH_CHANCE
	BCS @BYPASS_MINIMUM_GUTS
	LDA #GUTS_FLOOR_FOR_SMAAAASH_CHANCE
	STA $12
@BYPASS_MINIMUM_GUTS:
	LDA $12
	JSR a:.LOWORD(SUCCESS_500)
	CMP #$0000
	BNE @SMAAAASH_SUCCESS
	JMP a:.LOWORD(@FAILED)
@SMAAAASH_SUCCESS:
	LDX .LOWORD(CURRENT_ATTACKER)
	LDA a:.LOWORD(RAM) + battler::ally_or_enemy,X
	AND #$00FF
	BNE @ATTACKER_IS_ENEMY
	LDA #SMAAAASH_FLASH_DURATION
	STA .LOWORD(GREEN_FLASH_DURATION)
	DISPLAY_BATTLE_TEXT_PTR TEXT_BATTLE_SMAAAASH
	BRA @SKIP_ENEMY_FLASH
@ATTACKER_IS_ENEMY:
	LDA #SMAAAASH_FLASH_DURATION
	STA .LOWORD(RED_FLASH_DURATION)
	DISPLAY_BATTLE_TEXT_PTR TEXT_BATTLE_SMAAAASH_RECEIVED
@SKIP_ENEMY_FLASH:
	LDX .LOWORD(CURRENT_TARGET)
	LDA a:.LOWORD(RAM) + battler::afflictions + STATUS_GROUP::SHIELD,X
	AND #$00FF
	TAX
	CPX #STATUS_6::SHIELD_POWER
	BEQ @TARGET_HAS_SHIELD
	CPX #STATUS_6::SHIELD
	BNE @TARGET_DOES_NOT_HAVE_SHIELD
@TARGET_HAS_SHIELD:
	SEP #PROC_FLAGS::ACCUM8
	LDA #$0001
	LDX .LOWORD(CURRENT_TARGET)
	STA a:.LOWORD(RAM) + battler::shield_hp,X
@TARGET_DOES_NOT_HAVE_SHIELD:
	REP #PROC_FLAGS::ACCUM8
	LDA #$0001
	STA .LOWORD(UNKNOWN_7EAA8E)
	LDX #$00FF
	STX $12
	LDX .LOWORD(CURRENT_ATTACKER)
	LDA a:.LOWORD(RAM) + battler::offense,X
	ASL
	ASL
	LDX .LOWORD(CURRENT_TARGET)
	SEC
	SBC a:.LOWORD(RAM) + battler::defense,X
	LDX $12
	JSR a:.LOWORD(CALC_RESIST_DAMAGE)
	LDA #$0001
	BRA @RETURN
@FAILED:
	LDA #$0000
@RETURN:
	PLD
	RTS
