
UNKNOWN_C437B8:
	BEGIN_C_FUNCTION_FAR
	STACK_RESERVE_VARS
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_PARAM_INT16
	END_STACK_VARS
	STA @LOCAL05
	ASL
	TAX
	LDA OPEN_WINDOW_TABLE,X
	STA @LOCAL04
	LDY #.SIZEOF(window_stats)
	JSL MULT168
	TAX
	LDA WINDOW_STATS+window_stats::tilemap_address,X
	STA @LOCAL03
	LDA WINDOW_STATS+window_stats::width,X
	ASL
	ASL
	STA @VIRTUAL02
	LDA @LOCAL03
	CLC
	ADC @VIRTUAL02
	STA @VIRTUAL04
	LDA @LOCAL03
	STA @VIRTUAL02
	LDX @VIRTUAL02
	STX @LOCAL02
	TAY
	STY @LOCAL03
	LDX #0
	STX @LOCAL01
	BRA @UNKNOWN1
@UNKNOWN0:
	LDY @LOCAL03
	LDA __BSS_START__,Y
	INY
	INY
	STY @LOCAL03
	JSL FREE_TILE
	LDX @LOCAL01
	INX
	STX @LOCAL01
@UNKNOWN1:
	LDA @LOCAL04
	LDY #.SIZEOF(window_stats)
	JSL MULT168
	TAX
	LDA WINDOW_STATS+window_stats::width,X
	ASL
	STA @VIRTUAL02
	LDX @LOCAL01
	TXA
	CMP @VIRTUAL02
	BNE @UNKNOWN0
	LDX #0
	STX @LOCAL03
	BRA @UNKNOWN3
@UNKNOWN2:
	LDX @VIRTUAL04
	LDA __BSS_START__,X
	LDX @LOCAL02
	STX @VIRTUAL02
	STA __BSS_START__,X
	INC @VIRTUAL04
	INC @VIRTUAL04
	INC @VIRTUAL02
	INC @VIRTUAL02
	LDA @VIRTUAL02
	STA @LOCAL02
	LDX @LOCAL03
	INX
	STX @LOCAL03
@UNKNOWN3:
	LDA @LOCAL04
	LDY #.SIZEOF(window_stats)
	JSL MULT168
	TAY
	LDA WINDOW_STATS+window_stats::height,Y
	STA @LOCAL00
	LDA WINDOW_STATS+window_stats::width,Y
	TAY
	LDA @LOCAL00
	DEC
	DEC
	JSL MULT16
	STA @VIRTUAL02
	TXA
	CMP @VIRTUAL02
	BNE @UNKNOWN2
	LDA @LOCAL00
	LSR
	TAX
	DEX
	LDA @LOCAL05
	JSL UNKNOWN_C436D7
	END_C_FUNCTION
