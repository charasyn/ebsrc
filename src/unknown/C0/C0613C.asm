
UNKNOWN_C0613C: ;$C0613C
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE 32
	STY $1E
	STX $02
	STX $1C
	TAY
	LDA #$FFFF
	STA $1A
	LDA $1E
	ASL
	TAX
	LDA .LOWORD(UNKNOWN_7E332A),X
	BNE @UNKNOWN0
	JMP a:.LOWORD(@UNKNOWN13)
@UNKNOWN0:
	LDA .LOWORD(ENTITY_DIRECTIONS),X
	CMP #DIRECTION::RIGHT
	BEQ @UNKNOWN1
	CMP #DIRECTION::LEFT
	BNE @UNKNOWN2
@UNKNOWN1:
	LDA $1E
	ASL
	TAX
	LDA .LOWORD(UNKNOWN_7E33DE),X
	STA $18
	LDA .LOWORD(UNKNOWN_7E1A4A),X
	STA $04
	BRA @UNKNOWN3
@UNKNOWN2:
	LDA .LOWORD(UNKNOWN_7E3366),X
	STA $18
	LDA .LOWORD(UNKNOWN_7E33A2),X
	STA $04
@UNKNOWN3:
	LDA $18
	STA $02
	TYA
	SEC
	SBC $02
	STA $16
	LDA $18
	ASL
	STA $14
	LDA $1C
	STA $02
	SEC
	SBC $04
	STA $1C
	LDA #$0000
	STA $02
	STA $12
	JMP a:.LOWORD(@UNKNOWN12)
@UNKNOWN4:
	LDA $02
	CMP $1E
	BNE @UNKNOWN5
	JMP a:.LOWORD(@UNKNOWN11)
@UNKNOWN5:
	LDA $02
	CMP #$0017
	BNE @UNKNOWN6
	JMP a:.LOWORD(@UNKNOWN11)
@UNKNOWN6:
	LDA $02
	ASL
	TAX
	LDA .LOWORD(ENTITY_SCRIPT_TABLE),X
	CMP #$FFFF
	BNE @UNKNOWN7
	JMP a:.LOWORD(@UNKNOWN11)
@UNKNOWN7:
	LDA .LOWORD(UNKNOWN_30X2_TABLE_24),X
	CMP #$8000
	BEQ @UNKNOWN11
	LDA .LOWORD(UNKNOWN_7E332A),X
	BEQ @UNKNOWN11
	LDA .LOWORD(ENTITY_DIRECTIONS),X
	CMP #DIRECTION::RIGHT
	BEQ @UNKNOWN8
	CMP #DIRECTION::LEFT
	BNE @UNKNOWN9
@UNKNOWN8:
	LDA $02
	ASL
	TAX
	LDY .LOWORD(UNKNOWN_7E33DE),X
	LDA .LOWORD(UNKNOWN_7E1A4A),X
	STA $10
	BRA @UNKNOWN10
@UNKNOWN9:
	LDY .LOWORD(UNKNOWN_7E3366),X
	LDA .LOWORD(UNKNOWN_7E33A2),X
	STA $10
@UNKNOWN10:
	LDA $02
	ASL
	TAX
	LDA $10
	STA $02
	LDA .LOWORD(ENTITY_ABS_Y_TABLE),X
	SEC
	SBC $02
	STA $0E
	SEC
	SBC $04
	CMP $1C
	BCS @UNKNOWN11
	LDA $10
	CLC
	ADC $0E
	CMP $1C
	BCC @UNKNOWN11
	BEQ @UNKNOWN11
	STY $02
	LDA .LOWORD(ENTITY_ABS_X_TABLE),X
	SEC
	SBC $02
	STA $0E
	TYA
	ASL
	TAX
	LDA $0E
	SEC
	SBC $14
	CMP $16
	BCS @UNKNOWN11
	STX $02
	LDA $0E
	CLC
	ADC $02
	CMP $16
	BCC @UNKNOWN11
	BEQ @UNKNOWN11
	LDA $12
	STA $02
	STA $1A
	BRA @UNKNOWN13
@UNKNOWN11:
	LDA $12
	STA $02
	INC $02
	LDA $02
	STA $12
@UNKNOWN12:
	LDA $02
	CMP #$001E
	BEQ @UNKNOWN13
	JMP a:.LOWORD(@UNKNOWN4)
@UNKNOWN13:
	LDA $1E
	ASL
	TAX
	LDA $1A
	STA .LOWORD(UNKNOWN_30X2_TABLE_24),X
	LDA $1A
	PLD
	RTL
