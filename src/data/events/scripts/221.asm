
EVENT_221: ;$C30195
	EVENT_TEST_EVENT_FLAG EVENT_FLAG::UNKNOWN_00C
	EVENT_SHORTCALL_CONDITIONAL_NOT .LOWORD(EVENT_8)
	EVENT_TEST_EVENT_FLAG EVENT_FLAG::UNKNOWN_00D
	EVENT_SHORTCALL_CONDITIONAL .LOWORD(EVENT_8)
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AA38)
	EVENT_SET_ANIMATION $FF
	EVENT_DISABLE_CURRENT_ENTITY_COLLISION2
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V4, $0001
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V0, $1A90
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V1, $1E60
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V2, $0008
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V3, $00C0
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AB8A)
	EVENT_SET_X $1AE8
	EVENT_SET_Y $1E68
	EVENT_SET_ANIMATION $00
	EVENT_CLEAR_CURRENT_ENTITY_COLLISION2
	EVENT_UNKNOWN_C0AA6E DIRECTION::LEFT, $00
	EVENT_PLAY_SOUND SFX::DOOR_CLOSE
	EVENT_PAUSE $01
	EVENT_QUEUE_TEXT TEXT_EVENT_221
	EVENT_PAUSE $01
	EVENT_UNKNOWN_C0A685 $00, $01
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V4, $0000
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V5, $0001
	EVENT_START_TASK .LOWORD(UNKNOWN_C3AFA3)
	EVENT_GET_POSITION_OF_PARTY_MEMBER $FF
	EVENT_ADD ACTIONSCRIPT_VARS::V6, $FFEE
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AB59)
	EVENT_END_LAST_TASK
	EVENT_END_LAST_TASK
	EVENT_YIELD_TO_TEXT
	EVENT_PAUSE $01
	EVENT_SET_PHYSICS_CALLBACK .LOWORD(UNKNOWN_C0A360)
	EVENT_START_TASK .LOWORD(UNKNOWN_C3A09F)
	EVENT_START_TASK .LOWORD(UNKNOWN_C3A262)
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V5, $0015
	EVENT_GET_POSITION_OF_PARTY_MEMBER $FE
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AB44)
@UNKNOWN1:
	EVENT_PAUSE $01
	EVENT_SET_VELOCITIES_ZERO
	EVENT_GET_POSITION_OF_PARTY_MEMBER $02
	EVENT_UNKNOWN_C0A8C6
	EVENT_SHORTJUMP .LOWORD(@UNKNOWN1)
