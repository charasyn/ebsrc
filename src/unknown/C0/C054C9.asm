
UNKNOWN_C054C9:
	BEGIN_C_FUNCTION
	STACK_RESERVE_VARS
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_PARAM_INT16
	STACK_RESERVE_PARAM_INT16
	STACK_RESERVE_RETURN_INT16
	END_STACK_VARS
	STX @LOCAL01
	STA @LOCAL00
	AND #$003F
	STA @VIRTUAL02
	TXA
	AND #$003F
	OPTIMIZED_MULT @VIRTUAL04, 64
	CLC
	ADC @VIRTUAL02
	TAX
	LDA LOADED_COLLISION_TILES,X
	AND #$00FF
	TAY
	AND #$0010
	BEQ @UNKNOWN0
	LDA @LOCAL00
	STA LADDER_STAIRS_TILE_X
	LDX @LOCAL01
	STX LADDER_STAIRS_TILE_Y
@UNKNOWN0:
	TYA
	END_C_FUNCTION
