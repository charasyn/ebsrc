
MOVEMENT_555: ;$C3474E
	EBMOVE_WRITE_WORD_TO_9AF9_ENTRY EVENT_0E_TABLES::UNKNOWN_3, $0000
	EBMOVE_LOOP $1F
		EBMOVE_ADD_9AF9 $00, $0001
		EBMOVE_UNKNOWN_C47499
		EBMOVE_PAUSE 1*FIFTEENTH_OF_A_SECOND
	EBMOVE_LOOP_END
	EBMOVE_UNKNOWN_C46E46
	EBMOVE_SHORTJUMP .LOWORD(MOVEMENT_35)
