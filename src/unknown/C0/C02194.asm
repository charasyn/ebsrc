
UNKNOWN_C02194: ;$C02194
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE_CLOBBER 18
	STZ .LOWORD(MAGIC_BUTTERFLY)
	STZ .LOWORD(UNKNOWN_7E4A68)
	STZ .LOWORD(UNKNOWN_7E4A5C)
	LDX #$0000
	STX $10
	BRA @UNKNOWN2
@UNKNOWN0:
	TXA
	ASL
	TAX
	LDA .LOWORD(ENTITY_SCRIPT_TABLE),X
	INC
	CMP #$0006
	BCC @UNKNOWN1
	BEQ @UNKNOWN1
	LDX $10
	TXA
	JSL UNKNOWN_C02140
@UNKNOWN1:
	LDX $10
	INX
	STX $10
@UNKNOWN2:
	CPX #$001E
	BNE @UNKNOWN0
	LDA #$0000
	STA $0E
	BRA @UNKNOWN4
@UNKNOWN3:
	ASL
	TAX
	LDA #$FFFF
	STA .LOWORD(UNKNOWN_30X2_TABLE_24),X
	LDA $0E
	INC
	STA $0E
@UNKNOWN4:
	CMP #$001E
	BCC @UNKNOWN3
	PLD
	RTL
