
EVENT_240: ;$C303E5
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AA38)
	EVENT_SET_VELOCITIES_ZERO
	EVENT_UNKNOWN_C0A3A4_ME2
@UNKNOWN0: ;$C303ED
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V0, $1B61
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V1, $2648
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V2, $0038
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V3, $0018
@UNKNOWN1: ;$C303FD
	EVENT_UNKNOWN_C46E74
	EVENT_PAUSE 1*FIFTEENTH_OF_A_SECOND
	EVENT_SHORTCALL_CONDITIONAL .LOWORD(@UNKNOWN1)
@UNKNOWN2: ;$C30406
	EVENT_SET_VELOCITIES_ZERO
	EVENT_WRITE_WORD_TEMPVAR $2646
	EVENT_UNKNOWN_C468DC
	EVENT_SHORTCALL_CONDITIONAL_NOT .LOWORD(@UNKNOWN3)
	EVENT_SET_Y_VELOCITY $0080
@UNKNOWN3: ;$C30414
	EVENT_GET_POSITION_OF_PARTY_MEMBER $FF
	EVENT_WRITE_9AF9_TEMPVAR ACTIONSCRIPT_VARS::V6
	EVENT_ADD_TEMPVAR $0004
	EVENT_UNKNOWN_C468B5
	EVENT_SHORTCALL_CONDITIONAL .LOWORD(@UNKNOWN4)
	EVENT_WRITE_WORD_TEMPVAR DIRECTION::LEFT
	EVENT_SET_DIRECTION
	EVENT_SET_X_VELOCITY $FF80
	EVENT_WRITE_WORD_TEMPVAR $1B38
	EVENT_UNKNOWN_C468B5
	EVENT_SHORTCALL_CONDITIONAL_NOT .LOWORD(@UNKNOWN5)
	EVENT_SET_X_VELOCITY $0000
	EVENT_SHORTJUMP .LOWORD(@UNKNOWN6)
@UNKNOWN4: ;$C30440
	EVENT_WRITE_9AF9_TEMPVAR ACTIONSCRIPT_VARS::V6
	EVENT_ADD_TEMPVAR $FFFC
	EVENT_UNKNOWN_C468B5
	EVENT_SHORTCALL_CONDITIONAL_NOT .LOWORD(@UNKNOWN6)
	EVENT_WRITE_WORD_TEMPVAR DIRECTION::RIGHT
	EVENT_SET_DIRECTION
	EVENT_SET_X_VELOCITY $0080
	EVENT_WRITE_WORD_TEMPVAR $1B88
	EVENT_UNKNOWN_C468B5
	EVENT_SHORTCALL_CONDITIONAL .LOWORD(@UNKNOWN5)
	EVENT_SET_X_VELOCITY $0000
	EVENT_SHORTJUMP .LOWORD(@UNKNOWN6)
@UNKNOWN5: ;$C30467
	EVENT_PAUSE 1*FRAME
	EVENT_SHORTJUMP .LOWORD(@UNKNOWN2)
@UNKNOWN6: ;$C3046C
	EVENT_WRITE_WORD_TEMPVAR DIRECTION::DOWN
	EVENT_SET_DIRECTION
	EVENT_PAUSE 1*FRAME
	EVENT_SHORTJUMP .LOWORD(@UNKNOWN0)
