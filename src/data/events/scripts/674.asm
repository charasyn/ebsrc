
EVENT_674: ;$C37DF1
	EVENT_SHORTCALL .LOWORD(EVENT_674_ENTRY_3)
EVENT_674_ENTRY_2: ;$C37DF4
	EVENT_WRITE_WORD_TEMPVAR $0000
	EVENT_UNKNOWN_C0A857 EVENT_FLAG::UNKNOWN_210
	EVENT_CHOOSE_RANDOM $0190, $0258, $04B0, $0708
	EVENT_WRITE_TEMPVAR_WAITTIMER
	EVENT_WRITE_WRAM_TEMPVAR .LOWORD(BATTLE_SWIRL_COUNTDOWN)
	EVENT_SHORTCALL_CONDITIONAL_NOT .LOWORD(EVENT_674_ENTRY_2)
	EVENT_WRITE_WRAM_TEMPVAR .LOWORD(BATTLE_SWIRL_FLAG)
	EVENT_SHORTCALL_CONDITIONAL_NOT .LOWORD(EVENT_674_ENTRY_2)
	EVENT_UNKNOWN_C46C45
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V2, $00F8
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V3, $00F8
	EVENT_TEST_PLAYER_IN_AREA
	EVENT_SHORTCALL_CONDITIONAL .LOWORD(EVENT_674_ENTRY_2)
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V2, $0004
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V3, $0004
	EVENT_TEST_PLAYER_IN_AREA
	EVENT_SHORTCALL_CONDITIONAL .LOWORD(EVENT_674_INTERNAL_1)
	EVENT_WRITE_WORD_TEMPVAR $0001
	EVENT_UNKNOWN_C0A857 EVENT_FLAG::UNKNOWN_210
EVENT_674_INTERNAL_1: ;$C37E42
	EVENT_QUEUE_TEXT TEXT_HOT_SPRING_ENERGIZED
	EVENT_SHORTCALL .LOWORD(EVENT_674_ENTRY_4)
	EVENT_SHORTJUMP .LOWORD(EVENT_674_ENTRY_2)
EVENT_674_ENTRY_3: ;$C37E50
	EVENT_DISABLE_CURRENT_ENTITY_COLLISION2
	EVENT_SET_PHYSICS_CALLBACK .LOWORD(UNKNOWN_C09FAE_ENTRY4)
	EVENT_SET_ANIMATION $FF
	EVENT_SET_VELOCITIES_ZERO
	EVENT_UNKNOWN_C0C7DB
	EVENT_UNKNOWN_C0A443_ME2
	EVENT_START_TASK .LOWORD(EVENT_8_ENTRY_2)
	EVENT_SHORT_RETURN
EVENT_674_ENTRY_4: ;$C37E66
	EVENT_PAUSE 1*FRAME
	EVENT_CLEAR_CURRENT_ENTITY_COLLISION2
	EVENT_START_TASK .LOWORD(UNKNOWN_C37EAE)
	EVENT_PLAY_SOUND SFX::SPRAY
	EVENT_WRITE_WORD_TEMPVAR DIRECTION::DOWN
	EVENT_SET_DIRECTION
	EVENT_PAUSE 2*FIFTEENTHS_OF_A_SECOND
	EVENT_WRITE_WORD_TEMPVAR DIRECTION::UP
	EVENT_SET_DIRECTION
	EVENT_PAUSE 2*FIFTEENTHS_OF_A_SECOND
	EVENT_WRITE_WORD_TEMPVAR DIRECTION::RIGHT
	EVENT_SET_DIRECTION
	EVENT_PAUSE $B4*FRAMES
	EVENT_WRITE_WORD_TEMPVAR DIRECTION::UP
	EVENT_SET_DIRECTION
	EVENT_PAUSE 2*FIFTEENTHS_OF_A_SECOND
	EVENT_WRITE_WORD_TEMPVAR DIRECTION::DOWN
	EVENT_SET_DIRECTION
	EVENT_PAUSE 2*FIFTEENTHS_OF_A_SECOND
	EVENT_END_LAST_TASK
	EVENT_DISABLE_CURRENT_ENTITY_COLLISION2
	EVENT_SET_ANIMATION $FF
	EVENT_UNKNOWN_C0A443_ME2
	EVENT_SHORT_RETURN
UNKNOWN_C37EAE: ;$C37EAE
	EVENT_SET_ANIMATION $00
	EVENT_UNKNOWN_C0A443_ME3
	EVENT_PAUSE 1*FIFTEENTH_OF_A_SECOND
	EVENT_SET_ANIMATION $01
	EVENT_UNKNOWN_C0A443_ME1
	EVENT_PAUSE 1*FIFTEENTH_OF_A_SECOND
	EVENT_SHORTCALL_CONDITIONAL_NOT .LOWORD(UNKNOWN_C37EAE)
