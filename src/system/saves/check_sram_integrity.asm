
CHECK_SRAM_INTEGRITY:
	BEGIN_C_FUNCTION_FAR
	STACK_RESERVE_VARS
	STACK_RESERVE_INT32
	STACK_RESERVE_INT16
	END_STACK_VARS
	LDA #SRAM_VERSION
	STA SRAM_VERSION_LOADED
	LOADPTR SAVE_BASE + $1FFE, @VIRTUAL06
	LDA [@VIRTUAL06]
	CMP #SRAM_VERSION
	BEQ @GOOD_SRAM
	LOADPTR SAVE_BASE, @LOCAL00
	LDX #$2000
	SEP #PROC_FLAGS::ACCUM8
	LDA #0
	JSL MEMSET24
@GOOD_SRAM:
	JSR CHECK_ALL_BLOCKS_SIGNATURE
	SEP #PROC_FLAGS::ACCUM8
	STZ CORRUPTION_CHECK_RESULTS
	LDX #0
	STX @LOCAL01
	BRA @LOOP_ENTRY
@LOOP_BEGINNING:
	REP #PROC_FLAGS::ACCUM8
	TXA
	JSR CHECK_SAVE_CORRUPTION
	LDX @LOCAL01
	INX
	STX @LOCAL01
@LOOP_ENTRY:
	CPX #3
	BCC @LOOP_BEGINNING
	REP #PROC_FLAGS::ACCUM8
	LDA SRAM_VERSION_LOADED
	STA [@VIRTUAL06]
	END_C_FUNCTION
