
EVENT_93:
	EVENT_SET_POSITION_CHANGE_CALLBACK .LOWORD(UNKNOWN_C0A039)
	EVENT_SET_PHYSICS_CALLBACK .LOWORD(UNKNOWN_C09FAE_ENTRY2)
	EVENT_SET_ANIMATION $FF
	EVENT_SET_TICK_CALLBACK ACTIONSCRIPT_SIMPLE_SCREEN_POSITION_CALLBACK
	EVENT_UNKNOWN_C0A685 $00, $01
	EVENT_UNKNOWN_C0A673
	EVENT_UNKNOWN_C0C83B
	EVENT_PAUSE $60*FRAMES
	EVENT_YIELD_TO_TEXT
	EVENT_SHORTJUMP .LOWORD(EVENT_35)
