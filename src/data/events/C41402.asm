
UNKNOWN_C41402: ;$C41402
	EVENT_SET_X $000C
	EVENT_SET_Y $0014
	EVENT_SET_ANIMATION $FF
	EVENT_PAUSE $70
@UNKNOWN0:
	EVENT_UNKNOWN_C0AA6E DIRECTION::UP_RIGHT, $00
	EVENT_PAUSE $0A
	EVENT_SET_ANIMATION $FF
	EVENT_PAUSE $0A
	EVENT_UNKNOWN_C0AAD5 $08, .LOWORD(@UNKNOWN0)
@UNKNOWN1:
	EVENT_UNKNOWN_C0AA6E DIRECTION::UP_RIGHT, $00
	EVENT_PAUSE $0A
	EVENT_SET_ANIMATION $FF
	EVENT_PAUSE $0A
	EVENT_UNKNOWN_C0AAD5 $05, .LOWORD(@UNKNOWN1)
	EVENT_SET_ANIMATION $FF
	EVENT_PAUSE $A0
@UNKNOWN2:
	EVENT_UNKNOWN_C0AA6E DIRECTION::UP_RIGHT, $00
	EVENT_PAUSE $0A
	EVENT_SET_ANIMATION $FF
	EVENT_PAUSE $0A
	EVENT_UNKNOWN_C0AAD5 $08, .LOWORD(@UNKNOWN2)
	EVENT_SHORTJUMP .LOWORD(@UNKNOWN1)
