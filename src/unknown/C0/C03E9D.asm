
UNKNOWN_C03E9D:
	BEGIN_C_FUNCTION_FAR
	STACK_RESERVE_VARS
	STACK_RESERVE_INT16
	STACK_RESERVE_PARAM_INT16
	STACK_RESERVE_RETURN_INT16
	END_STACK_VARS
	JSR UNKNOWN_C03E5A
	STA @LOCAL00
	LDX CURRENT_PARTY_MEMBER_TICK
	LDA a:char_struct::position_index,X
	STA @VIRTUAL02
	LDA @LOCAL00
	CMP @VIRTUAL02
	BCS @UNKNOWN0
	CLC
	ADC #256
@UNKNOWN0:
	SEC
	SBC @VIRTUAL02
	END_C_FUNCTION
