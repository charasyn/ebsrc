
EVENT_484:
	EVENT_UNKNOWN_C4675C
	EVENT_SET_POSITION_CHANGE_CALLBACK .LOWORD(UNKNOWN_C0A039)
	EVENT_SET_PHYSICS_CALLBACK .LOWORD(UNKNOWN_C09FAE_ENTRY2)
	EVENT_SET_ANIMATION $FF
	EVENT_SET_TICK_CALLBACK ACTIONSCRIPT_SIMPLE_SCREEN_POSITION_CALLBACK
	EVENT_UNKNOWN_C0A685 $C0, $00
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V5, $0001
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V6, $0360
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V7, $10B0
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AB59)
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V6, $0360
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V7, $1090
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AB59)
	EVENT_YIELD_TO_TEXT
	EVENT_SHORTJUMP .LOWORD(EVENT_35)
