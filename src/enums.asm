.INCLUDE "constants/music.asm"
.INCLUDE "constants/sfx.asm"
.INCLUDE "constants/enemies.asm"
.INCLUDE "constants/actions.asm"
.INCLUDE "constants/overworldsprites.asm"
.INCLUDE "constants/event.asm"
.INCLUDE "constants/battle.asm"
.INCLUDE "constants/battlebgs.asm"
.INCLUDE "constants/items.asm"
.INCLUDE "constants/event_flags.asm"
.INCLUDE "constants/windows.asm"

.DEFINE NULL 0

.DEFINE OUT_OF_BATTLE 0
.DEFINE IN_BATTLE 1

.DEFINE CHARACTER_NESS 0
.DEFINE CHARACTER_PAULA 1
.DEFINE CHARACTER_JEFF 2
.DEFINE CHARACTER_POO 3

.DEFINE NUM_ENEMIES 231

.DEFINE EVENT_FLAG_COUNT 1024

.DEFINE COLOUR_SIZE 2
.DEFINE BPP4PALETTE_SIZE COLOUR_SIZE * 16
.DEFINE BPP2PALETTE_SIZE COLOUR_SIZE * 8
.DEFINE PALETTE_SIZE BPP4PALETTE_SIZE

.DEFINE SAVE_COUNT 3
.DEFINE SAVE_COPY_COUNT 2

.IFDEF USA
	.DEFINE TEXT_SPEED_STRING_LENGTH 7
	.DEFINE SOUND_SETTING_STRING_LENGTH 7
	.DEFINE NAME_THEM_STRING_LENGTH 40
.ELSE
	.DEFINE TEXT_SPEED_STRING_LENGTH 4
	.DEFINE SOUND_SETTING_STRING_LENGTH 5
	.DEFINE NAME_THEM_STRING_LENGTH 15
.ENDIF

.DEFINE THINGS_NAMED_COUNT 7

.DEFINE NUM_89D4_ENTRIES 70

.DEFINE MAX_ENTITIES 30

.DEFINE PARTY_LEADER_ENTITY_INDEX 24

; Map width and height, measured in number of 64x64 tiles
.DEFINE MAP_WIDTH_TILES 128
.DEFINE MAP_HEIGHT_TILES 160

; Map width and height, measured in number of 32x32 tiles
.DEFINE MAP_WIDTH_TILES32 256
.DEFINE MAP_HEIGHT_TILES32 320

; Sector size in terms of 32x32 tiles
.DEFINE SECTOR_WIDTH_TILES 8
.DEFINE SECTOR_HEIGHT_TILES 4

.DEFINE NUM_TEXT_PALETTES 4
.DEFINE NUM_MAP_PALETTES 12
.DEFINE NUM_NPC_PALETTES 10
.DEFINE NUM_PARTY_PALETTES 6
.DEFINE NUM_SPRITE_PALETTES NUM_NPC_PALETTES + NUM_PARTY_PALETTES

.DEFINE TEXT_PALETTES_SIZE NUM_TEXT_PALETTES * 16
.DEFINE MAP_PALETTES_SIZE NUM_MAP_PALETTES * 16
.DEFINE NPC_PALETTES_SIZE NUM_NPC_PALETTES * 16
.DEFINE PARTY_PALETTES_SIZE NUM_PARTY_PALETTES * 16
.DEFINE SPRITE_PALETTES_SIZE() (NUM_SPRITE_PALETTES) * 16

; Map width and height in terms of sectors
.DEFINE MAP_WIDTH_SECTORS MAP_WIDTH_TILES32 / SECTOR_WIDTH_TILES
.DEFINE MAP_HEIGHT_SECTORS MAP_HEIGHT_TILES32 / SECTOR_HEIGHT_TILES

 ;This group has special behaviour
.DEFINE MAGIC_BUTTERFLY_BATTLEGROUP 481

;Base giygas prayer damage
.DEFINE GIYGAS_PRAYER_DAMAGE_1 50
.DEFINE GIYGAS_PRAYER_DAMAGE_2 GIYGAS_PRAYER_DAMAGE_1 * 2
.DEFINE GIYGAS_PRAYER_DAMAGE_3 GIYGAS_PRAYER_DAMAGE_2 * 2
.DEFINE GIYGAS_PRAYER_DAMAGE_4 GIYGAS_PRAYER_DAMAGE_3 * 2
.DEFINE GIYGAS_PRAYER_DAMAGE_5 GIYGAS_PRAYER_DAMAGE_4 * 2
.DEFINE GIYGAS_PRAYER_DAMAGE_6 GIYGAS_PRAYER_DAMAGE_5 * 2
.DEFINE GIYGAS_PRAYER_DAMAGE_7 GIYGAS_PRAYER_DAMAGE_6 * 2
.DEFINE GIYGAS_PRAYER_DAMAGE_8 GIYGAS_PRAYER_DAMAGE_7 * 2
.DEFINE GIYGAS_PRAYER_DAMAGE_9 GIYGAS_PRAYER_DAMAGE_8 * 2
.DEFINE GIYGAS_PRAYER_DAMAGE_10 GIYGAS_PRAYER_DAMAGE_9 * 2

;Time stuff (frames)
.DEFINE FRAMES 1
.DEFINE FRAME FRAMES
.DEFINE THIRTIETHS_OF_A_SECOND 2
.DEFINE THIRTIETH_OF_A_SECOND THIRTIETHS_OF_A_SECOND
.DEFINE TWENTIETHS_OF_A_SECOND 3
.DEFINE TWENTIETH_OF_A_SECOND TWENTIETHS_OF_A_SECOND
.DEFINE FIFTEENTHS_OF_A_SECOND 4
.DEFINE FIFTEENTH_OF_A_SECOND FIFTEENTHS_OF_A_SECOND
.DEFINE TWELFTHS_OF_A_SECOND 5
.DEFINE TWELFTH_OF_A_SECOND TWELFTHS_OF_A_SECOND
.DEFINE MILLISECONDS 6
.DEFINE MILLISECOND MILLISECONDS
.DEFINE SIXTHS_OF_A_SECOND 10
.DEFINE SIXTH_OF_A_SECOND SIXTHS_OF_A_SECOND
.DEFINE FIFTHS_OF_A_SECOND 12
.DEFINE FIFTH_OF_A_SECOND FIFTHS_OF_A_SECOND
.DEFINE QUARTERS_OF_A_SECOND 15
.DEFINE QUARTER_OF_A_SECOND QUARTERS_OF_A_SECOND
.DEFINE THIRDS_OF_A_SECOND 20
.DEFINE THIRD_OF_A_SECOND THIRDS_OF_A_SECOND
.DEFINE HALVES_OF_A_SECOND 30
.DEFINE HALF_OF_A_SECOND HALVES_OF_A_SECOND
.DEFINE SECONDS 60
.DEFINE SECOND SECONDS
.DEFINE MINUTES 60 * SECONDS
.DEFINE MINUTE MINUTES

.DEFINE SCREEN_X_RESOLUTION 256
.DEFINE SCREEN_Y_RESOLUTION 224

.DEFINE OBJECT_TICK_DISABLED $8000
.DEFINE OBJECT_MOVE_DISABLED $4000

.DEFINE CC_1C_01_STRING_TYPE $00
.DEFINE CC_1C_01_INTEGER_TYPE $80

.ENUM WALKING_STYLE
	NORMAL = 0
	BICYCLE = 3
	GHOST = 4
	SLOWER = 6
	LADDER = 7
	ROPE = 8
	SLOWEST = 10
	ESCALATOR = 12
	STAIRS = 13
.ENDENUM

.ENUM DIRECTION
	UP = 0
	UP_RIGHT = 1
	RIGHT = 2
	DOWN_RIGHT = 3
	DOWN = 4
	DOWN_LEFT = 5
	LEFT = 6
	UP_LEFT = 7
.ENDENUM

.ENUM CC_DIRECTION
	USE_VAR = 0
	UNDEFINED = 0
	UP = DIRECTION::UP+1
	UP_RIGHT = DIRECTION::UP_RIGHT+1
	RIGHT = DIRECTION::RIGHT+1
	DOWN_RIGHT = DIRECTION::DOWN_RIGHT+1
	DOWN = DIRECTION::DOWN+1
	DOWN_LEFT = DIRECTION::DOWN_LEFT+1
	LEFT = DIRECTION::LEFT+1
	UP_LEFT = DIRECTION::UP_LEFT+1
.ENDENUM

.ENUM DIRECTION_MASK
	UP = 1<<0
	UP_RIGHT = 1<<1
	RIGHT = 1<<2
	DOWN_RIGHT = 1<<3
	DOWN = 1<<4
	DOWN_LEFT = 1<<5
	LEFT = 1<<6
	UP_LEFT = 1<<7
.ENDENUM

.ENUM WARP_STYLE
	INSTANT_PLUS_FADE = 0
	STANDARD_DOOR = 1
	STANDARD_DOOR_WHITE = 2
	STANDARD_DOOR2 = 3
	STANDARD_DOOR_WITH_SOUND = 4
	HOLE = 5
	STANDARD_DOOR3 = 6
	STANDARD_DOOR_WITH_SOUND2 = 7
	STANDARD_DOOR_WITH_SOUND3 = 8
	STANDARD_DOOR_WITH_SOUND4 = 9
	STANDARD_DOOR4 = 10
	UNKNOWN = 11
	STANDARD_DOOR5 = 12
	STANDARD_DOOR6 = 13
	STANDARD_DOOR_WHITE2 = 14
	STANDARD_DOOR_WITH_UNKNOWN_SOUND = 15
	PHASE_DISTORTER_III = 16
	MOONSIDE1 = 17
	MOONSIDE2 = 18
	MOONSIDE3 = 19
	MOONSIDE4 = 20
	MOONSIDE5 = 21
	MOONSIDE6 = 22
	MOONSIDE7 = 23
	MOONSIDE8 = 24
	MOONSIDE9 = 25
	MOONSIDE10 = 26
	MOONSIDE11 = 27
	STANDARD_DOOR7 = 28
	STANDARD_DOOR_WHITE_SLOW = 29
	STANDARD_DOOR_WHITE_SLOW_SOUND = 30
	GHOST_TUNNEL = 31
	GHOST_TUNNEL2 = 32
	HOLE2 = 33
.ENDENUM

.ENUM PAD
	B_BUTTON = $8000
	Y_BUTTON = $4000
	SELECT_BUTTON = $2000
	START_BUTTON = $1000
	UP = $800
	DOWN = $400
	LEFT = $200
	RIGHT = $100
	A_BUTTON = $80
	X_BUTTON = $40
	L_BUTTON = $20
	R_BUTTON = $10
.ENDENUM

.ENUM BATTLE_SPRITE_SIZE
	_32X32 = 1
	_64X32 = 2
	_32X64 = 3
	_64X64 = 4
	_128X64 = 5
	_128X128 = 6
.ENDENUM

.ENUM TELEPORT_STYLE
	NONE = 0
	PSI_ALPHA = 1
	PSI_BETA = 2
	INSTANT = 3
	PSI_BETTER = 4
	UNKNOWN = 5
.ENDENUM

.ENUM FILE_MENU_NEW_GAME_NAME
	CHAR_1
	CHAR_2
	CHAR_3
	CHAR_4
	DOG
	FAVORITE_FOOD
	FAVORITE_THING
.ENDENUM

.ENUM NPC_TYPE
	PERSON = 1
	ITEM_BOX = 2
	OBJECT = 3
.ENDENUM

.ENUM GENDER
	MALE = 1
	FEMALE = 2
	NEUTRAL = 3
.ENDENUM

.ENUM ENEMYTYPE
	NORMAL = 0
	INSECT = 1
	METAL = 2
.ENDENUM

.ENUM ITEM_FLAGS
	NESS_CAN_USE = $01
	PAULA_CAN_USE = $02
	JEFF_CAN_USE = $04
	POO_CAN_USE = $08
	TRANSFORM = $10
	CANNOT_GIVE = $20
	UNKNOWN = $40
	CONSUMED_ON_USE = $80
.ENDENUM

.ENUM EQUIPMENT_SLOT
	WEAPON = 0
	BODY = 1
	ARMS = 2
	OTHER = 3
	ALL = 3
.ENDENUM

.ENUM DISTORTION_STYLE
	NONE = 0
	HORIZONTAL_SMOOTH = 1
	HORIZONTAL_INTERLACED = 2
	VERTICAL_SMOOTH = 3
	UNKNOWN = 4
.ENDENUM

.ENUM BG_LAYER
	LAYER_1 = 1
	LAYER_2 = 2
	LAYER_3 = 3
	LAYER_4 = 4
.ENDENUM

.ENUM LETTERBOX_STYLE
	NONE = 0
	LARGE = 1
	MEDIUM = 2
	SMALL = 3
.ENDENUM

.ENUM DOOR_TYPE
	TYPE0 = 0
	TYPE1 = 1
	TYPE2 = 2
	TYPE3 = 3
	TYPE4 = 4
	TYPE5 = 5
	TYPE6 = 6
	TYPE7 = 7
.ENDENUM

.ENUM MAP_SECTOR_CONFIG
	UNKNOWN = 1<<6
	CANNOT_TELEPORT = 1<<7
.ENDENUM

.ENUM MAP_SECTOR_MISC_CONFIG
	NONE = 0
	INDOOR_AREA = 1
	EXIT_MOUSE_USABLE = 2
	USE_MINI_SPRITES = 3
	USE_MAGICANT_SPRITES = 4
	USE_ROBOT_SPRITES = 5
	FREQUENT_MAGIC_BUTTERFLIES = 6
	FREQUENT_MAGIC_BUTTERFLIES2 = 7
.ENDENUM

.ENUM MAP_SECTOR_TOWN_MAP
	NONE = 0
	ONETT = 1<<3
	TWOSON = 2<<3
	THREED = 3<<3
	FOURSIDE = 4<<3
	SCARABA = 5<<3
	SUMMERS = 6<<3
	NONE2 = 7<<3
.ENDENUM

.ENUM STATE
	OFF = 0
	ON = 1
.ENDENUM

.ENUM TPT_FLAG
	SHOW_ALWAYS = 0
	SHOW_IF_OFF = 1
	SHOW_IF_ON = 2
.ENDENUM

.ENUM PARTY_MEMBER
	NONE = 0
	NESS = 1
	PAULA = 2
	JEFF = 3
	POO = 4
	POKEY = 5
	PICKY = 6
	KING = 7
	TONY = 8
	BUBBLE_MONKEY = 9
	DUNGEON_MAN = 10
	FLYING_MAN1 = 11
	FLYING_MAN2 = 12
	FLYING_MAN3 = 13
	FLYING_MAN4 = 14
	FLYING_MAN5 = 15
	TEDDY_BEAR = 16
	PLUSH_TEDDY_BEAR = 17
.ENDENUM

.ENUM PARTY_MEMBER_TEXT
	NESS
	PAULA
	JEFF
	POO
	POKEY
	PICKY
	KING
	TONY
	BUBBLE_MONKEY
	DUNGEON_MAN
	FLYING_MAN1
	FLYING_MAN2
	FLYING_MAN3
	FLYING_MAN4
	FLYING_MAN5
	TEDDY_BEAR
	PLUSH_TEDDY_BEAR
.ENDENUM

.ENUM PARTY_PSI_FLAGS
	TELEPORT_ALPHA = 1<<0
	TELEPORT_BETA = 1<<1
	STARSTORM_ALPHA = 1<<2
	STARSTORM_BETA = 1<<3
.ENDENUM

.ENUM MENU_OPTIONS
	TALK_TO = 1
	GOODS = 2
	PSI = 3
	EQUIP = 4
	CHECK = 5
	STATUS = 6
.ENDENUM

.ENUM SURFACE_FLAGS
	OBSCURE_LOWER_BODY = 1<<0
	OBSCURE_UPPER_BODY = 1<<1
	CAUSES_SUNSTROKE = 1<<2
	SHALLOW_WATER = 1<<3
	DEEP_WATER = SHALLOW_WATER + CAUSES_SUNSTROKE
	LADDER_OR_STAIRS = 1<<4
	UNKNOWN1 = 1<<5
	UNKNOWN2 = 1<<6
	SOLID = 1<<7
.ENDENUM

.ENUM SPRITE_TABLE_10_FLAGS
	UNKNOWN0 = 1<<0
	UNKNOWN1 = 1<<1
	UNKNOWN2 = 1<<2
	UNKNOWN3 = 1<<3
	UNKNOWN4 = 1<<4
	UNKNOWN5 = 1<<5
	UNKNOWN6 = 1<<6
	UNKNOWN7 = 1<<7
	UNKNOWN8 = 1<<8
	UNKNOWN9 = 1<<9
	UNKNOWN10 = 1<<10
	UNKNOWN11 = 1<<11
	UNKNOWN12 = 1<<12
	UNKNOWN13 = 1<<13
	UNKNOWN14 = 1<<14
	UNKNOWN15 = 1<<15
.ENDENUM

.ENUM EVENT_9AF9_TABLE
	UNKNOWN_3 = 0
	UNKNOWN_4 = 1
	UNKNOWN_5 = 2
	UNKNOWN_6 = 3
	UNKNOWN_7 = 4
	UNKNOWN_8 = 5
	UNKNOWN_9 = 6
	UNKNOWN_10 = 7
.ENDENUM
