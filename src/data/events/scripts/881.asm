
EVENT_881: ;$C3983E
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C39AC7)
@UNKNOWN1: ;$C39841
	EVENT_PAUSE 1*FRAME
	EVENT_TEST_EVENT_FLAG EVENT_FLAG::UNKNOWN_1F2
	EVENT_SHORTCALL_CONDITIONAL .LOWORD(@UNKNOWN1)
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V0, $1AC0
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V1, $2080
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V2, $0020
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V3, $0008
	EVENT_UNKNOWN_C46E74
	EVENT_SHORTCALL_CONDITIONAL .LOWORD(@UNKNOWN1)
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C39E01)
	EVENT_QUEUE_TEXT TEXT_EVENT_WANDERING_PHOTOGRAPHER_19
	EVENT_HALT
