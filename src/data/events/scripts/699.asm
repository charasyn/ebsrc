
EVENT_699: ;$C38515
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AAAA)
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V4, $0008
	EVENT_UNKNOWN_C0A685 $00, $01
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V5, $001A
	EVENT_GET_POSITION_OF_PARTY_MEMBER $FF
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AB44)
@UNKNOWN1: ;$C3852E
	EVENT_PAUSE 1*FRAME
	EVENT_SET_VELOCITIES_ZERO
	EVENT_GET_POSITION_OF_PARTY_MEMBER $FF
	EVENT_UNKNOWN_C0A8C6
	EVENT_SHORTCALL_CONDITIONAL .LOWORD(@UNKNOWN1)
	EVENT_UNKNOWN_C0AA6E DIRECTION::LEFT, $00
	EVENT_HALT
