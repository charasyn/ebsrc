
DEBUG_MENU_LOAD: ;$EFE689
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	LDA #$0080
	STA .LOWORD(DEBUG_START_POSITION_X)
	LDA #$0070
	STA .LOWORD(DEBUG_START_POSITION_Y)
	LDA #$0094
	STA .LOWORD(DEBUG_UNKNOWN_B565)
	LDA #$FFFF
	STA .LOWORD(DAD_PHONE_TIMER)
	JSL UNKNOWN_C0927C
	JSR a:.LOWORD(UNKNOWN_EFDA05)
	JSR a:.LOWORD(DEBUG_DISPLAY_MENU_OPTIONS)
	LDX #$0001
	LDA #$0004
	JSL UNKNOWN_C0886C
@UNKNOWN0:
	JSL OAM_CLEAR
	JSR a:.LOWORD(DEBUG_HANDLE_CURSOR_MOVEMENT)
	JSR a:.LOWORD(DEBUG_PROCESS_COMMAND_SELECTION)
	JSL UNKNOWN_C09466
	JSL UPDATE_SCREEN
	JSL WAIT_UNTIL_NEXT_FRAME
	BRA @UNKNOWN0
