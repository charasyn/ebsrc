
EVENT_247_248: ;$C3056E
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AA38)
	EVENT_UNKNOWN_C0A685 $80, $00
	EVENT_WRITE_WORD_TEMPVAR DIRECTION::LEFT
	EVENT_SET_DIRECTION
	EVENT_UNKNOWN_C0A3A4_ME2
	EVENT_WRITE_WORD_TEMPVAR $0002
	EVENT_UNKNOWN_C0C83B
	EVENT_PAUSE $20*FRAMES
	EVENT_SET_VELOCITIES_ZERO
	EVENT_END_LAST_TASK
	EVENT_SHORTJUMP .LOWORD(EVENT_8)
