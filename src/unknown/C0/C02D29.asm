
UNKNOWN_C02D29: ;$C02D29
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE_CLOBBER 16
	LDA #$0001
	STA .LOWORD(ENTITY_SIZES)+46
	LDA #$FFFF
	STA .LOWORD(UNKNOWN_7E9F6B)
	STZ .LOWORD(GAME_STATE)+game_state::unknown88
	STZ .LOWORD(GAME_STATE)+game_state::unknownB0
	STZ .LOWORD(GAME_STATE)+game_state::unknownB2
	STZ .LOWORD(GAME_STATE)+game_state::unknownB4
	SEP #PROC_FLAGS::ACCUM8
	STZ .LOWORD(GAME_STATE)+game_state::party_status
	REP #PROC_FLAGS::ACCUM8
	LDA #$0018
	STA .LOWORD(GAME_STATE)+game_state::current_party_members
	LDA #$0000
	STA $0E
	BRA @UNKNOWN1
@UNKNOWN0:
.IF .DEFINED(JPN)
	CLC
	ADC #.LOWORD(GAME_STATE)
	TAX
	SEP #PROC_FLAGS::ACCUM8
	STZ a:game_state::unknown96,X
	REP #PROC_FLAGS::ACCUM8
	LDA $0E
.ELSE
	TAX
	SEP #PROC_FLAGS::ACCUM8
	STZ .LOWORD(GAME_STATE)+game_state::unknown96,X
	REP #PROC_FLAGS::ACCUM8
.ENDIF
	ASL
	TAX
	STZ .LOWORD(UNKNOWN_7E5D8C),X
	LDA $0E
	INC
	STA $0E
@UNKNOWN1:
	CMP #$0006
	BCC @UNKNOWN0
	SEP #PROC_FLAGS::ACCUM8
	LDA #$0000
	STA .LOWORD(GAME_STATE)+game_state::player_controlled_party_count
	STA .LOWORD(GAME_STATE)+game_state::party_count
	JSL VELOCITY_STORE
	LDA f:NESS_PAJAMA_FLAG
	JSL GET_EVENT_FLAG
	STA .LOWORD(PAJAMA_FLAG)
	PLD
	RTL
