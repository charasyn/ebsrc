
EVENT_401: ;$C32DFE
	EVENT_UNKNOWN_C0A864 $FF
	EVENT_SET_PHYSICS_CALLBACK .LOWORD(UNKNOWN_C09FAE_ENTRY2)
	EVENT_SET_ANIMATION $FF
	EVENT_UNKNOWN_08 UNKNOWN_C48C2B
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V0, $FFF1
	EVENT_UNKNOWN_C474A8
	EVENT_UNKNOWN_C0A685 $00, $01
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V5, $0001
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V6, $1280
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V7, $1670
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AB59)
	EVENT_EXEC_TEXT_BLOCK TEXT_EVENT_401
	EVENT_SHORTJUMP .LOWORD(EVENT_35)
