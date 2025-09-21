if DEF(FAITHFUL)
	db  83,  80,  75, 101,  70,  70 ; 479 BST
	;   hp  atk  def  spe  sat  sdf
else
	db 105,  90,  85, 101,  90,  80 ; 551 BST
	;   hp  atk  def  spe  sat  sdf
endc

	db NORMAL, FLYING ; type
	db 45 ; catch rate
if DEF(FAITHFUL)
	db 172 ; base exp
else
	db 194 ; base exp
endc
	db NO_ITEM, NO_ITEM ; held items
	dn GENDER_F50, HATCH_FAST ; gender ratio, step cycles to hatch

	abilities_for PIDGEOT, NO_GUARD, TANGLED_FEET, BIG_PECKS
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_FLYING, EGG_FLYING ; egg groups

	ev_yield 3 Spe

	; tm/hm learnset
	tmhm CURSE, TOXIC, HIDDEN_POWER, SUNNY_DAY, HYPER_BEAM, PROTECT, RAIN_DANCE, RETURN, DIG, DOUBLE_TEAM, SWIFT, AERIAL_ACE, SUBSTITUTE, FACADE, REST, ATTRACT, THIEF, STEEL_WING, ROOST, FOCUS_BLAST, GIGA_IMPACT, U_TURN, FLY, AGILITY, CHARM, DOUBLE_EDGE, EARTH_POWER, ENDURE, HYPER_VOICE, SLEEP_TALK, SWAGGER
	; end
