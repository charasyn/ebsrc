
MOVEMENT_CODE_00:
	LDX $88
	JSR UNKNOWN_C09C3B
	LDX $8A
	LDA #$FFFF
	STA ENTITY_SCRIPT_SLEEP_FRAMES,X
	STA ACTIONSCRIPT_CURRENT_SCRIPT
	RTS
