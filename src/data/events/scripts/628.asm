
EVENT_628: ;$C37287
	EVENT_SET_PHYSICS_CALLBACK .LOWORD(UNKNOWN_C09FAE_ENTRY4)
	EVENT_SET_ANIMATION $00
	EVENT_SET_VELOCITIES_ZERO
	EVENT_SET_SURFACE_FLAGS $00
	EVENT_UNKNOWN_C0A3A4_ME2
@UNKNOWN1: ;$C37296
	EVENT_PAUSE 4*MILLISECONDS
	EVENT_SET_ANIMATION $00
	EVENT_UNKNOWN_C0A3A4_ME1
	EVENT_PAUSE 4*FIFTHS_OF_A_SECOND
	EVENT_SET_ANIMATION $FF
	EVENT_UNKNOWN_C0A3A4_ME3
	EVENT_UNKNOWN_C0C6B6
	EVENT_SHORTCALL_CONDITIONAL_NOT .LOWORD(@UNKNOWN1)
	EVENT_SHORTJUMP .LOWORD(EVENT_35)
