
UNKNOWN_C4655E: ;$C4655E
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	JSL UNKNOWN_C4605A
	CMP #$FFFF
	BEQ @UNKNOWN0
	ASL
	CLC
	ADC #.LOWORD(ENTITY_TICK_CALLBACK_HIGH)
	TAX
	LDA a:.LOWORD(RAM),X
	ORA #OBJECT_TICK_DISABLED | OBJECT_MOVE_DISABLED
	STA a:.LOWORD(RAM),X
@UNKNOWN0:
	RTL
