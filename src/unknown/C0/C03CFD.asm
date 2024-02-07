
UNKNOWN_C03CFD:
	BEGIN_C_FUNCTION_FAR
	STACK_RESERVE_VARS
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	END_STACK_VARS
	LDA GAME_STATE+game_state::walking_style
	CMP #WALKING_STYLE::BICYCLE
	BNEL @RETURN
	LDA #1
	JSL SET_BOUNDARY_BEHAVIOR
	LDA BATTLE_MODE
	BNE @UNKNOWN1
	LDA PENDING_INTERACTIONS
	BNE @UNKNOWN1
	JSL UNKNOWN_C06A07
@UNKNOWN1:
	LDA #24
	JSL UNKNOWN_C02140
	STZ GAME_STATE + game_state::unknown92
	STZ GAME_STATE+game_state::walking_style
	STZ PARTY_CHARACTERS+char_struct::position_index
	STZ GAME_STATE + game_state::unknown88
	LDA PENDING_INTERACTIONS
	BNE @UNKNOWN2
	JSL OAM_CLEAR
	JSL RUN_ACTIONSCRIPT_FRAME
	JSL UPDATE_SCREEN
	JSL WAIT_UNTIL_NEXT_FRAME
@UNKNOWN2:
	STZ NEW_ENTITY_VAR0
	STZ NEW_ENTITY_VAR1
	LDA ENTITY_ABS_X_TABLE + (PARTY_LEADER_ENTITY_INDEX * 2)
	STA @LOCAL00
	LDA ENTITY_ABS_Y_TABLE + (PARTY_LEADER_ENTITY_INDEX * 2)
	STA @LOCAL01
	LDY #24
	LDX #EVENT_SCRIPT::EVENT_002
	LDA #OVERWORLD_SPRITE::NESS
	JSL CREATE_ENTITY
	STZ ENTITY_ANIMATION_FRAME + (PARTY_LEADER_ENTITY_INDEX * 2)
	LDA GAME_STATE+game_state::leader_direction
	STA ENTITY_DIRECTIONS + (PARTY_LEADER_ENTITY_INDEX * 2)
	LDX #.LOWORD(ENTITY_SCRIPT_VAR7_TABLE) + (24 * 2)
	LDA __BSS_START__,X
	ORA #SPRITE_TABLE_10_FLAGS::UNKNOWN12 | SPRITE_TABLE_10_FLAGS::UNKNOWN15
	STA __BSS_START__,X
	LDA PENDING_INTERACTIONS
	BEQ @UNKNOWN3
	LDX #.LOWORD(ENTITY_TICK_CALLBACK_HIGH) + (24 * 2)
	LDA __BSS_START__,X
	ORA #OBJECT_TICK_DISABLED | OBJECT_MOVE_DISABLED
	STA __BSS_START__,X
.IF .DEFINED(USA) && (!.DEFINED(PROTOTYPE19950327))
	JSL WAIT_UNTIL_NEXT_FRAME
	JSL WAIT_UNTIL_NEXT_FRAME
.ENDIF
	LDA #24
	JSL UNKNOWN_C0A780
@UNKNOWN3:
	STZ UNREAD_7E5DBA
	LDA #2
	STA INPUT_DISABLE_FRAME_COUNTER
@RETURN:
	END_C_FUNCTION
