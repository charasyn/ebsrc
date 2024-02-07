
LOAD_TOWN_MAP_DATA:
	BEGIN_C_FUNCTION
	STACK_RESERVE_VARS
	STACK_RESERVE_INT32
	STACK_RESERVE_INT32
	STACK_RESERVE_INT16
	STACK_RESERVE_PARAM_INT16 ;int
	END_STACK_VARS
	TAY
	STY @LOCAL02
	LDX #1
	LDA #2
	JSL FADE_OUT
	LOADPTR TOWN_MAP_GFX_POINTER_TABLE, @VIRTUAL0A
	LDY @LOCAL02
	TYA
	ASL
	ASL
	CLC
	ADC @VIRTUAL0A
	STA @VIRTUAL0A
	DEREFERENCE_PTR_TO @VIRTUAL0A, @VIRTUAL06
	MOVE_INT @VIRTUAL06, @LOCAL00
	LOADPTR BUFFER, @LOCAL01
	JSL DECOMP
@UNKNOWN0:
	LDA FADE_PARAMETERS + fade_parameters::step
	AND #$00FF
	BNE @UNKNOWN0
	LOADPTR BUFFER, @VIRTUAL06
	MOVE_INT @VIRTUAL06, @LOCAL00
	LDX #BPP4PALETTE_SIZE * 2
	LDA #.LOWORD(PALETTES)
	JSL MEMCPY16
	LOADPTR TOWN_MAP_ICON_PALETTE, @LOCAL00
	LDX #BPP4PALETTE_SIZE * 8
	LDA #.LOWORD(PALETTES) + BPP4PALETTE_SIZE * 8
	JSL MEMCPY16
	LDY #$0000
	LDX #$3000
	TYA ;BG_TILEMAP_SIZE::NORMAL
	JSL SET_BG1_VRAM_LOCATION
	LDA #3
	JSL SET_OAM_SIZE
	SEP #PROC_FLAGS::ACCUM8
	LDA #$00
	STA f:CGADSUB
	STA f:CGWSEL
	LDA #$01
	STA TM_MIRROR
	STZ TD_MIRROR
	REP #PROC_FLAGS::ACCUM8
	COPY_TO_VRAM1 BUFFER + $40, $3000, $800, 0
	.A16
	COPY_TO_VRAM3 BUFFER + $840, $0000, $4000, 0
	.A16
	LOADPTR TOWN_MAP_LABEL_GFX, @LOCAL00
	MOVE_INT @VIRTUAL06, @LOCAL01
	JSL DECOMP
	COPY_TO_VRAM1P @VIRTUAL06, $6000, TOWN_MAP_LABEL_GFX_SIZE, 0
	.A16
	LDA #24
	JSL UNKNOWN_C0856B
	SEP #PROC_FLAGS::ACCUM8
	LDA #$11
	STA TM_MIRROR
	REP #PROC_FLAGS::ACCUM8
	STZ BG1_Y_POS
	STZ BG1_X_POS
	JSL UPDATE_SCREEN
	LDX #1
	LDA #2
	JSL FADE_IN
	END_C_FUNCTION
