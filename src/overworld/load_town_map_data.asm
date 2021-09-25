
LOAD_TOWN_MAP_DATA: ;$C4D553
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE 24
	TAY
	STY $16
	LDX #$0001
	LDA #$0002
	JSL UNKNOWN_C0887A
	LOADPTR TOWN_MAP_GFX_POINTER_TABLE, $0A
	LDY $16
	TYA
	ASL
	ASL
	CLC
	ADC $0A
	STA $0A
	DEREFERENCE_PTR_TO $0A, $06
	MOVE_INT $06, $0E
	LOADPTR UNKNOWN_7F0000, $12
	JSL DECOMP
@UNKNOWN0:
	LDA a:.LOWORD(UNKNOWN_7E0028)
	AND #$00FF
	BNE @UNKNOWN0
	LOADPTR UNKNOWN_7F0000, $06
	MOVE_INT $06, $0E
	LDX #$0040
	LDA #$0200
	JSL MEMCPY16
	LOADPTR TOWN_MAP_ICON_PALETTE, $0E
	LDX #$0100
	LDA #$0300
	JSL MEMCPY16
	LDY #$0000
	LDX #$3000
	TYA ;BG_TILEMAP_SIZE::NORMAL
	JSL SET_BG1_VRAM_LOCATION
	LDA #$0003
	JSL SET_OAM_SIZE
	SEP #PROC_FLAGS::ACCUM8
	LDA #$0000
	STA f:CGADSUB
	STA f:CGWSEL
	LDA #$0001
	STA a:.LOWORD(TM_MIRROR)
	STZ a:.LOWORD(TD_MIRROR)
	REP #PROC_FLAGS::ACCUM8
	COPY_TO_VRAM1 UNKNOWN_7F0040, $3000, $800, $00
	.A16
	COPY_TO_VRAM3 UNKNOWN_7F0840, $0000, $4000, $00
	.A16
	LOADPTR TOWN_MAP_LABEL_GFX, $0E
	MOVE_INT $06, $12
	JSL DECOMP
	COPY_TO_VRAM1P $06, $6000, TOWN_MAP_LABEL_GFX_SIZE, $00
	.A16
	LDA #$0018
	JSL UNKNOWN_C0856B
	SEP #PROC_FLAGS::ACCUM8
	LDA #$0011
	STA a:.LOWORD(TM_MIRROR)
	REP #PROC_FLAGS::ACCUM8
	STZ a:.LOWORD(BG1_Y_POS)
	STZ a:.LOWORD(BG1_X_POS)
	JSL UPDATE_SCREEN
	LDX #$0001
	LDA #$0002
	JSL UNKNOWN_C0886C
	PLD
	RTS
