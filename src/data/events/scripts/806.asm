
EVENT_806: ;$C363C6
	EVENT_SET_POSITION_CHANGE_CALLBACK .LOWORD(UNKNOWN_C0A055)
	EVENT_SET_PHYSICS_CALLBACK .LOWORD(UNKNOWN_C09FAE_ENTRY2)
	EVENT_SET_ANIMATION $00
	EVENT_SET_Y_RELATIVE $0003
	EVENT_WRITE_WORD_TEMPVAR DIRECTION::DOWN
	EVENT_SET_DIRECTION
	EVENT_UNKNOWN_C0A3A4_ME2
@UNKNOWN1: ;$C363DC
	EVENT_PAUSE 1*SECOND
	EVENT_LOOP $02
		EVENT_WRITE_WORD_TEMPVAR DIRECTION::LEFT
		EVENT_SET_DIRECTION
		EVENT_UNKNOWN_C0A3A4_ME2
		EVENT_PAUSE 2*FIFTEENTHS_OF_A_SECOND
		EVENT_WRITE_WORD_TEMPVAR DIRECTION::RIGHT
		EVENT_SET_DIRECTION
		EVENT_UNKNOWN_C0A3A4_ME2
		EVENT_PAUSE 2*FIFTEENTHS_OF_A_SECOND
	EVENT_LOOP_END
	EVENT_UNKNOWN_C4ECE7
	EVENT_SHORTCALL_CONDITIONAL_NOT .LOWORD(@UNKNOWN1)
	EVENT_SHORTJUMP .LOWORD(EVENT_35)
