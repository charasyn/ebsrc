
EVENT_49: ;$C3B021
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AAAA)
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V4, $0012
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V5, $0001
	EVENT_UNKNOWN_C0A685 $80, $00
	EVENT_GET_POSITION_OF_PARTY_MEMBER $09
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AB44)
@UNKNOWN0:
	EVENT_PAUSE 1*FRAME
	EVENT_UNKNOWN_C0A8DC
	EVENT_SHORTCALL_CONDITIONAL .LOWORD(@UNKNOWN0)
	EVENT_SET_VELOCITIES_ZERO
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V4, $0000
	EVENT_YIELD_TO_TEXT
	EVENT_HALT
