
EVENT_251: ;$C30671
	EVENT_UNKNOWN_C0A864 $09
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AB26)
	EVENT_WRITE_WORD_TEMPVAR DIRECTION::DOWN
	EVENT_SET_DIRECTION
	EVENT_UNKNOWN_C0A3A4_ME2
	EVENT_UNKNOWN_C0A685 $80, $00
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V5, $0014
	EVENT_GET_POSITION_OF_PARTY_MEMBER $FF
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AB59)
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V4, $0001
	EVENT_YIELD_TO_TEXT
	EVENT_HALT
