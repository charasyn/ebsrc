
UNKNOWN_C01B96:
	BEGIN_C_FUNCTION_FAR
	STACK_RESERVE_VARS
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_PARAM_INT16
	STACK_RESERVE_PARAM_INT16
	STACK_RESERVE_RETURN_INT16 ;int
	END_STACK_VARS
	STX @VIRTUAL04
	STA @VIRTUAL02
	STA @LOCAL02
	LDY #0
	BRA @UNKNOWN6
@UNKNOWN0:
	LDA #0
	STA @LOCAL01
	BRA @UNKNOWN2
@UNKNOWN1:
	STA @VIRTUAL02
	TYA
	CLC
	ADC @VIRTUAL02
	TAX
	LDA SPRITE_VRAM_TABLE,X
	AND #$00FF
	BNE @UNKNOWN5
	LDA @LOCAL01
	INC
	STA @LOCAL01
@UNKNOWN2:
	LDX @LOCAL02
	STX @VIRTUAL02
	CMP @VIRTUAL02
	BCC @UNKNOWN1
	LDA #0
	STA @LOCAL00
	BRA @UNKNOWN4
@UNKNOWN3:
	STA @VIRTUAL02
	TYA
	CLC
	ADC @VIRTUAL02
	TAX
	LDA @VIRTUAL04
	SEP #PROC_FLAGS::ACCUM8
	ORA #$0080
	STA SPRITE_VRAM_TABLE,X
	REP #PROC_FLAGS::ACCUM8
	LDA @LOCAL00
	INC
	STA @LOCAL00
@UNKNOWN4:
	LDX @LOCAL02
	STX @VIRTUAL02
	CMP @VIRTUAL02
	BCC @UNKNOWN3
	TYA
	BRA @UNKNOWN7
@UNKNOWN5:
	TXY
	INY
@UNKNOWN6:
	LDA @LOCAL02
	STA @VIRTUAL02
	LDA #88
	SEC
	SBC @VIRTUAL02
	STA @VIRTUAL02
	TYA
	CMP @VIRTUAL02
	BLTEQ @UNKNOWN0
	LDA #.LOWORD(-253)
@UNKNOWN7:
	END_C_FUNCTION
