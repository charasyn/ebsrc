
EVENT_115: ;$C3BEEE
	EVENT_SET_X $1DE8
	EVENT_SET_Y $1DE8
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AA38)
	EVENT_START_TASK .LOWORD(EVENT_115_116_117_118_119_COMMON)
	EVENT_UNKNOWN_C0A685 $00, $01
	EVENT_WRITE_WORD_TEMPVAR DIRECTION::DOWN_LEFT
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AA1E)
	EVENT_PLAY_SOUND SFX::DOOR_CLOSE
	EVENT_PAUSE $16*FRAMES
	EVENT_WRITE_WORD_TEMPVAR DIRECTION::LEFT
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AA1E)
	EVENT_PAUSE $58*FRAMES
	EVENT_SET_VELOCITIES_ZERO
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V4, $0001
	EVENT_WRITE_WORD_TEMPVAR DIRECTION::UP
	EVENT_SET_DIRECTION
	EVENT_UNKNOWN_C0A3A4_ME2
@UNKNOWN0: ;$C3BF26
	EVENT_PAUSE 1*FRAME
	EVENT_TEST_EVENT_FLAG EVENT_FLAG::UNKNOWN_002
	EVENT_SHORTCALL_CONDITIONAL .LOWORD(@UNKNOWN0)
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3BEA4)
@UNKNOWN1: ;$C3BF34
	EVENT_PAUSE 1*FRAME
	EVENT_TEST_EVENT_FLAG EVENT_FLAG::UNKNOWN_002
	EVENT_SHORTCALL_CONDITIONAL_NOT .LOWORD(@UNKNOWN1)
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3BED4)
	EVENT_WRITE_WORD_TEMPVAR $0001
	EVENT_UNKNOWN_C0A857 EVENT_FLAG::UNKNOWN_003
	EVENT_SHORTJUMP .LOWORD(EVENT_35)
