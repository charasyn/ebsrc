
UNKNOWN_C4160A: ;$C4160A
	EVENT_SET_X $0018
	EVENT_SET_Y $0028
	EVENT_SET_10F2 $FF
	EVENT_PAUSE $20
	EVENT_UNKNOWN_C0AA6E DIRECTION::UP, $01
	EVENT_PAUSE $FF
	EVENT_UNKNOWN_C0AA6E DIRECTION::UP, $01
	EVENT_PAUSE $2D
@UNKNOWN0:
	EVENT_SET_10F2 $FF
	EVENT_PAUSE $FF
	EVENT_SET_10F2 $FF
	EVENT_PAUSE $D5
	EVENT_UNKNOWN_C0AA6E DIRECTION::UP, $01
	EVENT_PAUSE $FF
	EVENT_UNKNOWN_C0AA6E DIRECTION::UP, $01
	EVENT_PAUSE $2D
	EVENT_SHORTJUMP .LOWORD(@UNKNOWN0)
