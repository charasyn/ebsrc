
EVENT_370: ;$C323D1
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C31D4F)
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V4, $0000
	EVENT_UNKNOWN_C0AA6E DIRECTION::DOWN, $00
	EVENT_PAUSE $50*FRAMES
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V4, $0028
	EVENT_LOOP $0E
		EVENT_PAUSE $50*FRAMES
	EVENT_LOOP_END
	EVENT_WRITE_9AF9_TEMPVAR ACTIONSCRIPT_VARS::V4
	EVENT_LOOP $0A
		EVENT_PAUSE 1*SECOND
	EVENT_LOOP_END
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V4, $0000
	EVENT_PAUSE $5A*FRAMES
UNKNOWN_C323F6: ;$C323F6
	EVENT_LOOP $26
		EVENT_SET_ANIMATION $01
		EVENT_UNKNOWN_C0A3A4_ME1
		EVENT_PAUSE $16*FRAMES
		EVENT_SET_ANIMATION $00
		EVENT_UNKNOWN_C0A3A4_ME3
		EVENT_PAUSE $17*FRAMES
	EVENT_LOOP_END
	EVENT_HALT
