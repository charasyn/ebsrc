
UNKNOWN_C4D989:
	BEGIN_C_FUNCTION_FAR
	STACK_RESERVE_VARS
	STACK_RESERVE_INT32
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_PARAM_INT16
	STACK_RESERVE_RETURN_INT16
	END_STACK_VARS
	STA @VIRTUAL02
	JSL UNKNOWN_C0927C
	JSL UNKNOWN_C01A86
	LDX #0
	LDA #$8000
	JSL ALLOC_SPRITE_MEM
	JSL INITIALIZE_MISC_OBJECT_DATA
	LDA #1
	STA NPC_SPAWNS_ENABLED
	STZ ENEMY_SPAWNS_ENABLED
	LDA #0
	JSL SET_AUTO_SECTOR_MUSIC_CHANGES
	LDA #23
	STA ENTITY_ALLOCATION_MIN_SLOT
	LDA #24
	STA ENTITY_ALLOCATION_MAX_SLOT
	LDY #0
	TYX
	LDA #1
	JSL INIT_ENTITY
	JSL UNKNOWN_C02D29
	LDX #0
	BRA @UNKNOWN1
@UNKNOWN0:
	SEP #PROC_FLAGS::ACCUM8
	STZ GAME_STATE + game_state::party_members,X
	INX
@UNKNOWN1:
	CPX #.SIZEOF(game_state::party_members)
	BCC @UNKNOWN0
	LDX #2824
	REP #PROC_FLAGS::ACCUM8
	LDA #7520
	JSL UNKNOWN_C0B65F
	JSL UNKNOWN_C03A24
	SEP #PROC_FLAGS::ACCUM8
	STZ @LOCAL00
	LDX #BPP4PALETTE_SIZE * 16
	REP #PROC_FLAGS::ACCUM8
	LDA #.LOWORD(PALETTES)
	JSL MEMSET16
	JSL OVERWORLD_INITIALIZE
	SEP #PROC_FLAGS::ACCUM8
	STZ TM_MIRROR
	REP #PROC_FLAGS::ACCUM8
	LDA #0
	JSL UNKNOWN_C2EA15
	JSL UNKNOWN_C4A7B0
	STZ ACTIONSCRIPT_STATE
	LDX #0
	STX @LOCAL02
	TXY
	STY @LOCAL01
	LOADPTR ATTRACT_MODE_TXT, @VIRTUAL0A
	LDA @VIRTUAL02
	ASL
	ASL
	CLC
	ADC @VIRTUAL0A
	STA @VIRTUAL0A
	DEREFERENCE_PTR_TO @VIRTUAL0A, @VIRTUAL06
	MOVE_INT @VIRTUAL06, @LOCAL00
	JSL DISPLAY_TEXT
	BRA @UNKNOWN7
@UNKNOWN2:
	JSL UNKNOWN_C4A7B0
	LDA PAD_PRESS
	AND #PAD::A_BUTTON
	BNE @UNKNOWN3
	LDA PAD_PRESS
	AND #PAD::B_BUTTON
	BNE @UNKNOWN3
	LDA PAD_PRESS
	AND #PAD::START_BUTTON
	BEQ @UNKNOWN4
@UNKNOWN3:
	LDY #1
	STY @LOCAL01
	BRA @UNKNOWN8
@UNKNOWN4:
	JSL UNKNOWN_C1004E
	LDX @LOCAL02
	BEQ @UNKNOWN5
	CPX #1
	BNE @UNKNOWN6
@UNKNOWN5:
	SEP #PROC_FLAGS::ACCUM8
	LDA #$13
	STA TM_MIRROR
@UNKNOWN6:
	INX
	STX @LOCAL02
@UNKNOWN7:
	REP #PROC_FLAGS::ACCUM8
	LDA ACTIONSCRIPT_STATE
	BEQ @UNKNOWN2
@UNKNOWN8:
	JSL UNKNOWN_C2EA74
	BRA @UNKNOWN10
@UNKNOWN9:
	JSL UNKNOWN_C1004E
	JSL UNKNOWN_C4A7B0
@UNKNOWN10:
	JSL UNKNOWN_C2EACF
	CMP #0
	BNE @UNKNOWN9
	LDX #1
	TXA
	JSL FADE_OUT
	BRA @UNKNOWN12
@UNKNOWN11:
	JSL UNKNOWN_C1004E
@UNKNOWN12:
	LDA FADE_PARAMETERS + fade_parameters::step
	AND #$00FF
	BNE @UNKNOWN11
	JSL UNKNOWN_C2EAAA
	STZ ACTIONSCRIPT_STATE
	JSL UNKNOWN_C021E6
	LDY @LOCAL01
	TYA
	END_C_FUNCTION
