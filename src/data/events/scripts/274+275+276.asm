
EVENT_274_275_276: ;$C30BEA
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AAAA)
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V4, $0007
	EVENT_UNKNOWN_C0A685 $80, $01
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V5, $0012
	EVENT_GET_POSITION_OF_PARTY_MEMBER $FF
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AB59)
	EVENT_END_LAST_TASK
	EVENT_YIELD_TO_TEXT
	EVENT_HALT
