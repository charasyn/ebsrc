
UNKNOWN_C41253: ;$C41253
	EVENT_SET_X $FFF8
	EVENT_SET_Y $0028
	EVENT_SET_X_VELOCITY $0100
	EVENT_SET_Y_VELOCITY $0000
@UNKNOWN0:
	EVENT_UNKNOWN_C0AA6E DIRECTION::RIGHT, $00
	EVENT_PAUSE $08
	EVENT_UNKNOWN_C0AA6E DIRECTION::RIGHT, $01
	EVENT_PAUSE $08
	EVENT_UNKNOWN_C0AAD5 $01, .LOWORD(@UNKNOWN0)
	EVENT_SET_X_VELOCITY $0000
	EVENT_SET_Y_VELOCITY $0000
	EVENT_UNKNOWN_C0AA6E DIRECTION::DOWN_RIGHT, $01
	EVENT_PAUSE $0A
	EVENT_UNKNOWN_C0AA6E DIRECTION::DOWN, $01
	EVENT_PAUSE $0A
	EVENT_UNKNOWN_C0AA6E DIRECTION::DOWN, $01
	EVENT_PAUSE $3C
@UNKNOWN1:
	EVENT_UNKNOWN_C0AA6E DIRECTION::DOWN, $00
	EVENT_PAUSE $0A
	EVENT_UNKNOWN_C0AA6E DIRECTION::DOWN, $01
	EVENT_PAUSE $0A
	EVENT_UNKNOWN_C0AAD5 $08, .LOWORD(@UNKNOWN1)
@UNKNOWN2:
	EVENT_UNKNOWN_C0AA6E DIRECTION::DOWN_RIGHT, $01
	EVENT_PAUSE $05
	EVENT_UNKNOWN_C0AA6E DIRECTION::RIGHT, $01
	EVENT_PAUSE $05
	EVENT_UNKNOWN_C0AA6E DIRECTION::UP_RIGHT, $01
	EVENT_PAUSE $05
	EVENT_UNKNOWN_C0AA6E DIRECTION::UP, $01
	EVENT_PAUSE $05
	EVENT_UNKNOWN_C0AA6E DIRECTION::UP_LEFT, $01
	EVENT_PAUSE $05
	EVENT_UNKNOWN_C0AA6E DIRECTION::LEFT, $01
	EVENT_PAUSE $05
	EVENT_UNKNOWN_C0AA6E DIRECTION::DOWN_LEFT, $01
	EVENT_PAUSE $05
	EVENT_UNKNOWN_C0AA6E DIRECTION::DOWN, $01
	EVENT_PAUSE $05
	EVENT_UNKNOWN_C0AA6E DIRECTION::DOWN, $00
	EVENT_PAUSE $0A
	EVENT_UNKNOWN_C0AA6E DIRECTION::DOWN, $01
	EVENT_PAUSE $0A
	EVENT_UNKNOWN_C0AA6E DIRECTION::DOWN_LEFT, $01
	EVENT_PAUSE $05
	EVENT_UNKNOWN_C0AA6E DIRECTION::LEFT, $01
	EVENT_PAUSE $05
	EVENT_UNKNOWN_C0AA6E DIRECTION::UP_LEFT, $01
	EVENT_PAUSE $05
	EVENT_UNKNOWN_C0AA6E DIRECTION::UP, $01
	EVENT_PAUSE $05
	EVENT_UNKNOWN_C0AA6E DIRECTION::UP_RIGHT, $01
	EVENT_PAUSE $05
	EVENT_UNKNOWN_C0AA6E DIRECTION::RIGHT, $01
	EVENT_PAUSE $05
	EVENT_UNKNOWN_C0AA6E DIRECTION::DOWN_RIGHT, $01
	EVENT_PAUSE $05
	EVENT_UNKNOWN_C0AA6E DIRECTION::DOWN, $01
	EVENT_PAUSE $05
	EVENT_UNKNOWN_C0AA6E DIRECTION::DOWN, $00
	EVENT_PAUSE $0A
	EVENT_UNKNOWN_C0AA6E DIRECTION::DOWN, $01
	EVENT_PAUSE $0A
@UNKNOWN3:
	EVENT_WRITE_WORD_WRAM .LOWORD(UNKNOWN_7EB4B4), $0001
	EVENT_SET_ANIMATION $FF
	EVENT_PAUSE $3C
	EVENT_WRITE_WORD_WRAM .LOWORD(UNKNOWN_7EB4B4), $0000
	EVENT_UNKNOWN_C0AA6E DIRECTION::DOWN, $01
	EVENT_PAUSE $14
	EVENT_UNKNOWN_C0AAD5 $01, .LOWORD(@UNKNOWN3)
@UNKNOWN4:
	EVENT_UNKNOWN_C0AA6E DIRECTION::DOWN, $00
	EVENT_PAUSE $0A
	EVENT_UNKNOWN_C0AA6E DIRECTION::DOWN, $01
	EVENT_PAUSE $0A
	EVENT_UNKNOWN_C0AAD5 $08, .LOWORD(@UNKNOWN4)
	EVENT_SHORTJUMP .LOWORD(@UNKNOWN2)
