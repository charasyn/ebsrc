
EVENT_203: ;$C3D6D6
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3DBDB_ENTRY2)
	EVENT_UNKNOWN_C0A685 $80, $02
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V5, $0003
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V6, $1510
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V7, $2328
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AB59)
	EVENT_SET_SURFACE_FLAGS $00
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V6, $14C0
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V7, $2350
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AB59)
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V6, $1358
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V7, $24B8
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AB59)
	EVENT_SET_SURFACE_FLAGS SURFACE_FLAGS::OBSCURE_LOWER_BODY
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V6, $1328
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V7, $24C8
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AB59)
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V6, $11B0
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V7, $24C8
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AB59)
	EVENT_PREPARE_NEW_ENTITY_AT_TELEPORT_DESTINATION $3E
	EVENT_QUEUE_TEXT TEXT_EVENT_203
	EVENT_HALT
