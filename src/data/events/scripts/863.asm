
EVENT_863: ;$C394CC
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C39AC7)
@UNKNOWN1: ;$C394CF
	EVENT_PAUSE 1*FRAME
	EVENT_TEST_EVENT_FLAG EVENT_FLAG::UNKNOWN_1E0
	EVENT_SHORTCALL_CONDITIONAL .LOWORD(@UNKNOWN1)
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V0, $1D78
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V1, $05DC
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V2, $0010
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V3, $0004
	EVENT_UNKNOWN_C46E74
	EVENT_SHORTCALL_CONDITIONAL .LOWORD(@UNKNOWN1)
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C39E01)
	EVENT_QUEUE_TEXT TEXT_EVENT_WANDERING_PHOTOGRAPHER_01
	EVENT_HALT
