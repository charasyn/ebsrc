
UNKNOWN_C0BD96: ;$C0BD96
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE_CLOBBER 44
	LDA .LOWORD(GAME_STATE)+game_state::current_party_members
	STA $2A
	LDA #$F200
	STA $28
	LDA #$0038
	STA $F278
	STA $F27A
	LDA $F278
	LSR
	STA $04
	STA $4A92
	LDA $F27A
	LSR
	STA $02
	STA $26
	LDA $02
	STA $4A94
	LDA $2A
	ASL
	STA $2A
	CLC
	ADC #$0B8E
	TAY
	STY $24
	LOADPTR UNKNOWN_C42A1F, $20
	LDA $2A
	CLC
	ADC #$2B6E
	STA $1E
	LDA ($1E)
	ASL
	PHA
	LDA a:.LOWORD(RAM),Y
	PLY
	SEC
	SBC [$20],Y
	LSR
	LSR
	LSR
	STA $4A8E
	LDA $2A
	CLC
	ADC #$0BCA
	TAX
	LOADPTR UNKNOWN_C42A41, $0A
	LDA ($1E)
	ASL
	STA $1C
	LOADPTR UNKNOWN_C42AEB, $06
	MOVE_INT $06, $18
	LDA $1C
	CLC
	ADC $06
	STA $06
	LDA [$06]
	PHA
	LDA $1C
	MOVE_INTY $0A, $06
	CLC
	ADC $06
	STA $06
	LDA [$06]
	STA $02
	LDA a:.LOWORD(RAM),X
	SEC
	SBC $02
	PLY
	STY $02
	CLC
	ADC $02
	LSR
	LSR
	LSR
	STA $4A90
	LDA ($1E)
	ASL
	STA $1C
	PHA
	LDY $24
	LDA a:.LOWORD(RAM),Y
	PLY
	SEC
	SBC [$20],Y
	LSR
	LSR
	LSR
	SEC
	SBC $04
	STA $04
	LDA $1C
	MOVE_INTY $18, $06
	CLC
	ADC $06
	STA $06
	LDA [$06]
	PHA
	LDA $1C
	MOVE_INTY $0A, $06
	CLC
	ADC $06
	STA $06
	LDA [$06]
	STA $02
	LDA a:.LOWORD(RAM),X
	SEC
	SBC $02
	PLY
	STY $02
	CLC
	ADC $02
	LSR
	LSR
	LSR
	LDX $26
	STX $02
	SEC
	SBC $02
	STA $02
	STA $0E
	LDY $04
	LDX #$0001
	LDA $28
	JSR a:.LOWORD(UNKNOWN_C0B9BC)
	LDA $02
	STA $0E
	LDA #$0001
	STA $10
	LDA #$00FC
	STA $12
	LDA #$0032
	STA $14
	LDY $04
	LDX #$0001
	LDA $28
	JSR a:.LOWORD(UNKNOWN_C0BA35)
	STA $2A
	CMP #$0000
	BEQ @UNKNOWN0
	JMP a:.LOWORD(@UNKNOWN1)
@UNKNOWN0:
	LDX $F2B0
	TXA
	ASL
	STA $02
	STA $16
	LDX $02
	LDY .LOWORD(UNKNOWN_30X2_TABLE_36),X
	TYA
	ASL
	TAX
	STX $28
	TXY
	LDA $F2A8
	ASL
	ASL
	ASL
	CLC
	ADC [$20],Y
	STA $04
	LDA $4A8E
	SEC
	SBC $4A92
	ASL
	ASL
	ASL
	CLC
	ADC $04
	LDX $02
	STA .LOWORD(ENTITY_ABS_X_TABLE),X
	LDX $28
	TXA
	MOVE_INTY $0A, $06
	CLC
	ADC $06
	STA $06
	LDA [$06]
	PHA
	TXA
	MOVE_INTX $18, $06
	CLC
	ADC $06
	STA $06
	LDA [$06]
	STA $02
	LDA $F2A6
	ASL
	ASL
	ASL
	SEC
	SBC $02
	PLY
	STY $02
	CLC
	ADC $02
	STA $04
	LDA $4A90
	SEC
	SBC $4A94
	ASL
	ASL
	ASL
	CLC
	ADC $04
	LDX $16
	STX $02
	STA .LOWORD(ENTITY_ABS_Y_TABLE),X
	LDA $02
	CLC
	ADC #.LOWORD(UNKNOWN_30X2_TABLE_46)
	TAX
	LDA a:.LOWORD(RAM),X
	INC
	INC
	INC
	INC
	STA a:.LOWORD(RAM),X
	LDA $02
	CLC
	ADC #.LOWORD(UNKNOWN_7E2E3E)
	TAX
	LDA a:.LOWORD(RAM),X
	DEC
	STA a:.LOWORD(RAM),X
	LDA $2A
@UNKNOWN1:
	PLD
	RTL