
UNKNOWN_C42F45: ;$C42F45
	ASL
	TAX
	LDA $0E
	STA .LOWORD(ENTITY_TICK_CALLBACK_LOW),X
	LDA $10
	STA .LOWORD(ENTITY_TICK_CALLBACK_HIGH),X
	LDY #$0006
@UNKNOWN0:
	INX
	INX
	LDA $12
	STA .LOWORD(ENTITY_TICK_CALLBACK_LOW),X
	LDA $14
	STA .LOWORD(ENTITY_TICK_CALLBACK_HIGH),X
	DEY
	BNE @UNKNOWN0
	RTL
