
UNKNOWN_C33BFB: ;$C33BFB
	EVENT_SET_ANIMATION $FF
	EVENT_SET_PHYSICS_CALLBACK .LOWORD(UNKNOWN_C09FAE_ENTRY2)
	EVENT_UNKNOWN_C47A9E
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V1, $0000
UNKNOWN_C33C08: ;$C33C08
	EVENT_UNKNOWN_C47B77
	EVENT_SHORTCALL_CONDITIONAL .LOWORD(UNKNOWN_C33C18)
	EVENT_WRITE_TEMPVAR_WAITTIMER
	EVENT_ADD_9AF9 ACTIONSCRIPT_VARS::V1, $0001
	EVENT_SHORTJUMP .LOWORD(UNKNOWN_C33C08)
