
LOAD_MAP_PAL: ;$C007B6
	.DEFINE MAPPAL $06
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	PHD
	PHA
	TDC
	ADC #$FFE0
	TCD
	PLA
	STA $1E
	LDY #$0240
	STY $1C
	LOADPTR MAP_PALETTE_PTR_TABLE, MAPPAL
	LDA $1E
	ASL
	ASL
	CLC
	ADC MAPPAL
	STA MAPPAL
	LDY #$0002
	LDA [MAPPAL],Y
	TAY
	LDA [MAPPAL]
	STA MAPPAL
	STY $08
	TXA
	LDY #$00C0
	JSL MULT168
	CLC
	ADC MAPPAL
	STA MAPPAL
	STA $16
	LDA $08
	STA $18
	LDA .LOWORD(UNKNOWN_7EB4EF)
	BNE @UNKNOWN4
@UNKNOWN0:
	LDA $16
	STA MAPPAL
	LDA $18
	STA $08
	LDA MAPPAL
	STA $0E
	LDA $08
	STA $10
	LDX #$00C0
	LDY $1C
	TYA
	JSL MEMCPY16
	LDY $1C
	LDA a:.LOWORD(RAM),Y
	BNE @UNKNOWN1
	JMP a:.LOWORD(@UNKNOWN5)
@UNKNOWN1:
	AND #$7FFF
	JSL GET_EVENT_FLAG
	STA $1A
	LDX #$0000
	LDY $1C
	LDA a:.LOWORD(RAM),Y
	CMP #$8000
	BCC @UNKNOWN2
	BEQ @UNKNOWN2
	LDX #$0001
@UNKNOWN2:
	STX $02
	LDA $1A
	CMP $02
	BEQ @UNKNOWN3
	JMP a:.LOWORD(@UNKNOWN5)
@UNKNOWN3:
	LDA f:MAP_PALETTE_PTR_TABLE
	STA MAPPAL
	LDA f:MAP_PALETTE_PTR_TABLE+2
	STA $08
	LDA MAPPAL
	STA $16
	LDA $08
	STA $18
	LDA a:.LOWORD(RAM)+32,Y
	STA $16
	BRA @UNKNOWN0
@UNKNOWN4:
	LOADPTR UNKNOWN_7F0000, MAPPAL
	LOADPTR COMPRESSED_PALETTE_UNKNOWN, $0E
	LDA MAPPAL
	STA $12
	LDA $08
	STA $14
	JSL DECOMP
	LDA MAPPAL
	STA $0A
	LDA $08
	STA $0C
	LDA .LOWORD(CUR_PHOTO_DISPLAY)
	LDY #.SIZEOF(photographer_config_entry)
	JSL MULT168
	CLC
	ADC #photographer_config_entry::credits_map_palettes_offset
	TAX
	LDA f:PHOTOGRAPHER_CFG_TABLE,X
	STA MAPPAL
	STZ $08
	CLC
	LDA MAPPAL
	ADC $0A
	STA MAPPAL
	LDA $08
	ADC $0C
	STA $08
	LDA MAPPAL
	STA $0E
	LDA $08
	STA $10
	LDX #$00C0
	LDY $1C
	TYA
	JSL MEMCPY16
@UNKNOWN5:
	PLD
	RTL
