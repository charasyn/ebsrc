
UNKNOWN_C429AE: ;$C429AE
	PHA
	TXA
	ASL
	TAX
	LDA .LOWORD(UNKNOWN_30X2_TABLE_33),X
	STA $00
	LDA #$0000
	STA a:.LOWORD(UNKNOWN_7E0091)
	LDA .LOWORD(UNKNOWN_30X2_TABLE_32),X
	STA a:.LOWORD(DMA_COPY_SIZE)
	LDA #$007F
	STA a:.LOWORD(DMA_COPY_RAM_SRC) + 2
	PLA
	STA a:.LOWORD(DMA_COPY_RAM_SRC)
	LDA .LOWORD(ENTITY_COLLIDED_OBJECTS),X
	STA a:.LOWORD(DMA_COPY_VRAM_DEST)
@UNKNOWN0:
	JSL UNKNOWN_C0A56E
	DEC $00
	BEQ @UNKNOWN1
	LDA a:.LOWORD(DMA_COPY_RAM_SRC)
	CLC
	ADC a:.LOWORD(DMA_COPY_SIZE)
	STA a:.LOWORD(DMA_COPY_RAM_SRC)
	BRA @UNKNOWN0
@UNKNOWN1:
	RTL
