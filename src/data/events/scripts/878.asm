
EVENT_878: ;$C397AB
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C39AC7)
@UNKNOWN1: ;$C397AE
	EVENT_PAUSE 1*FRAME
	EVENT_TEST_EVENT_FLAG EVENT_FLAG::UNKNOWN_1EF
	EVENT_SHORTCALL_CONDITIONAL .LOWORD(@UNKNOWN1)
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V0, $11FC
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V1, $149C
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V2, $001C
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V3, $000C
	EVENT_UNKNOWN_C46E74
	EVENT_SHORTCALL_CONDITIONAL .LOWORD(@UNKNOWN1)
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C39E01)
	EVENT_QUEUE_TEXT TEXT_EVENT_WANDERING_PHOTOGRAPHER_16
	EVENT_HALT
