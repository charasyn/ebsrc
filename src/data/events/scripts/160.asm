
EVENT_160:
	EVENT_UNKNOWN_C0A864 $FF
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AB26)
	EVENT_SET_Z $0000
	EVENT_SET_ANIMATION $00
	EVENT_SET_TICK_CALLBACK ACTIONSCRIPT_SIMPLE_SCREEN_POSITION_CALLBACK_OFFSET
	EVENT_UNKNOWN_C0A443_ME2
	EVENT_UNKNOWN_C0A685 $00, $04
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V5, $0004
	EVENT_WRITE_WORD_TEMPVAR DIRECTION::RIGHT
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AA1E)
	EVENT_PAUSE $80*FRAMES
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V6, $0DD0
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V7, $2480
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AB59)
	EVENT_WRITE_WORD_TEMPVAR DIRECTION::RIGHT
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AA1E)
	EVENT_PAUSE $80*FRAMES
	EVENT_FADE_OUT $01, $01
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3ABE0)
	EVENT_PREPARE_NEW_ENTITY_AT_TELEPORT_DESTINATION $BB
	EVENT_YIELD_TO_TEXT
	EVENT_SHORTJUMP .LOWORD(EVENT_35)
