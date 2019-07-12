
UNKNOWN_C1A795: ;$C1A795
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	PHD
	PHA
	TDC
	ADC #$FFE0
	TCD
	PLA
	TAX
	DEC
	STA $1E
@UNKNOWN0:
	LDA #$0004
	JSR a:.LOWORD(UNKNOWN_C193E7)
	LDA #$0006
	JSR a:.LOWORD(SET_WINDOW_FOCUS)
	LDA #$0001
	JSR a:.LOWORD(SELECTION_MENU)
	STA $1C
	JSR a:.LOWORD(UNKNOWN_C19437)
	LDA $1C
	BNE @UNKNOWN1
	JMP a:.LOWORD(@UNKNOWN23)
@UNKNOWN1:
	LDA #WINDOW::EQUIP_MENU_ITEMLIST
	JSR a:.LOWORD(CREATE_WINDOW)
	LOADPTR STATUS_EQUIP_WINDOW_TEXT+561, $06
	LDA $1C
	DEC
	ASL
	ASL
	ASL
	CLC
	ADC $06
	STA $06
	STA $0E
	LDA $08
	STA $10
	JSL STRLEN
	STA $1A
	LDA $06
	STA $0E
	LDA $08
	STA $10
	LDA $1A
	TAX
	LDA #$0007
	JSL READ_NAME
	LDA #$0000
	STA $04
	LDA #$FFFF
	STA $18
	LDA #$0000
	STA $02
	JMP a:.LOWORD(@UNKNOWN10)
@UNKNOWN2:
	LDA $1E
	LDY #.SIZEOF(char_struct)
	JSL MULT168
	CLC
	ADC #.LOWORD(CHAR_STRUCT)+char_struct::items
	CLC
	ADC $02
	TAX
	LDA a:.LOWORD(RAM),X
	AND #$00FF
	TAY
	STY $16
	BNE @UNKNOWN3
	JMP a:.LOWORD(@UNKNOWN9)
@UNKNOWN3:
	TYA
	JSR a:.LOWORD(GET_ITEM_TYPE)
	CMP #$0002
	BEQ @UNKNOWN4
	JMP a:.LOWORD(@UNKNOWN9)
@UNKNOWN4:
	LDY $16
	TYA
	JSL GET_ITEM_SUBTYPE
	CMP $1C
	BEQ @UNKNOWN5
	JMP a:.LOWORD(@UNKNOWN9)
@UNKNOWN5:
	LDA $1E
	INC
	STA $1A
	LDY $16
	TYX
	LDA $1A
	JSL UNKNOWN_C3EE14
	CMP #$0000
	BNE @UNKNOWN6
	JMP a:.LOWORD(@UNKNOWN9)
@UNKNOWN6:
	LDX $02
	INX
	LDA $1A
	JSL UNKNOWN_C3E9A0
	CMP #$0000
	BEQ @UNKNOWN7
	SEP #PROC_FLAGS::ACCUM8
	LDA #$0022
	STA .LOWORD(UNKNOWN_7E9C9F)
	REP #PROC_FLAGS::ACCUM8
	LOADPTR ITEM_CONFIGURATION_TABLE, $06
	LDY $16
	TYA
	LDY #.SIZEOF(item)
	JSL MULT168
	CLC
	ADC $06
	STA $06
	STA $0E
	LDA $08
	STA $10
	LDX #item::type
	LDA #$9CA0
	JSL MEMCPY16
	LDA $04
	STA $18
	BRA @UNKNOWN8
@UNKNOWN7:
	LOADPTR ITEM_CONFIGURATION_TABLE, $06
	LDY $16
	TYA
	LDY #.SIZEOF(item)
	JSL MULT168
	CLC
	ADC $06
	STA $06
	STA $0E
	LDA $08
	STA $10
	LDX #item::type
	LDA #$9C9F
	JSL MEMCPY16
@UNKNOWN8:
	SEP #PROC_FLAGS::ACCUM8
	STZ .LOWORD(UNKNOWN_7E9CB8)
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
	LDA $02
	INC
	JSR a:.LOWORD(UNKNOWN_C115F4)
	TAX
	SEP #PROC_FLAGS::ACCUM8
	LDA #$0073
	STA a:.LOWORD(RAM)+14,X
	REP #PROC_FLAGS::ACCUM8
	INC $04
@UNKNOWN9:
	INC $02
@UNKNOWN10:
	LDA $02
	CMP #$000E
	BCS @UNKNOWN11
	BEQ @UNKNOWN11
	JMP a:.LOWORD(@UNKNOWN2)
@UNKNOWN11:
	LOADPTR STATUS_EQUIP_WINDOW_TEXT+603, $0E
	LDA #$0000
	STA $12
	LDA #$0000
	STA $14
	LDA #$FFFF
	JSR a:.LOWORD(UNKNOWN_C115F4)
	LDY $18
	LDX #$0000
	LDA #$0001
	JSR a:.LOWORD(UNKNOWN_C1181B)
	LDA $1E
	SEP #PROC_FLAGS::ACCUM8
	INC
	STA .LOWORD(UNKNOWN_7E9CD6)
	REP #PROC_FLAGS::ACCUM8
	LDA $1C
	CMP #$0001
	BEQ @UNKNOWN12
	CMP #$0002
	BEQ @UNKNOWN13
	CMP #$0003
	BEQ @UNKNOWN14
	CMP #$0004
	BEQ @UNKNOWN15
	BRA @UNKNOWN16
@UNKNOWN12:
	LOADPTR UNKNOWN_C22562, $0E
	JSR a:.LOWORD(UNKNOWN_C11F5A)
	BRA @UNKNOWN16
@UNKNOWN13:
	LOADPTR UNKNOWN_C225AC, $0E
	JSR a:.LOWORD(UNKNOWN_C11F5A)
	BRA @UNKNOWN16
@UNKNOWN14:
	LOADPTR UNKNOWN_C2260D, $0E
	JSR a:.LOWORD(UNKNOWN_C11F5A)
	BRA @UNKNOWN16
@UNKNOWN15:
	LOADPTR UNKNOWN_C22673, $0E
	JSR a:.LOWORD(UNKNOWN_C11F5A)
@UNKNOWN16:
	LDA #$0001
	STA .LOWORD(UNKNOWN_7E9CD4)
	JSR a:.LOWORD(UNKNOWN_C193E7)
	LDA #$0001
	JSR a:.LOWORD(SELECTION_MENU)
	TAX
	STX $18
	JSR a:.LOWORD(UNKNOWN_C19437)
	JSR a:.LOWORD(UNKNOWN_C11F8A)
	LDX $18
	CPX #$FFFF
	BNE @UNKNOWN21
	LDA $1C
	CMP #$0001
	BEQ @UNKNOWN17
	CMP #$0002
	BEQ @UNKNOWN18
	CMP #$0003
	BEQ @UNKNOWN19
	CMP #$0004
	BEQ @UNKNOWN20
	BRA @UNKNOWN22
@UNKNOWN17:
	LDX #$0000
	LDA $1E
	INC
	JSL CHANGE_EQUIPPED_WEAPON
	BRA @UNKNOWN22
@UNKNOWN18:
	LDX #$0000
	LDA $1E
	INC
	JSL CHANGE_EQUIPPED_BODY
	BRA @UNKNOWN22
@UNKNOWN19:
	LDX #$0000
	LDA $1E
	INC
	JSL CHANGE_EQUIPPED_ARMS
	BRA @UNKNOWN22
@UNKNOWN20:
	LDX #$0000
	LDA $1E
	INC
	JSL CHANGE_EQUIPPED_OTHER
	BRA @UNKNOWN22
@UNKNOWN21:
	CPX #$0000
	BEQ @UNKNOWN22
	LDA $1E
	INC
	JSR a:.LOWORD(EQUIP_ITEM)
@UNKNOWN22:
	LDA #$0007
	JSL CLOSE_WINDOW
	LDA $1E
	INC
	JSL UNKNOWN_C1A778
	JMP a:.LOWORD(@UNKNOWN0)
@UNKNOWN23:
	PLD
	RTS
