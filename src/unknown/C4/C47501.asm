
UNKNOWN_C47501: ;$C47501
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE_CLOBBER 20
	MOVE_INT $22, $06
	LDA .LOWORD(UNKNOWN_7E1A42)
	STA $02
	ASL
	TAX
	LDA .LOWORD(ENTITY_ABS_Y_TABLE),X
	SEC
	SBC a:.LOWORD(BG1_Y_POS)
	TAY
	INY
	INY
	INY
	INY
	CPY #$8000
	BCC @UNKNOWN0
	JMP a:.LOWORD(@UNKNOWN4)
@UNKNOWN0:
	TYA
	SEP #PROC_FLAGS::ACCUM8
	INC
	STA [$06]
	REP #PROC_FLAGS::ACCUM8
	INC $06
	LDA .LOWORD(ENTITY_ABS_X_TABLE),X
	STA $12
	SEC
	SBC #$0010
	SEC
	SBC a:.LOWORD(BG1_X_POS)
	TAX
	LDA $12
	CLC
	ADC #$0010
	SEC
	SBC a:.LOWORD(BG1_X_POS)
	STA $12
	CPX #$0100
	BCS @UNKNOWN2
	TXA
	SEP #PROC_FLAGS::ACCUM8
	STA [$06]
	REP #PROC_FLAGS::ACCUM8
	INC $06
	LDA $12
	CMP #$0100
	BCS @UNKNOWN1
	SEP #PROC_FLAGS::ACCUM8
	STA [$06]
	REP #PROC_FLAGS::ACCUM8
	INC $06
	BRA @UNKNOWN4
@UNKNOWN1:
	SEP #PROC_FLAGS::ACCUM8
	LDA #$00FF
	STA [$06]
	REP #PROC_FLAGS::ACCUM8
	INC $06
	BRA @UNKNOWN4
@UNKNOWN2:
	CMP #$0100
	BCS @UNKNOWN3
	SEP #PROC_FLAGS::ACCUM8
	LDA #$0000
	STA [$06]
	REP #PROC_FLAGS::ACCUM8
	INC $06
	LDA $12
	SEP #PROC_FLAGS::ACCUM8
	STA [$06]
	REP #PROC_FLAGS::ACCUM8
	INC $06
	BRA @UNKNOWN4
@UNKNOWN3:
	SEP #PROC_FLAGS::ACCUM8
	LDA #$0080
	STA [$06]
	REP #PROC_FLAGS::ACCUM8
	INC $06
	SEP #PROC_FLAGS::ACCUM8
	LDA #$007F
	STA [$06]
	REP #PROC_FLAGS::ACCUM8
	INC $06
@UNKNOWN4:
	LDA $02
	ASL
	TAX
	LDA .LOWORD(ENTITY_ABS_X_TABLE),X
	SEC
	SBC a:.LOWORD(BG1_X_POS)
	STA $04
	TYA
	CLC
	ADC #$000B
	CMP #$8000
	BCC @UNKNOWN5
	JMP a:.LOWORD(@UNKNOWN14)
@UNKNOWN5:
	CMP #$000A
	BCS @UNKNOWN6
	TAX
	BRA @UNKNOWN7
@UNKNOWN6:
	LDX #$000A
@UNKNOWN7:
	STX $02
	LOADPTR UNKNOWN_C474F6, $0A
	LDA #$000A
	SEC
	SBC $02
	CLC
	ADC $0A
	STA $0A
	LDY $02
	INY
	LDA #$0000
	STA $10
	JMP a:.LOWORD(@UNKNOWN13)
@UNKNOWN8:
	SEP #PROC_FLAGS::ACCUM8
	LDA #$0001
	STA [$06]
	REP #PROC_FLAGS::ACCUM8
	INC $06
	LDA [$0A]
	AND #$00FF
	STA $02
	LDA $04
	SEC
	SBC $02
	STA $0E
	LDA $04
	CLC
	ADC $02
	TAX
	DEX
	INC $0A
	LDA $0E
	CMP #$0100
	BCS @UNKNOWN10
	LDA $0E
	SEP #PROC_FLAGS::ACCUM8
	STA [$06]
	REP #PROC_FLAGS::ACCUM8
	INC $06
	CPX #$0100
	BCS @UNKNOWN9
	TXA
	SEP #PROC_FLAGS::ACCUM8
	STA [$06]
	REP #PROC_FLAGS::ACCUM8
	INC $06
	BRA @UNKNOWN12
@UNKNOWN9:
	SEP #PROC_FLAGS::ACCUM8
	LDA #$00FF
	STA [$06]
	REP #PROC_FLAGS::ACCUM8
	INC $06
	BRA @UNKNOWN12
@UNKNOWN10:
	CPX #$0100
	BCS @UNKNOWN11
	SEP #PROC_FLAGS::ACCUM8
	LDA #$0000
	STA [$06]
	REP #PROC_FLAGS::ACCUM8
	INC $06
	TXA
	SEP #PROC_FLAGS::ACCUM8
	STA [$06]
	REP #PROC_FLAGS::ACCUM8
	INC $06
	BRA @UNKNOWN12
@UNKNOWN11:
	SEP #PROC_FLAGS::ACCUM8
	LDA #$0080
	STA [$06]
	REP #PROC_FLAGS::ACCUM8
	INC $06
	SEP #PROC_FLAGS::ACCUM8
	LDA #$007F
	STA [$06]
	REP #PROC_FLAGS::ACCUM8
	INC $06
@UNKNOWN12:
	LDA $10
	INC
	STA $10
@UNKNOWN13:
	STY $02
	CMP $02
	BCS @UNKNOWN14
	BEQ @UNKNOWN14
	JMP a:.LOWORD(@UNKNOWN8)
@UNKNOWN14:
	SEP #PROC_FLAGS::ACCUM8
	LDA #$0001
	STA [$06]
	REP #PROC_FLAGS::ACCUM8
	INC $06
	SEP #PROC_FLAGS::ACCUM8
	LDA #$0080
	STA [$06]
	REP #PROC_FLAGS::ACCUM8
	INC $06
	SEP #PROC_FLAGS::ACCUM8
	LDA #$007F
	STA [$06]
	REP #PROC_FLAGS::ACCUM8
	INC $06
	SEP #PROC_FLAGS::ACCUM8
	LDA #$0000
	STA [$06]
	REP #PROC_FLAGS::ACCUM8
	PLD
	RTS
