
UNKNOWN_C0A99F:
	JSL MOVEMENT_DATA_READ16
	PHA
	STY $94
	JSL MOVEMENT_DATA_READ16
	TAX
	STY $94
	PLA
	JSL CREATE_ENTITY_AT_V01_PLUS_BG3Y
	RTL
