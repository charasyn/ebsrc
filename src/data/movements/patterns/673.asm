
MOVEMENT_673: ;$C37D92
	EBMOVE_SHORTCALL .LOWORD(UNKNOWN_C37E50)
@UNKNOWN0:
	EBMOVE_WRITE_WORD_TEMPVAR $0000
	EBMOVE_CALLROUTINE UNKNOWN_C0A857, $0F, $02
	EBMOVE_CALL_C09F82 400, 600, 1200, 1800
	EBMOVE_WRITE_TEMPVAR_WAITTIMER
	EBMOVE_WRITE_WRAM_TEMPVAR $5D60
	EBMOVE_SHORTCALL_CONDITIONAL_NOT .LOWORD(UNKNOWN_C37DF4)
	EBMOVE_WRITE_WRAM_TEMPVAR $4DBA
	EBMOVE_SHORTCALL_CONDITIONAL_NOT .LOWORD(UNKNOWN_C37DF4)
	EBMOVE_UNKNOWN_C46C45
	EBMOVE_WRITE_WORD_TO_9AF9_ENTRY $02, $00F8
	EBMOVE_WRITE_WORD_TO_9AF9_ENTRY $03, $00F8
	EBMOVE_CALLROUTINE UNKNOWN_C46E74
	EBMOVE_SHORTCALL_CONDITIONAL .LOWORD(@UNKNOWN0)
	EBMOVE_WRITE_WORD_TO_9AF9_ENTRY $02, $0004
	EBMOVE_WRITE_WORD_TO_9AF9_ENTRY $03, $0004
	EBMOVE_CALLROUTINE UNKNOWN_C46E74
	EBMOVE_SHORTCALL_CONDITIONAL .LOWORD(@UNKNOWN1)
	EBMOVE_WRITE_WORD_TEMPVAR $0001
	EBMOVE_CALLROUTINE UNKNOWN_C0A857, $0F, $02
@UNKNOWN1:
	EBMOVE_EXEC_TEXT_BLOCK TEXT_BLOCK_C7B82D
	EBMOVE_SHORTCALL .LOWORD(UNKNOWN_C37E66)
	EBMOVE_SHORTJUMP .LOWORD(@UNKNOWN0)
