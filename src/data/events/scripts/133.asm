
EVENT_133: ;$C3C394
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AAAA)
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V4, $000E
	EVENT_UNKNOWN_C0A3A4_ME3
	EVENT_UNKNOWN_C0A685 $00, $01
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V5, $0013
	EVENT_GET_POSITION_OF_PARTY_MEMBER $FF
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AB59)
	EVENT_YIELD_TO_TEXT
	EVENT_PAUSE 1*FRAME
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V5, $0001
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V6, $05C0
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V7, $0218
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AB59)
	EVENT_SET_Y_RELATIVE $0100
	EVENT_PAUSE 1*SECOND
	EVENT_SET_X $05B0
	EVENT_SET_Y $0238
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V4, $0009
	EVENT_UNKNOWN_C0A685 $60, $01
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V5, $0002
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V6, $05B0
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V7, $0270
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AB59)
	EVENT_SHORTJUMP .LOWORD(EVENT_35)
