
UNKNOWN_EFEA23: ;$EFEA23
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	JSL UNKNOWN_C08391
	CMP #$0000
	BEQ @GOOD_SRAM_SIZE
	LDA .LOWORD(UNKNOWN_7EB567)
	BEQ @UNKNOWN0
	JSL UNKNOWN_EFE8C7
	LDA .LOWORD(GAME_STATE)+game_state::leader_x_coord
	STA .LOWORD(UNKNOWN_7EB569)
	LDA .LOWORD(GAME_STATE)+game_state::leader_y_coord
	STA .LOWORD(UNKNOWN_7EB56B)
	BRA @GOOD_SRAM_SIZE
@UNKNOWN0:
	JSL UNKNOWN_EFE771
@GOOD_SRAM_SIZE:
	RTL
