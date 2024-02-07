
UNKNOWN_C2E6B3:
	.BYTE $30, $00, $00
UNKNOWN_C2E6B6:
	BEGIN_C_FUNCTION_FAR
	STACK_RESERVE_VARS
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_INT8
	END_STACK_VARS
.IF .DEFINED(JPN) ;wonder why these got swapped?
	@VIRTUALTMP01 := @VIRTUAL04
	@VIRTUALTMP02 := @VIRTUAL02
.ELSE
	@VIRTUALTMP01 := @VIRTUAL02
	@VIRTUALTMP02 := @VIRTUAL04
.ENDIF
	LDA PSI_ANIMATION_STATE + psi_animation_state::time_until_next_frame
	AND #$00FF
	BEQL @UNKNOWN12
	LDX #.LOWORD(PSI_ANIMATION_STATE) + psi_animation_state::time_until_next_frame
	SEP #PROC_FLAGS::ACCUM8
	LDA __BSS_START__,X
	DEC
	STA PSI_ANIMATION_STATE + psi_animation_state::time_until_next_frame
	REP #PROC_FLAGS::ACCUM8
	AND #$00FF
	BNEL @UNKNOWN4
	LDA #.LOWORD(PSI_ANIMATION_STATE) + psi_animation_state::total_frames
	STA @VIRTUAL04
	LDX @VIRTUAL04
	LDA __BSS_START__,X
	AND #$00FF
	BEQ @UNKNOWN3
	SEP #PROC_FLAGS::ACCUM8
	LDA PSI_ANIMATION_STATE + psi_animation_state::frame_hold_frames
	STA PSI_ANIMATION_STATE + psi_animation_state::time_until_next_frame
	REP #PROC_FLAGS::ACCUM8
	LDA #.LOWORD(PSI_ANIMATION_STATE) + psi_animation_state::frame_data
	STA @VIRTUAL02
	LDY @VIRTUAL02
	MOVE_INT_YPTRSRC __BSS_START__, @VIRTUAL06
	COPY_TO_VRAM1P @VIRTUAL06, $5800, $400, $06
	.A16
	COPY_TO_VRAM1 UNKNOWN_C2E6B3, $5800, $400, $0F
	.A16
	LDY @VIRTUAL02
	MOVE_INT_YPTRSRC __BSS_START__, @VIRTUAL06
	LDA #$0400
	CLC
	ADC @VIRTUAL06
	STA @VIRTUAL06
	LDY @VIRTUAL02
	MOVE_INT_YPTRDEST @VIRTUAL06, __BSS_START__
	LDX @VIRTUAL04
	SEP #PROC_FLAGS::ACCUM8
	LDA __BSS_START__,X
	DEC
	LDX @VIRTUAL04
	STA __BSS_START__,X
	BRA @UNKNOWN4
@UNKNOWN3:
	.A16
	COPY_TO_VRAM1 UNKNOWN_C2E6B3+1, $5800, $800, $03
	JSL UNKNOWN_C2DE96
@UNKNOWN4:
	LDX #.LOWORD(PSI_ANIMATION_STATE) + psi_animation_state::palette_animation_time_until_next_frame
	SEP #PROC_FLAGS::ACCUM8
	LDA __BSS_START__,X
	STA @LOCAL06
	REP #PROC_FLAGS::ACCUM8
	AND #$00FF
	BEQL @UNKNOWN12
	SEP #PROC_FLAGS::ACCUM8
	LDA @LOCAL06
	DEC
	STA __BSS_START__,X
	REP #PROC_FLAGS::ACCUM8
	AND #$00FF
	BNEL @UNKNOWN12
	SEP #PROC_FLAGS::ACCUM8
	LDA PSI_ANIMATION_STATE + psi_animation_state::palette_animation_frames
	STA __BSS_START__,X
	LDA PSI_ANIMATION_STATE + psi_animation_state::palette_animation_upper_index
	SEC
	SBC PSI_ANIMATION_STATE + psi_animation_state::palette_animation_lower_index
	REP #PROC_FLAGS::ACCUM8
	AND #$00FF
	STA @VIRTUAL02
	INC @VIRTUAL02
	LDX #0
	STX @LOCAL05
	BRA @UNKNOWN10
@UNKNOWN7:
	LDA PSI_ANIMATION_STATE + psi_animation_state::palette_animation_current_index
	AND #$00FF
	STA @VIRTUAL04
	TXA
	CMP @VIRTUAL04
	BCS @UNKNOWN8
	TXA
	CLC
	ADC @VIRTUAL02
	SEC
	SBC @VIRTUAL04
	STA @VIRTUAL04
	STA @LOCAL04
	BRA @UNKNOWN9
@UNKNOWN8:
	TXA
	SEC
	SBC @VIRTUAL04
	STA @VIRTUAL04
	STA @LOCAL04
@UNKNOWN9:
	LDA PSI_ANIMATION_STATE + psi_animation_state::palette_animation_lower_index
	AND #$00FF
	STA @LOCAL03
	STX @VIRTUAL04
	CLC
	ADC @VIRTUAL04
	ASL
	CLC
	ADC PSI_ANIMATION_STATE + psi_animation_state::displayed_palette
	PHA
	LDA @LOCAL04
	STA @VIRTUAL04
	LDA @LOCAL03
	CLC
	ADC @VIRTUAL04
	ASL
.IF .DEFINED(JPN)
	CLC
	ADC #.LOWORD(PSI_ANIMATION_STATE)
	TAX
	LDA a:psi_animation_state::palette,X
.ELSE
	TAX
	LDA PSI_ANIMATION_STATE + psi_animation_state::palette,X
.ENDIF
	PLX
	STA __BSS_START__,X
	LDX @LOCAL05
	INX
	STX @LOCAL05
@UNKNOWN10:
	TXA
	CMP @VIRTUAL02
	BCC @UNKNOWN7
	LDX #.LOWORD(PSI_ANIMATION_STATE) + psi_animation_state::palette_animation_current_index
	SEP #PROC_FLAGS::ACCUM8
	LDA __BSS_START__,X
	INC
	STA __BSS_START__,X
	REP #PROC_FLAGS::ACCUM8
	AND #$00FF
	CMP @VIRTUAL02
	BCC @UNKNOWN11
	SEP #PROC_FLAGS::ACCUM8
	LDA #0
	STA __BSS_START__,X
@UNKNOWN11:
	REP #PROC_FLAGS::ACCUM8
	LDA #24
	JSL UNKNOWN_C0856B
@UNKNOWN12:
	LDX #.LOWORD(PSI_ANIMATION_STATE) + psi_animation_state::enemy_colour_change_start_frames_left
	LDA __BSS_START__,X
	BEQ @UNKNOWN18
	DEC
	STA __BSS_START__,X
	BNE @UNKNOWN18
	LDA #20
	JSL UNKNOWN_C2FAD8
	LDA #0
	STA @VIRTUALTMP01
	BRA @UNKNOWN17
@UNKNOWN13:
	LDA @VIRTUALTMP01
	ASL
	TAX
	LDA PSI_ANIMATION_ENEMY_TARGETS,X
	BEQ @UNKNOWN16
	LDA #1
	STA @VIRTUALTMP02
	BRA @UNKNOWN15
@UNKNOWN14:
	LDA PSI_ANIMATION_STATE + psi_animation_state::enemy_colour_change_blue
	STA @LOCAL00
	LDY PSI_ANIMATION_STATE + psi_animation_state::enemy_colour_change_green
	LDX PSI_ANIMATION_STATE + psi_animation_state::enemy_colour_change_red
	LDA @VIRTUALTMP01
	ASL
	ASL
	ASL
	ASL
	CLC
	ADC @VIRTUALTMP02
	JSL UNKNOWN_C2FB35
	INC @VIRTUALTMP02
@UNKNOWN15:
	LDA @VIRTUALTMP02
	CMP #16
	BCC @UNKNOWN14
@UNKNOWN16:
	INC @VIRTUALTMP01
@UNKNOWN17:
	LDA @VIRTUALTMP01
	CMP #4
	BCC @UNKNOWN13
@UNKNOWN18:
	LDX #.LOWORD(PSI_ANIMATION_STATE + psi_animation_state::enemy_colour_change_frames_left)
	LDA __BSS_START__,X
	BEQ @UNKNOWN22
	DEC
	STA __BSS_START__,X
	BNE @UNKNOWN22
	LDY #0
	STY @LOCAL02
	BRA @UNKNOWN21
@UNKNOWN19:
	TYA
	ASL
	TAX
	LDA PSI_ANIMATION_ENEMY_TARGETS,X
	BEQ @UNKNOWN20
	TYX
	LDA #20
	JSL UNKNOWN_C2FADE
@UNKNOWN20:
	LDY @LOCAL02
	INY
	STY @LOCAL02
@UNKNOWN21:
	CPY #4
	BCC @UNKNOWN19
@UNKNOWN22:
	END_C_FUNCTION
