
UNKNOWN_C0A9CF:
	JSL MOVEMENT_DATA_READ16
	PHA
	STY $94
	JSL MOVEMENT_DATA_READ16
	PHA
	STY $94
	JSL MOVEMENT_DATA_READ16
	STY $94
	TAY
	PLX
	PLA
	JSL PRINT_CAST_NAME_PARTY
	RTL
