
EVENT_569:
	EVENT_UNKNOWN_C0A864 $02
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AA38)
	EVENT_SET_TICK_CALLBACK MAKE_PARTY_LOOK_AT_ACTIVE_ENTITY
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V4, $0000
	EVENT_UNKNOWN_C0A685 $80, $00
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V5, $0001
	EVENT_GET_POSITION_OF_PARTY_MEMBER $01
	EVENT_ADD ACTIONSCRIPT_VARS::V6, $0010
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AB59)
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V6, $0850
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V7, $1BA0
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AB59)
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V4, $0001
	EVENT_WRITE_WORD_TEMPVAR DIRECTION::DOWN
	EVENT_SET_DIRECTION
	EVENT_UNKNOWN_C0A443_ME2
	EVENT_YIELD_TO_TEXT
	EVENT_PAUSE 1*TWENTIETH_OF_A_SECOND
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V6, $0850
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V7, $1B90
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AB59)
	EVENT_YIELD_TO_TEXT
	EVENT_SHORTJUMP .LOWORD(EVENT_35)
