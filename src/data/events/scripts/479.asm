
EVENT_479: ;$C33DD4
	EVENT_UNKNOWN_C467E6
	EVENT_SET_X_RELATIVE $0007
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AB26)
	EVENT_UNKNOWN_08 UNKNOWN_C48B3B
	EVENT_SET_Z $0000
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V4, $0001
	EVENT_WRITE_WORD_TEMPVAR DIRECTION::DOWN
	EVENT_SET_DIRECTION
	EVENT_UNKNOWN_C0A3A4_ME2
	EVENT_SET_Z_VELOCITY $0080
	EVENT_PAUSE $40*FRAMES
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V0, $0000
	EVENT_START_TASK .LOWORD(@UNKNOWN3)
	EVENT_UNKNOWN_C0A685 $C0, $00
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V5, $0001
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V6, $0258
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V7, $0D9E
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AB44)
@UNKNOWN1: ;$C33E15
	EVENT_PAUSE 1*FRAME
	EVENT_UNKNOWN_C0A8DC
	EVENT_SHORTCALL_CONDITIONAL .LOWORD(@UNKNOWN1)
	EVENT_SET_X_VELOCITY $0000
	EVENT_SET_Y_VELOCITY $0000
@UNKNOWN2: ;$C33E24
	EVENT_PAUSE 1*FRAME
	EVENT_WRITE_9AF9_TEMPVAR ACTIONSCRIPT_VARS::V0
	EVENT_SHORTCALL_CONDITIONAL .LOWORD(@UNKNOWN2)
	EVENT_YIELD_TO_TEXT
	EVENT_HALT
@UNKNOWN3: ;$C33E30
	EVENT_SET_Z_VELOCITY $0080
	EVENT_PAUSE 4*FIFTHS_OF_A_SECOND
	EVENT_SET_Z_VELOCITY $FF80
	EVENT_PAUSE 4*FIFTHS_OF_A_SECOND
	EVENT_SET_Z_VELOCITY $0000
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V0, $0001
	EVENT_END_UNKNOWN
