
EVENT_620: ;$C37010
	EVENT_SET_X $1658
	EVENT_SET_Y $0080
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AA38)
	EVENT_UNKNOWN_C0A685 $00, $05
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V5, $0005
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V6, $1678
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V7, $00C0
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AB59)
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V6, $16A0
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V7, $00D8
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AB59)
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V6, $16A8
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V7, $00F8
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AB59)
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V6, $16A8
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V7, $0120
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AB59)
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V6, $1698
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V7, $0140
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AB59)
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V6, $1678
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V7, $0150
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AB59)
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V6, $1658
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V7, $0158
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AB59)
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V0, $8000
	EVENT_WRITE_9AF9_TEMPVAR ACTIONSCRIPT_VARS::V0
	EVENT_UNKNOWN_C47044
	EVENT_UNKNOWN_C46B51
	EVENT_LOOP $40
		EVENT_PAUSE 1*FRAME
		EVENT_ADD_9AF9 ACTIONSCRIPT_VARS::V0, $1000
		EVENT_UNKNOWN_C0A8E7
	EVENT_LOOP_END
	EVENT_WRITE_WORD_TEMPVAR DIRECTION::LEFT
	EVENT_SET_DIRECTION
	EVENT_YIELD_TO_TEXT
	EVENT_HALT
