
CLEAR_9622: ;$C3E4CA
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	SEP #PROC_FLAGS::ACCUM8
	STZ .LOWORD(UNKNOWN_7E9622)
	REP #PROC_FLAGS::ACCUM8
.IFDEF JPN
	RTS
.ELSE
	RTL
.ENDIF
