
UNKNOWN_C22673:
	BEGIN_C_FUNCTION_FAR
	STACK_RESERVE_VARS
	STACK_RESERVE_INT16
	STACK_RESERVE_PARAM_INT16 ;int
	END_STACK_VARS
	STA @LOCAL00
	LDA CHARACTER_FOR_EQUIP_MENU
	AND #$00FF
	DEC
	LDY #.SIZEOF(char_struct)
	JSL MULT168
	TAX
	SEP #PROC_FLAGS::ACCUM8
	LDA PARTY_CHARACTERS+char_struct::equipment+EQUIPMENT_SLOT::WEAPON,X
	STA TEMPORARY_WEAPON
	LDA PARTY_CHARACTERS+char_struct::equipment+EQUIPMENT_SLOT::BODY,X
	STA TEMPORARY_BODY_GEAR
	LDA PARTY_CHARACTERS+char_struct::equipment+EQUIPMENT_SLOT::ARMS,X
	STA TEMPORARY_ARMS_GEAR
	REP #PROC_FLAGS::ACCUM8
	LDA @LOCAL00
	CMP #$FFFF
	BNE @UNKNOWN0
	LDX #0
	BRA @UNKNOWN1
@UNKNOWN0:
	TAX
@UNKNOWN1:
	TXA
	SEP #PROC_FLAGS::ACCUM8
	STA TEMPORARY_OTHER_GEAR
	REP #PROC_FLAGS::ACCUM8
	LDA CHARACTER_FOR_EQUIP_MENU
	AND #$00FF
	JSL UNKNOWN_C1A1D8
	END_C_FUNCTION
