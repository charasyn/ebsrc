
EVENT_672: ;$C37D33
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C37E50)
@UNKNOWN0:
	EVENT_WRITE_WORD_TEMPVAR $0000
	EVENT_UNKNOWN_C0A857 EVENT_FLAG::UNKNOWN_20E
	EVENT_CALL_C09F82 400, 600, 1200, 1800
	EVENT_WRITE_TEMPVAR_WAITTIMER
	EVENT_WRITE_WRAM_TEMPVAR $5D60
	EVENT_SHORTCALL_CONDITIONAL_NOT .LOWORD(UNKNOWN_C37DF4)
	EVENT_WRITE_WRAM_TEMPVAR $4DBA
	EVENT_SHORTCALL_CONDITIONAL_NOT .LOWORD(UNKNOWN_C37DF4)
	EVENT_UNKNOWN_C46C45
	EVENT_WRITE_WORD_TO_9AF9_ENTRY EVENT_0E_TABLES::UNKNOWN_5, $00F8
	EVENT_WRITE_WORD_TO_9AF9_ENTRY EVENT_0E_TABLES::UNKNOWN_6, $00F8
	EVENT_UNKNOWN_C46E74
	EVENT_SHORTCALL_CONDITIONAL .LOWORD(@UNKNOWN0)
	EVENT_WRITE_WORD_TO_9AF9_ENTRY EVENT_0E_TABLES::UNKNOWN_5, $0004
	EVENT_WRITE_WORD_TO_9AF9_ENTRY EVENT_0E_TABLES::UNKNOWN_6, $0004
	EVENT_UNKNOWN_C46E74
	EVENT_SHORTCALL_CONDITIONAL .LOWORD(@UNKNOWN1)
	EVENT_WRITE_WORD_TEMPVAR $0001
	EVENT_UNKNOWN_C0A857 EVENT_FLAG::UNKNOWN_20E
@UNKNOWN1:
	EVENT_EXEC_TEXT_BLOCK TEXT_BLOCK_C7B7C9
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C37E66)
	EVENT_SHORTJUMP .LOWORD(@UNKNOWN0)
