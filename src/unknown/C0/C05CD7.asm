
UNKNOWN_C05CD7: ;$C05CD7
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE 20
	STX $04
	STA $12
	LDX $22
	STX $10
	STZ .LOWORD(UNKNOWN_7E5DA4)
	TYA
	ASL
	TAX
	LDA .LOWORD(ENTITY_SIZES),X
	STA $02
	ASL
	STA $0E
	LDX $0E
	LDA $12
	SEC
	SBC f:UNKNOWN_C42A1F,X
	TAY
	STY .LOWORD(UNKNOWN_7E5DAC)
	LDX $0E
	LDA $04
	SEC
	SBC f:UNKNOWN_C42A41,X
	LDX $0E
	CLC
	ADC f:UNKNOWN_C42AEB,X
	STA $0E
	STA .LOWORD(UNKNOWN_7E5DAE)
	LDX $10
	TXA
	CMP #$0001
	BEQ @UNKNOWN0
	CMP #$0000
	BEQ @UNKNOWN1
	CMP #$0003
	BEQ @UNKNOWN2
	CMP #$0002
	BEQ @UNKNOWN3
	CMP #$0005
	BEQ @UNKNOWN4
	CMP #$0004
	BEQ @UNKNOWN5
	CMP #$0007
	BEQ @UNKNOWN6
	CMP #$0006
	BEQ @UNKNOWN7
	BRA @UNKNOWN8
@UNKNOWN0:
	LDX $02
	LDA $0E
	JSR a:.LOWORD(UNKNOWN_C056D0)
@UNKNOWN1:
	LDX $02
	LDA .LOWORD(UNKNOWN_7E5DAC)
	JSR a:.LOWORD(UNKNOWN_C05503)
	BRA @UNKNOWN8
@UNKNOWN2:
	LDX $02
	TYA
	JSR a:.LOWORD(UNKNOWN_C0559C)
@UNKNOWN3:
	LDX $02
	LDA .LOWORD(UNKNOWN_7E5DAE)
	JSR a:.LOWORD(UNKNOWN_C056D0)
	BRA @UNKNOWN8
@UNKNOWN4:
	LDX $02
	LDA $0E
	JSR a:.LOWORD(UNKNOWN_C05639)
@UNKNOWN5:
	LDX $02
	LDA .LOWORD(UNKNOWN_7E5DAC)
	JSR a:.LOWORD(UNKNOWN_C0559C)
	BRA @UNKNOWN8
@UNKNOWN6:
	LDX $02
	TYA
	JSR a:.LOWORD(UNKNOWN_C05503)
@UNKNOWN7:
	LDX $02
	LDA .LOWORD(UNKNOWN_7E5DAE)
	JSR a:.LOWORD(UNKNOWN_C05639)
@UNKNOWN8:
	LDA .LOWORD(UNKNOWN_7E5DA4)
	PLD
	RTL
