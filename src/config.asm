
.DEFINE CLEAN_ROM 1

.DEFINE STARTING_LEVEL 1
.DEFINE STARTING_HP 30
.DEFINE STARTING_PP 10
.DEFINE STARTING_PP_JEFF 0
.DEFINE STARTING_STATS 2

.DEFINE EXP_LIMIT 9999999

.DEFINE ITEM_FIXING_CHARACTER CHARACTER_JEFF

.DEFINE PLAYER_CHAR_COUNT 4
.DEFINE NONPLAYER_CHAR_COUNT 2
.DEFINE TOTAL_PARTY_COUNT PLAYER_CHAR_COUNT + NONPLAYER_CHAR_COUNT
.DEFINE FIRST_ENEMY_INDEX TOTAL_PARTY_COUNT + 2 ; the +2 might be space for bad "party members" like the tiny lil ghost. unsure.

.DEFINE BATTLER_COUNT 32

.DEFINE DEFAULT_ENEMY_MOVEMENT_STYLE 19

.DEFINE ROCKIN_ALPHA_DAMAGE 80
.DEFINE ROCKIN_BETA_DAMAGE 180
.DEFINE ROCKIN_GAMMA_DAMAGE 320
.DEFINE ROCKIN_OMEGA_DAMAGE 640

.DEFINE STARSTORM_ALPHA_DAMAGE 360
.DEFINE STARSTORM_OMEGA_DAMAGE 720

.DEFINE FREEZE_ALPHA_DAMAGE 180
.DEFINE FREEZE_BETA_DAMAGE 360
.DEFINE FREEZE_GAMMA_DAMAGE 540
.DEFINE FREEZE_OMEGA_DAMAGE 720

.DEFINE FIRE_ALPHA_DAMAGE 80
.DEFINE FIRE_BETA_DAMAGE 160
.DEFINE FIRE_GAMMA_DAMAGE 240
.DEFINE FIRE_OMEGA_DAMAGE 320

.DEFINE THUNDER_ALPHA_HITS 1
.DEFINE THUNDER_ALPHA_DAMAGE 120
.DEFINE THUNDER_BETA_HITS 2
.DEFINE THUNDER_BETA_DAMAGE 120
.DEFINE THUNDER_GAMMA_HITS 3
.DEFINE THUNDER_GAMMA_DAMAGE 200
.DEFINE THUNDER_OMEGA_HITS 4
.DEFINE THUNDER_OMEGA_DAMAGE 200

.DEFINE BOTTLE_ROCKET_COUNT 1
.DEFINE BIG_BOTTLE_ROCKET_COUNT 5
.DEFINE MULTI_BOTTLE_ROCKET_COUNT 20

.DEFINE LIFEUP_ALPHA_HEALING 100
.DEFINE LIFEUP_BETA_HEALING 300
.DEFINE LIFEUP_GAMMA_HEALING 10000
.DEFINE LIFEUP_OMEGA_HEALING 400

.DEFINE MUMMY_WRAP_BASE_DAMAGE 400
.DEFINE HANDBAG_STRAP_BASE_DAMAGE 100

.DEFINE MUSHROOMIZED_TARGET_CHANGE_CHANCE 25 ;In percentage
.DEFINE CHANCE_OF_BODY_MOVING_AGAIN 15 ;In percentage
.DEFINE CHANCE_OF_WAKING_UP_WHEN_ATTACKED 128 ;As X/255

.DEFINE GUTS_FLOOR_FOR_SMAAAASH_CHANCE 25 ;Allies will be treated as having this much guts or more for SMAAAASH attack chances
.DEFINE SMAAAASH_FLASH_DURATION 1*SECOND ;Duration (in frames) for the screen flashes that come with SMAAAASH attacks

.DEFINE DAMAGE_TAKEN_SCREEN_SHAKE_DURATION_REGULAR 1*SECOND ;Duration in frames for the screen shaking that occurs when taking damage
.DEFINE DAMAGE_TAKEN_SCREEN_SHAKE_DURATION_REGULAR_UNKNOWN 7*MILLISECONDS ;Ditto, but conditions for triggering are unknown
.DEFINE DAMAGE_TAKEN_SCREEN_SHAKE_DURATION_MORTAL 1*SECOND ;Duration in frames for the screen shaking that occurs when taking mortal damage
.DEFINE DAMAGE_TAKEN_SCREEN_SHAKE_DURATION_MORTAL_HOLD 1*FIFTH_OF_A_SECOND ;Ditto, but for the hold periods of each shake - for intensifying

.DEFINE DEFAULT_MIRROR_TURN_COUNT 16 ;Number of turns that mirror lasts for

.DEFINE ATM_ACCOUNT_LIMIT 9999999

.DEFINE MAX_LEVEL 99

.DEFINE ACTIVE_HPPP_WINDOW_Y_OFFSET 18
.DEFINE NORMAL_HPPP_WINDOW_Y_OFFSET 19
.DEFINE HPPP_WINDOW_HEIGHT 8
.DEFINE HPPP_WINDOW_WIDTH 7

;All in pixel height
.DEFINE LETTERBOX_SIZE_LARGE 48
.DEFINE LETTERBOX_SIZE_MEDIUM 58
.DEFINE LETTERBOX_SIZE_SMALL 68

; Fixed-point: upper 2 bytes are the integer portion, the lower are the fraction
.DEFINE SHALLOW_WATER_SPEED $00008000 ;0.5x
.DEFINE DEEP_WATER_SPEED $0000547A ;0.33x
.DEFINE SKIP_SANDWICH_SPEED $00018000 ;1.5x

; Time between direction swaps caused by mushroomization (in frames)
.DEFINE TIME_BETWEEN_DIRECTION_SWAPS 30*SECONDS

; Item rarities - if rand() % rarity != 0, item drops
.DEFINE ITEM_RARITY_0 %01111111 ;50%
.DEFINE ITEM_RARITY_1 %00111111 ;25%
.DEFINE ITEM_RARITY_2 %00011111 ;12.5%
.DEFINE ITEM_RARITY_3 %00001111 ;6.25%
.DEFINE ITEM_RARITY_4 %00000111 ;3.125%
.DEFINE ITEM_RARITY_5 %00000011 ;1.5625%
.DEFINE ITEM_RARITY_6 %00000001 ;0.78125%

.DEFINE MAP_RESOLUTION_WIDTH 34
.DEFINE MAP_RESOLUTION_HEIGHT 30

.IF .DEFINED(JPN)
	.DEFINE DEBUG_BUILD 0

	;Refers to part of the BG buffer - size is in words
	.DEFINE UNK_SIZE 6

	.DEFINE TOWN_MAP_LABEL_GFX_SIZE $2000
	.DEFINE STAFF_CREDITS_FONT_GFX_SIZE $800

	; Length of credits scene...?
	.DEFINE CREDITS_LENGTH $11A8

	.DEFINE HEAPSIZE $400
.ELSEIF .DEFINED(PROTOTYPE19950327)
	.DEFINE DEBUG_BUILD 1

	;Refers to part of the BG buffer - size is in words
	.DEFINE UNK_SIZE 5

	.DEFINE TOWN_MAP_LABEL_GFX_SIZE $2000
	.DEFINE STAFF_CREDITS_FONT_GFX_SIZE $800

	; Length of credits scene...?
	.DEFINE CREDITS_LENGTH $11A8

	.DEFINE HEAPSIZE $200
.ELSE
	.DEFINE DEBUG_BUILD 0

	;Refers to part of the BG buffer - size is in words
	.DEFINE UNK_SIZE 6

	.DEFINE TOWN_MAP_LABEL_GFX_SIZE $2400
	.DEFINE STAFF_CREDITS_FONT_GFX_SIZE $C00

	; Length of credits scene...?
	.DEFINE CREDITS_LENGTH $11B0

	.DEFINE HEAPSIZE $200
.ENDIF