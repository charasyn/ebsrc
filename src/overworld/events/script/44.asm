
MOVEMENT_CODE_44: ;$C09BA9
	LDX $8A
	LDA .LOWORD(ENTITY_TEMPVARS),X
	BEQ @RETURN
	STA .LOWORD(ENTITY_SLEEP_FRAMES),X
@RETURN:
	RTS
