
UNKNOWN_C0A1CE:
	LSR
	LSR
UNKNOWN_C0A1CE_2:
	LSR
	LSR
UNKNOWN_C0A1CE_3:
	LSR
	LSR
UNKNOWN_C0A1CE_4:
	AND #$0003
	XBA
	STA $08
	MOVE_INT_XPTRSRC f:MAP_DATA_TILE_TABLE_CHUNKS_TABLE, $04
	LDA [$04],Y
	AND #$00FF
	ORA $08
	STA CACHED_MAP_BLOCK_ID
	PLD
	RTS
