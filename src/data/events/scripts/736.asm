
EVENT_736: ;$C38EB9
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AAAA)
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V4, $000A
	EVENT_UNKNOWN_C0A3A4_ME2
	EVENT_LOOP $06
		EVENT_CHOOSE_RANDOM DIRECTION::DOWN, DIRECTION::RIGHT, DIRECTION::LEFT, DIRECTION::DOWN
		EVENT_SET_DIRECTION
		EVENT_UNKNOWN_C0A3A4_ME2
		EVENT_PAUSE $32*FRAMES
	EVENT_LOOP_END
	EVENT_END_LAST_TASK
	EVENT_UNKNOWN_C0AA6E DIRECTION::DOWN, $00
	EVENT_YIELD_TO_TEXT
	EVENT_HALT
