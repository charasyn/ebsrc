
UNKNOWN_C35F8B:
	EVENT_WRITE_VAR_TO_WAIT_TIMER ACTIONSCRIPT_VARS::V3
	EVENT_WRITE_VAR_TO_TEMPVAR ACTIONSCRIPT_VARS::V4
	EVENT_SHORTCALL_CONDITIONAL_NOT .LOWORD(UNKNOWN_C35F98)
	EVENT_SET_ANIMATION $01
	EVENT_UNKNOWN_C0A443_ME1
UNKNOWN_C35F98:
	EVENT_WRITE_VAR_TO_WAIT_TIMER ACTIONSCRIPT_VARS::V3
	EVENT_IS_ENTITY_STILL_ON_CAST_SCREEN
	EVENT_SHORTCALL_CONDITIONAL .LOWORD(UNKNOWN_C35FB3)
	EVENT_WRITE_VAR_TO_TEMPVAR ACTIONSCRIPT_VARS::V4
	EVENT_SHORTCALL_CONDITIONAL_NOT .LOWORD(UNKNOWN_C35FAC)
	EVENT_SET_ANIMATION $00
	EVENT_UNKNOWN_C0A443_ME3
UNKNOWN_C35FAC:
	EVENT_IS_ENTITY_STILL_ON_CAST_SCREEN
	EVENT_SHORTCALL_CONDITIONAL_NOT .LOWORD(UNKNOWN_C35F8B)
UNKNOWN_C35FB3:
	EVENT_SHORTJUMP .LOWORD(EVENT_35)
