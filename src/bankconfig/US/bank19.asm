.SEGMENT "BANK19"
.INCLUDE "common.asm"

MAP_DATA_TILE_ARRANGEMENT_1: ;$D90000
	.INCBIN "bin/maps/arrangements/1.bin"

MAP_DATA_TILE_ARRANGEMENT_2: ;$D934E9
	.INCBIN "bin/maps/arrangements/2.bin"

MAP_DATA_TILE_ARRANGEMENT_3: ;$D968AB
	.INCBIN "bin/maps/arrangements/3.bin"

MAP_DATA_TILE_ARRANGEMENT_4: ;$D98DD5
	.INCBIN "bin/maps/arrangements/4.bin"

MAP_DATA_TILE_SET_GRAPHICS_13: ;$D9CE52
	.INCBIN "bin/maps/gfx/13.bin"

AUDIO_PACK_45: ;$D9FC18
	.INCBIN "bin/audiopacks/45.bin"
