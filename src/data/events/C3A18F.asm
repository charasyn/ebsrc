
UNKNOWN_C3A18F: ;$C3A18F
	EVENT_PAUSE 4*MILLISECONDS
	EVENT_SET_ANIMATION $01
	EVENT_UNKNOWN_C0A3A4_ME1
	EVENT_PAUSE 4*MILLISECONDS
	EVENT_UNKNOWN_C40015
	EVENT_SHORTCALL_CONDITIONAL_NOT .LOWORD(UNKNOWN_C3A18F)
	EVENT_SHORTJUMP .LOWORD(EVENT_35)
