
UNKNOWN_C0CCCC:
	BEGIN_C_FUNCTION_FAR
	STACK_RESERVE_VARS
	STACK_RESERVE_INT32
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	END_STACK_VARS
	LDY CURRENT_ENTITY_SLOT
	STY @LOCAL02
	TYA
	ASL
	TAX
	STX @LOCAL01
	LDA ENTITY_ABS_X_TABLE,X
	STA ENTITY_SCRIPT_VAR6_TABLE,X
	LDA ENTITY_ABS_Y_TABLE,X
	CLC
	ADC #16
	STA ENTITY_SCRIPT_VAR7_TABLE,X
	STZ @LOCAL00 + fixed_point::fraction
	LDA ENTITY_MOVEMENT_SPEEDS,X
	LSR
	LSR
	LSR
	LSR
	STA @LOCAL00 + fixed_point::integer
	MOVE_INT_CONSTANT $64800, @VIRTUAL0A
	MOVE_INT @LOCAL00, @VIRTUAL06
	JSL DIVISION32
	LDA @VIRTUAL06
	XBA
	AND #$FF00
	STA ENTITY_SCRIPT_VAR5_TABLE,X
	JSL RAND
	AND #$0001
	BEQ @UNKNOWN0
	LDX @LOCAL01
	STZ ENTITY_DIRECTIONS,X
	BRA @UNKNOWN1
@UNKNOWN0:
	LDA #DIRECTION::DOWN
	LDX @LOCAL01
	STA ENTITY_DIRECTIONS,X
@UNKNOWN1:
	LDY @LOCAL02
	TYA
	ASL
	TAX
	LDA ENTITY_DIRECTIONS,X
	CMP #DIRECTION::DOWN
	BCS @UNKNOWN2
	STZ ENTITY_UNKNOWN_2DC6,X
	BRA @UNKNOWN3
@UNKNOWN2:
	LDA #.LOWORD(-1)
	STA ENTITY_UNKNOWN_2DC6,X
@UNKNOWN3:
	TYA
	ASL
	TAX
	STZ ENTITY_SCRIPT_VAR4_TABLE,X
	END_C_FUNCTION
