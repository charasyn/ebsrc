
DEBUG_HANDLE_CURSOR_MOVEMENT: ;$EFE578
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE_CLOBBER 16
	LDA a:.LOWORD(PAD_1_HELD)
	STA $0E
	AND #PAD::UP
	BEQ @UNKNOWN1
	LDA .LOWORD(DEBUG_MENU_CURSOR_POSITION)
	BEQ @UNKNOWN0
	DEC .LOWORD(DEBUG_MENU_CURSOR_POSITION)
	BRA @UNKNOWN1
@UNKNOWN0:
	LDA #$0006
	STA .LOWORD(DEBUG_MENU_CURSOR_POSITION)
@UNKNOWN1:
	LDA $0E
	AND #PAD::DOWN
	BEQ @UNKNOWN3
	LDA .LOWORD(DEBUG_MENU_CURSOR_POSITION)
	CMP #$0006
	BEQ @UNKNOWN2
	INC .LOWORD(DEBUG_MENU_CURSOR_POSITION)
	BRA @UNKNOWN3
@UNKNOWN2:
	STZ .LOWORD(DEBUG_MENU_CURSOR_POSITION)
@UNKNOWN3:
	LDA .LOWORD(UNKNOWN_7EB553)
	ASL
	TAX
	LDA .LOWORD(DEBUG_MENU_CURSOR_POSITION)
	STA $04
	ASL
	ADC $04
	ASL
	ASL
	ASL
	CLC
	ADC #$0034
	STA .LOWORD(ENTITY_ABS_Y_TABLE),X
	LDA a:.LOWORD(PAD_1_PRESS)
	AND #PAD::B_BUTTON | PAD::START_BUTTON | PAD::A_BUTTON | PAD::L_BUTTON
	STA .LOWORD(UNKNOWN_7EB557)
	PLD
	RTS
