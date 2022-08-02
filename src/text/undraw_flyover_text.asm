
UNDRAW_FLYOVER_TEXT: ;$C4800B
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
.IF .DEFINED(JPN)
	RESERVE_STACK_SPACE_CLOBBER 18
.ENDIF
	LDY #$6000
	LDX #$7C00
	LDA #BG_TILEMAP_SIZE::NORMAL
	JSL SET_BG3_VRAM_LOCATION
	JSL UNKNOWN_C2038B
	JSL LOAD_WINDOW_GFX
.IF .DEFINED(JPN)
	COPY_TO_VRAM3 UNKNOWN_7F0000, $6000, $3800, $00
.ELSE
	LDA #$0002
	JSL UNKNOWN_C44963
.ENDIF
	JSL UNKNOWN_C47F87
	SEP #PROC_FLAGS::ACCUM8
	LDA #$0018
	STA a:.LOWORD(UNKNOWN_7E0030)
	REP #PROC_FLAGS::ACCUM8
.IF .DEFINED(JPN)
	PLD
.ENDIF
	RTL
