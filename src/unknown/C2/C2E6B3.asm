
UNKNOWN_C2E6B3: ;$C2E6B3
	.BYTE $30, $00, $00
UNKNOWN_C2E6B3_ENTRY2: ;$C2E6B6
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE_CLOBBER 27
	LDA .LOWORD(UNKNOWN_7E1B9E)
	AND #$00FF
	BNE @UNKNOWN1
	JMP a:.LOWORD(@UNKNOWN12)
@UNKNOWN1:
	LDX #.LOWORD(UNKNOWN_7E1B9E)
	SEP #PROC_FLAGS::ACCUM8
	LDA a:.LOWORD(RAM),X
	DEC
	STA .LOWORD(UNKNOWN_7E1B9E)
	REP #PROC_FLAGS::ACCUM8
	AND #$00FF
	BEQ @UNKNOWN2
	JMP a:.LOWORD(@UNKNOWN4)
@UNKNOWN2:
	LDA #.LOWORD(UNKNOWN_7E1BA0)
	STA $04
	LDX $04
	LDA a:.LOWORD(RAM),X
	AND #$00FF
	BEQ @UNKNOWN3
	SEP #PROC_FLAGS::ACCUM8
	LDA .LOWORD(UNKNOWN_7E1B9E)+1
	STA .LOWORD(UNKNOWN_7E1B9E)
	REP #PROC_FLAGS::ACCUM8
	LDA #.LOWORD(UNKNOWN_7E1BA1)
	STA $02
	LDY $02
	MOVE_INT_YPTRSRC a:.LOWORD(RAM), $06
	COPY_TO_VRAM1P $06, $5800, $400, $06
	.A16
	COPY_TO_VRAM1 UNKNOWN_C2E6B3, $5800, $400, $0F
	.A16
	LDY $02
	MOVE_INT_YPTRSRC a:.LOWORD(RAM), $06
	LDA #$0400
	CLC
	ADC $06
	STA $06
	LDY $02
	MOVE_INT_YPTRDEST $06, a:.LOWORD(RAM)
	LDX $04
	SEP #PROC_FLAGS::ACCUM8
	LDA a:.LOWORD(RAM),X
	DEC
	LDX $04
	STA a:.LOWORD(RAM),X
	BRA @UNKNOWN4
@UNKNOWN3:
	.A16
	COPY_TO_VRAM1 UNKNOWN_C2E6B3+1, $5800, $800, $03
	JSL UNKNOWN_C2DE96
@UNKNOWN4:
	LDX #.LOWORD(UNKNOWN_7E1BA9)
	SEP #PROC_FLAGS::ACCUM8
	LDA a:.LOWORD(RAM),X
	STA $1A
	REP #PROC_FLAGS::ACCUM8
	AND #$00FF
	BNE @UNKNOWN5
	JMP a:.LOWORD(@UNKNOWN12)
@UNKNOWN5:
	SEP #PROC_FLAGS::ACCUM8
	LDA $1A
	DEC
	STA a:.LOWORD(RAM),X
	REP #PROC_FLAGS::ACCUM8
	AND #$00FF
	BEQ @UNKNOWN6
	JMP a:.LOWORD(@UNKNOWN12)
@UNKNOWN6:
	SEP #PROC_FLAGS::ACCUM8
	LDA .LOWORD(UNKNOWN_7E1BA8)
	STA a:.LOWORD(RAM),X
	LDA .LOWORD(UNKNOWN_7E1BA6)
	SEC
	SBC .LOWORD(UNKNOWN_7E1BA5)
	REP #PROC_FLAGS::ACCUM8
	AND #$00FF
	STA $02
	INC $02
	LDX #$0000
	STX $18
	BRA @UNKNOWN10
@UNKNOWN7:
	LDA .LOWORD(UNKNOWN_7E1BA7)
	AND #$00FF
	STA $04
	TXA
	CMP $04
	BCS @UNKNOWN8
	TXA
	CLC
	ADC $02
	SEC
	SBC $04
	STA $04
	STA $16
	BRA @UNKNOWN9
@UNKNOWN8:
	TXA
	SEC
	SBC $04
	STA $04
	STA $16
@UNKNOWN9:
	LDA .LOWORD(UNKNOWN_7E1BA5)
	AND #$00FF
	STA $14
	STX $04
	CLC
	ADC $04
	ASL
	CLC
	ADC .LOWORD(UNKNOWN_7E1BCA)
	PHA
	LDA $16
	STA $04
	LDA $14
	CLC
	ADC $04
	ASL
	TAX
	LDA .LOWORD(UNKNOWN_7E1BAA),X
	PLX
	STA a:.LOWORD(RAM),X
	LDX $18
	INX
	STX $18
@UNKNOWN10:
	TXA
	CMP $02
	BCC @UNKNOWN7
	LDX #.LOWORD(UNKNOWN_7E1BA7)
	SEP #PROC_FLAGS::ACCUM8
	LDA a:.LOWORD(RAM),X
	INC
	STA a:.LOWORD(RAM),X
	REP #PROC_FLAGS::ACCUM8
	AND #$00FF
	CMP $02
	BCC @UNKNOWN11
	SEP #PROC_FLAGS::ACCUM8
	LDA #$0000
	STA a:.LOWORD(RAM),X
@UNKNOWN11:
	REP #PROC_FLAGS::ACCUM8
	LDA #$0018
	JSL UNKNOWN_C0856B
@UNKNOWN12:
	LDX #.LOWORD(UNKNOWN_7E1BCC)
	LDA a:.LOWORD(RAM),X
	BEQ @UNKNOWN18
	DEC
	STA a:.LOWORD(RAM),X
	BNE @UNKNOWN18
	LDA #$0014
	JSL UNKNOWN_C2FAD8
	LDA #$0000
	STA $02
	BRA @UNKNOWN17
@UNKNOWN13:
	LDA $02
	ASL
	TAX
	LDA .LOWORD(UNKNOWN_7EAEE7),X
	BEQ @UNKNOWN16
	LDA #$0001
	STA $04
	BRA @UNKNOWN15
@UNKNOWN14:
	LDA .LOWORD(UNKNOWN_7E1BD4)
	STA $0E
	LDY .LOWORD(UNKNOWN_7E1BD2)
	LDX .LOWORD(UNKNOWN_7E1BD0)
	LDA $02
	ASL
	ASL
	ASL
	ASL
	CLC
	ADC $04
	JSL UNKNOWN_C2FB35
	INC $04
@UNKNOWN15:
	LDA $04
	CMP #$0010
	BCC @UNKNOWN14
@UNKNOWN16:
	INC $02
@UNKNOWN17:
	LDA $02
	CMP #$0004
	BCC @UNKNOWN13
@UNKNOWN18:
	LDX #.LOWORD(UNKNOWN_7E1BCE)
	LDA a:.LOWORD(RAM),X
	BEQ @UNKNOWN22
	DEC
	STA a:.LOWORD(RAM),X
	BNE @UNKNOWN22
	LDY #$0000
	STY $12
	BRA @UNKNOWN21
@UNKNOWN19:
	TYA
	ASL
	TAX
	LDA .LOWORD(UNKNOWN_7EAEE7),X
	BEQ @UNKNOWN20
	TYX
	LDA #$0014
	JSL UNKNOWN_C2FADE
@UNKNOWN20:
	LDY $12
	INY
	STY $12
@UNKNOWN21:
	CPY #$0004
	BCC @UNKNOWN19
@UNKNOWN22:
	PLD
	RTL
