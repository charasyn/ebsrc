
MOVEMENT_230: ;$C30303
	EBMOVE_WRITE_WORD_TO_9AF9_ENTRY EVENT_0E_TABLES::UNKNOWN_9, $1D68
	EBMOVE_WRITE_WORD_TO_9AF9_ENTRY EVENT_0E_TABLES::UNKNOWN_10, $00D8
	EBMOVE_WRITE_WORD_TO_9AF9_ENTRY EVENT_0E_TABLES::UNKNOWN_3, $1D30
	EBMOVE_WRITE_WORD_TO_9AF9_ENTRY EVENT_0E_TABLES::UNKNOWN_4, $00D8
	EBMOVE_SHORTCALL .LOWORD(MOVEMENT_228_229_230_231_232_COMMON)
	EBMOVE_HALT
