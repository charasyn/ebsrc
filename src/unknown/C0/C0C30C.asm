
UNKNOWN_C0C30C:
	BEGIN_C_FUNCTION_FAR
	STACK_RESERVE_VARS
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_PARAM_INT16
	END_STACK_VARS
	TAY
	STY @LOCAL01
	TYA
	ASL
	TAX
	STX @LOCAL00
	LDA ENTITY_NPC_IDS,X
	STA @VIRTUAL04
	ASL
	ASL
	ASL
	ASL
	ADC @VIRTUAL04
	CLC
	ADC #npc_config::event_flag
	TAX
	LDA f:NPC_CONFIG_TABLE,X
	JSL GET_EVENT_FLAG
	CMP #0
	BEQ @UNKNOWN0
	LDX @LOCAL00
	STZ ENTITY_DIRECTIONS,X
	BRA @UNKNOWN1
@UNKNOWN0:
	LDA #DIRECTION::DOWN
	LDX @LOCAL00
	STA ENTITY_DIRECTIONS,X
@UNKNOWN1:
	LDY @LOCAL01
	TYA
	JSL UNKNOWN_C0A443_ENTRY2
	END_C_FUNCTION
