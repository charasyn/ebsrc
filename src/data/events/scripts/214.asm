
EVENT_214: ;$C3D9D8
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3DBDB_ENTRY2)
	EVENT_UNKNOWN_C0A685 $80, $02
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V5, $0003
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V6, $18B0
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V7, $0D60
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AB59)
	EVENT_PREPARE_NEW_ENTITY_AT_TELEPORT_DESTINATION $4C
	EVENT_QUEUE_TEXT TEXT_EVENT_214
	EVENT_HALT
