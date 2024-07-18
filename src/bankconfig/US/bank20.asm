.SEGMENT "BANK20"
.INCLUDE "common.asm"
.INCLUDE "symbols/audiopacks.inc.asm"
.INCLUDE "symbols/misc.inc.asm"

TEXT_WINDOW_GFX:
	LOCALEBINARY "graphics/text_window.gfx.lzhal"

FLAVOURED_TEXT_GFX:
	BINARY "graphics/flavoured_text.gfx.lzhal"

MOTHER2_ROMAJI_FONT:
	LOCALEBINARY "fonts/romaji.gfx"

COMPRESSED_SRAM:
	LOCALEBINARY "mystery_sram.bin.lzhal"

MRSATURN_FONT_DATA:
	LOCALEBINARY "fonts/mrsaturn.bin"

MRSATURN_FONT_GFX:
	LOCALEBINARY "fonts/mrsaturn.gfx"

.INCLUDE "data/text_window_properties.asm"

.INCLUDE "data/text_window_flavour_palettes.asm"

.INCLUDE "data/movement_text_string_palette.asm"

.INCLUDE "data/map/town_map_gfx_pointers.asm"

TOWN_MAP_ONETT:
	BINARY "town_maps/0.bin.lzhal"

TOWN_MAP_TWOSON:
	BINARY "town_maps/1.bin.lzhal"

TOWN_MAP_THREED:
	LOCALEBINARY "town_maps/2.bin.lzhal"

TOWN_MAP_FOURSIDE:
	BINARY "town_maps/3.bin.lzhal"

TOWN_MAP_SCARABA:
	LOCALEBINARY "town_maps/4.bin.lzhal"

TOWN_MAP_SUMMERS:
	BINARY "town_maps/5.bin.lzhal"

AUDIO_PACK_110:
	AUDIOPACK "audiopacks/110.ebm"

AUDIO_PACK_6:
	AUDIOPACK "audiopacks/6.ebm"
