
UNKNOWN_C0DA31: ;$C0DA31
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE_CLOBBER 22
	LDA .LOWORD(UNKNOWN_7E0A50)
	INC
	BNE @UNKNOWN0
	JMP @UNKNOWN11
@UNKNOWN0:
	LDA #$0000
	STA $02
	TAY
	STY $14
	BRA @UNKNOWN4
@UNKNOWN1:
	TYA
	ASL
	TAX
	LDA .LOWORD(ENTITY_SCRIPT_TABLE),X
	INC
	BEQ @UNKNOWN3
	LDA .LOWORD(UNKNOWN_30X2_TABLE_11),X
	DEC
	BNE @UNKNOWN2
	LDA .LOWORD(ENTITY_SCREEN_Y_TABLE),X
	CLC
	ADC #$0008
	AND #$FE00
	BNE @UNKNOWN2
	LDA $02
	ASL
	TAX
	TYA
	INC
	STA .LOWORD(ENTITY_DRAW_SORTING),X
	INC $02
	BRA @UNKNOWN3
@UNKNOWN2:
	TYA
	JSR a:.LOWORD(UNKNOWN_C0A0CA)
@UNKNOWN3:
	LDY $14
	INY
	STY $14
@UNKNOWN4:
	CPY #$001E
	BNE @UNKNOWN1
	LDA $02
	ASL
	TAX
	LDA #$FFFF
	STA .LOWORD(ENTITY_DRAW_SORTING),X
	LDA $02
	STA $04
	BRA @UNKNOWN10
@UNKNOWN5:
	LDX #$0000
	STX $14
	BRA @UNKNOWN7
@UNKNOWN6:
	LDX $14
	INX
	STX $14
@UNKNOWN7:
	TXA
	ASL
	TAX
	LDA .LOWORD(ENTITY_DRAW_SORTING),X
	BEQ @UNKNOWN6
	LDX $14
	STX $02
	STX $12
	DEC
	ASL
	TAX
	LDY .LOWORD(ENTITY_ABS_Y_TABLE),X
	BRA @UNKNOWN9
@UNKNOWN8:
	LDA $10
	BEQ @UNKNOWN9
	DEC
	ASL
	TAX
	LDA .LOWORD(ENTITY_ABS_Y_TABLE),X
	STA $0E
	STA $02
	TYA
	CMP $02
	BCS @UNKNOWN9
	LDA $0E
	TAY
	LDX $14
	STX $02
	LDA $02
	STA $12
@UNKNOWN9:
	LDX $14
	INX
	STX $14
	TXA
	ASL
	TAX
	LDA .LOWORD(ENTITY_DRAW_SORTING),X
	STA $10
	INC
	BNE @UNKNOWN8
	LDA $12
	STA $02
	ASL
	CLC
	ADC #.LOWORD(ENTITY_DRAW_SORTING)
	TAX
	STX $10
	LDA a:.LOWORD(RAM),X
	DEC
	JSR a:.LOWORD(UNKNOWN_C0A0CA)
	LDA #$0000
	LDX $10
	STA a:.LOWORD(RAM),X
@UNKNOWN10:
	LDA $04
	STA $0E
	LDA $04
	DEC
	STA $04
	LDA $0E
	BEQ @UNKNOWN11
	JMP a:.LOWORD(@UNKNOWN5)
@UNKNOWN11:
	PLD
	RTS
