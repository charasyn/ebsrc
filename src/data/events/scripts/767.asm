
EVENT_767: ;$C39B25
	EVENT_CHOOSE_RANDOM $0000, $0001
	EVENT_WRITE_TEMPVAR_WAITTIMER
	EVENT_SET_PHYSICS_CALLBACK .LOWORD(UNKNOWN_C0A360)
	EVENT_SET_ANIMATION $00
	EVENT_UNKNOWN_C0C7DB
	EVENT_UNKNOWN_C0A3A4_ME2
	EVENT_START_TASK .LOWORD(UNKNOWN_C3A15E)
	EVENT_START_TASK .LOWORD(UNKNOWN_C3A262)
	EVENT_UNKNOWN_C0A685 $40, $00
UNKNOWN_C39B48: ;$C39B48
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V4, $0000
	EVENT_CHOOSE_RANDOM DIRECTION::UP, DIRECTION::RIGHT, DIRECTION::DOWN, DIRECTION::LEFT
	EVENT_SET_DIRECTION
	EVENT_UNKNOWN_C0C83B
	EVENT_CHOOSE_RANDOM $0004, $0006, $0008
	EVENT_UNKNOWN_C0CA4E
	EVENT_SET_VELOCITIES_ZERO
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V4, $0001
	EVENT_CHOOSE_RANDOM $001E, $003C, $005A, $0078
	EVENT_WRITE_TEMPVAR_WAITTIMER
	EVENT_SHORTJUMP .LOWORD(UNKNOWN_C39B48)
