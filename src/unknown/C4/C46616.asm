
UNKNOWN_C46616: ;$C46616
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	JSL UNKNOWN_C46028
	CMP #$FFFF
	BEQ @UNKNOWN0
	ASL
	CLC
	ADC #.LOWORD(ENTITY_TICK_CALLBACK_HIGH)
	TAX
	LDA a:.LOWORD(RAM),X
	AND #$FFFF ^ (OBJECT_TICK_DISABLED | OBJECT_MOVE_DISABLED)
	STA a:.LOWORD(RAM),X
@UNKNOWN0:
	RTL
