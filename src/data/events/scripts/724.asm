
EVENT_724: ;$C38BFC
	EVENT_SET_X $0790
	EVENT_SET_Y $1BD0
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C31D4F)
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V4, $000E
	EVENT_UNKNOWN_C0A3A4_ME2
	EVENT_UNKNOWN_C0A685 $C0, $00
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V5, $0001
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V6, $07E8
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V7, $1BD0
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AB59)
	EVENT_YIELD_TO_TEXT
	EVENT_PAUSE 1*FRAME
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V4, $0000
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C37559)
	EVENT_PAUSE $64*FRAMES
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V4, $0007
	EVENT_UNKNOWN_C0A685 $80, $01
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V5, $0002
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V6, $0810
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AB59)
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V6, $0850
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V7, $1B90
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AB59)
	EVENT_PLAY_SOUND SFX::DOOR_OPEN
	EVENT_SET_X_RELATIVE $FF00
	EVENT_PAUSE 8*THIRDS_OF_A_SECOND
	EVENT_SET_X_RELATIVE $0100
	EVENT_PLAY_SOUND SFX::DOOR_CLOSE
	EVENT_YIELD_TO_TEXT
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V6, $0830
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V7, $1BB0
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AB59)
	EVENT_END_LAST_TASK
	EVENT_UNKNOWN_C0AA6E DIRECTION::DOWN, $00
	EVENT_HALT
