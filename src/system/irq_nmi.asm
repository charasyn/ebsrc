
IRQ: ;$C0814F
	PHP
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8
	PHA
	PHX
	PHY
	PHD
	PEA .LOWORD(RAM)
	PLD
	PHB
	PEA .LOWORD(RAM)
	PLB
	PLB
	SEP #PROC_FLAGS::ACCUM8
	LDA TIMEUP
	BMI IRQ_ENABLED
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8
	PLB
	PLD
	PLY
	PLX
	PLA
	PLP
	RTI
NMI:
	PHP
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8
	PHA
	PHX
	PHY
	PHD
	PEA .LOWORD(RAM)
	PLD
	PHB
	PEA .LOWORD(RAM)
	PLB
	PLB
	SEP #PROC_FLAGS::ACCUM8
IRQ_ENABLED:
	LDA RDNMI
	STZ HDMAEN
	LDA #$0080
	STA INIDISP
	INC <UNKNOWN_7E002B + 0
	INC <UNKNOWN_7E0002 + 0
	REP #PROC_FLAGS::ACCUM8
	SEP #PROC_FLAGS::INDEX8
	LDX <NEXT_FRAME_DISPLAY_ID + 0
	BEQ @UNKNOWN2
;Bank 0
	LDY #$0000
	STZ OAMADDL
	STY DMAP0
	STY A1B0
	LDY #$0004
	STY BBAD0
	LDA #.LOWORD(OAM1)
	LDX <NEXT_FRAME_DISPLAY_ID + 0
	DEX
	BEQ @UNKNOWN1
	LDA #.LOWORD(OAM2)
@UNKNOWN1:
	STA A1T0L
	LDA #$0220
	STA DAS0L
	LDY #DMA_CHANNELS::CHANNEL_0
	STY MDMAEN
	CLC
	ADC <UNKNOWN_7E0099 + 0
	STA <UNKNOWN_7E0099 + 0
@UNKNOWN2:
	LDX a:.LOWORD(UNKNOWN_7E0030)
	BEQ @UNKNOWN3
	LDA .LOWORD(PALETTE_DMA_PARAMETERS) - 4,X
	STA A1T0L
	LDY .LOWORD(PALETTE_DMA_PARAMETERS) - 2,X
	STY CGADD
	LDA #$2200
	STA DMAP0
	LDY #$0000
	STY A1B0
	STY a:.LOWORD(UNKNOWN_7E0030)
	LDA .LOWORD(PALETTE_DMA_PARAMETERS) - 6,X
	STA DAS0L
	LDY #DMA_CHANNELS::CHANNEL_0
	STY MDMAEN
	CLC
	ADC <UNKNOWN_7E0099 + 0
	STA <UNKNOWN_7E0099 + 0
@UNKNOWN3:
	SEP #PROC_FLAGS::ACCUM8
	LDA <UNKNOWN_7E0028 + 0
	BEQ @UNKNOWN7
	DEC <UNKNOWN_7E002A + 0
	BPL @UNKNOWN7
	LDA <UNKNOWN_7E0029 + 0
	STA <UNKNOWN_7E002A + 0
	LDA <INIDISP_MIRROR + 0
	AND #$000F
	CLC
	ADC <UNKNOWN_7E0028 + 0
	BPL @UNKNOWN4
	STZ a:.LOWORD(HDMAEN_MIRROR)
	LDA #$0080
	BRA @UNKNOWN5
@UNKNOWN4:
	CMP #$0010
	BCC @UNKNOWN6
	LDA #$000F
@UNKNOWN5:
	STZ <UNKNOWN_7E0028 + 0
@UNKNOWN6:
	STA <INIDISP_MIRROR + 0
@UNKNOWN7:
	REP #PROC_FLAGS::INDEX8
	LDA <INIDISP_MIRROR + 0
	STA INIDISP
	LDA <MOSAIC_MIRROR + 0
	STA MOSAIC
	LDY <BG12NBA_MIRROR + 0
	STY BG12NBA
	LDY <UNUSED_WH2_MIRROR + 0
	LDY #$00FF
	STY WH2
	REP #PROC_FLAGS::ACCUM8
	SEP #PROC_FLAGS::INDEX8
	LDX <UNKNOWN_7E0001 + 0
	BRA @UNKNOWN9
@UNKNOWN8:
	LDY .LOWORD(UNKNOWN_7F0400),X
	LDA .LOWORD(DMA_TABLE),Y
	STA DMAP0
	LDA .LOWORD(DMA_TABLE) + 2,Y
	STA VMAIN
	LDA .LOWORD(UNKNOWN_7F0400) + 1,X
	STA DAS0L
	LDA .LOWORD(UNKNOWN_7F0400) + 3,X
	STA A1T0L
	LDY .LOWORD(UNKNOWN_7F0400) + 5,X
	STY A1B0
	LDA .LOWORD(UNKNOWN_7F0400) + 6,X
	STA VMADDL
	TXA
	CLC
	ADC #$0008
	TAX
	LDY #DMA_CHANNELS::CHANNEL_0
	STY MDMAEN
@UNKNOWN9:
	CPX <UNKNOWN_7E0000 + 0
	BNE @UNKNOWN8
	STX <UNKNOWN_7E0001 + 0
	SEP #PROC_FLAGS::ACCUM8
	LDA <NEXT_FRAME_DISPLAY_ID + 0
	BEQL @UNKNOWN12
	DEC
	BNE @UNKNOWN11
; Note: The + 0 is for suppressing a spurious 'suspicious address warning'
	LDA <BG1_X_POS_BUF + 0
	STA BG1HOFS
	LDA <BG1_X_POS_BUF + 1
	STA BG1HOFS
	LDA <BG1_Y_POS_BUF + 0
	STA BG1VOFS
	LDA <BG1_Y_POS_BUF + 1
	STA BG1VOFS
	LDA <BG2_X_POS_BUF + 0
	STA BG2HOFS
	LDA <BG2_X_POS_BUF + 1
	STA BG2HOFS
	LDA <BG2_Y_POS_BUF + 0
	STA BG2VOFS
	LDA <BG2_Y_POS_BUF + 1
	STA BG2VOFS
	LDA <BG3_X_POS_BUF + 0
	STA BG3HOFS
	LDA <BG3_X_POS_BUF + 1
	STA BG3HOFS
	LDA <BG3_Y_POS_BUF + 0
	STA BG3VOFS
	LDA <BG3_Y_POS_BUF + 1
	STA BG3VOFS
	LDA <BG4_X_POS_BUF + 0
	STA BG4HOFS
	LDA <BG4_X_POS_BUF + 1
	STA BG4HOFS
	LDA <BG4_Y_POS_BUF + 0
	STA BG4VOFS
	LDA <BG4_Y_POS_BUF + 1
	STA BG4VOFS
	BRA @UNKNOWN12
@UNKNOWN11:
	LDA <BG1_X_POS_BUF + 2
	STA BG1HOFS
	LDA <BG1_X_POS_BUF + 3
	STA BG1HOFS
	LDA <BG1_Y_POS_BUF + 2
	STA BG1VOFS
	LDA <BG1_Y_POS_BUF + 3
	STA BG1VOFS
	LDA <BG2_X_POS_BUF + 2
	STA BG2HOFS
	LDA <BG2_X_POS_BUF + 3
	STA BG2HOFS
	LDA <BG2_Y_POS_BUF + 2
	STA BG2VOFS
	LDA <BG2_Y_POS_BUF + 3
	STA BG2VOFS
	LDA <BG3_X_POS_BUF + 2
	STA BG3HOFS
	LDA <BG3_X_POS_BUF + 3
	STA BG3HOFS
	LDA <BG3_Y_POS_BUF + 2
	STA BG3VOFS
	LDA <BG3_Y_POS_BUF + 3
	STA BG3VOFS
	LDA <BG4_X_POS_BUF + 2
	STA BG4HOFS
	LDA <BG4_X_POS_BUF + 3
	STA BG4HOFS
	LDA <BG4_Y_POS_BUF + 2
	STA BG4VOFS
	LDA <BG4_Y_POS_BUF + 3
	STA BG4VOFS
	REP #PROC_FLAGS::ACCUM8
	LDA a:.LOWORD(BG1_X_POS)
	STA a:.LOWORD(UNKNOWN_7E0061)
	LDA a:.LOWORD(BG1_Y_POS)
	STA a:.LOWORD(UNKNOWN_7E0063)
@UNKNOWN12:
	LDY #$0000
	STY <NEXT_FRAME_DISPLAY_ID + 0
	LDX <INIDISP_MIRROR + 0
	BMI @UNKNOWN13
	LDX <TM_MIRROR + 0
	STX TM
	LDX <TD_MIRROR + 0
	STX TD
	LDX <HDMAEN_MIRROR + 0
	STX HDMAEN
@UNKNOWN13:
	JSR a:.LOWORD(PROCESS_SFX_QUEUE)
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8
	STZ <UNKNOWN_7E0099 + 0
	LDA a:.LOWORD(UNKNOWN_7E0022)
	BNE @UNKNOWN14
	INC a:.LOWORD(UNKNOWN_7E0022)
	PHB
	PEA $7E7E
	PLB
	PLB
	PHD
	PEA $0200
	PLD
	JSR a:.LOWORD(EXECUTE_IRQ_CALLBACK)
	PLD
	PLB
	STZ a:.LOWORD(UNKNOWN_7E0022)
@UNKNOWN14:
	LDA #.LOWORD(HEAP)
	CMP <BASE_HEAP_ADDRESS + 0
	BNE @UNKNOWN15
	LDA #.LOWORD(HEAP_ALT)
@UNKNOWN15:
	STA <BASE_HEAP_ADDRESS + 0
	STA <CURRENT_HEAP_ADDRESS + 0
	LDA #$0000
	STA DMA_TRANSFER_FLAG
	STZ <UNKNOWN_7E00AB + 0
	INC <TIMER + 0
	BNE @RETURN
	INC <TIMER + 2
@RETURN:
	PLB
	PLD
	PLY
	PLX
	PLA
	PLP
	RTI
