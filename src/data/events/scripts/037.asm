
EVENT_37: ;$C3AD7A
	EVENT_TEST_EVENT_FLAG EVENT_FLAG::UNKNOWN_127
	EVENT_SHORTCALL_CONDITIONAL .LOWORD(EVENT_18)
	EVENT_SET_PHYSICS_CALLBACK .LOWORD(UNKNOWN_C0A360)
	EVENT_START_TASK .LOWORD(UNKNOWN_C3A09F)
	EVENT_START_TASK .LOWORD(UNKNOWN_C3A262)
	EVENT_SET_ANIMATION $00
	EVENT_SET_VELOCITIES_ZERO
	EVENT_UNKNOWN_C0A3A4_ME2
	EVENT_EXEC_TEXT_BLOCK TEXT_EVENT_37
	EVENT_UNKNOWN_C0A685 $00, $01
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V5, $002A
	EVENT_GET_POSITION_OF_PARTY_MEMBER $01
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AB44)
@UNKNOWN1: ;$C3ADAD
	EVENT_PAUSE 1*FRAME
	EVENT_SET_VELOCITIES_ZERO
	EVENT_WRITE_WORD_TEMPVAR $1E30
	EVENT_UNKNOWN_C468B5
	EVENT_SHORTCALL_CONDITIONAL_NOT .LOWORD(@UNKNOWN3)
	EVENT_GET_POSITION_OF_PARTY_MEMBER $01
@UNKNOWN2: ;$C3ADBF
	EVENT_UNKNOWN_C0A8C6
	EVENT_SHORTJUMP .LOWORD(@UNKNOWN1)
@UNKNOWN3: ;$C3ADC6
	EVENT_GET_POSITION_OF_PARTY_MEMBER $01
	EVENT_UNKNOWN_C46ADB
	EVENT_UNKNOWN_C46B0A
	EVENT_UNKNOWN_C46A9A
	EVENT_ADD_TEMPVAR $FFFA
	EVENT_SHORTCALL_CONDITIONAL .LOWORD(@UNKNOWN2)
	EVENT_SHORTJUMP .LOWORD(@UNKNOWN1)
