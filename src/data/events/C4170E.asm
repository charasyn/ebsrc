
UNKNOWN_C4170E: ;$C4170E
	EVENT_SET_X $FFF8
	EVENT_SET_Y $0030
	EVENT_SET_X_VELOCITY $0100
	EVENT_SET_Y_VELOCITY $0000
	EVENT_UNKNOWN_C0AA6E DIRECTION::RIGHT, $01
	EVENT_PAUSE $08
	EVENT_UNKNOWN_C0AA6E DIRECTION::RIGHT, $00
	EVENT_PAUSE $08
	EVENT_UNKNOWN_C0AAD5 $01, $171A
	EVENT_SET_X_VELOCITY $0000
	EVENT_SET_Y_VELOCITY $0000
	EVENT_UNKNOWN_C0AA6E DIRECTION::RIGHT, $00
	EVENT_PAUSE $1E
	EVENT_UNKNOWN_C0AA6E DIRECTION::DOWN_RIGHT, $01
	EVENT_PAUSE $0A
	EVENT_UNKNOWN_C0AA6E DIRECTION::DOWN, $01
	EVENT_PAUSE $0A
	EVENT_UNKNOWN_C0AA6E DIRECTION::DOWN, $00
	EVENT_PAUSE $0A
	EVENT_UNKNOWN_C0AAD5 $01, $1747
	EVENT_UNKNOWN_C0AA6E DIRECTION::DOWN_LEFT, $01
	EVENT_PAUSE $0A
	EVENT_UNKNOWN_C0AA6E DIRECTION::LEFT, $01
	EVENT_PAUSE $0A
	EVENT_SET_X_VELOCITY $FF00
	EVENT_SET_Y_VELOCITY $0000
	EVENT_UNKNOWN_C0AA6E DIRECTION::LEFT, $00
	EVENT_PAUSE $08
	EVENT_UNKNOWN_C0AA6E DIRECTION::LEFT, $01
	EVENT_PAUSE $08
	EVENT_UNKNOWN_C0AAD5 $02, $1774
	EVENT_SET_10F2 $FF
	EVENT_PAUSE $06
@UNKNOWN0:
	EVENT_SET_10F2 $FF
	EVENT_PAUSE $FF
	EVENT_SET_10F2 $FF
	EVENT_PAUSE $FF
	EVENT_SET_10F2 $FF
	EVENT_PAUSE $1C
	EVENT_SET_X $FFF8
	EVENT_SET_Y $0030
	EVENT_SET_X_VELOCITY $0100
	EVENT_SET_Y_VELOCITY $0000
	EVENT_UNKNOWN_C0AA6E DIRECTION::RIGHT, $01
	EVENT_PAUSE $08
	EVENT_UNKNOWN_C0AA6E DIRECTION::RIGHT, $00
	EVENT_PAUSE $08
	EVENT_UNKNOWN_C0AAD5 $01, $17A7
	EVENT_SET_X_VELOCITY $0000
	EVENT_SET_Y_VELOCITY $0000
	EVENT_UNKNOWN_C0AA6E DIRECTION::DOWN_RIGHT, $01
	EVENT_PAUSE $0A
	EVENT_UNKNOWN_C0AA6E DIRECTION::RIGHT, $01
	EVENT_PAUSE $0A
	EVENT_UNKNOWN_C0AA6E DIRECTION::UP_RIGHT, $01
	EVENT_PAUSE $0A
	EVENT_UNKNOWN_C0AA6E DIRECTION::UP, $01
	EVENT_PAUSE $3C
	EVENT_UNKNOWN_C0AA6E DIRECTION::UP_LEFT, $01
	EVENT_PAUSE $0A
	EVENT_UNKNOWN_C0AA6E DIRECTION::LEFT, $01
	EVENT_PAUSE $0A
	EVENT_SET_X_VELOCITY $FF00
	EVENT_SET_Y_VELOCITY $0000
	EVENT_UNKNOWN_C0AA6E DIRECTION::LEFT, $00
	EVENT_PAUSE $08
	EVENT_UNKNOWN_C0AA6E DIRECTION::LEFT, $01
	EVENT_PAUSE $08
	EVENT_UNKNOWN_C0AAD5 $02, $17FA
	EVENT_SET_X_VELOCITY $0000
	EVENT_SET_Y_VELOCITY $0000
	EVENT_SET_10F2 $FF
	EVENT_PAUSE $FF
	EVENT_SET_10F2 $FF
	EVENT_PAUSE $2B
	EVENT_SHORTJUMP .LOWORD(@UNKNOWN0)
