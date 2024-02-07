
TEST_PLAYER_IN_AREA:
	BEGIN_C_FUNCTION_FAR
	STACK_RESERVE_VARS
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_RETURN_INT16 ;bool
	END_STACK_VARS
	LDA PSI_TELEPORT_DESTINATION
	BEQ @UNKNOWN0
	LDA #FALSE
	BRA @UNKNOWN10
@UNKNOWN0:
	LDY CURRENT_ENTITY_SLOT
	TYA
	ASL
	TAX
	LDA ENTITY_SCRIPT_VAR0_TABLE,X
	SEC
	SBC GAME_STATE+game_state::leader_x_coord
	STA @LOCAL01
	STA @VIRTUAL02
	LDA #0
	CLC
	SBC @VIRTUAL02
	BRANCHLTEQS @UNKNOWN3
	LDA @LOCAL01
	EOR #$FFFF
	INC
	STA @LOCAL00
	BRA @UNKNOWN4
@UNKNOWN3:
	LDA @LOCAL01
	STA @LOCAL00
@UNKNOWN4:
	TYA
	ASL
	TAX
	LDA @LOCAL00
	CMP ENTITY_SCRIPT_VAR2_TABLE,X
	BCS @UNKNOWN9
	LDA ENTITY_SCRIPT_VAR1_TABLE,X
	SEC
	SBC GAME_STATE+game_state::leader_y_coord
	STA @LOCAL01
	STA @VIRTUAL02
	LDA #0
	CLC
	SBC @VIRTUAL02
	BRANCHLTEQS @UNKNOWN7
	LDA @LOCAL01
	EOR #$FFFF
	INC
	STA @LOCAL01
	BRA @UNKNOWN8
@UNKNOWN7:
	LDA @LOCAL01
	STA @LOCAL01
@UNKNOWN8:
	TYA
	ASL
	TAX
	LDA @LOCAL01
	CMP ENTITY_SCRIPT_VAR3_TABLE,X
	BCS @UNKNOWN9
	LDA #TRUE
	BRA @UNKNOWN10
@UNKNOWN9:
	LDA #FALSE
@UNKNOWN10:
	END_C_FUNCTION
