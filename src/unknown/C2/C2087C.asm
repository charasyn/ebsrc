
UNKNOWN_C2087C:
	BEGIN_C_FUNCTION_FAR
	STACK_RESERVE_VARS
	STACK_RESERVE_INT16
	END_STACK_VARS
	LDA RENDER_HPPP_WINDOWS
	AND #$00FF
	BEQ @UNKNOWN0
	JSR UNKNOWN_C2077D
@UNKNOWN0:
	LDA WINDOW_HEAD
	CMP #$FFFF
	BEQ @UNKNOWN2
	LDY WINDOW_HEAD
	STY @LOCAL00
@UNKNOWN1:
	TYA
	JSL UNKNOWN_C107AF
	LDY @LOCAL00
	TYA
	LDY #.SIZEOF(window_stats)
	JSL MULT168
	TAX
	LDY WINDOW_STATS+window_stats::next,X
	STY @LOCAL00
	CPY #$FFFF
	BNE @UNKNOWN1
@UNKNOWN2:
	END_C_FUNCTION
