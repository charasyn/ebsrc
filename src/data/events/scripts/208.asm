
EVENT_208: ;$C3D898
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3DBDB_ENTRY2)
	EVENT_UNKNOWN_C0A685 $80, $02
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V5, $0003
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V6, $15D0
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V7, $27E0
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AB59)
	EVENT_PREPARE_NEW_ENTITY_AT_TELEPORT_DESTINATION $CE
	EVENT_QUEUE_TEXT TEXT_EVENT_208
	EVENT_HALT
