
UNKNOWN_C24434:
	BEGIN_C_FUNCTION_FAR
	STACK_RESERVE_VARS
	STACK_RESERVE_INT16
	STACK_RESERVE_PARAM_INT16
	END_STACK_VARS
	TAX
	STX @LOCAL00
	LDA NUM_BATTLERS_IN_FRONT_ROW
	CLC
	ADC NUM_BATTLERS_IN_BACK_ROW
	JSR RAND_LIMIT
	SEP #PROC_FLAGS::ACCUM8
	INC
	LDX @LOCAL00
	STA a:battler::current_target,X
	REP #PROC_FLAGS::ACCUM8
	AND #$00FF
	CMP NUM_BATTLERS_IN_FRONT_ROW
	BLTEQ @UNKNOWN0
	SEC
	SBC NUM_BATTLERS_IN_FRONT_ROW
	TAX
	DEX
	LDA BACK_ROW_BATTLERS,X
	AND #$00FF
	BRA @UNKNOWN1
@UNKNOWN0:
	TAX
	DEX
	LDA FRONT_ROW_BATTLERS,X
	AND #$00FF
@UNKNOWN1:
	END_C_FUNCTION
