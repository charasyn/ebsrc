
EVENT_583: ;$C34DEA
	EVENT_WRITE_WORD_TEMPVAR DIRECTION::UP
	EVENT_SET_DIRECTION
EVENT_583_ENTRY_2: ;$C34DF1
	EVENT_UNKNOWN_C0A864 $FF
	EVENT_GET_POSITION_OF_PARTY_MEMBER $FF
	EVENT_SET_PHYSICS_CALLBACK .LOWORD(UNKNOWN_C09FAE_ENTRY2)
	EVENT_SET_ANIMATION $FF
	EVENT_SET_VELOCITIES_ZERO
	EVENT_UNKNOWN_C4240A
	EVENT_WRITE_WORD_TEMPVAR $0001
	EVENT_UNKNOWN_C0AA3F $18, $18, $18
	EVENT_UNKNOWN_08 UNKNOWN_C47A27
	EVENT_START_TASK .LOWORD(@UNKNOWN1)
	EVENT_UNKNOWN_C0A685 $00, $00
	EVENT_LOOP $40
		EVENT_PAUSE 1*FRAME
		EVENT_UNKNOWN_C0A691
		EVENT_ADD_TEMPVAR $0006
		EVENT_UNKNOWN_C0A685_ME2
	EVENT_LOOP_END
	EVENT_PAUSE $96*FRAMES
	EVENT_SET_VELOCITIES_ZERO
	EVENT_END_LAST_TASK
	EVENT_PAUSE 1*SECOND
	EVENT_UNKNOWN_C47A6B
	EVENT_START_TASK .LOWORD(@UNKNOWN1)
	EVENT_PAUSE $96*FRAMES
	EVENT_LOOP $40
		EVENT_PAUSE 1*FRAME
		EVENT_UNKNOWN_C0A691
		EVENT_ADD_TEMPVAR $FFFA
		EVENT_UNKNOWN_C0A685_ME2
	EVENT_LOOP_END
	EVENT_SET_VELOCITIES_ZERO
	EVENT_CLEAR_TICK_CALLBACK
	EVENT_UNKNOWN_C4248A
	EVENT_WRITE_WORD_TEMPVAR $0000
	EVENT_UNKNOWN_C0AA3F $00, $00, $00
	EVENT_PAUSE 1*SECOND
	EVENT_YIELD_TO_TEXT
	EVENT_SHORTJUMP .LOWORD(EVENT_35)
@UNKNOWN1: ;$C34E66
	EVENT_UNKNOWN_C0A673
	EVENT_UNKNOWN_C0C83B
	EVENT_PAUSE 1*FRAME
	EVENT_SHORTJUMP .LOWORD(@UNKNOWN1)
