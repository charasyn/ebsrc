
MOVEMENT_478: ;$C3AC61
	EBMOVE_SET_X $0A68
	EBMOVE_SET_Y $0378
	EBMOVE_UNKNOWN_WRITE_11A6 $A039
	EBMOVE_UNKNOWN_WRITE_121E $9FC8
	EBMOVE_SET_10F2 $FF
	EBMOVE_UNKNOWN_08 UNKNOWN_C48BE1
	EBMOVE_UNKNOWN_C0A685 $00, $01
	EBMOVE_WRITE_WORD_TEMPVAR $0000
	EBMOVE_SHORTCALL .LOWORD(UNKNOWN_C3AA1E)
	EBMOVE_WRITE_WORD_TO_9AF9_ENTRY EVENT_0E_TABLES::UNKNOWN_8, $0001
	EBMOVE_WRITE_WORD_TO_9AF9_ENTRY EVENT_0E_TABLES::UNKNOWN_9, $0A68
	EBMOVE_WRITE_WORD_TO_9AF9_ENTRY EVENT_0E_TABLES::UNKNOWN_10, $0150
	EBMOVE_SHORTCALL .LOWORD(UNKNOWN_C3AB59)
	EBMOVE_SET_VELOCITIES_ZERO
	EBMOVE_PAUSE $78*FRAMES
	EBMOVE_UNKNOWN_C09FAE_MOVEMENT_ENTRY $0701
	EBMOVE_SHORTCALL .LOWORD(UNKNOWN_C3ABE0)
	EBMOVE_WRITE_WORD_TEMPVAR $0002
	EBMOVE_UNKNOWN_C49EC4
	EBMOVE_UNKNOWN_C46E46
	EBMOVE_WRITE_WORD_WRAM .LOWORD(SHOW_NPC_FLAG), $0000
	EBMOVE_SHORTJUMP .LOWORD(MOVEMENT_35)
