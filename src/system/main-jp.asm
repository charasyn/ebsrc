
MAIN_LOOP: ;$C0B7D8
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE_CLOBBER 16
	JSL UNKNOWN_C43317
	LDA #.LOWORD(JMP_BUF1)
	JSL SETJMP
	JSL INIT_INTRO
	JSR a:.LOWORD(FILE_SELECT_INIT)
	JSR a:.LOWORD(UNKNOWN_C0B67F)
	JSL OAM_CLEAR
	JSL UNKNOWN_C09466
	LDX #$0001
	TXA
	JSL UNKNOWN_C0886C
	JSL UPDATE_SCREEN
@LOOP_BEGIN:
	JSL OAM_CLEAR
	JSL UNKNOWN_C09466
	JSL UPDATE_SCREEN
	JSL UNKNOWN_C4A7B0
	JSL WAIT_UNTIL_NEXT_FRAME
	LDA .LOWORD(UNKNOWN_7E5E02)
	SEC
	SBC .LOWORD(UNKNOWN_7E5E04)
	BEQ @UNKNOWN1
	LDA .LOWORD(BATTLE_SWIRL_COUNTDOWN)
	BNE @UNKNOWN1
	LDA .LOWORD(UNKNOWN_7E4DBA)
	BNE @UNKNOWN1
	LDA .LOWORD(BATTLE_DEBUG)
	BNE @UNKNOWN1
	JSL DAD_PHONE
	INC .LOWORD(UNKNOWN_7E5D74)
	JMP @UNKNOWN20
@UNKNOWN1:
	LDA .LOWORD(GAME_STATE) + game_state::unknownB0
	CMP #$0002
	BNE @UNKNOWN2
	JMP @UNKNOWN20
@UNKNOWN2:
	LDX .LOWORD(GAME_STATE)+game_state::walking_style
	CPX #WALKING_STYLE::ESCALATOR
	BNE @UNKNOWN3
	JMP @UNKNOWN20
@UNKNOWN3:
	LDA .LOWORD(BATTLE_SWIRL_COUNTDOWN)
	BEQ @UNKNOWN4
	JMP @UNKNOWN20
@UNKNOWN4:
	LDA .LOWORD(BATTLE_DEBUG)
	BEQ @UNKNOWN5
	JSL INIT_BATTLE_OVERWORLD
	INC .LOWORD(UNKNOWN_7E5D74)
	BRA @UNKNOWN6
@UNKNOWN5:
	LDA a:.LOWORD(PAD_1_PRESS)
	AND #PAD::A_BUTTON | PAD::L_BUTTON
	BEQ @UNKNOWN6
	CPX #$0003
	BNE @UNKNOWN6
	JSL UNKNOWN_C0943C
	JSL GET_OFF_BICYCLE
	JSL UNKNOWN_C09451
	JMP @LOOP_BEGIN
@UNKNOWN6:
	LDA .LOWORD(DEBUG)
	BEQ @NO_DEBUG
	LDA a:.LOWORD(PAD_1_STATE)
	AND #PAD::B_BUTTON | PAD::SELECT_BUTTON
	BEQ @DEBUG_PAD2_B_HELD
	LDA a:.LOWORD(PAD_1_PRESS)
	AND #PAD::R_BUTTON
	BEQ @DEBUG_PAD2_B_HELD
	JSL DEBUG_Y_BUTTON_MENU
	JMP @LOOP_BEGIN
@DEBUG_PAD2_B_HELD:
	LDA a:.LOWORD(PAD_2_PRESS)
	AND #PAD::A_BUTTON
	BEQ @DEBUG_PAD2_A_HELD
	JSL UNKNOWN_C490EE
@DEBUG_PAD2_A_HELD:
	LDA a:.LOWORD(PAD_2_PRESS)
	AND #PAD::B_BUTTON
	BEQ @NO_DEBUG
	JSL NULL_C4E366
@NO_DEBUG:
	LDA .LOWORD(BATTLE_SWIRL_COUNTDOWN)
	BEQ @UNKNOWN10
	JMP @LOOP_BEGIN
@UNKNOWN10:
	LDA .LOWORD(UNKNOWN_7E4DBA)
	BEQ @UNKNOWN11
	JMP @LOOP_BEGIN
@UNKNOWN11:
	LDA .LOWORD(UNKNOWN_7E5D74)
	BNE @UNKNOWN15
	LDA .LOWORD(UNKNOWN_7E5D9A)
	BNE @UNKNOWN16
	LDA a:.LOWORD(PAD_1_PRESS)
	AND #PAD::A_BUTTON
	BEQ @NO_OPEN_MENU
	JSL OPEN_MENU_BUTTON
	BRA @UNKNOWN16
@NO_OPEN_MENU:
	LDA a:.LOWORD(PAD_1_PRESS)
	AND #PAD::B_BUTTON | PAD::SELECT_BUTTON
	BEQ @NO_OPEN_HPPP_DISPLAY
	LDA .LOWORD(GAME_STATE)+game_state::walking_style
	CMP #WALKING_STYLE::BICYCLE
	BEQ @NO_OPEN_HPPP_DISPLAY
	JSL OPEN_HPPP_DISPLAY
	BRA @UNKNOWN16
@NO_OPEN_HPPP_DISPLAY:
	LDA a:.LOWORD(PAD_1_PRESS)
	AND #PAD::X_BUTTON
	BEQ @NO_OPEN_TOWN_MAP
	JSL SHOW_TOWN_MAP
	BRA @UNKNOWN16
@NO_OPEN_TOWN_MAP:
	LDA a:.LOWORD(PAD_1_PRESS)
	AND #PAD::L_BUTTON
	BEQ @UNKNOWN16
	JSL OPEN_MENU_BUTTON_CHECKTALK
	BRA @UNKNOWN16
@UNKNOWN15:
	DEC .LOWORD(UNKNOWN_7E5D74)
@UNKNOWN16:
	LDA .LOWORD(TELEPORT_DESTINATION)
	BEQ @UNKNOWN17
	JSL UNKNOWN_C0EA99
@UNKNOWN17:
	LDA .LOWORD(DEBUG)
	BEQ @UNKNOWN20
	LDA a:.LOWORD(PAD_2_PRESS)
	AND #PAD::B_BUTTON
	BEQ @UNKNOWN20
	LDA #$0000
	STA $0E
	BRA @UNKNOWN19
@UNKNOWN18:
	LDY #.SIZEOF(char_struct)
	JSL MULT168
	TAX
	LDA .LOWORD(CHAR_STRUCT)+char_struct::max_hp,X
	STA .LOWORD(CHAR_STRUCT)+char_struct::current_hp_target,X
	LDA .LOWORD(CHAR_STRUCT)+char_struct::max_pp,X
	STA .LOWORD(CHAR_STRUCT)+char_struct::current_pp_target,X
	LDA $0E
	INC
	STA $0E
@UNKNOWN19:
	CMP #TOTAL_PARTY_COUNT
	BCC @UNKNOWN18
@UNKNOWN20:
	JSL UNKNOWN_C04FFE
	CMP #$0000
	BNE @UNKNOWN21
	JSL SPAWN
	CMP #$0000
	BEQ @UNKNOWN21
	LDX #$0000
	LDA #.LOWORD(JMP_BUF1)
	JSL LONGJMP
@UNKNOWN21:
	LDA .LOWORD(DEBUG)
	BNE @DEBUG_CHECKRESET
	JMP @LOOP_BEGIN
@DEBUG_CHECKRESET:
	LDA a:.LOWORD(PAD_1_STATE)
	AND #PAD::START_BUTTON
	BNE @R_HELD
	JMP @LOOP_BEGIN
@R_HELD:
	LDA a:.LOWORD(PAD_1_STATE)
	AND #PAD::SELECT_BUTTON
	BNE @L_HELD
	JMP @LOOP_BEGIN
@L_HELD:
	PLD
	RTL
