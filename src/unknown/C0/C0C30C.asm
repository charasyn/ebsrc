
UNKNOWN_C0C30C: ;$C0C30C
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE 18
	TAY
	STY $10
	TYA
	ASL
	TAX
	STX $0E
	LDA .LOWORD(ENTITY_TPT_ENTRIES),X
	STA $04
	ASL
	ASL
	ASL
	ASL
	ADC $04
	CLC
	ADC #npc_config::event_flag
	TAX
	LDA f:NPC_CONFIG_TABLE,X
	JSL GET_EVENT_FLAG
	CMP #$0000
	BEQ @UNKNOWN0
	LDX $0E
	STZ .LOWORD(ENTITY_DIRECTIONS),X
	BRA @UNKNOWN1
@UNKNOWN0:
	LDA #DIRECTION::DOWN
	LDX $0E
	STA .LOWORD(ENTITY_DIRECTIONS),X
@UNKNOWN1:
	LDY $10
	TYA
	JSL UNKNOWN_C0A3A4_ENTRY2
	PLD
	RTL
