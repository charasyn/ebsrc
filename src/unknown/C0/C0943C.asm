
UNKNOWN_C0943C: ;$C0943C
	LDX .LOWORD(UNKNOWN_7E0A50)
	BMI @UNKNOWN1
@UNKNOWN0:
	LDA .LOWORD(SPRITE_TICK_CALLBACK_HIGH),X
	ORA #OBJECT_TICK_DISABLED | OBJECT_MOVE_DISABLED
	STA .LOWORD(SPRITE_TICK_CALLBACK_HIGH),X
	LDA .LOWORD(UNKNOWN_30X2_TABLE_1),X
	TAX
	BPL @UNKNOWN0
@UNKNOWN1:
	RTL
