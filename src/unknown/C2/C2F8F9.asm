
UNKNOWN_C2F8F9: ;$C2F8F9
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	LDA #$007E
	JSL UNKNOWN_C088A5
	JSL OAM_CLEAR
	LDA #$0000
	JSR a:.LOWORD(UNKNOWN_C2F724)
	LDA #$0001
	JSR a:.LOWORD(UNKNOWN_C2F724)
	JSL UPDATE_SCREEN
	RTL
