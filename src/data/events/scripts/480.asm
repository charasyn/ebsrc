
EVENT_480: ;$C33F0C
	EVENT_SET_X $0258
	EVENT_SET_Y $0DA0
	EVENT_SET_Z $FFC0
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AB26)
	EVENT_WRITE_WORD_TEMPVAR DIRECTION::DOWN
	EVENT_SET_DIRECTION
	EVENT_UNKNOWN_C0A3A4_ME2
	EVENT_SET_Z_VELOCITY $0020
	EVENT_PAUSE $80*FRAMES
	EVENT_PAUSE $80*FRAMES
	EVENT_YIELD_TO_TEXT
	EVENT_PAUSE $80*FRAMES
	EVENT_PAUSE $80*FRAMES
	EVENT_SET_VELOCITIES_ZERO
	EVENT_YIELD_TO_TEXT
	EVENT_PAUSE 1*FRAME
	EVENT_UNKNOWN_08 UNKNOWN_C48B3B
	EVENT_UNKNOWN_C0A685 $4C, $00
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V5, $0001
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V6, $0278
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V7, $0DD0
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AB59)
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V6, $02C8
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V7, $0DC0
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AB59)
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V6, $02C8
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V7, $0D88
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AB59)
	EVENT_CLEAR_TICK_CALLBACK
	EVENT_YIELD_TO_TEXT
	EVENT_PAUSE 1*FRAME
	EVENT_SET_POSITION_CHANGE_CALLBACK .LOWORD(UNKNOWN_C0A039)
	EVENT_UNKNOWN_C0A685 $60, $00
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V6, $02D0
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V7, $0DC8
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AB59)
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V6, $0290
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V7, $0E20
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AB59)
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V6, $0280
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V7, $0ED0
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AB59)
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V6, $02D8
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V7, $0FE8
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AB59)
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V6, $0340
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V7, $1000
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AB59)
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V6, $03B8
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V7, $1068
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AB59)
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V6, $03A8
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V7, $10A8
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AB59)
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V6, $03A0
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V7, $10C0
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AB59)
	EVENT_SET_POSITION_CHANGE_CALLBACK .LOWORD(UNKNOWN_C0A03A)
	EVENT_UNKNOWN_C03F1E
	EVENT_YIELD_TO_TEXT
	EVENT_PAUSE 1*FRAME
.IF .DEFINED(USA) && (!.DEFINED(PROTOTYPE19950327))
	EVENT_TEST_EVENT_FLAG EVENT_FLAG::UNKNOWN_081
.ELSE
	EVENT_TEST_EVENT_FLAG EVENT_FLAG::UNKNOWN_010
.ENDIF
	EVENT_SHORTCALL_CONDITIONAL_NOT .LOWORD(@UNKNOWN1)
	EVENT_UNKNOWN_08 UNKNOWN_C48B3B
	EVENT_SET_X_VELOCITY $0035
	EVENT_SET_Y_VELOCITY $0020
	EVENT_PAUSE $FF*FRAMES
	EVENT_YIELD_TO_TEXT
	EVENT_PAUSE 1*FRAME
	EVENT_UNKNOWN_C0A685 $10, $00
	EVENT_WRITE_WORD_TEMPVAR DIRECTION::DOWN_RIGHT
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AA1E)
	EVENT_SET_Z_VELOCITY $FFC0
	EVENT_PAUSE $80*FRAMES
	EVENT_PAUSE $80*FRAMES
	EVENT_SET_VELOCITIES_ZERO
	EVENT_PAUSE 1*SECOND
	EVENT_YIELD_TO_TEXT
	EVENT_SET_VELOCITIES_ZERO
	EVENT_HALT
@UNKNOWN1: ;$C34014
	EVENT_UNKNOWN_08 UNKNOWN_C48B3B
	EVENT_SET_X_VELOCITY $0035
	EVENT_SET_Y_VELOCITY $0020
	EVENT_PAUSE $FF*FRAMES
	EVENT_PAUSE $FF*FRAMES
	EVENT_YIELD_TO_TEXT
	EVENT_PAUSE 1*FRAME
	EVENT_HALT
