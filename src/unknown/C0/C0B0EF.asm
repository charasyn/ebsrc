
UNKNOWN_C0B0EF: ;$C0B0EF
	PHA
	PHX
	ASL
	ASL
	ASL
	ASL
	TAX
	SEP #PROC_FLAGS::ACCUM8
	LDA #$00E4
	STA .LOWORD(UNKNOWN_7E3FC6)
	LDY #.LOWORD(UNKNOWN_7E3FD0)
	STY .LOWORD(UNKNOWN_7E3FC7)
	LDA #$00FC
	STA .LOWORD(UNKNOWN_7E3FC9)
	LDA #$0000
	STA .LOWORD(UNKNOWN_7E3FCC)
	LDA #$007E
	STA f:A1B0,X
	STA f:DASB0,X
	LDA #$0026
	STA f:BBAD0,X
	PLA
	STA f:DMAP0,X
	LDY #$4098
	AND #$0004
	BEQ @UNKNOWN0
	LDY #$4160
@UNKNOWN0:
	STY .LOWORD(UNKNOWN_7E3FCA)
	PLA
	REP #PROC_FLAGS::ACCUM8
	LDA #.LOWORD(UNKNOWN_7E3FC6)
	STA f:A1T0L,X
	SEP #PROC_FLAGS::ACCUM8
	PLX
	LDA a:.LOWORD(HDMAEN_MIRROR)
	ORA f:DMA_FLAGS,X
	STA a:.LOWORD(HDMAEN_MIRROR)
	REP #PROC_FLAGS::ACCUM8
	RTL
