
UNKNOWN_C0C6B6:
	BEGIN_C_FUNCTION_FAR
	STACK_RESERVE_VARS
	STACK_RESERVE_INT16
	STACK_RESERVE_RETURN_INT16
	END_STACK_VARS
	LDA PSI_TELEPORT_SPEED + fixed_point::integer
	CMP #04
	BCC @UNKNOWN0
	LDA #.LOWORD(-1)
	BRA @UNKNOWN4
@UNKNOWN0:
	LDA CURRENT_ENTITY_SLOT
	ASL
	TAX
	LDA GAME_STATE+game_state::leader_x_coord
	SEC
	SBC #128
	STA @VIRTUAL02
	LDA ENTITY_ABS_X_TABLE,X
	SEC
	SBC @VIRTUAL02
	STA @LOCAL00
	LDA GAME_STATE+game_state::leader_y_coord
	SEC
	SBC #112
	STA @VIRTUAL02
	LDA ENTITY_ABS_Y_TABLE,X
	SEC
	SBC @VIRTUAL02
	TAX
	LDA @LOCAL00
	CMP #.LOWORD(-64)
	BCS @UNKNOWN1
	CMP #320
	BCS @UNKNOWN3
@UNKNOWN1:
	CPX #.LOWORD(-64)
	BCS @UNKNOWN2
	CPX #320
	BCS @UNKNOWN3
@UNKNOWN2:
	LDA #.LOWORD(-1)
	BRA @UNKNOWN4
@UNKNOWN3:
	LDA #0
@UNKNOWN4:
	END_C_FUNCTION
