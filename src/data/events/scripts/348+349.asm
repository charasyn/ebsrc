
EVENT_348_349: ;$C31BFD
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AA38)
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V4, $0001
	EVENT_UNKNOWN_C0AA6E DIRECTION::DOWN, $00
	EVENT_SET_Y_VELOCITY $0020
	EVENT_PAUSE 2*FIFTEENTHS_OF_A_SECOND
	EVENT_SET_ANIMATION $01
	EVENT_UNKNOWN_C0A3A4_ME1
	EVENT_PAUSE 2*FIFTEENTHS_OF_A_SECOND
	EVENT_SET_ANIMATION $00
	EVENT_UNKNOWN_C0A3A4_ME3
	EVENT_SET_VELOCITIES_ZERO
	EVENT_YIELD_TO_TEXT
	EVENT_HALT
