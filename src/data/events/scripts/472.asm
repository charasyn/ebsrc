
EVENT_472: ;$C3C12E
	EVENT_SET_ANIMATION $FF
	EVENT_PAUSE 12*MILLISECONDS
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3C143)
	EVENT_PAUSE 88*FRAMES
	EVENT_SET_VELOCITIES_ZERO
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V4, $0001
	EVENT_PAUSE 1*HALF_OF_A_SECOND
	EVENT_YIELD_TO_TEXT
	EVENT_HALT
