
UNKNOWN_C1F14F:
	BEGIN_C_FUNCTION
	STACK_RESERVE_VARS
	STACK_RESERVE_INT32
	STACK_RESERVE_INT32
	STACK_RESERVE_INT16
	STACK_RESERVE_RETURN_INT16
	END_STACK_VARS
	LDX #0
	TXY
	BRA @UNKNOWN2
@UNKNOWN0:
	LDA SAVE_FILES_PRESENT,X
	AND #$00FF
	BNE @UNKNOWN1
	INY
@UNKNOWN1:
	INX
@UNKNOWN2:
	STX @VIRTUAL02
	LDA #3
	CLC
	SBC @VIRTUAL02
	BRANCHGTS @UNKNOWN0
	CPY #1
	BNEL @UNKNOWN11
	CREATE_WINDOW_NEAR #WINDOW::FILE_SELECT_COPY_MENU_ONE_FILE
	JSR SET_INSTANT_PRINTING
	LOADPTR FILE_SELECT_TEXT_COPY_TO_WHERE, @LOCAL00
	LDA #11
	JSR PRINT_STRING
	LDA #0
	STA @VIRTUAL02
	BRA @UNKNOWN8
@UNKNOWN6:
	LDX @VIRTUAL02
	LDA SAVE_FILES_PRESENT,X
	AND #$00FF
	BNE @UNKNOWN7
	LDA @VIRTUAL02
	SEP #PROC_FLAGS::ACCUM8
	CLC
	ADC #CHAR::ONE
	STA TEMPORARY_TEXT_BUFFER
	LDA #CHAR::COLON
	STA TEMPORARY_TEXT_BUFFER+1
	STZ TEMPORARY_TEXT_BUFFER+2
	REP #PROC_FLAGS::ACCUM8
	PROMOTENEARPTR TEMPORARY_TEXT_BUFFER, @VIRTUAL06
	REP #PROC_FLAGS::ACCUM8
	MOVE_INT @VIRTUAL06, @LOCAL00
	MOVE_INT_CONSTANT NULL, @LOCAL01
	LDY #1
	LDX #0
	LDA @VIRTUAL02
	INC
	JSR UNKNOWN_C1153B
@UNKNOWN7:
	INC @VIRTUAL02
@UNKNOWN8:
	LDA #3
	CLC
	SBC @VIRTUAL02
	BRANCHGTS @UNKNOWN6
	JMP @UNKNOWN16
@UNKNOWN11:
	CREATE_WINDOW_NEAR #WINDOW::FILE_SELECT_COPY_MENU_TWO_FILES
	JSR SET_INSTANT_PRINTING
	LOADPTR FILE_SELECT_TEXT_COPY_TO_WHERE, @LOCAL00
	LDA #11
	JSR PRINT_STRING
	LDA #0
	STA @VIRTUAL02
	LDA #1
	STA @VIRTUAL04
	BRA @UNKNOWN14
@UNKNOWN12:
	LDX @VIRTUAL02
	LDA SAVE_FILES_PRESENT,X
	AND #$00FF
	BNE @UNKNOWN13
	LDA @VIRTUAL02
	SEP #PROC_FLAGS::ACCUM8
	CLC
	ADC #CHAR::ONE
	STA TEMPORARY_TEXT_BUFFER
	LDA #CHAR::COLON
	STA TEMPORARY_TEXT_BUFFER+1
	STZ TEMPORARY_TEXT_BUFFER+2
	LDX @VIRTUAL04
	REP #PROC_FLAGS::ACCUM8
	INC @VIRTUAL04
	PROMOTENEARPTR TEMPORARY_TEXT_BUFFER, @VIRTUAL06
	REP #PROC_FLAGS::ACCUM8
	MOVE_INT @VIRTUAL06, @LOCAL00
	MOVE_INT_CONSTANT NULL, @LOCAL01
	TXY
	LDX #0
	LDA @VIRTUAL02
	INC
	JSR UNKNOWN_C1153B
@UNKNOWN13:
	INC @VIRTUAL02
@UNKNOWN14:
	LDA #3
	CLC
	SBC @VIRTUAL02
	BRANCHGTS @UNKNOWN12
@UNKNOWN16:
	JSR PRINT_MENU_ITEMS
	LDA #1
	JSR SELECTION_MENU
	TAY
	STY @LOCAL02
	BEQ @UNKNOWN17
	LDA CURRENT_SAVE_SLOT
	AND #$00FF
	TAX
	DEX
	TYA
	DEC
	JSL COPY_SAVE
@UNKNOWN17:
	JSR CLOSE_FOCUS_WINDOW
	LDY @LOCAL02
	TYA
	END_C_FUNCTION
