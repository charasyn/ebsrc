
MOVEMENT_221: ;$C30195
	EBMOVE_TEST_EVENT_FLAG EVENT_FLAG::UNKNOWN_00C
	EBMOVE_SHORTCALL_CONDITIONAL_NOT .LOWORD(MOVEMENT_8)
	EBMOVE_TEST_EVENT_FLAG EVENT_FLAG::UNKNOWN_00D
	EBMOVE_SHORTCALL_CONDITIONAL .LOWORD(MOVEMENT_8)
	EBMOVE_SHORTCALL .LOWORD(UNKNOWN_C3AA38)
	EBMOVE_SET_10F2 $FF
	EBMOVE_CALLROUTINE UNKNOWN_C0A82F
	EBMOVE_WRITE_WORD_TO_9AF9_ENTRY $04, $0001
	EBMOVE_WRITE_WORD_TO_9AF9_ENTRY $00, $1A90
	EBMOVE_WRITE_WORD_TO_9AF9_ENTRY $01, $1E60
	EBMOVE_WRITE_WORD_TO_9AF9_ENTRY $02, $0008
	EBMOVE_WRITE_WORD_TO_9AF9_ENTRY $03, $00C0
	EBMOVE_SHORTCALL .LOWORD(UNKNOWN_C3AB8A)
	EBMOVE_SET_X $1AE8
	EBMOVE_SET_Y $1E68
	EBMOVE_SET_10F2 $00
	EBMOVE_CALLROUTINE UNKNOWN_C0A838
	EBMOVE_CALLROUTINE UNKNOWN_C0AA6E, $06, $00
	EBMOVE_PLAY_SOUND SFX::DOOR_CLOSE
	EBMOVE_PAUSE $01
	EBMOVE_EXEC_TEXT_BLOCK TEXT_BLOCK_C79707
	EBMOVE_PAUSE $01
	EBMOVE_CALLROUTINE UNKNOWN_C0A685, $00, $01
	EBMOVE_WRITE_WORD_TO_9AF9_ENTRY $04, $0000
	EBMOVE_WRITE_WORD_TO_9AF9_ENTRY $05, $0001
	EBMOVE_SHORTJUMP_UNKNOWN $AFA3
	EBMOVE_CALLROUTINE UNKNOWN_C0A943, $FF
	EBMOVE_ADD_9AF9 $06, $FFEE
	EBMOVE_SHORTCALL .LOWORD(UNKNOWN_C3AB59)
	EBMOVE_END_UNKNOWN2
	EBMOVE_END_UNKNOWN2
	EBMOVE_CALLROUTINE UNKNOWN_C46E46
	EBMOVE_PAUSE $01
	EBMOVE_UNKNOWN_WRITE_121E $A360
	EBMOVE_SHORTJUMP_UNKNOWN $A09F
	EBMOVE_SHORTJUMP_UNKNOWN $A262
	EBMOVE_WRITE_WORD_TO_9AF9_ENTRY $05, $0015
	EBMOVE_CALLROUTINE UNKNOWN_C0A943, $FE
	EBMOVE_SHORTCALL .LOWORD(UNKNOWN_C3AB44)
@UNKNOWN1:
	EBMOVE_PAUSE $01
	EBMOVE_SET_VELOCITIES_ZERO
	EBMOVE_CALLROUTINE UNKNOWN_C0A943, $02
	EBMOVE_CALLROUTINE UNKNOWN_C0A8C6
	EBMOVE_SHORTJUMP .LOWORD(@UNKNOWN1)
