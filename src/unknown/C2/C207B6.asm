
UNKNOWN_C207B6:
	BEGIN_C_FUNCTION_FAR
	STACK_RESERVE_VARS
	STACK_RESERVE_INT16
	STACK_RESERVE_PARAM_INT16
	END_STACK_VARS
	STA @LOCAL00
	SEP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8
	TAY
	REP #PROC_FLAGS::ACCUM8
	LDA #1
	JSL ASL16_ENTRY2
	ORA CURRENTLY_DRAWN_HPPP_WINDOWS
	STA CURRENTLY_DRAWN_HPPP_WINDOWS
	LDA @LOCAL00
	JSR DRAW_HP_PP_WINDOW
	LDA #1
	STA HPPP_METER_AREA_NEEDS_UPDATE
	END_C_FUNCTION
