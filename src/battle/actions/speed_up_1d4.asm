
BTLACT_SPEED_UP_1D4: ;$C2A193
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE_CLOBBER 24
	LDA #$0004
	JSR a:.LOWORD(RAND_LIMIT)
	INC
	STA $16
	LDA .LOWORD(CURRENT_TARGET)
	CLC
	ADC #$002A
	TAX
	LDA $16
	STA $02
	LDA a:.LOWORD(RAM),X
	CLC
	ADC $02
	STA a:.LOWORD(RAM),X
	LOADPTR TEXT_BATTLE_SPEED_WENT_UP, $0E
	MOVE_INT1632 $16, $06
	BPL @UNKNOWN0
	DEC $08
@UNKNOWN0:
	MOVE_INT $06, $12
	JSL DISPLAY_TEXT_WAIT
	PLD
	RTL
