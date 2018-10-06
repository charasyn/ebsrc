.SEGMENT "BANK10"
.INCLUDE "common.asm"

DOOR_POINTER_TABLE: ;$D00000
	.INCBIN "bin/unknowns/D00000.bin"

SCREEN_TRANSITION_CONFIG_TABLE: ;$D01400
	.INCBIN "bin/unknowns/D01400.bin"

EVENT_CONTROL_PTR_TABLE: ;$D01598
	.WORD .LOWORD(MAP_TILE_EVENT_00)
	.WORD .LOWORD(MAP_TILE_EVENT_01)
	.WORD .LOWORD(MAP_TILE_EVENT_02)
	.WORD .LOWORD(MAP_TILE_EVENT_03)
	.WORD .LOWORD(MAP_TILE_EVENT_04)
	.WORD .LOWORD(MAP_TILE_EVENT_05)
	.WORD .LOWORD(MAP_TILE_EVENT_06)
	.WORD .LOWORD(MAP_TILE_EVENT_07)
	.WORD .LOWORD(MAP_TILE_EVENT_08)
	.WORD .LOWORD(MAP_TILE_EVENT_09)
	.WORD .LOWORD(MAP_TILE_EVENT_10)
	.WORD .LOWORD(MAP_TILE_EVENT_11)
	.WORD .LOWORD(MAP_TILE_EVENT_12)
	.WORD .LOWORD(MAP_TILE_EVENT_13)
	.WORD .LOWORD(MAP_TILE_EVENT_14)
	.WORD .LOWORD(MAP_TILE_EVENT_15)
	.WORD .LOWORD(MAP_TILE_EVENT_16)
	.WORD .LOWORD(MAP_TILE_EVENT_17)
	.WORD .LOWORD(MAP_TILE_EVENT_18)
	.WORD .LOWORD(MAP_TILE_EVENT_19)

MAP_TILE_EVENT_CONTROL_TABLE: ;$D015C0
MAP_TILE_EVENT_00:
	.WORD $0000

MAP_TILE_EVENT_01:
	.WORD $8068, $0003
		.WORD $0001, $0004
		.WORD $0002, $0005
		.WORD $0003, $0006

	.WORD $8068, $0003
		.WORD $0326, $0000
		.WORD $0327, $0000
		.WORD $0328, $0000

	.WORD $0000

MAP_TILE_EVENT_02:
	.WORD $0000

MAP_TILE_EVENT_03:
	.WORD $000E, $0004
		.WORD $001F, $0023
		.WORD $0020, $0024
		.WORD $0021, $0025
		.WORD $0022, $0026

	.WORD $0031, $0018
		.WORD $0001, $0019
		.WORD $0002, $0019
		.WORD $0003, $0019
		.WORD $0004, $001A
		.WORD $0005, $001B
		.WORD $0006, $001C
		.WORD $0007, $001A
		.WORD $0008, $0019
		.WORD $0009, $001D
		.WORD $000A, $001C
		.WORD $000B, $001C
		.WORD $000C, $001D
		.WORD $000D, $0019
		.WORD $000E, $001A
		.WORD $000F, $001A
		.WORD $0010, $001B
		.WORD $0011, $001E
		.WORD $0012, $001A
		.WORD $0013, $0019
		.WORD $0014, $001C
		.WORD $0015, $001A
		.WORD $0016, $0019
		.WORD $0017, $0019
		.WORD $0018, $0019

	.WORD $0000

MAP_TILE_EVENT_04:
	.WORD $0000

MAP_TILE_EVENT_05:
	.WORD $0000

MAP_TILE_EVENT_06:
	.WORD $0047, $0002
		.WORD $0001, $0003
		.WORD $0002, $0004

	.WORD $8044, $0008
		.WORD $0005, $000D
		.WORD $0006, $000E
		.WORD $0007, $000E
		.WORD $0008, $000F
		.WORD $0009, $0010
		.WORD $000A, $0011
		.WORD $000B, $0011
		.WORD $000C, $0012

	.WORD $0000

MAP_TILE_EVENT_07:
	.WORD $0000

MAP_TILE_EVENT_08:
	.WORD $00AE, $001A
		.WORD $0001, $001B
		.WORD $0002, $001C
		.WORD $0003, $001D
		.WORD $0004, $001E
		.WORD $0005, $001B
		.WORD $0006, $001F
		.WORD $0007, $0020
		.WORD $0008, $0021
		.WORD $0009, $0022
		.WORD $000A, $001B
		.WORD $000B, $001B
		.WORD $000C, $0021
		.WORD $000D, $001D
		.WORD $000E, $0023
		.WORD $000F, $0022
		.WORD $0010, $001C
		.WORD $0011, $0021
		.WORD $0012, $001E
		.WORD $0013, $001C
		.WORD $0014, $0021
		.WORD $0015, $001D
		.WORD $0016, $001E
		.WORD $0017, $001B
		.WORD $0018, $001B
		.WORD $0019, $001B
		.WORD $001A, $001C

	.WORD $0000

MAP_TILE_EVENT_09:
	.WORD $0000

MAP_TILE_EVENT_10:
	.WORD $0000

MAP_TILE_EVENT_11:
	.WORD $0000

MAP_TILE_EVENT_12:
	.WORD $0000

MAP_TILE_EVENT_13:
	.WORD $8137, $0003
		.WORD $0001, $0004
		.WORD $0002, $0005
		.WORD $0003, $0006

	.WORD $0000

MAP_TILE_EVENT_14:
	.WORD $0000

MAP_TILE_EVENT_15:
	.WORD $0000

MAP_TILE_EVENT_16:
	.WORD $8044, $0054
		.WORD $0001, $0055
		.WORD $0002, $0055
		.WORD $0003, $0055
		.WORD $0004, $0056
		.WORD $0005, $0057
		.WORD $0006, $0057
		.WORD $0007, $0059
		.WORD $0008, $0059
		.WORD $0009, $0059
		.WORD $000A, $0059
		.WORD $000B, $0059
		.WORD $000C, $0059
		.WORD $000D, $0058
		.WORD $000E, $005A
		.WORD $000F, $005B
		.WORD $0010, $005B
		.WORD $0011, $005B
		.WORD $0012, $005B
		.WORD $0013, $005B
		.WORD $0014, $005B
		.WORD $0015, $005B
		.WORD $0016, $005B
		.WORD $0017, $005B
		.WORD $0018, $005B
		.WORD $0019, $005B
		.WORD $001A, $005B
		.WORD $001B, $005B
		.WORD $001C, $005B
		.WORD $001D, $005B
		.WORD $001E, $005B
		.WORD $001F, $005B
		.WORD $0020, $005B
		.WORD $0021, $005B
		.WORD $0022, $005B
		.WORD $0023, $005B
		.WORD $0024, $005B
		.WORD $0025, $005B
		.WORD $0026, $005B
		.WORD $0027, $005B
		.WORD $0028, $005B
		.WORD $0029, $005B
		.WORD $002A, $005B
		.WORD $002B, $005B
		.WORD $002C, $005B
		.WORD $002D, $005B
		.WORD $002E, $005B
		.WORD $002F, $005B
		.WORD $0030, $005B
		.WORD $0031, $005B
		.WORD $0032, $005B
		.WORD $0033, $005B
		.WORD $0034, $005B
		.WORD $0035, $005B
		.WORD $0036, $005B
		.WORD $0037, $005B
		.WORD $0038, $005B
		.WORD $0039, $005B
		.WORD $003A, $005B
		.WORD $003B, $005B
		.WORD $003C, $005B
		.WORD $003D, $005B
		.WORD $003E, $005B
		.WORD $003F, $005B
		.WORD $0040, $005B
		.WORD $0041, $005B
		.WORD $0042, $005B
		.WORD $0043, $005B
		.WORD $0044, $005B
		.WORD $0045, $005B
		.WORD $0046, $005B
		.WORD $0047, $005B
		.WORD $0048, $005B
		.WORD $0049, $005B
		.WORD $004A, $005B
		.WORD $004B, $005B
		.WORD $004C, $005B
		.WORD $004D, $005B
		.WORD $004E, $005B
		.WORD $004F, $005B
		.WORD $0050, $005B
		.WORD $0051, $005B
		.WORD $0052, $005B
		.WORD $0053, $005B
		.WORD $0054, $005B

	.WORD $0000

MAP_TILE_EVENT_17:
	.WORD $0000

MAP_TILE_EVENT_18:
	.WORD $0000

MAP_TILE_EVENT_19:
	.WORD $0000


MAP_ENEMY_PLACEMENT: ;$D01880
	.INCBIN "bin/unknowns/D01880.bin"

.INCLUDE "enemies/placement.asm"

AUDIO_PACK_139: ;$D0DFB4
	.INCBIN "bin/audiopacks/139.bin"
