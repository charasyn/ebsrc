
UNKNOWN_C06A07:
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	LDX GAME_STATE+game_state::leader_y_coord
	LDA GAME_STATE+game_state::leader_x_coord
	JSL UNKNOWN_C068F4
	LDA NEXT_MAP_MUSIC_TRACK
	JSL CHANGE_MUSIC
	RTL
