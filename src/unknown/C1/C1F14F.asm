
UNKNOWN_C1F14F: ;$C1F14F
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	PHD
	TDC
	ADC #$FFE8
	TCD
	LDX #$0000
	TXY
	BRA @UNKNOWN2
@UNKNOWN0:
	LDA .LOWORD(UNKNOWN_7EB49E),X
	AND #$00FF
	BNE @UNKNOWN1
	INY
@UNKNOWN1:
	INX
@UNKNOWN2:
	STX $02
	LDA #$0003
	CLC
	SBC $02
	BVS @UNKNOWN3
	BPL @UNKNOWN0
	BRA @UNKNOWN4
@UNKNOWN3:
	BMI @UNKNOWN0
@UNKNOWN4:
	CPY #$0001
	BEQ @UNKNOWN5
	JMP a:.LOWORD(@UNKNOWN11)
@UNKNOWN5:
	LDA #WINDOW::FILE_SELECT_COPY_MENU_ONE_FILE
	JSR a:.LOWORD(CREATE_WINDOW)
	JSL SET_9622_ONE
	LOADPTR FILE_SELECT_TEXT_COPY_TO_WHERE, $0E
	LDA #$000E
	JSR a:.LOWORD(DISPLAY_CONFIG_MENU_TITLE)
	LDA #$0000
	STA $02
	BRA @UNKNOWN8
@UNKNOWN6:
	LDX $02
	LDA .LOWORD(UNKNOWN_7EB49E),X
	AND #$00FF
	BNE @UNKNOWN7
	LDA $02
	SEP #PROC_FLAGS::ACCUM8
	CLC
	ADC #$0061
	STA .LOWORD(UNKNOWN_7E9C9F)
	LDA #$006A
	STA .LOWORD(UNKNOWN_7E9CA0)
	STZ .LOWORD(UNKNOWN_7E9CA1)
	REP #PROC_FLAGS::ACCUM8
	LDA #$9C9F
	STA $06
	PHB
	SEP #PROC_FLAGS::ACCUM8
	PLA
	STA $08
	STZ $09
	REP #PROC_FLAGS::ACCUM8
	LDA $06
	STA $0E
	LDA $08
	STA $10
	LDA #$0000
	STA $12
	LDA #$0000
	STA $14
	LDY #$0001
	LDX #$0000
	LDA $02
	INC
	JSR a:.LOWORD(UNKNOWN_C1153B)
@UNKNOWN7:
	INC $02
@UNKNOWN8:
	LDA #$0003
	CLC
	SBC $02
	BVS @UNKNOWN9
	BPL @UNKNOWN6
	BRA @UNKNOWN10
@UNKNOWN9:
	BMI @UNKNOWN6
@UNKNOWN10:
	JMP a:.LOWORD(@UNKNOWN16)
@UNKNOWN11:
	LDA #WINDOW::FILE_SELECT_COPY_MENU_TWO_FILES
	JSR a:.LOWORD(CREATE_WINDOW)
	JSL SET_9622_ONE
	LOADPTR FILE_SELECT_TEXT_COPY_TO_WHERE, $0E
	LDA #$000E
	JSR a:.LOWORD(DISPLAY_CONFIG_MENU_TITLE)
	LDA #$0000
	STA $02
	LDA #$0001
	STA $04
	BRA @UNKNOWN14
@UNKNOWN12:
	LDX $02
	LDA .LOWORD(UNKNOWN_7EB49E),X
	AND #$00FF
	BNE @UNKNOWN13
	LDA $02
	SEP #PROC_FLAGS::ACCUM8
	CLC
	ADC #$0061
	STA .LOWORD(UNKNOWN_7E9C9F)
	LDA #$006A
	STA .LOWORD(UNKNOWN_7E9CA0)
	STZ .LOWORD(UNKNOWN_7E9CA1)
	LDX $04
	REP #PROC_FLAGS::ACCUM8
	INC $04
	LDA #$9C9F
	STA $06
	PHB
	SEP #PROC_FLAGS::ACCUM8
	PLA
	STA $08
	STZ $09
	REP #PROC_FLAGS::ACCUM8
	LDA $06
	STA $0E
	LDA $08
	STA $10
	LDA #$0000
	STA $12
	LDA #$0000
	STA $14
	TXY
	LDX #$0000
	LDA $02
	INC
	JSR a:.LOWORD(UNKNOWN_C1153B)
@UNKNOWN13:
	INC $02
@UNKNOWN14:
	LDA #$0003
	CLC
	SBC $02
	BVS @UNKNOWN15
	BPL @UNKNOWN12
	BRA @UNKNOWN16
@UNKNOWN15:
	BMI @UNKNOWN12
@UNKNOWN16:
	JSR a:.LOWORD(PRINT_MENU_ITEMS)
	LDA #$0001
	JSR a:.LOWORD(SELECTION_MENU)
	TAY
	STY $16
	BEQ @UNKNOWN17
	LDA .LOWORD(CURRENT_SAVE_SLOT)
	AND #$00FF
	TAX
	DEX
	TYA
	DEC
	JSL COPY_SAVE
@UNKNOWN17:
	STZ .LOWORD(UNKNOWN_7E5E6E)
	JSR a:.LOWORD(CLOSE_FOCUS_WINDOW)
	LDY $16
	TYA
	PLD
	RTS
