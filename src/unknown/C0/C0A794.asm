
UNKNOWN_C0A794: ;$C0A794
	LDY .LOWORD(UNKNOWN_7E2896)
	LDA .LOWORD(ENTITY_TILE_HEIGHTS),Y
	STA $00
	LDA .LOWORD(ENTITY_BYTE_WIDTHS),Y
	STA a:.LOWORD(DMA_COPY_SIZE)
	LDA .LOWORD(ENTITY_VRAM_ADDRESS),Y
	STA a:.LOWORD(DMA_COPY_VRAM_DEST)
	LDA .LOWORD(ENTITY_GRAPHICS_PTR_HIGH),Y
	STA $04
	LDA .LOWORD(ENTITY_DIRECTIONS),Y
	ASL
	TAX
	LDA f:UNKNOWN_C0A623,X
	ASL
	ASL
	CLC
	ADC .LOWORD(ENTITY_GRAPHICS_PTR_LOW),Y
	ADC .LOWORD(ENTITY_ANIMATION_FRAME),Y
	STA $02
	LDA [$02]
	AND #$0002
	BNE @UNKNOWN0
	LDA .LOWORD(ENTITY_SURFACE_FLAGS),Y
	STA $06
	AND #$0008
	BEQ @UNKNOWN0
	SEP #PROC_FLAGS::ACCUM8
	LDA #$0003
	STA a:.LOWORD(UNKNOWN_7E0091)
	LDA #.BANKBYTE(UNKNOWN_C40BE8)
	STA a:.LOWORD(DMA_COPY_RAM_SRC) + 2
	REP #PROC_FLAGS::ACCUM8
	LDA #.LOWORD(UNKNOWN_C40BE8)
	STA a:.LOWORD(DMA_COPY_RAM_SRC)
	JSL UNKNOWN_C0A56E
	DEC $00
	BEQ @UNKNOWN2
	LDA $06
	AND #$0004
	BEQ @UNKNOWN0
	JSL UNKNOWN_C0A56E
	DEC $00
	BEQ @UNKNOWN2
@UNKNOWN0:
	LDY .LOWORD(UNKNOWN_7E2896)
	LDA [$02]
	STA .LOWORD(UNKNOWN_7E341A),Y
	AND #$FFFE
	STA a:.LOWORD(DMA_COPY_RAM_SRC)
	SEP #PROC_FLAGS::ACCUM8
	LDA #$0000
	STA a:.LOWORD(UNKNOWN_7E0091)
	LDA .LOWORD(UNKNOWN_30X2_TABLE_31),Y
	STA a:.LOWORD(DMA_COPY_RAM_SRC) + 2
	REP #PROC_FLAGS::ACCUM8
@UNKNOWN1:
	JSL UNKNOWN_C0A56E
	DEC $00
	BEQ @UNKNOWN2
	LDA a:.LOWORD(DMA_COPY_RAM_SRC)
	CLC
	ADC a:.LOWORD(DMA_COPY_SIZE)
	STA a:.LOWORD(DMA_COPY_RAM_SRC)
	BRA @UNKNOWN1
@UNKNOWN2:
	RTS
