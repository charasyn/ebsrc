
UNKNOWN_C0D19B: ;$C0D19B
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE_CLOBBER 34
	LDA $4DB6
	STA $20
	STZ .LOWORD(UNKNOWN_7E4DBA)
	LDA $20
	ASL
	STA $1E
	CLC
	ADC #.LOWORD(UNKNOWN_7E1A86)
	STA $02
	LDX $02
	LDA a:.LOWORD(RAM),X
	CMP #$0008
	BNE @UNKNOWN0
	LDY #$0000
	LDX #$0001
	BRA @UNKNOWN6
@UNKNOWN0:
	LDA $4DB8
	ASL
	TAX
	LDA .LOWORD(ENTITY_ABS_Y_TABLE),X
	STA $0E
	LDY .LOWORD(ENTITY_ABS_X_TABLE),X
	LDA $1E
	TAX
	LDA .LOWORD(ENTITY_ABS_Y_TABLE),X
	TAX
	STX $1C
	LDA $1E
	TAX
	LDA .LOWORD(ENTITY_ABS_X_TABLE),X
	LDX $1C
	JSL UNKNOWN_C41EFF
	LDY #$2000
	CLC
	ADC #$1000
	JSL DIVISION16S_DIVISOR_POSITIVE
	STA $04
	LDX $02
	LDA a:.LOWORD(RAM),X
	SEC
	SBC $04
	AND #$0007
	BEQ @UNKNOWN1
	CMP #$0001
	BEQ @UNKNOWN1
	CMP #$0007
	BNE @UNKNOWN2
@UNKNOWN1:
	LDY #$0001
	BRA @UNKNOWN3
@UNKNOWN2:
	LDY #$0000
@UNKNOWN3:
	LDA .LOWORD(GAME_STATE)+game_state::leader_direction
	SEC
	SBC $04
	AND #$0007
	BEQ @UNKNOWN4
	CMP #$0001
	BEQ @UNKNOWN4
	CMP #$0007
	BNE @UNKNOWN5
@UNKNOWN4:
	LDX #$0000
	BRA @UNKNOWN6
@UNKNOWN5:
	LDX #$0001
@UNKNOWN6:
	STZ .LOWORD(BATTLE_INITIATIVE)
	CPX #$0001
	BNE @UNKNOWN7
	CPY #$0000
	BNE @UNKNOWN7
	LDA #INITIATIVE::PARTY_FIRST
	STA .LOWORD(BATTLE_INITIATIVE)
@UNKNOWN7:
	CPY #$0001
	BNE @UNKNOWN8
	CPX #$0000
	BNE @UNKNOWN8
	LDA #INITIATIVE::ENEMIES_FIRST
	STA .LOWORD(BATTLE_INITIATIVE)
@UNKNOWN8:
	LDA #$0078
	STA .LOWORD(BATTLE_SWIRL_COUNTDOWN)
	LDA $20
	ASL
	TAX
	LDA .LOWORD(ENTITY_TPT_ENTRIES),X
	AND #$7FFF
	STA $1A
	STA .LOWORD(CURRENT_BATTLE_GROUP)
	LOADPTR BTL_ENTRY_PTR_TABLE, $0A
	LDA $1A
	ASL
	ASL
	ASL
	CLC
	ADC $0A
	STA $0A
	DEREFERENCE_PTR_TO $0A, $06
	JSL UNKNOWN_C2E8E0
	LDA #$0000
	STA $04
	JMP a:.LOWORD(@UNKNOWN17)
@UNKNOWN9:
	MOVE_INT $06, $0A
	LDA [$0A]
	AND #$00FF
	STA $02
	CMP #$00FF
	BEQ @UNKNOWN15
	LDY #$0000
	LDA $02
	STA $1A
	BEQ @UNKNOWN14
	LDY #$0001
	LDA [$06],Y
	TAY
	LDA $20
	ASL
	TAX
	TYA
	CMP .LOWORD(UNKNOWN_30X2_TABLE_42),X
	BNE @UNKNOWN10
	LDA #$FFFF
	STA .LOWORD(UNKNOWN_30X2_TABLE_41),X
	LDA $1A
	DEC
	STA $1A
@UNKNOWN10:
	LDA $1A
	BEQ @UNKNOWN14
	LDA #$0000
	STA $18
	BRA @UNKNOWN13
@UNKNOWN11:
	ASL
	TAX
	LDA .LOWORD(ENTITY_SCRIPT_TABLE),X
	CMP #$FFFF
	BEQ @UNKNOWN12
	TYA
	CMP .LOWORD(UNKNOWN_30X2_TABLE_42),X
	BNE @UNKNOWN12
	LDA #$FFFF
	STA .LOWORD(UNKNOWN_30X2_TABLE_41),X
@UNKNOWN12:
	LDA $18
	INC
	STA $18
@UNKNOWN13:
	CMP #$0017
	BNE @UNKNOWN11
@UNKNOWN14:
	LDA #$0003
	CLC
	ADC $06
	STA $06
	BRA @UNKNOWN16
@UNKNOWN15:
	LDY #$0000
	TYA
	STA $02
@UNKNOWN16:
	LDA $04
	ASL
	TAX
	TYA
	STA $4A7C,X
	LDA $02
	STA $4A84,X
	INC $04
@UNKNOWN17:
	LDA $04
	CMP #$0004
	BEQ @UNKNOWN18
	JMP a:.LOWORD(@UNKNOWN9)
@UNKNOWN18:
	STZ .LOWORD(ENEMIES_IN_BATTLE)
	LDY #$0040
	TYX
	LDA .LOWORD(GAME_STATE)+game_state::party_count
	AND #$00FF
	JSL UNKNOWN_C0BC74
	LDA #$F200
	STA $16
	LOADPTR BTL_ENTRY_PTR_TABLE, $0A
	LDA .LOWORD(CURRENT_BATTLE_GROUP)
	ASL
	ASL
	ASL
	CLC
	ADC $0A
	STA $0A
	DEREFERENCE_PTR_TO $0A, $06
	STZ $1E
	JMP a:.LOWORD(@UNKNOWN35)
@UNKNOWN19:
	MOVE_INT $06, $0A
	LDA [$0A]
	AND #$00FF
	TAX
	STX $14
	CPX #$00FF
	BNE @UNKNOWN20
	JMP a:.LOWORD(@UNKNOWN34)
@UNKNOWN20:
	CPX #$0000
	BNE @UNKNOWN21
	JMP a:.LOWORD(@UNKNOWN33)
@UNKNOWN21:
	LDY #$0001
	LDA [$06],Y
	STA $1A
	CPX #$0000
	BNE @UNKNOWN22
	JMP a:.LOWORD(@UNKNOWN33)
@UNKNOWN22:
	LDA #$0000
	STA $18
	TAY
	STY $12
	BRA @UNKNOWN25
@UNKNOWN23:
	LDY $12
	TYA
	STA $04
	ASL
	ASL
	ASL
	ADC $04
	ASL
	CLC
	ADC $16
	TAX
	LDA a:.LOWORD(RAM)+176,X
	ASL
	TAX
	LDA .LOWORD(UNKNOWN_30X2_TABLE_42),X
	CMP $1A
	BNE @UNKNOWN24
	LDA $18
	INC
	STA $18
@UNKNOWN24:
	INY
	STY $12
@UNKNOWN25:
	TYA
	LDY #$009E
	CMP ($16),Y
	BCC @UNKNOWN23
	LDX $14
	STX $02
	LDA $18
	CMP $02
	BEQ @UNKNOWN26
	BCS @UNKNOWN27
@UNKNOWN26:
	JMP a:.LOWORD(@UNKNOWN33)
@UNKNOWN27:
	STX $02
	SEC
	SBC $02
	STA $04
	STA $12
	JMP a:.LOWORD(@UNKNOWN32)
@UNKNOWN28:
	LDA #$FFFF
	STA $02
	STA $10
	LDY #$0000
	STY $1C
	TYA
	STA $18
	BRA @UNKNOWN31
@UNKNOWN29:
	STA $04
	ASL
	ASL
	ASL
	ADC $04
	ASL
	CLC
	ADC $16
	TAX
	STX $14
	LDA a:.LOWORD(RAM)+176,X
	ASL
	TAX
	LDA .LOWORD(UNKNOWN_30X2_TABLE_42),X
	CMP $1A
	BNE @UNKNOWN30
	LDX $14
	LDA a:.LOWORD(RAM)+174,X
	TAX
	LDY $1C
	STY $02
	TXA
	CMP $02
	BCC @UNKNOWN30
	BEQ @UNKNOWN30
	LDA $18
	STA $02
	STA $10
	TXY
	STY $1C
@UNKNOWN30:
	LDA $18
	INC
	STA $18
@UNKNOWN31:
	LDY #$009E
	CMP ($16),Y
	BCC @UNKNOWN29
	LDA $10
	STA $02
	STA $04
	ASL
	ASL
	ASL
	ADC $04
	ASL
	CLC
	ADC $16
	STA $18
	CLC
	ADC #$00B0
	TAX
	STX $14
	LDA a:.LOWORD(RAM),X
	CMP $20
	BEQ @UNKNOWN32
	LDA $18
	TAX
	STZ a:.LOWORD(RAM)+174,X
	LDX $14
	LDA a:.LOWORD(RAM),X
	ASL
	TAX
	STZ .LOWORD(UNKNOWN_30X2_TABLE_41),X
@UNKNOWN32:
	LDA $12
	STA $04
	LDX $04
	LDA $04
	DEC
	STA $04
	STA $12
	CPX #$0000
	BEQ @UNKNOWN33
	JMP a:.LOWORD(@UNKNOWN28)
@UNKNOWN33:
	LDA #$0003
	CLC
	ADC $06
	STA $06
@UNKNOWN34:
	INC $1E
@UNKNOWN35:
	LDA $1E
	CMP #$0004
	BEQ @UNKNOWN36
	JMP a:.LOWORD(@UNKNOWN19)
@UNKNOWN36:
	LDA #$0000
	STA $18
	BRA @UNKNOWN40
@UNKNOWN37:
	CMP $20
	BEQ @UNKNOWN39
	ASL
	TAX
	LDA .LOWORD(UNKNOWN_30X2_TABLE_41),X
	CMP #$FFFF
	BNE @UNKNOWN38
	TXA
	CLC
	ADC #.LOWORD(ENTITY_TICK_CALLBACK_HIGH)
	TAX
	LDA a:.LOWORD(RAM),X
	AND #$FFFF ^ (OBJECT_TICK_DISABLED | OBJECT_MOVE_DISABLED)
	STA a:.LOWORD(RAM),X
	BRA @UNKNOWN39
@UNKNOWN38:
	TXA
	CLC
	ADC #.LOWORD(UNKNOWN_30X2_TABLE_16)
	TAX
	LDA a:.LOWORD(RAM),X
	ORA #$8000
	STA a:.LOWORD(RAM),X
@UNKNOWN39:
	LDA $18
	INC
	STA $18
@UNKNOWN40:
	CMP #$0017
	BNE @UNKNOWN37
	LDA $20
	ASL
	TAX
	STZ .LOWORD(UNKNOWN_30X2_TABLE_41),X
	LDA .LOWORD(ENEMIES_IN_BATTLE)
	ASL
	PHA
	LDA .LOWORD(UNKNOWN_30X2_TABLE_42),X
	PLX
	STA .LOWORD(UNKNOWN_7E9F8C),X
	INC .LOWORD(ENEMIES_IN_BATTLE)
	PLD
	RTL
