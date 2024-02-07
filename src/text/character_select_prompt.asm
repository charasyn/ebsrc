
CHAR_SELECT_PROMPT:
	BEGIN_C_FUNCTION
	STACK_RESERVE_VARS
	STACK_RESERVE_INT32
	STACK_RESERVE_INT32
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_INT32
	STACK_RESERVE_INT16
	STACK_RESERVE_INT32
	STACK_RESERVE_INT32
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_PARAM_INT16 ;int
	STACK_RESERVE_PARAM_INT16 ;int
	STACK_RESERVE_PARAM_INT32 ;void (*)(int)
	STACK_RESERVE_PARAM_INT32 ;int (*checkValid)(int)
	STACK_RESERVE_RETURN_INT16 ;int
	END_STACK_VARS
	STX @LOCAL0D
	STA @LOCAL0C
	MOVE_INT @PARAM03, @VIRTUAL06
	MOVE_INT @VIRTUAL06, @LOCAL0B
	MOVE_INT @PARAM02, @VIRTUAL0A
	MOVE_INT @VIRTUAL0A, @LOCAL0A
	JSR GET_ACTIVE_WINDOW_ADDRESS
	STA @LOCAL09
	CLC
	ADC #window_stats::argument_memory
	TAY
	MOVE_INT_YPTRSRC __BSS_START__, @VIRTUAL06
	MOVE_INT @VIRTUAL06, @LOCAL08
	LDA @LOCAL0C
	CMP #1
	BNEL @UNKNOWN7
	LDA #.LOWORD(WINDOW_TEXT_ATTRIBUTES_BACKUP)
	JSL UNKNOWN_C20A20
	LDA GAME_STATE+game_state::player_controlled_party_count
	AND #$00FF
	CMP #1
	BNE @UNKNOWN1
	LDX #WINDOW::UNKNOWN33
	BRA @UNKNOWN2
@UNKNOWN1:
	CLC
	ADC #WINDOW::UNKNOWN28
	TAX
	DEX
@UNKNOWN2:
	STX @LOCAL07
	CREATE_WINDOW_NEAR @LOCAL07
	LDA #0
	STA @VIRTUAL02
	BRA @UNKNOWN4
@UNKNOWN3:
	LDA @VIRTUAL02
	CLC
.IF .DEFINED(JPN)
	ADC #.LOWORD(GAME_STATE)
	CLC
	ADC #game_state::party_members
.ELSE
	ADC #.LOWORD(GAME_STATE) + game_state::party_members
.ENDIF
	STA @VIRTUAL04
	STA @LOCAL06
	LDX @VIRTUAL04
	LDA __BSS_START__,X
	AND #$00FF
	JSL GET_PARTY_CHARACTER_NAME
	MOVE_INT @VIRTUAL06, @LOCAL00
	LDX #6
	LDA #.LOWORD(TEMPORARY_TEXT_BUFFER)
	JSL MEMCPY16
	SEP #PROC_FLAGS::ACCUM8
	STZ TEMPORARY_TEXT_BUFFER + .SIZEOF(char_struct::name)
	REP #PROC_FLAGS::ACCUM8
	PROMOTENEARPTR TEMPORARY_TEXT_BUFFER, @VIRTUAL06
	REP #PROC_FLAGS::ACCUM8
	MOVE_INT @VIRTUAL06, @LOCAL00
	MOVE_INT_CONSTANT NULL, @LOCAL01
	LDY #0
	LDA @VIRTUAL02
	STA @VIRTUAL04
	ASL
	ADC @VIRTUAL04
	ASL
	TAX
	STX @LOCAL05
	LDA @LOCAL06
	STA @VIRTUAL04
	LDX @VIRTUAL04
	LDA __BSS_START__,X
	AND #$00FF
	LDX @LOCAL05
	JSR UNKNOWN_C1153B
	INC @VIRTUAL02
@UNKNOWN4:
	LDA GAME_STATE+game_state::player_controlled_party_count
	AND #$00FF
	CLC
	SBC @VIRTUAL02
	JUMPGTS @UNKNOWN3
	JSR PRINT_MENU_ITEMS
.IF .DEFINED(JPN)
	MOVE_INT @VIRTUAL0A, @LOCAL00
.ELSE
	MOVE_INT @VIRTUAL0A, @VIRTUAL06
	MOVE_INT @VIRTUAL06, @LOCAL00
.ENDIF
	JSR UNKNOWN_C11F5A
	LDA @LOCAL0D
	JSR SELECTION_MENU
	TAX
	STX @LOCAL06
	JSR UNKNOWN_C11F8A
	LDA @LOCAL07
	JSR CLOSE_WINDOW
	LDA #.LOWORD(WINDOW_TEXT_ATTRIBUTES_BACKUP)
	JSL UNKNOWN_C20ABC
	JMP @UNKNOWN44
@UNKNOWN7:
	LDA BATTLE_MENU_CURRENT_CHARACTER_ID
	CMP #.LOWORD(-1)
	BEQ @UNKNOWN8
	LDA @LOCAL0C
	CMP #2
	BNE @UNKNOWN9
@UNKNOWN8:
	LDX #0
	BRA @UNKNOWN10
@UNKNOWN9:
	LDX BATTLE_MENU_CURRENT_CHARACTER_ID
@UNKNOWN10:
	STX @VIRTUAL04
	MOVE_INT_CONSTANT NULL, @VIRTUAL06
	CMP32 @VIRTUAL0A, @VIRTUAL06
	BEQ @UNKNOWN12
.IF .DEFINED(JPN)
	LDA @VIRTUAL04
	CLC
	ADC #.LOWORD(GAME_STATE)
	TAX
	LDA a:game_state::party_members,X
.ELSE
	LDX @VIRTUAL04
	LDA GAME_STATE + game_state::party_members,X
.ENDIF
	AND #$00FF
	PHA
	MOVE_INT @VIRTUAL0A, TEMP_FUNCTION_POINTER
	PLA
	JSL UNKNOWN_C09279
@UNKNOWN12:
	STZ PAGINATION_ANIMATION_FRAME
	LDA #10
	STA @VIRTUAL02
	STA @LOCAL07
@UNKNOWN13:
	LDA @LOCAL0C
	BNE @UNKNOWN14
	LDA @VIRTUAL04
	JSR UNKNOWN_C43573
@UNKNOWN14:
	JSR CLEAR_INSTANT_PRINTING
	JSL WINDOW_TICK
	LDA @VIRTUAL04
	STA @LOCAL04
	LDA PAGINATION_WINDOW
	CMP #.LOWORD(-1)
	BEQ @UNKNOWN15
	LDA PAGINATION_WINDOW
	ASL
	TAX
	LDA OPEN_WINDOW_TABLE,X
	CMP #.LOWORD(-1)
	BEQ @UNKNOWN15
	LDY #.SIZEOF(window_stats)
	JSL MULT168
	CLC
	ADC #.LOWORD(WINDOW_STATS)
	STA @LOCAL03
@UNKNOWN15:
	LDA PAGINATION_WINDOW
	CMP #.LOWORD(-1)
	BEQ @UNKNOWN16
	LDA PAGINATION_WINDOW
	ASL
	TAX
	LDA OPEN_WINDOW_TABLE,X
	CMP #.LOWORD(-1)
	BEQ @UNKNOWN16
	LOADPTR UNKNOWN_C3E41C_PTR_TABLE, @VIRTUAL06
	LDA PAGINATION_ANIMATION_FRAME
	ASL
	ASL
	CLC
	ADC @VIRTUAL06
	STA @VIRTUAL06
	DEREFERENCE_PTR_TO @VIRTUAL06, @VIRTUAL06
	MOVE_INT @VIRTUAL06, @LOCAL00
	LDY #window_stats::window_y
	LDA (@LOCAL03),Y
	OPTIMIZED_MULT @VIRTUAL04, 32
	STA @VIRTUAL02
	LDY #window_stats::window_x
	LDA (@LOCAL03),Y
	LDY #window_stats::width
	CLC
	ADC (@LOCAL03),Y
	DEC
	DEC
	DEC
	CLC
	ADC @VIRTUAL02
	CLC
	ADC #VRAM::TEXT_LAYER_TILEMAP
	TAY
	LDX #8
	SEP #PROC_FLAGS::ACCUM8
	LDA #0
	JSL PREPARE_VRAM_COPY
	.A16
@UNKNOWN16:
	LDA #0
	STA @LOCAL06
	JMP @UNKNOWN28
@UNKNOWN17:
	JSL UNKNOWN_C12E42
	LDA PAD_PRESS
	AND #PAD::LEFT
	BEQ @UNKNOWN20
	LDX @LOCAL04
	DEX
	STX @LOCAL04
	LDA @LOCAL0C
	BEQ @UNKNOWN18
	LDY #SFX::CURSOR2
	BRA @UNKNOWN19
@UNKNOWN18:
	LDY #SFX::MENU_OPEN_CLOSE
@UNKNOWN19:
	STY @LOCAL02
	LDA #2
	STA PAGINATION_ANIMATION_FRAME
	JMP @UNKNOWN32
@UNKNOWN20:
	LDA PAD_PRESS
	AND #PAD::RIGHT
	BEQ @UNKNOWN23
	LDX @LOCAL04
	INX
	STX @LOCAL04
	LDA @LOCAL0C
	BEQ @UNKNOWN21
	LDY #SFX::CURSOR2
	BRA @UNKNOWN22
@UNKNOWN21:
	LDY #SFX::MENU_OPEN_CLOSE
@UNKNOWN22:
	STY @LOCAL02
	LDA #3
	STA PAGINATION_ANIMATION_FRAME
	BRA @UNKNOWN32
@UNKNOWN23:
	LDA PAD_PRESS
	AND #PAD::A_BUTTON | PAD::L_BUTTON
	BEQ @UNKNOWN24
	LDX @VIRTUAL04
	LDA GAME_STATE + game_state::party_members,X
	AND #$00FF
	TAX
	STX @LOCAL06
	LDA #SFX::CURSOR1
	JSL PLAY_SOUND
	JMP @UNKNOWN44
@UNKNOWN24:
	LDA PAD_PRESS
	AND #PAD::B_BUTTON | PAD::SELECT_BUTTON
	BEQ @UNKNOWN27
	LDA @LOCAL0D
	CMP #1
	BNE @UNKNOWN27
	LDX #0
	STX @LOCAL06
	LDA @LOCAL0C
	BEQ @UNKNOWN25
	LDY #SFX::CURSOR2
	BRA @UNKNOWN26
@UNKNOWN25:
	LDY #SFX::MENU_OPEN_CLOSE
@UNKNOWN26:
	TYA
	JSL PLAY_SOUND
	JSL UNKNOWN_C3E6F8
	JMP @UNKNOWN44
@UNKNOWN27:
	LDA @LOCAL06
	INC
	STA @LOCAL06
@UNKNOWN28:
	LDX @LOCAL07
	STX @VIRTUAL02
	CMP @VIRTUAL02
	BCCL @UNKNOWN17
	LDA PAGINATION_ANIMATION_FRAME
	BNE @UNKNOWN30
	LDX #1
	BRA @UNKNOWN31
@UNKNOWN30:
	LDX #0
@UNKNOWN31:
	STX PAGINATION_ANIMATION_FRAME
	LDA #10
	STA @VIRTUAL02
	STA @LOCAL07
	JMP @UNKNOWN15
@UNKNOWN32:
	TXA
	SEC
	SBC @VIRTUAL04
	STA @VIRTUAL02
	STA @LOCAL07
@UNKNOWN33:
	LDA GAME_STATE+game_state::player_controlled_party_count
	AND #$00FF
	STA @LOCAL06
	STX @VIRTUAL02
	CLC
	SBC @VIRTUAL02
	BRANCHGTS @UNKNOWN36
	LDX #0
	STX @LOCAL04
	BRA @UNKNOWN39
@UNKNOWN36:
	STX @VIRTUAL02
	LDA #0
	CLC
	SBC @VIRTUAL02
	BRANCHLTEQS @UNKNOWN39
	LDA @LOCAL06
	TAX
	DEX
	STX @LOCAL04
@UNKNOWN39:
	MOVE_INT_CONSTANT NULL, @VIRTUAL0A
	MOVE_INT @LOCAL0B, @VIRTUAL06
	CMP @VIRTUAL0A+2
	BNE @UNKNOWN40
	LDA @VIRTUAL06
	CMP @VIRTUAL0A
@UNKNOWN40:
	BEQ @UNKNOWN41
	LDA GAME_STATE + game_state::party_members,X
	AND #$00FF
	PHA
	MOVE_INT @VIRTUAL06, TEMP_FUNCTION_POINTER
	PLA
	JSL UNKNOWN_C09279
	CMP #0
	BNE @UNKNOWN41
	LDA @LOCAL07
	STA @VIRTUAL02
	LDX @LOCAL04
	TXA
	CLC
	ADC @VIRTUAL02
	TAX
	STX @LOCAL04
	JMP @UNKNOWN33
@UNKNOWN41:
	LDX @LOCAL04
	TXA
	CMP @VIRTUAL04
	BEQ @UNKNOWN43
	LDY @LOCAL02
	TYA
	JSL PLAY_SOUND
	LDX @LOCAL04
	STX @VIRTUAL04
	MOVE_INT_CONSTANT NULL, @VIRTUAL06
	MOVE_INT @LOCAL0A, @VIRTUAL0A
	CMP @VIRTUAL06+2
	BNE @UNKNOWN42
	LDA @VIRTUAL0A
	CMP @VIRTUAL06
@UNKNOWN42:
	BEQ @UNKNOWN43
	LDX @VIRTUAL04
	LDA GAME_STATE + game_state::party_members,X
	AND #$00FF
	PHA
	MOVE_INT @VIRTUAL0A, TEMP_FUNCTION_POINTER
	PLA
	JSL UNKNOWN_C09279
@UNKNOWN43:
	LDA #4
	STA @VIRTUAL02
	STA @LOCAL07
	JMP @UNKNOWN13
@UNKNOWN44:
	LDA #.LOWORD(-1)
	STA PAGINATION_ANIMATION_FRAME
	MOVE_INT @LOCAL08, @VIRTUAL06
	LDA @LOCAL09
	CLC
	ADC #window_stats::argument_memory
	TAY
	MOVE_INT_YPTRDEST @VIRTUAL06, __BSS_START__
	LDX @LOCAL06
	TXA
	END_C_FUNCTION
