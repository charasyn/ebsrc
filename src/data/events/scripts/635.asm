
EVENT_635: ;$C3749C
	EVENT_SET_PHYSICS_CALLBACK .LOWORD(UNKNOWN_C09FAE_ENTRY4)
	EVENT_SET_ANIMATION $00
	EVENT_SET_VELOCITIES_ZERO
	EVENT_LOOP $03
		EVENT_SET_ANIMATION $FF
		EVENT_PAUSE 1*TWELFTH_OF_A_SECOND
		EVENT_SET_ANIMATION $00
		EVENT_PAUSE 1*TWELFTH_OF_A_SECOND
	EVENT_LOOP_END
	EVENT_SHORTJUMP .LOWORD(EVENT_35)
