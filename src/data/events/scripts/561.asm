
EVENT_561: ;$C34A6C
	EVENT_SET_X $01A0
	EVENT_SET_Y $1DC0
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AA38)
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V4, $0001
	EVENT_UNKNOWN_C0A685 $80, $00
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V5, $0001
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C348C4)
	EVENT_YIELD_TO_TEXT
	EVENT_PAUSE 1*TWENTIETH_OF_A_SECOND
	EVENT_WRITE_WORD_TEMPVAR DIRECTION::DOWN_LEFT
	EVENT_SET_DIRECTION
	EVENT_UNKNOWN_C0A3A4_ME2
	EVENT_PAUSE 1*SIXTH_OF_A_SECOND
	EVENT_WRITE_WORD_TEMPVAR DIRECTION::LEFT
	EVENT_SET_DIRECTION
	EVENT_UNKNOWN_C0A3A4_ME2
	EVENT_YIELD_TO_TEXT
	EVENT_PAUSE 1*TWENTIETH_OF_A_SECOND
	EVENT_YIELD_TO_TEXT
	EVENT_PAUSE 1*TWENTIETH_OF_A_SECOND
	EVENT_YIELD_TO_TEXT
	EVENT_PAUSE 1*TWENTIETH_OF_A_SECOND
	EVENT_START_TASK .LOWORD(UNKNOWN_C34A61)
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V4, $0000
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V6, $0190
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V7, $1DC8
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AB59)
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V4, $0001
	EVENT_WRITE_WORD_TEMPVAR DIRECTION::LEFT
	EVENT_SET_DIRECTION
	EVENT_UNKNOWN_C0A3A4_ME2
	EVENT_END_LAST_TASK
	EVENT_YIELD_TO_TEXT
	EVENT_PAUSE 1*TWENTIETH_OF_A_SECOND
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V4, $0000
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V6, $0180
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V7, $1DC8
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AB59)
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V4, $0001
	EVENT_YIELD_TO_TEXT
	EVENT_HALT
