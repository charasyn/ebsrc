
UNKNOWN_C41DB6: ;$C41DB6
	REP #PROC_FLAGS::ACCUM8
	PHD
	PHA
	TDC
	SEC
	SBC #$0014
	TCD
	PLA
	STA $00
	LDA .LOWORD(UNKNOWN_7E3C14)
	AND #$0007
	STA $06
	LDA .LOWORD(UNKNOWN_7E3C16)
	AND #$0007
	STA $08
	LDA .LOWORD(UNKNOWN_7E3C14)
	LSR
	LSR
	LSR
	STA $02
	LDA .LOWORD(UNKNOWN_7E3C16)
	LSR
	LSR
	LSR
	STA $04
	SEP #PROC_FLAGS::ACCUM8
	XBA
	LDA .LOWORD(UNKNOWN_7E3C18)
	REP #PROC_FLAGS::ACCUM8
	STA f:WRMPYA
	NOP
	NOP
	LDA f:RDMPYL
	CLC
	ADC $02
	CLC
	ADC .LOWORD(UNKNOWN_7E3C1C)
	ASL
	ASL
	ASL
	CLC
	ADC $08
	ASL
	STA $0A
	JSR a:.LOWORD(UNKNOWN_C41EE9)
	LDA $06
	ASL
	TAX
	LDA f:UNKNOWN_C41EB9,X
	STA $0E
	LDA f:UNKNOWN_C41EC9,X
	STA $10
	LDA f:UNKNOWN_C41ED9,X
	STA $12
	LDA $00
	SEC
	SBC #$8000
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8
	LDX #.LOWORD(UNKNOWN_7E3B12)
	LDY $06
	JSR a:.LOWORD(DECOMP_ENTRY2)
	LDY #$0000
@UNKNOWN0:
	SEP #PROC_FLAGS::ACCUM8
	LDA .LOWORD(UNKNOWN_7E3B12),Y
	XBA
	LDA .LOWORD(UNKNOWN_7E3B12),Y
	REP #PROC_FLAGS::ACCUM8
	LDX $0A
	EOR .LOWORD(UNKNOWN_7E3492),X
	AND $0E
	EOR .LOWORD(UNKNOWN_7E3492),X
	STA .LOWORD(UNKNOWN_7E3492),X
	INY
	SEP #PROC_FLAGS::ACCUM8
	LDA .LOWORD(UNKNOWN_7E3B12),Y
	XBA
	LDA .LOWORD(UNKNOWN_7E3B12),Y
	REP #PROC_FLAGS::ACCUM8
	LDX $0A
	EOR $34A2,X
	AND $10
	EOR $34A2,X
	STA $34A2,X
	INY
	LDA $12
	BEQ @UNKNOWN1
	SEP #PROC_FLAGS::ACCUM8
	LDA .LOWORD(UNKNOWN_7E3B12),Y
	XBA
	LDA .LOWORD(UNKNOWN_7E3B12),Y
	REP #PROC_FLAGS::ACCUM8
	LDX $0A
	EOR $34B2,X
	AND $12
	EOR $34B2,X
	STA $34B2,X
@UNKNOWN1:
	INY
	INC $0A
	INC $0A
	CPY #$0024
	BCS @UNKNOWN3
	LDA $08
	INC
	AND #$0007
	STA $08
	BNE @UNKNOWN2
	LDA .LOWORD(UNKNOWN_7E3C18)
	DEC
	ASL
	ASL
	ASL
	ASL
	CLC
	ADC $0A
	STA $0A
@UNKNOWN2:
	JMP a:.LOWORD(@UNKNOWN0)
@UNKNOWN3:
	LDA $0A
	CLC
	ADC #$0010
	LDX $12
	BEQ @UNKNOWN4
	ADC #$0010
@UNKNOWN4:
	STA $0A
	JSR a:.LOWORD(UNKNOWN_C41EF4)
	PLD
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8
	RTL
