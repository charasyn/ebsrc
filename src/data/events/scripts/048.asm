
EVENT_48: ;$C3AFFA
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AAAA)
	EVENT_WRITE_WORD_TO_9AF9_ENTRY EVENT_0E_TABLES::UNKNOWN_7, $0010
	EVENT_UNKNOWN_C0A685 $80, $00
	EVENT_WRITE_WORD_TO_9AF9_ENTRY EVENT_0E_TABLES::UNKNOWN_8, $0001
	EVENT_UNKNOWN_C0A943 $FF
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AB59)
	EVENT_UNKNOWN_C0A943 $FE
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AB59)
	EVENT_END_UNKNOWN2
	EVENT_UNKNOWN_C46E46
	EVENT_HALT
