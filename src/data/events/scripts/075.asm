
EVENT_75:
	EVENT_UNKNOWN_C0A86F $00F3
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AA38)
	EVENT_SET_TICK_CALLBACK MAKE_PARTY_LOOK_AT_ACTIVE_ENTITY
	EVENT_UNKNOWN_C0A685 $80, $00
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V5, $0001
	EVENT_GET_POSITION_OF_PARTY_MEMBER $FF
	EVENT_ADD ACTIONSCRIPT_VARS::V6, $0010
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AB59)
	EVENT_UNKNOWN_C0AA6E DIRECTION::LEFT, $00
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V4, $0001
	EVENT_YIELD_TO_TEXT
	EVENT_HALT
