.SEGMENT "BANK23"
.INCLUDE "common.asm"

AUDIO_PACK_3: ;$E30000
        AUDIOPACKBIN $24, $6C2C, "audiopacks/3-1.bin"
        AUDIOPACKBIN $5EFC, $87C4, "audiopacks/3-2.bin"
        AUDIOPACKBIN $36, $6E42, "audiopacks/3-3.bin"
        AUDIOPACK 0

AUDIO_PACK_70: ;$E35F64
        AUDIOPACKBIN $28, $6C68, "audiopacks/70-1.bin"
        AUDIOPACKBIN $5130, $95B0, "audiopacks/70-2.bin"
        AUDIOPACKBIN $30, $6E9C, "audiopacks/70-3.bin"
        AUDIOPACK 0

AUDIO_PACK_37: ;$E3B0FA
        AUDIOPACKBIN $28, $6C68, "audiopacks/37-1.bin"
        AUDIOPACKBIN $4C60, $95B0, "audiopacks/37-2.bin"
        AUDIOPACKBIN $3C, $6E9C, "audiopacks/37-3.bin"
        AUDIOPACK 0

AUDIO_PACK_32: ;$E3FDCC
        AUDIOPACKBIN $220, $5800, "audiopacks/32.bin"
        AUDIOPACK 0
