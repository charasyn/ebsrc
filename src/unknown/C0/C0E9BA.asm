
UNKNOWN_C0E9BA: ;$C0E9BA
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE_CLOBBER 24
	LDA #$0001
	STA .LOWORD(UNKNOWN_7EB4B6)
	LDA #MUSIC::TELEPORT_FAIL
	JSL CHANGE_MUSIC
	LDA #PARTY_LEADER_ENTITY_INDEX
	STA $16
	BRA @UNKNOWN1
@UNKNOWN0:
	ASL
	CLC
	ADC #.LOWORD(UNKNOWN_30X2_TABLE_10)
	TAX
	LDA a:.LOWORD(RAM),X
	ORA #SPRITE_TABLE_10_FLAGS::UNKNOWN15
	STA a:.LOWORD(RAM),X
	LDA $16
	INC
	STA $16
@UNKNOWN1:
	CMP #MAX_ENTITIES
	BCC @UNKNOWN0
	LOADPTR UNKNOWN_C0E979, $0E
	LOADPTR UNKNOWN_C0E97C, $12
	LDA #$0017
	JSL UNKNOWN_C42F45
	SEP #PROC_FLAGS::ACCUM8
	LDA #$0001
	STA .LOWORD(GAME_STATE) + game_state::unknown4B
	LDX #$0000
	STX $16
	BRA @UNKNOWN3
@UNKNOWN2:
	JSL OAM_CLEAR
	JSL UNKNOWN_C09466
	JSL UPDATE_SCREEN
	JSL WAIT_UNTIL_NEXT_FRAME
	LDX $16
	INX
	STX $16
@UNKNOWN3:
	CPX #$00B4
	BCC @UNKNOWN2
	SEP #PROC_FLAGS::ACCUM8
	STZ .LOWORD(GAME_STATE) + game_state::unknown4B
	REP #PROC_FLAGS::ACCUM8
	STZ .LOWORD(UNKNOWN_7EB4B6)
	PLD
	RTS
