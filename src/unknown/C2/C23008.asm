
UNKNOWN_C23008: ;$C23008
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE_CLOBBER 16
	LDX #.LOWORD(GAME_STATE) + game_state::party_npc_1
	STX $0E
	SEP #PROC_FLAGS::ACCUM8
	LDA a:.LOWORD(RAM),X
	STA .LOWORD(GAME_STATE)+game_state::party_status
	REP #PROC_FLAGS::ACCUM8
	LDA .LOWORD(GAME_STATE)+game_state::party_npc_1_hp
	STA .LOWORD(GAME_STATE) + game_state::unknown4E
	LDY #.LOWORD(GAME_STATE) + game_state::party_npc_2
	SEP #PROC_FLAGS::ACCUM8
	LDA a:.LOWORD(RAM),Y
	STA .LOWORD(GAME_STATE) + game_state::unknown4D
	REP #PROC_FLAGS::ACCUM8
	LDA .LOWORD(GAME_STATE)+game_state::party_npc_2_hp
	STA .LOWORD(GAME_STATE) + game_state::unknown50
	LDA a:.LOWORD(RAM),Y
	AND #$00FF
	JSL REMOVE_CHAR_FROM_PARTY
	LDX $0E
	LDA a:.LOWORD(RAM),X
	AND #$00FF
	JSL REMOVE_CHAR_FROM_PARTY
	LDY #.LOWORD(GAME_STATE) + game_state::money_carried
	MOVE_INT_YPTRSRC a:.LOWORD(RAM), $06
	MOVE_INT $06, .LOWORD(GAME_STATE)+game_state::wallet_backup
	MOVE_INT_CONSTANT NULL, $06
	MOVE_INT_YPTRDEST $06, a:.LOWORD(RAM)
	PLD
	RTL
