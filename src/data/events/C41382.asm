
UNKNOWN_C41382: ;$C41382
	EVENT_SET_X $0018
	EVENT_SET_Y $0028
	EVENT_SET_10F2 $FF
	EVENT_PAUSE $FF
	EVENT_SET_10F2 $FF
	EVENT_PAUSE $25
@UNKNOWN0:
	EVENT_SET_10F2 $FF
	EVENT_PAUSE $78
	EVENT_SET_X_VELOCITY $0000
	EVENT_SET_Y_VELOCITY $FF00
	EVENT_UNKNOWN_C0AA6E DIRECTION::UP, $00
	EVENT_PAUSE $0A
	EVENT_SET_X_VELOCITY $0000
	EVENT_SET_Y_VELOCITY $0000
	EVENT_UNKNOWN_C0AA6E DIRECTION::UP, $00
	EVENT_PAUSE $28
	EVENT_SET_X_VELOCITY $0000
	EVENT_SET_Y_VELOCITY $0100
	EVENT_UNKNOWN_C0AA6E DIRECTION::UP, $00
	EVENT_PAUSE $0A
	EVENT_SET_X_VELOCITY $0000
	EVENT_SET_Y_VELOCITY $0000
	EVENT_SET_10F2 $FF
	EVENT_PAUSE $14
	EVENT_UNKNOWN_C0AAD5 $01, $1394
	EVENT_SET_10F2 $FF
	EVENT_PAUSE $B4
	EVENT_SHORTJUMP .LOWORD(@UNKNOWN0)
