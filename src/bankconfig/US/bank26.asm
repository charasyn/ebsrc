.SEGMENT "BANK26"
.INCLUDE "common.asm"
.INCLUDE "symbols/audiopacks.inc.asm"

AUDIO_PACK_1:
	.WORD AUDIO_SUBPACK_0_DATA_END - AUDIO_SUBPACK_0_DATA_START
	.WORD $6E00
AUDIO_SUBPACK_0_DATA_START:
	.BYTE $00 , $FF , $E0 , $B8 , $09 , $00 , $01 , $FF , $E0 , $B8 , $04 , $F0 , $02 , $FF , $E0 , $B8 , $00 , $50 , $03 , $FF , $E0 , $B8 , $09 , $20 , $04 , $FF , $E0 , $B8 , $09 , $10
AUDIO_SUBPACK_0_DATA_END:

	.WORD AUDIO_SUBPACK_1_DATA_END - AUDIO_SUBPACK_1_DATA_START
	.WORD $6F80
AUDIO_SUBPACK_1_DATA_START:
	.BYTE $33, $66, $7F, $99, $B2, $CC, $E5, $FC, $19, $33, $4C, $66, $72, $7F, $8C, $99, $A5, $B2, $BF, $CC, $D8, $E5, $F2, $FC
AUDIO_SUBPACK_1_DATA_END:

	.WORD AUDIO_SUBPACK_2_DATA_END - AUDIO_SUBPACK_2_DATA_START
	.WORD $0500
AUDIO_SUBPACK_2_DATA_START:
	.INCBIN "main.spc700.bin", $500
	.INCBIN "bin/US/audiopacks/1.ebm", $2B1F, $16AE
AUDIO_SUBPACK_2_DATA_END:

	.WORD AUDIO_SUBPACK_3_DATA_END - AUDIO_SUBPACK_3_DATA_START
	.WORD $4800
AUDIO_SUBPACK_3_DATA_START:
	.INCBIN "bin/US/audiopacks/1.ebm", $41D1, $0405
AUDIO_SUBPACK_3_DATA_END:
	.WORD 0

AUDIO_PACK_74:
	AUDIOPACK "audiopacks/74.ebm"

AUDIO_PACK_76:
	AUDIOPACK "audiopacks/76.ebm"

AUDIO_PACK_47:
	AUDIOPACK "audiopacks/47.ebm"

AUDIO_PACK_73:
	AUDIOPACK "audiopacks/73.ebm"
