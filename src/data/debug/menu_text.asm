
; Some of this was left untranslated and remains in the same form as in Mother 2.
DEBUG_MENU_TEXT: ;$C3E874
	.IF .DEFINED(JPN)
		.DEFINE OPTIONLENGTH 9
		PADDEDASCII "\xD9\xBF\xD3", OPTIONLENGTH ;フラグ
		PADDEDASCII "\xD3\xCE\xD5", OPTIONLENGTH ;グッズ
		PADDEDASCII "\xE4\x25\xDA", OPTIONLENGTH ;セーブ
		PADDEDASCII "\x7F\x9D\xA3", OPTIONLENGTH ;りんご
		PADDEDASCII "\xBA\xB8\xB8", OPTIONLENGTH ;バナナ
		PADDEDASCII "\xE6\xEF\xCA", OPTIONLENGTH ;テレビ
		PADDEDASCII "\x70\x9A\x9D\xA6", OPTIONLENGTH ;いべんと
		PADDEDASCII "\x7D\x26\x8B", OPTIONLENGTH ;わ?ぷ
		PADDEDASCII "\xA0\x76\x6E", OPTIONLENGTH ;おちゃ
	.ELSE
		.DEFINE OPTIONLENGTH 10
		.IF CLEAN_ROM
		.ELSE
			.DEFINE TRANSLATEDEBUGTEXT
		.ENDIF
		PADDEDEBTEXT "Flag", OPTIONLENGTH
		PADDEDEBTEXT "Goods", OPTIONLENGTH
		PADDEDEBTEXT "Save", OPTIONLENGTH
		PADDEDEBTEXT "Apple", OPTIONLENGTH
		PADDEDEBTEXT "Banana", OPTIONLENGTH
		PADDEDEBTEXT "TV", OPTIONLENGTH
		PADDEDEBTEXT "Event", OPTIONLENGTH
		PADDEDEBTEXT "Warp", OPTIONLENGTH
		PADDEDEBTEXT "Tea", OPTIONLENGTH
	.ENDIF
	.IF .DEFINED(TRANSLATEDEBUGTEXT)
		PADDEDEBTEXT "Teleport", OPTIONLENGTH
		PADDEDEBTEXT "Star ~", OPTIONLENGTH
		PADDEDEBTEXT "Star ^", OPTIONLENGTH
		PADDEDEBTEXT "Player 0", OPTIONLENGTH
		PADDEDEBTEXT "Player 1", OPTIONLENGTH
	.ELSE
		PADDEDASCII "\xE6\xEF\xFB", OPTIONLENGTH ;テレポ
		PADDEDASCII "\xD4\xB6\x25\x2A", OPTIONLENGTH ;スターα
		PADDEDASCII "\xD4\xB6\x25\x2B", OPTIONLENGTH ;スターβ
		PADDEDASCII "\xDB\xEF\x25\xBD\x25\x30", OPTIONLENGTH ;プレーヤー0
		PADDEDASCII "\xDB\xEF\x25\xBD\x25\x31", OPTIONLENGTH ;プレーヤー1
	.ENDIF
	.IF .DEFINED(JPN)
		PADDEDASCII "GUIDE", OPTIONLENGTH
		PADDEDASCII "TRACK", OPTIONLENGTH
		PADDEDASCII "CAST", OPTIONLENGTH
		PADDEDASCII "STONE", OPTIONLENGTH
		PADDEDASCII "STAFF", OPTIONLENGTH
		PADDEDASCII "\xEC\x25\xB6\x25", OPTIONLENGTH ;メーター
		PADDEDASCII "REPLAY", OPTIONLENGTH
		PADDEDASCII "TEST1", OPTIONLENGTH
		PADDEDASCII "TEST2", OPTIONLENGTH
		PADDEDASCII "", OPTIONLENGTH
	.ELSE
		PADDEDEBTEXT "GUIDE", OPTIONLENGTH
		PADDEDEBTEXT "TRACK", OPTIONLENGTH
		PADDEDEBTEXT "CAST", OPTIONLENGTH
		PADDEDEBTEXT "STONE", OPTIONLENGTH
		PADDEDEBTEXT "STAFF", OPTIONLENGTH
		.IF .DEFINED(TRANSLATEDEBUGTEXT)
			PADDEDEBTEXT "Meter", OPTIONLENGTH
		.ELSE
			PADDEDASCII "\xEC\x25\xB6\x25", OPTIONLENGTH ;メーター
		.ENDIF
		PADDEDEBTEXT "REPLAY", OPTIONLENGTH
		PADDEDEBTEXT "TEST1", OPTIONLENGTH
		PADDEDEBTEXT "TEST2", OPTIONLENGTH
		PADDEDEBTEXT "", OPTIONLENGTH
	.ENDIF
