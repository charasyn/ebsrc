
UNKNOWN_C0CF97: ;$C0CF97
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE 30
	STX $1C
	SEP #PROC_FLAGS::ACCUM8
	STA $00
	REP #PROC_FLAGS::ACCUM8
	LDA .LOWORD(UNKNOWN_7E1A42)
	STA $1A
	ASL
	TAX
	STX $18
	LDA .LOWORD(UNKNOWN_30X2_TABLE_36),X
	STA $16
	LOADPTR UNKNOWN_C0CF58, $06
	LDA $16
	ASL
	STA $14
	PHA
	LDA .LOWORD(ENTITY_ABS_X_TABLE),X
	PLX
	SEC
	SBC f:UNKNOWN_C42A1F,X
	LSR
	LSR
	LSR
	SEC
	SBC #$0004
	TAY
	LDA $14
	PHA
	PHA
	LDX $18
	LDA .LOWORD(ENTITY_ABS_Y_TABLE),X
	PLX
	SEC
	SBC f:UNKNOWN_C42A41,X
	PLX
	CLC
	ADC f:UNKNOWN_C42AEB,X
	LSR
	LSR
	LSR
	SEC
	SBC #$0004
	STA $02
	STA $12
	TYA
	AND #$003F
	TAX
	STX $10
	LDA $02
	AND #$003F
	STA $18
	LDA #$0000
	STA $04
	JMP @UNKNOWN7
@UNKNOWN0:
	LDX $10
	CPX #$0040
	BCS @UNKNOWN1
	LDA $18
	CMP #$0040
	BCS @UNKNOWN1
	TXA
	AND #$003F
	STA $02
	LDA $18
	AND #$003F
	ASL
	ASL
	ASL
	ASL
	ASL
	ASL
	CLC
	ADC $02
	TAX
	SEP #PROC_FLAGS::ACCUM8
	LDA $00
	AND $E000,X
	REP #PROC_FLAGS::ACCUM8
	AND #$00FF
	BNE @UNKNOWN9
@UNKNOWN1:
	LDA [$06]
	AND #$00FF
	STA $0E
	INC $06
	LDA $0E
	CMP #$0001
	BEQ @UNKNOWN2
	CMP #$0002
	BEQ @UNKNOWN3
	CMP #$0003
	BEQ @UNKNOWN4
	CMP #$0004
	BEQ @UNKNOWN5
	BRA @UNKNOWN6
@UNKNOWN2:
	LDA $18
	DEC
	STA $18
	LDA $12
	STA $02
	DEC
	STA $02
	STA $12
	BRA @UNKNOWN6
@UNKNOWN3:
	LDX $10
	INX
	STX $10
	INY
	BRA @UNKNOWN6
@UNKNOWN4:
	LDA $18
	INC
	STA $18
	LDA $12
	STA $02
	INC $02
	LDA $02
	STA $12
	BRA @UNKNOWN6
@UNKNOWN5:
	LDX $10
	DEX
	STX $10
	DEY
@UNKNOWN6:
	INC $04
@UNKNOWN7:
	LDA $04
	CMP $1C
	BEQ @UNKNOWN8
	JMP a:.LOWORD(@UNKNOWN0)
@UNKNOWN8:
	LDA #$0000
	BRA @UNKNOWN10
@UNKNOWN9:
	LDA $1A
	ASL
	STA $1C
	LDA $16
	ASL
	TAX
	STX $14
	LDA $1C
	PHA
	TYA
	ASL
	ASL
	ASL
	CLC
	ADC f:UNKNOWN_C42A1F,X
	PLX
	STA .LOWORD(UNKNOWN_30X2_TABLE_9),X
	LDA $1C
	PHA
	LDX $14
	LDA $12
	STA $02
	ASL
	ASL
	ASL
	SEC
	SBC f:UNKNOWN_C42AEB,X
	CLC
	ADC f:UNKNOWN_C42A41,X
	PLX
	STA .LOWORD(UNKNOWN_30X2_TABLE_10),X
	LDA #$FFFF
@UNKNOWN10:
	PLD
	RTS
