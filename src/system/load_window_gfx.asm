
LOAD_WINDOW_GFX:
	BEGIN_C_FUNCTION_FAR
	STACK_RESERVE_VARS
	STACK_RESERVE_INT32
	STACK_RESERVE_INT32
	STACK_RESERVE_INT32
	STACK_RESERVE_INT32
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_INT32
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	END_STACK_VARS
	LOADPTR TEXT_WINDOW_GFX, @LOCAL00
	LOADPTR BUFFER, @LOCAL01
	JSL DECOMP
	LOADPTR BUFFER + $2000, @LOCAL00
	LOADPTR BUFFER + $1000, @LOCAL01
	LDA #$2A00
	JSL MEMCPY24
	LOADPTR BUFFER + $3200, @LOCAL00
	LDX #1536
	SEP #PROC_FLAGS::ACCUM8
	LDA #0
	JSL MEMSET24
	.A16
	LDA GAME_STATE+game_state::text_flavour
	AND #$00FF
	DEC
	OPTIMIZED_MULT @VIRTUAL04, 3
	TAX
	INX
	INX
	LDA f:TEXT_WINDOW_PROPERTIES,X
	AND #$00FF
	CMP #8
	BNE @UNKNOWN1
	LOADPTR FLAVOURED_TEXT_GFX, @LOCAL00
	LOADPTR BUFFER + $100, @LOCAL01
	JSL DECOMP
	.A16
@UNKNOWN1:
	LOADPTR FONT_PTR_TABLE, @VIRTUAL06
	LDY #(.SIZEOF(font_table_entry) * FONT::BATTLE) + font_table_entry::height
	LDA [@VIRTUAL06],Y
	STA @LOCAL09
	LDY #(.SIZEOF(font_table_entry) * FONT::BATTLE) + font_table_entry::width
	LDA [@VIRTUAL06],Y
	STA @LOCAL08
	LOADPTR BUFFER + $2A00, @LOCAL07
	LDA #6
	STA @LOCAL06
	LDA #0
	STA @VIRTUAL04
	JMP @UNKNOWN8
@UNKNOWN2:
	STZ VWF_TILE
	STZ VWF_X
	SEP #PROC_FLAGS::ACCUM8
	LDA #$00FF
	STA @LOCAL00
	LDX #52 * 16
	REP #PROC_FLAGS::ACCUM8
	LDA #.LOWORD(VWF_BUFFER)
	JSL MEMSET16
	STZ TEXT_RENDER_STATE + 2
	STZ TEXT_RENDER_STATE
	LDA @VIRTUAL04
	LDY #.SIZEOF(char_struct)
	JSL MULT168
	CLC
	ADC #.LOWORD(PARTY_CHARACTERS)
	PROMOTENEARPTRA @VIRTUAL0A
	REP #PROC_FLAGS::ACCUM8
	LDA #2
	STA VWF_X
	LDA #0
	STA @VIRTUAL02
	BRA @UNKNOWN4
@UNKNOWN3:
	AND #$00FF
	INC @VIRTUAL0A
	SEC
	SBC #80
	AND #$007F
	TAY
	MOVE_INT FONT_PTR_TABLE + (.SIZEOF(font_table_entry) * FONT::BATTLE) + font_table_entry::graphics, @VIRTUAL06
	LDA @LOCAL09
	JSL MULT16
	CLC
	ADC @VIRTUAL06
	STA @VIRTUAL06
	STA @LOCAL00
	LDA @VIRTUAL06+2
	STA @LOCAL00+2
	LDX @LOCAL08
	LDA @LOCAL06
	JSL UNKNOWN_C44B3A
	INC @VIRTUAL02
@UNKNOWN4:
	LDA [@VIRTUAL0A]
	AND #$00FF
	BNE @UNKNOWN3
	LDY #0
	STY @LOCAL05
	JMP @UNKNOWN6
@UNKNOWN5:
	TYA
	ASL
	ASL
	ASL
	ASL
	STA @VIRTUAL02
	LDA @VIRTUAL04
	ASL
	ASL
	ASL
	ASL
	ASL
	ASL
	CLC
	ADC @VIRTUAL02
	TAX
	STX @LOCAL04
	PROMOTENEARPTR VWF_BUFFER, @VIRTUAL06
	REP #PROC_FLAGS::ACCUM8
	MOVE_INT @VIRTUAL06, @LOCAL03
	TYA
	ASL
	ASL
	ASL
	ASL
	ASL
	STA @VIRTUAL02
	MOVE_INT @LOCAL07, @VIRTUAL06
	TXA
	CLC
	ADC @VIRTUAL06
	STA @VIRTUAL06
	STA @LOCAL00
	LDA @VIRTUAL06+2
	STA @LOCAL00+2
	LDA @VIRTUAL02
	MOVE_INTX @LOCAL03, @VIRTUAL06
	CLC
	ADC @VIRTUAL06
	STA @VIRTUAL06
	STA @LOCAL01
	LDA @VIRTUAL06+2
	STA @LOCAL01+2
	LDA #16
	JSL MEMCPY24
	MOVE_INT @LOCAL07, @VIRTUAL06
	LDX @LOCAL04
	TXA
	CLC
	ADC #256
	CLC
	ADC @VIRTUAL06
	STA @VIRTUAL06
	STA @LOCAL00
	LDA @VIRTUAL06+2
	STA @LOCAL00+2
	LDA @VIRTUAL02
	CLC
	ADC #16
	MOVE_INTX @LOCAL03, @VIRTUAL06
	CLC
	ADC @VIRTUAL06
	STA @VIRTUAL06
	STA @LOCAL01
	LDA @VIRTUAL06+2
	STA @LOCAL01+2
	LDA #16
	JSL MEMCPY24
	LDY @LOCAL05
	INY
	STY @LOCAL05
@UNKNOWN6:
	CPY #4
	BCCL @UNKNOWN5
	INC @VIRTUAL04
@UNKNOWN8:
	LDA @VIRTUAL04
	CMP #4
	BCCL @UNKNOWN2
	LDY #0
	BRA @UNKNOWN13
@UNKNOWN10:
	LOADPTR BUFFER + $70, @VIRTUAL06
	MOVE_INT @VIRTUAL06, @LOCAL03
	LDX #0
	BRA @UNKNOWN12
@UNKNOWN11:
	LDA [@LOCAL07]
	STA @LOCAL04
	XBA
	AND #$00FF
	EOR #$00FF
	STA @VIRTUAL02
	LDA [@VIRTUAL06]
	AND #$00FF
	STA @VIRTUAL04
	LDA @LOCAL04
	AND #$FF00
	ORA @VIRTUAL04
	ORA @VIRTUAL02
	STA [@LOCAL07]
	MOVE_INT @LOCAL07, @VIRTUAL06
	INC @VIRTUAL06
	INC @VIRTUAL06
	MOVE_INT @VIRTUAL06, @LOCAL07
	MOVE_INT @LOCAL03, @VIRTUAL06
	INC @VIRTUAL06
	INC @VIRTUAL06
	MOVE_INT @VIRTUAL06, @LOCAL03
	INX
@UNKNOWN12:
	CPX #8
	BCC @UNKNOWN11
	INY
@UNKNOWN13:
	CPY #32
	BCC @UNKNOWN10
	LOADPTR BUFFER + $2C00, @LOCAL02
	LOADPTR STATUS_EQUIP_WINDOW_TEXT_2, @LOCAL07
	JMP @UNKNOWN19
@UNKNOWN14:
	CMP #32
	BEQL @UNKNOWN18
	STA @VIRTUAL02
	AND #$FFF0
	CLC
	ADC @VIRTUAL02
	ASL
	ASL
	ASL
	ASL
	STORE_INT1632 @VIRTUAL0A
	CLC
	VAR_ADD_CONST_INT_ASSIGN BUFFER, @VIRTUAL0A
	LOADPTR BUFFER + $70, @VIRTUAL06
	MOVE_INT @VIRTUAL06, @LOCAL03
	LDX #0
	BRA @UNKNOWN17
@UNKNOWN16:
	LDA [@VIRTUAL0A]
	STA @LOCAL04
	XBA
	AND #$00FF
	EOR #$00FF
	STA @VIRTUAL02
	LDA [@VIRTUAL06]
	AND #$00FF
	STA @VIRTUAL04
	LDA @LOCAL04
	AND #$FF00
	ORA @VIRTUAL04
	ORA @VIRTUAL02
	STA [@LOCAL02]
	LDY #256
	LDA [@VIRTUAL0A],Y
	STA @LOCAL04
	XBA
	AND #$00FF
	EOR #$00FF
	STA @VIRTUAL02
	LDA [@VIRTUAL06],Y
	AND #$00FF
	STA @VIRTUAL04
	LDA @LOCAL04
	AND #$FF00
	ORA @VIRTUAL04
	ORA @VIRTUAL02
	STA [@LOCAL02],Y
	MOVE_INT @LOCAL02, @VIRTUAL06
	INC @VIRTUAL06
	INC @VIRTUAL06
	MOVE_INT @VIRTUAL06, @LOCAL02
	INC @VIRTUAL0A
	INC @VIRTUAL0A
	MOVE_INT @LOCAL03, @VIRTUAL06
	INC @VIRTUAL06
	INC @VIRTUAL06
	MOVE_INT @VIRTUAL06, @LOCAL03
	INX
@UNKNOWN17:
	CPX #8
	BCC @UNKNOWN16
@UNKNOWN18:
	MOVE_INT @LOCAL07, @VIRTUAL06
	INC @VIRTUAL06
	INC @VIRTUAL06
	MOVE_INT @VIRTUAL06, @LOCAL07
@UNKNOWN19:
	LDA [@LOCAL07]
	BNEL @UNKNOWN14
	END_C_FUNCTION
