
UNKNOWN_C09451: ;$C09451
	LDX .LOWORD(UNKNOWN_7E0A50)
	BMI @UNKNOWN1
@UNKNOWN0:
	LDA .LOWORD(SPRITE_TICK_CALLBACK_HIGH),X
	AND #$FFFF ^ (OBJECT_TICK_DISABLED | OBJECT_MOVE_DISABLED)
	STA .LOWORD(SPRITE_TICK_CALLBACK_HIGH),X
	LDA .LOWORD(UNKNOWN_30X2_TABLE_1),X
	TAX
	BPL @UNKNOWN0
@UNKNOWN1:
	RTL
