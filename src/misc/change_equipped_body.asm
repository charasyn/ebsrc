
CHANGE_EQUIPPED_BODY:
	BEGIN_C_FUNCTION_FAR
	STACK_RESERVE_VARS
	STACK_RESERVE_INT16
	STACK_RESERVE_PARAM_INT16
	STACK_RESERVE_PARAM_INT16
	STACK_RESERVE_RETURN_INT16
	END_STACK_VARS
	STX @VIRTUAL02
	TAY
	STY @LOCAL00
	TYA
	DEC
	LDY #.SIZEOF(char_struct)
	JSL MULT168
	CLC
	ADC #.LOWORD(PARTY_CHARACTERS) + char_struct::equipment + EQUIPMENT_SLOT::BODY
	TAX
	LDA __BSS_START__,X
	AND #$00FF
	STA @VIRTUAL04
	LDA @VIRTUAL02
	SEP #PROC_FLAGS::ACCUM8
	STA __BSS_START__,X
	LDY @LOCAL00
	REP #PROC_FLAGS::ACCUM8
	TYA
	JSL RECALC_CHARACTER_POSTMATH_DEFENSE
	LDY @LOCAL00
	REP #PROC_FLAGS::ACCUM8
	TYA
	JSL RECALC_CHARACTER_POSTMATH_SPEED
	LDY @LOCAL00
	REP #PROC_FLAGS::ACCUM8
	TYA
	JSL CALC_RESISTANCES
	LDA @VIRTUAL04
	END_C_FUNCTION
