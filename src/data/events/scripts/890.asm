
EVENT_890: ;$C399F7
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C39AC7)
@UNKNOWN1: ;$C399FA
	EVENT_PAUSE 1*FRAME
	EVENT_TEST_EVENT_FLAG EVENT_FLAG::UNKNOWN_1FB
	EVENT_SHORTCALL_CONDITIONAL .LOWORD(@UNKNOWN1)
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V0, $0518
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V1, $14E0
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V2, $0038
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V3, $0008
	EVENT_UNKNOWN_C46E74
	EVENT_SHORTCALL_CONDITIONAL .LOWORD(@UNKNOWN1)
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C39E01)
	EVENT_QUEUE_TEXT TEXT_EVENT_WANDERING_PHOTOGRAPHER_28
	EVENT_HALT
