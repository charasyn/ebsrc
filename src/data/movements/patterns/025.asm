
MOVEMENT_25: ;$C3A714
	EBMOVE_SHORTJUMP_UNKNOWN .LOWORD(@UNKNOWN4)
	EBMOVE_SHORTCALL .LOWORD(UNKNOWN_C3A42D)
	EBMOVE_UNKNOWN_C0A6B8
	EBMOVE_SHORTCALL_CONDITIONAL_NOT .LOWORD(UNKNOWN_C3A47C)
	EBMOVE_UNKNOWN_C0A685 $00, $01
@UNKNOWN0: ;$C3A727
	EBMOVE_SET_VELOCITIES_ZERO
	EBMOVE_WRITE_WORD_TO_9AF9_ENTRY EVENT_0E_TABLES::UNKNOWN_3, $0001
	EBMOVE_PAUSE $10
	EBMOVE_UNKNOWN_C0A651 $08
	EBMOVE_UNKNOWN_WRITE_121E $9FF0
@UNKNOWN1: ;$C3A736
	EBMOVE_UNKNOWN_C0C48F
	EBMOVE_PAUSE $08
	EBMOVE_SHORTCALL_CONDITIONAL_NOT .LOWORD(@UNKNOWN1)
	EBMOVE_UNKNOWN_WRITE_121E $A360
	EBMOVE_WRITE_WORD_TO_9AF9_ENTRY EVENT_0E_TABLES::UNKNOWN_3, $0000
	EBMOVE_SHORTJUMP .LOWORD(@UNKNOWN3)
@UNKNOWN2: ;$C3A749
	EBMOVE_UNKNOWN_C0C48F
	EBMOVE_SHORTCALL_CONDITIONAL_NOT .LOWORD(@UNKNOWN0)
@UNKNOWN3: ;$C3A750
	EBMOVE_UNKNOWN_C46B65
	EBMOVE_UNKNOWN_C0C62B
	EBMOVE_UNKNOWN_C47044
	EBMOVE_UNKNOWN_C46B0A
	EBMOVE_UNKNOWN_C0A65F
	EBMOVE_UNKNOWN_C0A6AD $0020
	EBMOVE_SHORTJUMP .LOWORD(@UNKNOWN2)
@UNKNOWN4: ;$C3A76D
	EBMOVE_LOOP $10
		EBMOVE_SET_X_VELOCITY_RELATIVE $0040
		EBMOVE_PAUSE $01
	EBMOVE_LOOP_END
	EBMOVE_LOOP $10
		EBMOVE_SET_X_VELOCITY_RELATIVE $FFC0
		EBMOVE_PAUSE $01
	EBMOVE_LOOP_END
	EBMOVE_SHORTJUMP .LOWORD(@UNKNOWN4)
