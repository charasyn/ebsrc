
EVENT_50: ;$C3B0EC
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AB26)
	EVENT_DISABLE_CURRENT_ENTITY_COLLISION2
	EVENT_UNKNOWN_C0A86F $00C5
	EVENT_START_TASK .LOWORD(UNKNOWN_C3AFA3)
	EVENT_SET_DIRECTION8 DIRECTION::UP
	EVENT_UNKNOWN_C0A3A4_ME2
	EVENT_START_TASK .LOWORD(@UNKNOWN1)
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V5, $0004
	EVENT_GET_POSITION_OF_PARTY_MEMBER $05
	EVENT_UNKNOWN_C0A685 $40, $00
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AB59)
	EVENT_PAUSE $78*FRAMES
	EVENT_YIELD_TO_TEXT
	EVENT_PAUSE 1*FRAME
	EVENT_GET_POSITION_OF_PARTY_MEMBER $01
	EVENT_UNKNOWN_C0A685 $40, $00
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AB59)
	EVENT_END_LAST_TASK
	EVENT_END_LAST_TASK
	EVENT_SHORTJUMP .LOWORD(EVENT_51)
@UNKNOWN1: ;$C3B135
	EVENT_SET_Z_VELOCITY $0040
	EVENT_PAUSE $40*FRAMES
	EVENT_SET_Z_VELOCITY $0000
	EVENT_END_UNKNOWN
