
UNKNOWN_C46DE5: ;$C46DE5
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE 15
	SEP #PROC_FLAGS::ACCUM8
	STA $0E
	REP #PROC_FLAGS::ACCUM8
	LOADPTR TELEPORT_DESTINATION_TABLE, $06
	LDA $0E
	AND #$00FF
	ASL
	ASL
	ASL
	CLC
	ADC $06
	STA $06
	STA $0A
	LDA $08
	STA $0C
	LDA [$0A]
	ASL
	ASL
	ASL
	STA .LOWORD(ENTITY_PREPARED_X_COORDINATE)
	LDY #$0002
	LDA [$06],Y
	ASL
	ASL
	ASL
	STA .LOWORD(ENTITY_PREPARED_Y_COORDINATE)
	SEP #PROC_FLAGS::ACCUM8
	LDY #$0004
	LDA [$06],Y
	REP #PROC_FLAGS::ACCUM8
	AND #$00FF
	DEC
	STA .LOWORD(ENTITY_PREPARED_DIRECTION)
	PLD
	RTL
