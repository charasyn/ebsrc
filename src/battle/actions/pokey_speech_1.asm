
BTLACT_POKEY_SPEECH:
	BEGIN_C_FUNCTION_FAR
	STACK_RESERVE_VARS
	STACK_RESERVE_INT32
	END_STACK_VARS
	LDA #GIYGAS_PHASES::DEVILS_MACHINE_OFF
	STA GIYGAS_PHASE
	LDA #ENEMY::GIYGAS_3
	JSR UNKNOWN_C2C32C
	LDX #MUSIC::GIYGAS_PHASE1
	LDA #ENEMY_GROUP::BOSS_GIYGAS_PHASE_1
	JSR UNKNOWN_C2C21F
	DISPLAY_BATTLE_TEXT_PTR MSG_BTL_MECHPOKEY_1_TALK_B
	SEP #PROC_FLAGS::ACCUM8
	STZ BATTLERS_TABLE + .SIZEOF(battler) * 9 + battler::consciousness
	REP #PROC_FLAGS::ACCUM8
	LDA #GIYGAS_PHASES::GIYGAS_STARTS_ATTACKING
	STA GIYGAS_PHASE
	JSL UNKNOWN_C3FDC5
	LDA #ENEMY::GIYGAS_4
	JSR UNKNOWN_C2C32C
	LDX #MUSIC::GIYGAS_PHASE2
	LDA #ENEMY_GROUP::BOSS_GIYGAS_PHASE_2
	JSR UNKNOWN_C2C21F
	LDA #1
	STA SKIP_DEATH_TEXT_AND_CLEANUP
	END_C_FUNCTION
