
EVENT_643:
	EVENT_UNKNOWN_C0A864 $FF
	EVENT_SET_POSITION_CHANGE_CALLBACK .LOWORD(UNKNOWN_C0A039)
	EVENT_SET_PHYSICS_CALLBACK .LOWORD(UNKNOWN_C09FAE_ENTRY2)
	EVENT_SET_ANIMATION $FF
	EVENT_SET_TICK_CALLBACK ACTIONSCRIPT_SIMPLE_SCREEN_POSITION_CALLBACK
	EVENT_UNKNOWN_C0A685 $00, $01
	EVENT_WRITE_WORD_TEMPVAR DIRECTION::UP
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AA1E)
	EVENT_LOOP $05
		EVENT_PAUSE 1*SECOND
	EVENT_LOOP_END
	EVENT_FADE_OUT $01, $07
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3ABE0)
	EVENT_WRITE_WORD_TEMPVAR $0003
	EVENT_UNKNOWN_C49EC4
	EVENT_YIELD_TO_TEXT
	EVENT_SHORTJUMP .LOWORD(EVENT_35)
