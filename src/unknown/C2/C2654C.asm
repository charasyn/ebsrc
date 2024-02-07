
UNKNOWN_C2654C:
	BEGIN_C_FUNCTION_FAR
	STACK_RESERVE_VARS
	STACK_RESERVE_INT32
	STACK_RESERVE_INT32
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	END_STACK_VARS
	LDA #SFX::RECOVER_HP
	JSL PLAY_SOUND
	LDY #0
	STY @LOCAL05
	BRA @UNKNOWN5
@UNKNOWN0:
	LOADPTR BUFFER, @LOCAL00
	PROMOTENEARPTR PALETTES, @VIRTUAL06
	REP #PROC_FLAGS::ACCUM8
	MOVE_INT @VIRTUAL06, @LOCAL01
	LDA #.LOWORD(PALETTES)
	JSL MEMCPY24
	LDA #0
	STA @LOCAL04
	BRA @UNKNOWN2
@UNKNOWN1:
	ASL
	TAX
	LDA #$5D70 ; RGB (16, 11, 23), a kind of purple
	STA PALETTES,X
	LDA @LOCAL04
	INC
	STA @LOCAL04
@UNKNOWN2:
	CMP #$0100
	BCC @UNKNOWN1
	LDX #$FFFF
	LDA #12
	JSL UNKNOWN_C496E7
	LDX #0
	STX @LOCAL04
	BRA @UNKNOWN4
@UNKNOWN3:
	JSL UPDATE_MAP_PALETTE_ANIMATION
	JSL WAIT_UNTIL_NEXT_FRAME
	LDX @LOCAL04
	INX
	STX @LOCAL04
@UNKNOWN4:
	CPX #12
	BCC @UNKNOWN3
	JSL UNKNOWN_C49740
	LDY @LOCAL05
	INY
	STY @LOCAL05
@UNKNOWN5:
	CPY #2
	BCC @UNKNOWN0
	LDA #0
	STA @VIRTUAL02
	BRA @UNKNOWN9
@UNKNOWN6:
.IF .DEFINED(JPN)
	LDA @VIRTUAL02
	CLC
	ADC #.LOWORD(GAME_STATE)
	TAX
	LDA a:game_state::party_members,X
.ELSE
	LDX @VIRTUAL02
	LDA GAME_STATE + game_state::party_members,X
.ENDIF
	AND #$00FF
	TAX
	CPX #1
	BEQ @UNKNOWN7
	CPX #2
	BEQ @UNKNOWN7
	CPX #4
	BNE @UNKNOWN8
@UNKNOWN7:
	TXA
	DEC
	LDY #.SIZEOF(char_struct)
	JSL MULT168
	STA @LOCAL03
	CLC
	ADC #.LOWORD(PARTY_CHARACTERS) + char_struct::current_pp_target
	TAY
	LDA __BSS_START__,Y
	CLC
	ADC #20
	TAX
	STX @LOCAL02
	TXA
	STA __BSS_START__,Y
	LDA @LOCAL03
	TAX
	LDA PARTY_CHARACTERS+char_struct::max_pp,X
	STA @LOCAL03
	STA @VIRTUAL04
	LDX @LOCAL02
	TXA
	CMP @VIRTUAL04
	BLTEQ @UNKNOWN8
	LDA @LOCAL03
	STA __BSS_START__,Y
@UNKNOWN8:
	INC @VIRTUAL02
@UNKNOWN9:
	LDA @VIRTUAL02
	CMP #6
	BCC @UNKNOWN6
	END_C_FUNCTION