
UNKNOWN_EF0C97:
	BEGIN_C_FUNCTION_FAR
	END_STACK_VARS
	LDA CURRENT_ENTITY_SLOT
	ASL
	TAX
	LDA ENTITY_SCRIPT_VAR0_TABLE,X
	ASL
	TAX
	STZ DELIVERY_ATTEMPTS,X
	END_C_FUNCTION
