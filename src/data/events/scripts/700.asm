
EVENT_700: ;$C38544
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AAAA)
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V4, $0000
	EVENT_START_TASK .LOWORD(@UNKNOWN2)
	EVENT_UNKNOWN_C0A3A4_ME2
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V0, $1618
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V1, $1760
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V2, $0010
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V3, $0010
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AB94)
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V4, $0010
	EVENT_UNKNOWN_C0A685 $80, $00
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V5, $0001
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V6, $1600
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V7, $1780
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AB67)
	EVENT_EXEC_TEXT_BLOCK TEXT_EVENT_700
	EVENT_PAUSE 1*FRAME
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V4, $0009
	EVENT_UNKNOWN_C0A685 $60, $01
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V5, $0002
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V6, $15E8
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V7, $1780
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AB59)
	EVENT_UNKNOWN_C0A92D $0369
	EVENT_ADD_9AF9 ACTIONSCRIPT_VARS::V7, $0008
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AB59)
	EVENT_ADD_9AF9 ACTIONSCRIPT_VARS::V6, $FFF0
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AB59)
	EVENT_ADD_9AF9 ACTIONSCRIPT_VARS::V7, $FFF8
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AB59)
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V4, $0000
	EVENT_END_LAST_TASK
	EVENT_UNKNOWN_C0AA6E DIRECTION::UP, $00
@UNKNOWN1: ;$C385CA
	EVENT_PAUSE 1*FIFTEENTH_OF_A_SECOND
	EVENT_SET_X_RELATIVE $0001
	EVENT_PAUSE 1*FIFTEENTH_OF_A_SECOND
	EVENT_SET_X_RELATIVE $FFFF
	EVENT_SHORTJUMP .LOWORD(@UNKNOWN1)
@UNKNOWN2: ;$C385D7
	EVENT_UNKNOWN_C0A94E $0369
	EVENT_PAUSE 1*TWENTIETH_OF_A_SECOND
	EVENT_SHORTJUMP .LOWORD(@UNKNOWN2)
