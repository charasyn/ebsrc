
MOVEMENT_CODE_1A:
	LDA [$80],Y
	STA $90
	INY
	INY
	TYA
	LDX $8A
	LDY ENTITY_SCRIPT_STACK_OFFSETS,X
	STA ($84),Y
	INY
	INY
	TYA
	STA ENTITY_SCRIPT_STACK_OFFSETS,X
	LDY $90
	RTS
