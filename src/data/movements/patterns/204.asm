
MOVEMENT_204: ;$C3D732
	EBMOVE_SHORTCALL .LOWORD(UNKNOWN_C3DBDB_ENTRY2)
	EBMOVE_UNKNOWN_C0A685 $80, $02
	EBMOVE_WRITE_WORD_TO_9AF9_ENTRY EVENT_0E_TABLES::UNKNOWN_8, $0003
	EBMOVE_WRITE_WORD_TO_9AF9_ENTRY EVENT_0E_TABLES::UNKNOWN_9, $1738
	EBMOVE_WRITE_WORD_TO_9AF9_ENTRY EVENT_0E_TABLES::UNKNOWN_10, $27C8
	EBMOVE_SHORTCALL .LOWORD(UNKNOWN_C3AB59)
	EBMOVE_UNKNOWN_C0A907 $3D
	EBMOVE_EXEC_TEXT_BLOCK TEXT_BLOCK_C785A9
	EBMOVE_HALT
