
UNKNOWN_C2E9ED:
	BEGIN_C_FUNCTION_FAR
	END_STACK_VARS
	SEP #PROC_FLAGS::ACCUM8
	STZ FRAMES_UNTIL_NEXT_SWIRL_UPDATE
	REP #PROC_FLAGS::ACCUM8
	LDA SWIRL_HDMA_CHANNEL_OFFSET
	AND #$00FF
	INC
	INC
	INC
	JSL UNKNOWN_C0AE34
	LDY #0
	TYX
	TYA
	JSL SET_COLDATA
	LDX #0
	TXA
	JSL SET_WINDOW_MASK
	END_C_FUNCTION
