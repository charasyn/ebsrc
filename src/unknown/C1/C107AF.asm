
UNKNOWN_C107AF:
	BEGIN_C_FUNCTION_FAR
	STACK_RESERVE_VARS
	STACK_RESERVE_INT32
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_PARAM_INT16
	END_STACK_VARS
	STA @LOCAL08
	LDY #.SIZEOF(window_stats)
	JSL MULT168
	TAY
	LDA WINDOW_STATS + window_stats::tilemap_address,Y
	STA @LOCAL07
	LDA WINDOW_STATS + window_stats::window_x,Y
	ASL
	STA @VIRTUAL02
	LDA WINDOW_STATS + window_stats::window_y,Y
	OPTIMIZED_MULT @VIRTUAL04, 64
	CLC
	ADC @VIRTUAL02
	CLC
	ADC #.LOWORD(BG2_BUFFER)
	TAX
	LDA WINDOW_STATS + window_stats::width,Y
	STA @VIRTUAL04
	STA @LOCAL06
	LDA WINDOW_STATS + window_stats::height,Y
	STA @LOCAL05
	LDA __BSS_START__,X
	BEQ @UNKNOWN0
	CMP #$3C10
	BNE @UNKNOWN1
@UNKNOWN0:
	LDA #$3C10
	STA __BSS_START__,X
	TXY
	INY
	INY
	STY @LOCAL04
	BRA @UNKNOWN2
@UNKNOWN1:
	LDA #$3C13
	STA __BSS_START__,X
	TXY
	INY
	INY
	STY @LOCAL04
@UNKNOWN2:
	LDA @LOCAL08
	LDY #.SIZEOF(window_stats)
	JSL MULT168
	STA @LOCAL03
	TAX
	SEP #PROC_FLAGS::ACCUM8
	LDA WINDOW_STATS + window_stats::unknown59,X
	STA @VIRTUAL00
	REP #PROC_FLAGS::ACCUM8
	LDA @VIRTUAL00
	AND #$00FF
	BEQL @UNKNOWN6
	LDA @LOCAL03
	CLC
	ADC #.LOWORD(WINDOW_STATS) + window_stats::title
	STA @LOCAL02
	LDA @VIRTUAL00
	AND #$00FF
	DEC
	OPTIMIZED_MULT @VIRTUAL04, 16
	CLC
	ADC #$02E0
	STA @VIRTUAL02
	LDA #$3C16
	LDY @LOCAL04
	STA __BSS_START__,Y
	TYX
	INX
	INX
	STX @LOCAL04
	LDA @VIRTUAL04
	DEC
	STA @VIRTUAL04
	STA @LOCAL01
	LDA @LOCAL02
	PROMOTENEARPTRA @VIRTUAL06
	REP #PROC_FLAGS::ACCUM8
	MOVE_INT @VIRTUAL06, @LOCAL00
	JSL STRLEN
	STA @VIRTUAL04
	ASL
	ADC @VIRTUAL04
	ASL
	CLC
	ADC #7
	LSR
	LSR
	LSR
	STA @LOCAL02
	BRA @UNKNOWN5
@UNKNOWN4:
	LDA @VIRTUAL02
	CLC
	ADC #$2000
	LDX @LOCAL04
	STA __BSS_START__,X
	INC @VIRTUAL02
	INX
	INX
	STX @LOCAL04
	LDA @LOCAL01
	STA @VIRTUAL04
	DEC
	STA @VIRTUAL04
	STA @LOCAL01
	LDA @LOCAL02
	DEC
	STA @LOCAL02
@UNKNOWN5:
	BNE @UNKNOWN4
	LDA #$7C16
	LDX @LOCAL04
	STA __BSS_START__,X
	TXY
	INY
	INY
	STY @LOCAL04
	LDA @LOCAL01
	STA @VIRTUAL04
	DEC
	STA @VIRTUAL04
@UNKNOWN6:
	LDA @LOCAL08
	LDY #.SIZEOF(window_stats)
	JSL MULT168
	TAX
	LDA WINDOW_STATS+window_stats::id,X
	CMP PAGINATION_WINDOW
	BNE @UNKNOWN7
	LDA PAGINATION_ANIMATION_FRAME
	CMP #$FFFF
	BEQ @UNKNOWN7
	LDA @VIRTUAL04
	SEC
	SBC #4
	STA @VIRTUAL04
@UNKNOWN7:
	LDX @VIRTUAL04
	BRA @UNKNOWN9
@UNKNOWN8:
	LDA #$3C11
	LDY @LOCAL04
	STA __BSS_START__,Y
	INY
	INY
	STY @LOCAL04
	DEX
@UNKNOWN9:
	BNE @UNKNOWN8
	LDA @LOCAL08
	LDY #.SIZEOF(window_stats)
	JSL MULT168
	TAX
	LDA WINDOW_STATS+window_stats::id,X
	CMP PAGINATION_WINDOW
	BNE @UNKNOWN12
	LDA PAGINATION_ANIMATION_FRAME
	CMP #.LOWORD(-1)
	BEQ @UNKNOWN12
	LOADPTR UNKNOWN_C3E41C_PTR_TABLE, @VIRTUAL0A
	LDA PAGINATION_ANIMATION_FRAME
	ASL
	ASL
	CLC
	ADC @VIRTUAL0A
	STA @VIRTUAL0A
	DEREFERENCE_PTR_TO @VIRTUAL0A, @VIRTUAL06
	LDX #0
	BRA @UNKNOWN11
@UNKNOWN10:
	LDA [@VIRTUAL06]
	LDY @LOCAL04
	STA __BSS_START__,Y
	INC @VIRTUAL06
	INC @VIRTUAL06
	INY
	INY
	STY @LOCAL04
	INX
@UNKNOWN11:
	CPX #4
	BCC @UNKNOWN10
@UNKNOWN12:
	LDY @LOCAL04
	LDA __BSS_START__,Y
	BEQ @UNKNOWN13
	CMP #$7C10
	BNE @UNKNOWN14
@UNKNOWN13:
	LDA #$7C10
	STA __BSS_START__,Y
	TYA
	INC
	INC
	STA @LOCAL08
	BRA @UNKNOWN15
@UNKNOWN14:
	LDA #$7C13
	STA __BSS_START__,Y
	TYA
	INC
	INC
	STA @LOCAL08
@UNKNOWN15:
	LDA #32
	SEC
	SBC @LOCAL06
	DEC
	DEC
	ASL
	STA @VIRTUAL02
	LDA @LOCAL08
	CLC
	ADC @VIRTUAL02
	TAX
	LDY @LOCAL05
	BRA @UNKNOWN19
@UNKNOWN16:
	LDA #$3C12
	STA __BSS_START__,X
	INX
	INX
	LDA @LOCAL06
	STA @LOCAL04
	BRA @UNKNOWN18
@UNKNOWN17:
	LDA (@LOCAL07)
	CLC
	ADC #$2000
	STA __BSS_START__,X
	INC @LOCAL07
	INC @LOCAL07
	INX
	INX
	LDA @LOCAL04
	DEC
	STA @LOCAL04
@UNKNOWN18:
	BNE @UNKNOWN17
	LDA #$7C12
	STA __BSS_START__,X
	TXA
	INC
	INC
	STA @LOCAL03
	LDA #32
	SEC
	SBC @LOCAL06
	DEC
	DEC
	ASL
	STA @VIRTUAL02
	LDA @LOCAL03
	CLC
	ADC @VIRTUAL02
	TAX
	DEY
@UNKNOWN19:
	BNE @UNKNOWN16
	LDA __BSS_START__,X
	BEQ @UNKNOWN20
	CMP #$BC10
	BNE @UNKNOWN21
@UNKNOWN20:
	LDA #$BC10
	STA __BSS_START__,X
	TXY
	INY
	INY
	BRA @UNKNOWN22
@UNKNOWN21:
	LDA #$BC13
	STA __BSS_START__,X
	TXY
	INY
	INY
@UNKNOWN22:
	LDX @LOCAL06
	BRA @UNKNOWN24
@UNKNOWN23:
	LDA #$BC11
	STA __BSS_START__,Y
	INY
	INY
	DEX
@UNKNOWN24:
	BNE @UNKNOWN23
	LDA __BSS_START__,Y
	BEQ @UNKNOWN25
	CMP #$FC10
	BNE @UNKNOWN26
@UNKNOWN25:
	LDA #$FC10
	STA __BSS_START__,Y
	BRA @UNKNOWN27
@UNKNOWN26:
	LDA #$FC13
	STA __BSS_START__,Y
@UNKNOWN27:
	END_C_FUNCTION
