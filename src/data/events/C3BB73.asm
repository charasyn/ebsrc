
UNKNOWN_C3BB73: ;$C3BB73
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V5, $0012
	EVENT_GET_POSITION_OF_PARTY_MEMBER $FF
	EVENT_UNKNOWN_C0A685 $80, $01
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AB44)
@UNKNOWN1: ;$C3BB85
	EVENT_PAUSE 1*FRAME
	EVENT_GET_POSITION_OF_PARTY_MEMBER $FF
	EVENT_UNKNOWN_C0A8C6
	EVENT_SHORTCALL_CONDITIONAL .LOWORD(@UNKNOWN1)
	EVENT_SHORT_RETURN
