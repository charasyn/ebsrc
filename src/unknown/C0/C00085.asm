
UNKNOWN_C00085: ;$C00085
	.IF .DEFINED(JPN)
		.DEFINE PTRBASE $06
		.DEFINE PTRFINAL $0A
	.ELSE
		.DEFINE PTRBASE $0A
		.DEFINE PTRFINAL $06
	.ENDIF
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE_CLOBBER 30
	STZ .LOWORD(UNKNOWN_7E4472)
	LDA .LOWORD(UNKNOWN_7E4372)
	ASL
	ASL
	STA $1C
	LOADPTR MAP_DATA_WEIRD_TILE_ANIMATION_PTR_TABLE, $0A
	LDA $1C
	CLC
	ADC $0A
	STA $0A
	DEREFERENCE_PTR_TO $0A, $06
	MOVE_INT $06, $18
	LDA [$06]
	AND #$00FF
	BNE @UNKNOWN0
	JMP a:.LOWORD(@UNKNOWN3)
@UNKNOWN0:
	LOADPTR MAP_DATA_TILE_ANIMATION_PTR_TABLE, PTRBASE
	LDA $1C
	CLC
	ADC PTRBASE
	STA PTRBASE
	DEREFERENCE_PTR_TO PTRBASE, PTRFINAL
	MOVE_INT PTRFINAL, $0E
	LOADPTR UNKNOWN_7EC000, $12
	JSL DECOMP
	MOVE_INT $18, $06
	LDA [$06]
	AND #$00FF
	STA .LOWORD(UNKNOWN_7E4472)
	STA $02
	INC $06
	LDY #$0000
	STY $16
	BRA @UNKNOWN2
@UNKNOWN1:
	TYA
	ASL
	ASL
	ASL
	ASL
	CLC
	ADC #.LOWORD(UNKNOWN_7E43DC)
	TAX
	MOVE_INT $06, $0A
	LDA [$0A]
	AND #$00FF
	STA a:.LOWORD(RAM),X
	SEP #PROC_FLAGS::ACCUM8
	LDY #$0001
	LDA [$06],Y
	REP #PROC_FLAGS::ACCUM8
	AND #$00FF
	STA a:.LOWORD(RAM)+10,X
	STA a:.LOWORD(RAM)+2,X
	LDY #$0002
	LDA [$06],Y
	STA a:.LOWORD(RAM)+4,X
	LDY #$0004
	LDA [$06],Y
	STA a:.LOWORD(RAM)+14,X
	STA a:.LOWORD(RAM)+6,X
	LDY #$0006
	LDA [$06],Y
	STA a:.LOWORD(RAM)+8,X
	STZ a:.LOWORD(RAM)+12,X
	LDA #$0008
	CLC
	ADC $06
	STA $06
	LDY $16
	INY
	STY $16
@UNKNOWN2:
	TYA
	CMP $02
	BCC @UNKNOWN1
@UNKNOWN3:
	PLD
	RTS
