
UNKNOWN_C44E44: ;$C44E44
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	STZ .LOWORD(UNKNOWN_7E9652) + 2
	STZ .LOWORD(UNKNOWN_7E9652)
	RTL
