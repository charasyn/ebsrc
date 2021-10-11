
UNKNOWN_EF031E: ;$EF031E
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE_CLOBBER 26
	LDA .LOWORD(CURRENT_ENTITY_SLOT)
	STA $18
	ASL
	TAX
	LDA .LOWORD(ENTITY_SCRIPT_VAR1_TABLE),X
	LDY #.SIZEOF(char_struct)
	JSL MULT168
	CLC
	ADC #.LOWORD(CHAR_STRUCT)
	TAY
	STY .LOWORD(UNKNOWN_7E4DC6)
	LDA a:.LOWORD(RAM)+60,Y
	STA $02
	STA $04
	STA $16
	LDA $02
	OPTIMIZED_MULT $04, 12
	CLC
	ADC #.LOWORD(PLAYER_POSITION_BUFFER)
	STA $14
	LDA .LOWORD(ENTITY_SCRIPT_VAR0_TABLE),X
	STA $12
	LDA ($14)
	STA .LOWORD(ENTITY_ABS_X_TABLE),X
	LDY #$0002
	LDA ($14),Y
	STA .LOWORD(ENTITY_ABS_Y_TABLE),X
	LDY #$0006
	LDA ($14),Y
	BEQ @UNKNOWN0
	LDY .LOWORD(CURRENT_ENTITY_SLOT)
	TAX
	LDA $12
	JSL UNKNOWN_C07A56
	LDA #$0002
	STA $0E
	LDY $02
	LDX #$001E
	LDA $12
	JSL UNKNOWN_C03EC3
	AND #$00FF
	LDX .LOWORD(UNKNOWN_7E4DC6)
	STA a:.LOWORD(RAM)+60,X
	JMP @UNKNOWN14
@UNKNOWN0:
	LDA .LOWORD(UNKNOWN_7E9F33)
	BEQ @UNKNOWN3
	CMP #$0002
	BEQ @UNKNOWN3
	CMP #$0001
	BNE @UNKNOWN1
	JMP @UNKNOWN8
@UNKNOWN1:
	CMP #$0003
	BNE @UNKNOWN2
	JMP @UNKNOWN9
@UNKNOWN2:
	JMP @UNKNOWN11
@UNKNOWN3:
	LDA #$0002
	STA $0E
	LDY $02
	LDX #$000C
	LDA $12
	JSL UNKNOWN_C03EC3
	STA $02
	AND #$00FF
	LDX .LOWORD(UNKNOWN_7E4DC6)
	STA a:.LOWORD(RAM)+60,X
	LDA $16
	STA $04
	CMP $02
	BEQ @UNKNOWN4
	LDA $04
	INC
	CMP $02
	BNE @UNKNOWN6
@UNKNOWN4:
	LDY .LOWORD(CURRENT_ENTITY_SLOT)
	STY $10
	LDY #$0006
	LDA ($14),Y
	TAX
	LDA $12
	LDY $10
	JSL UNKNOWN_C07A56
	LDA .LOWORD(GAME_STATE) + game_state::unknown90
	BNE @UNKNOWN5
	JMP @UNKNOWN11
@UNKNOWN5:
	BRA @UNKNOWN7
@UNKNOWN6:
	LDY .LOWORD(CURRENT_ENTITY_SLOT)
	LDX #$000E
	LDA $12
	JSL UNKNOWN_C07A56
@UNKNOWN7:
	LDA $18
	ASL
	STA $16
	TAX
	LDY #$0008
	LDA ($14),Y
	STA .LOWORD(ENTITY_DIRECTIONS),X
	LDA $16
	CLC
	ADC #.LOWORD(ENTITY_SCRIPT_VAR7_TABLE)
	TAX
	LDA a:.LOWORD(RAM),X
	AND #$1FFF
	STA a:.LOWORD(RAM),X
	BRA @UNKNOWN11
@UNKNOWN8:
	TXA
	CLC
	ADC #.LOWORD(ENTITY_SCRIPT_VAR7_TABLE)
	TAX
	LDA a:.LOWORD(RAM),X
	ORA #$7000
	STA a:.LOWORD(RAM),X
	BRA @UNKNOWN11
@UNKNOWN9:
	TXA
	CLC
	ADC #.LOWORD(ENTITY_SCRIPT_VAR7_TABLE)
	TAX
	LDA a:.LOWORD(RAM),X
	ORA #SPRITE_TABLE_10_FLAGS::UNKNOWN14 | SPRITE_TABLE_10_FLAGS::UNKNOWN13 | SPRITE_TABLE_10_FLAGS::UNKNOWN12
	STA a:.LOWORD(RAM),X
	LDX #.LOWORD(UNKNOWN_7E9F3B)
	LDA a:.LOWORD(RAM),X
	DEC
	STA a:.LOWORD(RAM),X
	BNE @UNKNOWN11
	LDY #.LOWORD(UNKNOWN_7E9F3D)
	LDA a:.LOWORD(RAM),Y
	DEC
	STA a:.LOWORD(RAM),Y
	BNE @UNKNOWN10
	LDA #$000F
	STA .LOWORD(UNKNOWN_7E9F35)
	LDA #$FFFF
	STA a:.LOWORD(RAM),X
@UNKNOWN10:
	JSL RAND
	ASL
	ASL
	AND #$000F
	INC
	INC
	INC
	INC
	STA .LOWORD(UNKNOWN_7E9F3B)
	LDA .LOWORD(UNKNOWN_7E9F39)
	EOR #$0004
	STA $16
	STA .LOWORD(UNKNOWN_7E9F39)
	LDA $18
	ASL
	TAX
	LDA $16
	STA .LOWORD(ENTITY_DIRECTIONS),X
@UNKNOWN11:
	LDA $18
	ASL
	TAX
	LDA #$0004
	STA .LOWORD(ENTITY_SCRIPT_VAR3_TABLE),X
	LDX .LOWORD(UNKNOWN_7E9F35)
	DEX
	STX .LOWORD(UNKNOWN_7E9F35)
	BNE @UNKNOWN13
	LDA $12
	JSR .LOWORD(UNKNOWN_EF02C4)
	LDA .LOWORD(UNKNOWN_7E9F33)
	CMP #$0003
	BNE @UNKNOWN12
	LDA #$0004
	STA .LOWORD(UNKNOWN_7E9F3D)
	LDA #$0006
	STA .LOWORD(UNKNOWN_7E9F39)
	LDA #$000F
	STA .LOWORD(UNKNOWN_7E9F3B)
	LDA #$FFFF
	STA .LOWORD(UNKNOWN_7E9F35)
	BRA @UNKNOWN13
@UNKNOWN12:
	LDA #$003C
	STA .LOWORD(UNKNOWN_7E9F35)
@UNKNOWN13:
	LDA $18
	ASL
	TAX
	LDY #$0004
	LDA ($14),Y
	STA .LOWORD(ENTITY_SURFACE_FLAGS),X
@UNKNOWN14:
	PLD
	RTL
