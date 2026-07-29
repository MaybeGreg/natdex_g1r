return function(mod)
	-- Friendship evolutions
	mod.content.evolution_methods:register("FRIENDSHIP", {
		check = function(game, mon, evo, trigger)
		return trigger.kind == "levelup" and (mon.friendship or 0) >= 220
		end,
	})
	mod.content.evolution_methods:register("TYROGUE_CHAN", {
		check = function(game, mon, evo, trigger)
		return trigger.kind == "levelup" and (mon.friendship or 0) >= 220
		end,
	})
	mod.content.evolution_methods:register("TYROGUE_LEE", {
		check = function(game, mon, evo, trigger)
		return trigger.kind == "levelup" and (mon.friendship or 0) >= 220
		end,
	})
	mod.content.evolution_methods:register("TYROGUE_TOP", {
		check = function(game, mon, evo, trigger)
		return trigger.kind == "levelup" and (mon.friendship or 0) >= 220
		end,
	})
	mod.content.items:register("LINKING_CORD", {
	  id = "LINKING_CORD", name = "LINKING CORD", price = 2100, tossable = true,
	})

	-- Start from One
	dex_no = 1

	-- Bulbasaur Line
	mod.content.pokemon:patch("BULBASAUR", { dex = dex_no })
	dex_no = dex_no + 1
	mod.content.pokemon:patch("IVYSAUR", { dex = dex_no })
	dex_no = dex_no + 1
	mod.content.pokemon:patch("VENUSAUR", { dex = dex_no })
	dex_no = dex_no + 1

	-- Charmander Line
	mod.content.pokemon:patch("CHARMANDER", { dex = dex_no })
	dex_no = dex_no + 1
	mod.content.pokemon:patch("CHARMELEON", { dex = dex_no })
	dex_no = dex_no + 1
	mod.content.pokemon:patch("CHARIZARD", { dex = dex_no })
	dex_no = dex_no + 1

	-- Squirtle Line
	mod.content.pokemon:patch("SQUIRTLE", { dex = dex_no })
	dex_no = dex_no + 1
	mod.content.pokemon:patch("WARTORTLE", { dex = dex_no })
	dex_no = dex_no + 1
	mod.content.pokemon:patch("BLASTOISE", { dex = dex_no })
	dex_no = dex_no + 1


	-- Caterpie Line
	mod.content.pokemon:patch("CATERPIE", { dex = dex_no })
	dex_no = dex_no + 1
	mod.content.pokemon:patch("METAPOD", { dex = dex_no })
	dex_no = dex_no + 1
	mod.content.pokemon:patch("BUTTERFREE", { dex = dex_no })
	dex_no = dex_no + 1

	-- Weedle Line
	mod.content.pokemon:patch("WEEDLE", { dex = dex_no })
	dex_no = dex_no + 1
	mod.content.pokemon:patch("KAKUNA", { dex = dex_no })
	dex_no = dex_no + 1
	mod.content.pokemon:patch("BEEDRILL", { dex = dex_no })
	dex_no = dex_no + 1

	-- Pidgey Line
	mod.content.pokemon:patch("PIDGEY", { dex = dex_no })
	dex_no = dex_no + 1
	mod.content.pokemon:patch("PIDGEOTTO", { dex = dex_no })
	dex_no = dex_no + 1
	mod.content.pokemon:patch("PIDGEOT", { dex = dex_no })
	dex_no = dex_no + 1

	-- Rattata Line
	mod.content.pokemon:patch("RATTATA", { dex = dex_no })
	dex_no = dex_no + 1
	mod.content.pokemon:patch("RATICATE", { dex = dex_no })
	dex_no = dex_no + 1

	-- Spearow Line
	mod.content.pokemon:patch("SPEAROW", { dex = dex_no })
	dex_no = dex_no + 1
	mod.content.pokemon:patch("FEAROW", { dex = dex_no })
	dex_no = dex_no + 1

	-- Ekans Line
	mod.content.pokemon:patch("EKANS", { dex = dex_no })
	dex_no = dex_no + 1
	mod.content.pokemon:patch("ARBOK", { dex = dex_no })
	dex_no = dex_no + 1

	-- Pikachu Line
	mod.content.text:register("_PichuDexEntry", "It's too small to \ncontain its \nelectricity. When \nit discharges it\nends up shocking\nitself.")
	mod.content.palettes:register("PICHU", {{255,255,255},{247,223,111},{207,159,0},{0,0,0}})
	mod.content.pokemon:register("PICHU", {
		id = "PICHU", 
		name = "PICHU", 
		dex = dex_no, 
		dexEntry = { 
			heightFt = 1,
			heightIn = 0,
			kind = "TINY MOUSE",
			weight = 44,
			text = ("_PichuDexEntry")
		},
		types = { "ELECTRIC" },
		baseStats = { 
		hp = 20, 
		attack = 40, 
		defense = 15, 
		speed = 60, 
		special = 35 },
		catchRate = 190, 
		baseExp = 42, 
		growthRate = "MEDIUM_FAST",
		level1Moves = { "THUNDERSHOCK" }, 
		learnset = {
			{ level = 6, move = "TAIL_WHIP" },
			{ level = 8, move = "THUNDER_WAVE" },
		}, 
		tmhm = {
			"MEGA_PUNCH",
			"MEGA_KICK",
			"TOXIC",
			"BODY_SLAM",
			"TAKE_DOWN",
			"DOUBLE_EDGE",
			"PAY_DAY",
			"SUBMISSION",
			"SEISMIC_TOSS",
			"RAGE",
			"THUNDERBOLT",
			"THUNDER",
			"MIMIC",
			"DOUBLE_TEAM",
			"REFLECT",
			"BIDE",
			"SWIFT",
			"SKULL_BASH",
			"REST",
			"THUNDER_WAVE",
			"SUBSTITUTE",
			"FLASH",
		},
		evolutions = { { method = "FRIENDSHIP", species = "PIKACHU" }, { method = "LEVEL", level = 15, species = "PIKACHU" } },
		spriteFront = mod.assets:path("assets/pichu_front.png"),
		spriteBack = mod.assets:path("assets/pichu_back.png"),
		frontSize = 5,
		palette = "PICHU"
	})
	mod.content.cries:register("PICHU", { file = mod.assets:path("assets/pichu_cry.wav") })
	mod.content.icons:register("PICHU", "FAIRY")
	dex_no = dex_no + 1
	mod.content.pokemon:patch("PIKACHU", { dex = dex_no })
	dex_no = dex_no + 1
	mod.content.pokemon:patch("RAICHU", { dex = dex_no })
	dex_no = dex_no + 1

	-- Sandshrew Line
	mod.content.pokemon:patch("SANDSHREW", { dex = dex_no })
	dex_no = dex_no + 1
	mod.content.pokemon:patch("SANDSLASH", { dex = dex_no })
	dex_no = dex_no + 1

	-- Nidoran Female Line
	mod.content.pokemon:patch("NIDORAN_F", { dex = dex_no })
	dex_no = dex_no + 1
	mod.content.pokemon:patch("NIDORINA", { dex = dex_no })
	dex_no = dex_no + 1
	mod.content.pokemon:patch("NIDOQUEEN", { dex = dex_no })
	dex_no = dex_no + 1

	-- Nidoran Male Line
	mod.content.pokemon:patch("NIDORAN_M", { dex = dex_no })
	dex_no = dex_no + 1
	mod.content.pokemon:patch("NIDORINO", { dex = dex_no })
	dex_no = dex_no + 1
	mod.content.pokemon:patch("NIDOKING", { dex = dex_no })
	dex_no = dex_no + 1

	-- Clefairy Line
	mod.content.text:register("_CleffaDexEntry", "A child born from the stars.\nCan be heard humming sometimes.")
	mod.content.palettes:register("CLEFFA", {{255,255,255},{247,223,111},{207,159,0},{0,0,0}})
	mod.content.pokemon:register("CLEFFA", {
		id = "CLEFFA", 
		name = "CLEFFA", 
		dex = dex_no, 
		dexEntry = { 
			heightFt = 1,
			heightIn = 0,
			kind = "STAR SHAPE   ",
			weight = 66,
			text = ("_CleffaDexEntry")
		},
		types = { "NORMAL" },
		baseStats = { 
		hp = 50, 
		attack = 25, 
		defense = 28, 
		speed = 15, 
		special = 55 },
		catchRate = 150, 
		baseExp = 37, 
		growthRate = "FAST",
		level1Moves = { "POUND" }, 
		learnset = {
			{ level = 8, move = "SING" },
		}, 
		tmhm = {
			"MEGA_PUNCH",
			"MEGA_KICK",
			"TOXIC",
			"BODY_SLAM",
			"TAKE_DOWN",
			"DOUBLE_EDGE",
			"BUBBLEBEAM",
			"WATER_GUN",
			"ICE_BEAM",
			"BLIZZARD",
			"SUBMISSION",
			"COUNTER",
			"SEISMIC_TOSS",
			"RAGE",
			"SOLARBEAM",
			"THUNDERBOLT",
			"THUNDER",
			"PSYCHIC_M",
			"TELEPORT",
			"MIMIC",
			"DOUBLE_TEAM",
			"REFLECT",
			"BIDE",
			"METRONOME",
			"FIRE_BLAST",
			"SKULL_BASH",
			"REST",
			"THUNDER_WAVE",
			"PSYWAVE",
			"TRI_ATTACK",
			"SUBSTITUTE",
			"STRENGTH",
			"FLASH",
		},
		evolutions = { { method = "FRIENDSHIP", species = "CLEFAIRY" }, { method = "LEVEL", level = 15, species = "CLEFAIRY" } },
		spriteFront = mod.assets:path("assets/_temp_front.png"),
		spriteBack = mod.assets:path("assets/_temp_back.png"),
		frontSize = 5,
		palette = "CLEFFA"
	})
	mod.content.cries:register("CLEFFA", { file = mod.assets:path("assets/cleffa_cry.wav") })
	mod.content.icons:register("CLEFFA", "FAIRY")
	dex_no = dex_no + 1
	mod.content.pokemon:patch("CLEFAIRY", { dex = dex_no })
	dex_no = dex_no + 1
	mod.content.pokemon:patch("CLEFABLE", { dex = dex_no })
	dex_no = dex_no + 1

	-- Vulpix Line
	mod.content.pokemon:patch("VULPIX", { dex = dex_no })
	dex_no = dex_no + 1
	mod.content.pokemon:patch("NINETALES", { dex = dex_no })
	dex_no = dex_no + 1

	-- Jigglypuff Line
	mod.content.text:register("_IgglybuffDexEntry", "If the wind is strong\nit can be seen struggling\nto hold on.")
	mod.content.palettes:register("IGGLYBUFF", {{255,255,255},{247,223,111},{207,159,0},{0,0,0}})
	mod.content.pokemon:register("IGGLYBUFF", {
		id = "IGGLYBUFF", 
		name = "IGGLYBUFF", 
		dex = dex_no, 
		dexEntry = { 
			heightFt = 1,
			heightIn = 0,
			kind = "BALLOON      ",
			weight = 33,
			text = ("_IgglybuffDexEntry")
		},
		types = { "NORMAL" },
		baseStats = { 
		hp = 90, 
		attack = 30, 
		defense = 15, 
		speed = 15, 
		special = 40 },
		catchRate = 170, 
		baseExp = 39, 
		growthRate = "FAST",
		level1Moves = { "POUND","SING" }, 
		learnset = {
			{ level = 4, move = "DEFENSE_CURL" },
		}, 
		tmhm = {
		  "MEGA_PUNCH",
		  "MEGA_KICK",
		  "TOXIC",
		  "BODY_SLAM",
		  "TAKE_DOWN",
		  "DOUBLE_EDGE",
		  "BUBBLEBEAM",
		  "WATER_GUN",
		  "ICE_BEAM",
		  "BLIZZARD",
		  "SUBMISSION",
		  "COUNTER",
		  "SEISMIC_TOSS",
		  "RAGE",
		  "SOLARBEAM",
		  "THUNDERBOLT",
		  "THUNDER",
		  "PSYCHIC_M",
		  "TELEPORT",
		  "MIMIC",
		  "DOUBLE_TEAM",
		  "REFLECT",
		  "BIDE",
		  "FIRE_BLAST",
		  "SKULL_BASH",
		  "REST",
		  "THUNDER_WAVE",
		  "PSYWAVE",
		  "TRI_ATTACK",
		  "SUBSTITUTE",
		  "STRENGTH",
		  "FLASH",
		},
		evolutions = { { method = "FRIENDSHIP", species = "JIGGLYPUFF" }, { method = "LEVEL", level = 15, species = "JIGGLYPUFF" } },
		spriteFront = mod.assets:path("assets/_temp_front.png"),
		spriteBack = mod.assets:path("assets/_temp_back.png"),
		frontSize = 5,
		palette = "IGGLYBUFF"
	})
	mod.content.cries:register("IGGLYBUFF", { file = mod.assets:path("assets/igglybuff_cry.wav") })
	mod.content.icons:register("IGGLYBUFF", "FAIRY")
	dex_no = dex_no + 1
	mod.content.pokemon:patch("JIGGLYPUFF", { dex = dex_no })
	dex_no = dex_no + 1
	mod.content.pokemon:patch("WIGGLYTUFF", { dex = dex_no })
	dex_no = dex_no + 1

	-- Zubat Line
	mod.content.pokemon:patch("ZUBAT", { dex = dex_no })
	dex_no = dex_no + 1
	mod.content.pokemon:patch("GOLBAT", { dex = dex_no,
		evolutions = { { method = "FRIENDSHIP", species = "CROBAT" }, { method = "LEVEL", level = 45, species = "CROBAT" } },	})
	dex_no = dex_no + 1
	mod.content.text:register("_CrobatDexEntry", "The wings are silent.\nThis makes CROBAT much\nmore threatening.")
	mod.content.palettes:register("CROBAT", {{255,255,255},{247,223,111},{207,159,0},{0,0,0}})
	mod.content.pokemon:register("CROBAT", {
		id = "CROBAT", 
		name = "CROBAT", 
		dex = dex_no, 
		dexEntry = { 
			heightFt = 5,
			heightIn = 11,
			kind = "BAT         ",
			weight = 1653,
			text = ("_CrobatDexEntry")
		},
		types = { "POISON", "FLYING" },
		baseStats = { 
		hp = 85, 
		attack = 90, 
		defense = 80, 
		speed = 130, 
		special = 80 },
		catchRate = 90, 
		baseExp = 204, 
		growthRate = "MEDIUM_FAST",
		level1Moves = { "SCREECH","LEECH_LIFE","SUPERSONIC" }, 
		learnset = {
			{ level = 12, move = "BITE" },
			{ level = 19, move = "CONFUSE_RAY" },
			{ level = 30, move = "WING_ATTACK" },
			{ level = 55, move = "HAZE" },
		}, 
		tmhm = {
		  "RAZOR_WIND",
		  "WHIRLWIND",
		  "TOXIC",
		  "TAKE_DOWN",
		  "DOUBLE_EDGE",
		  "HYPER_BEAM",
		  "RAGE",
		  "MEGA_DRAIN",
		  "MIMIC",
		  "DOUBLE_TEAM",
		  "BIDE",
		  "SWIFT",
		  "REST",
		  "SUBSTITUTE",
		  "FLY",
		},
		spriteFront = mod.assets:path("assets/_temp_front.png"),
		spriteBack = mod.assets:path("assets/_temp_back.png"),
		frontSize = 5,
		palette = "CROBAT",
		evolutions = {}
	})
	mod.content.cries:register("CROBAT", { file = mod.assets:path("assets/crobat_cry.wav") })
	mod.content.icons:register("CROBAT", "MON")
	dex_no = dex_no + 1

	-- Oddish Line
	mod.content.pokemon:patch("ODDISH", { dex = dex_no })
	dex_no = dex_no + 1
	mod.content.pokemon:patch("GLOOM", { dex = dex_no,
		evolutions = { { method = "LEVEL", level = 45, species = "BELLOSSOM" } }	
	})
	dex_no = dex_no + 1
	mod.content.pokemon:patch("VILEPLUME", { dex = dex_no })
	dex_no = dex_no + 1
	mod.content.text:register("_BellossomDexEntry", "On sunny days,\nBELLOSSOM can be see\nholding dance contests.")
	mod.content.palettes:register("BELLOSSOM", {{255,255,255},{247,223,111},{207,159,0},{0,0,0}})
	mod.content.pokemon:register("BELLOSSOM", {
		id = "BELLOSSOM", 
		name = "BELLOSSOM", 
		dex = dex_no, 
		dexEntry = { 
			heightFt = 1,
			heightIn = 4,
			kind = "FLOWER         ",
			weight = 128,
			text = ("_BellossomDexEntry")
		},
		types = { "GRASS" },
		baseStats = { 
		hp = 75, 
		attack = 80, 
		defense = 85, 
		speed = 50, 
		special = 100 },
		catchRate = 45, 
		baseExp = 184, 
		growthRate = "MEDIUM_SLOW",
		level1Moves = { "ABSORB","STUN_SPORE","PETAL_DANCE" }, 
		learnset = {
			{ level = 55, move = "SOLARBEAM" },
		}, 
		tmhm = {
		  "SWORDS_DANCE",
		  "TOXIC",
		  "TAKE_DOWN",
		  "DOUBLE_EDGE",
		  "RAGE",
		  "MEGA_DRAIN",
		  "SOLARBEAM",
		  "MIMIC",
		  "DOUBLE_TEAM",
		  "REFLECT",
		  "BIDE",
		  "REST",
		  "SUBSTITUTE",
		  "CUT",
		},
		spriteFront = mod.assets:path("assets/_temp_front.png"),
		spriteBack = mod.assets:path("assets/_temp_back.png"),
		frontSize = 5,
		palette = "BELLOSSOM",
		evolutions = {}
	})
	mod.content.cries:register("BELLOSSOM", { file = mod.assets:path("assets/bellossom_cry.wav") })
	mod.content.icons:register("BELLOSSOM", "GRASS")
	dex_no = dex_no + 1
	
	-- Paras Line
	mod.content.pokemon:patch("PARAS", { dex = dex_no })
	dex_no = dex_no + 1
	mod.content.pokemon:patch("PARASECT", { dex = dex_no })
	dex_no = dex_no + 1

	-- Venonat Line
	mod.content.pokemon:patch("VENONAT", { dex = dex_no })
	dex_no = dex_no + 1
	mod.content.pokemon:patch("VENOMOTH", { dex = dex_no })
	dex_no = dex_no + 1

	-- Diglett Line
	mod.content.pokemon:patch("DIGLETT", { dex = dex_no })
	dex_no = dex_no + 1
	mod.content.pokemon:patch("DUGTRIO", { dex = dex_no })
	dex_no = dex_no + 1

	-- Meowth Line
	mod.content.pokemon:patch("MEOWTH", { dex = dex_no })
	dex_no = dex_no + 1
	mod.content.pokemon:patch("PERSIAN", { dex = dex_no })
	dex_no = dex_no + 1

	-- Psyduck Line
	mod.content.pokemon:patch("PSYDUCK", { dex = dex_no })
	dex_no = dex_no + 1
	mod.content.pokemon:patch("GOLDUCK", { dex = dex_no })
	dex_no = dex_no + 1

	-- Mankey Line
	mod.content.pokemon:patch("MANKEY", { dex = dex_no })
	dex_no = dex_no + 1
	mod.content.pokemon:patch("PRIMEAPE", { dex = dex_no,
		evolutions = { { method = "LEVEL", level = 45, species = "ANNIHILAPE" } }	
	})
	dex_no = dex_no + 1
	mod.content.text:register("_AnnihilapeDexEntry", "Even in death, the\nrage of ANNIHILAPE\npersists.")
	mod.content.palettes:register("ANNIHILAPE", {{255,255,255},{247,223,111},{207,159,0},{0,0,0}})
	mod.content.pokemon:register("ANNIHILAPE", {
		id = "ANNIHILAPE", 
		name = "ANNIHILAPE", 
		dex = dex_no, 
		dexEntry = { 
			heightFt = 3,
			heightIn = 11,
			kind = "RAGE MONKEY         ",
			weight = 1235,
			text = ("_AnnihilapeDexEntry")
		},
		types = { "FIGHTING", "GHOST" },
		baseStats = { 
			hp = 110, 
			attack = 115, 
			defense = 80, 
			speed = 90, 
			special = 90 },
		catchRate = 45, 
		baseExp = 168, 
		growthRate = "MEDIUM_FAST",
		level1Moves = { "COUNTER","SCRATCH","LEER","FOCUS_ENERGY" }, 
		learnset = {
			{ level = 5, move = "FURY_SWIPES" },
			{ level = 8, move = "LOW_KICK" },
			{ level = 12, move = "SEISMIC_TOSS" },
			{ level = 30, move = "THRASH" },
			{ level = 44, move = "SCREECH" },
		}, 
		tmhm = {
		  "MEGA_PUNCH",
		  "MEGA_KICK",
		  "TOXIC",
		  "BODY_SLAM",
		  "TAKE_DOWN",
		  "DOUBLE_EDGE",
		  "HYPER_BEAM",
		  "PAY_DAY",
		  "SUBMISSION",
		  "COUNTER",
		  "SEISMIC_TOSS",
		  "RAGE",
		  "THUNDERBOLT",
		  "THUNDER",
		  "DIG",
		  "MIMIC",
		  "DOUBLE_TEAM",
		  "BIDE",
		  "METRONOME",
		  "SWIFT",
		  "SKULL_BASH",
		  "REST",
		  "ROCK_SLIDE",
		  "SUBSTITUTE",
		  "STRENGTH",
		},
		spriteFront = mod.assets:path("assets/_temp_front.png"),
		spriteBack = mod.assets:path("assets/_temp_back.png"),
		frontSize = 5,
		palette = "ANNIHILAPE",
		evolutions = {}
	})
	mod.content.cries:register("ANNIHILAPE", { file = mod.assets:path("assets/annihilape_cry.wav") })
	mod.content.icons:register("ANNIHILAPE", "MON")
	dex_no = dex_no + 1

	-- Growlithe Line
	mod.content.pokemon:patch("GROWLITHE", { dex = dex_no })
	dex_no = dex_no + 1
	mod.content.pokemon:patch("ARCANINE", { dex = dex_no })
	dex_no = dex_no + 1

	-- Poliwag Line
	mod.content.pokemon:patch("POLIWAG", { dex = dex_no } )
	dex_no = dex_no + 1
	mod.content.pokemon:patch("POLIWHIRL", { dex = dex_no,
		evolutions = {
		  {
			item = "WATER_STONE",
			level = 1,
			method = "ITEM",
			species = "POLIWRATH",
		  },
		  { 
			method = "LEVEL",
			level = 40,
			species = "POLITOED"
		} 
	}})
	dex_no = dex_no + 1
	mod.content.pokemon:patch("POLIWRATH", { dex = dex_no })
	dex_no = dex_no + 1
	mod.content.text:register("_PolitoedDexEntry", "It prefers being by\nthe riverside.\nIt enjoys jumping across\nrivers.")
	mod.content.palettes:register("POLITOED", {{255,255,255},{247,223,111},{207,159,0},{0,0,0}})
	mod.content.pokemon:register("POLITOED", {
		id = "POLITOED", 
		name = "POLITOED", 
		dex = dex_no, 
		dexEntry = { 
			heightFt = 3,
			heightIn = 7,
			kind = "FROG         ",
			weight = 747,
			text = ("_PolitoedDexEntry")
		},
		types = { "WATER" },
		baseStats = { 
			hp = 90, 
			attack = 75, 
			defense = 75, 
			speed = 70, 
			special = 100 },
		catchRate = 45, 
		baseExp = 185, 
		growthRate = "MEDIUM_SLOW",
		level1Moves = { "WATER_GUN", "HYPNOSIS", "DOUBLESLAP" }, 
		learnset = {}, 
		tmhm = {
		  "MEGA_PUNCH",
		  "MEGA_KICK",
		  "TOXIC",
		  "BODY_SLAM",
		  "TAKE_DOWN",
		  "DOUBLE_EDGE",
		  "BUBBLEBEAM",
		  "WATER_GUN",
		  "ICE_BEAM",
		  "BLIZZARD",
		  "SUBMISSION",
		  "COUNTER",
		  "SEISMIC_TOSS",
		  "RAGE",
		  "EARTHQUAKE",
		  "FISSURE",
		  "PSYCHIC_M",
		  "MIMIC",
		  "DOUBLE_TEAM",
		  "BIDE",
		  "METRONOME",
		  "SKULL_BASH",
		  "REST",
		  "PSYWAVE",
		  "SUBSTITUTE",
		  "SURF",
		  "STRENGTH",
		},
		spriteFront = mod.assets:path("assets/_temp_front.png"),
		spriteBack = mod.assets:path("assets/_temp_back.png"),
		frontSize = 5,
		palette = "POLITOED",
		evolutions = {}
	})
	mod.content.cries:register("POLITOED", { file = mod.assets:path("assets/politoed_cry.wav") })
	mod.content.icons:register("POLITOED", "MON")
	dex_no = dex_no + 1

	-- Abra Line
	mod.content.pokemon:patch("ABRA", { dex = dex_no })
	dex_no = dex_no + 1
	mod.content.pokemon:patch("KADABRA", { dex = dex_no })
	dex_no = dex_no + 1
	mod.content.pokemon:patch("ALAKAZAM", { dex = dex_no })
	dex_no = dex_no + 1

	-- Machop Line
	mod.content.pokemon:patch("MACHOP", { dex = dex_no })
	dex_no = dex_no + 1
	mod.content.pokemon:patch("MACHOKE", { dex = dex_no })
	dex_no = dex_no + 1
	mod.content.pokemon:patch("MACHAMP", { dex = dex_no })
	dex_no = dex_no + 1

	-- Bellsprout Line
	mod.content.pokemon:patch("BELLSPROUT", { dex = dex_no })
	dex_no = dex_no + 1
	mod.content.pokemon:patch("WEEPINBELL", { dex = dex_no })
	dex_no = dex_no + 1
	mod.content.pokemon:patch("VICTREEBEL", { dex = dex_no })
	dex_no = dex_no + 1

	-- Tentacool Line
	mod.content.pokemon:patch("TENTACOOL", { dex = dex_no })
	dex_no = dex_no + 1
	mod.content.pokemon:patch("TENTACRUEL", { dex = dex_no })
	dex_no = dex_no + 1

	-- Geodude Line
	mod.content.pokemon:patch("GEODUDE", { dex = dex_no })
	dex_no = dex_no + 1
	mod.content.pokemon:patch("GRAVELER", { dex = dex_no })
	dex_no = dex_no + 1
	mod.content.pokemon:patch("GOLEM", { dex = dex_no })
	dex_no = dex_no + 1

	-- Ponyta Line
	mod.content.pokemon:patch("PONYTA", { dex = dex_no })
	dex_no = dex_no + 1
	mod.content.pokemon:patch("RAPIDASH", { dex = dex_no })
	dex_no = dex_no + 1

	-- Slowpoke Line
	mod.content.pokemon:patch("SLOWPOKE", { dex = dex_no, 
	evolutions = {
      {
        level = 37,
        method = "LEVEL",
        species = "SLOWBRO",
      },
	  {
		item = "MOON_STONE",
		level = 1,
		method = "ITEM",
		species = "SLOWKING"
    }, }})	
	dex_no = dex_no + 1
	mod.content.pokemon:patch("SLOWBRO", { dex = dex_no })
	dex_no = dex_no + 1
	mod.content.text:register("_SlowkingDexEntry", "While it seems wise,\neverything it knows is\nten years out of date.")
	mod.content.palettes:register("SLOWKING", {{255,255,255},{247,223,111},{207,159,0},{0,0,0}})
	mod.content.pokemon:register("SLOWKING", {
		id = "SLOWKING", 
		name = "SLOWKING", 
		dex = dex_no, 
		dexEntry = { 
			heightFt = 6,
			heightIn = 7,
			kind = "ROYAL         ",
			weight = 1753,
			text = ("_SlowkingDexEntry")
		},
		types = { "WATER", "PSYCHIC_TYPE" },
		baseStats = { 
			hp = 95, 
			attack = 75, 
			defense = 80, 
			speed = 30, 
			special = 110 },
		catchRate = 70, 
		baseExp = 164, 
		growthRate = "MEDIUM_FAST",
		level1Moves = { "TACKLE" }, 
		learnset = {
			{ level = 6, move = "GROWL" },
			{ level = 15, move = "WATER_GUN" },
			{ level = 20, move = "CONFUSION" },
			{ level = 29, move = "DISABLE" },
			{ level = 34, move = "HEADBUTT" },
			{ level = 48, move = "PSYCHIC_M" },
			}, 
		tmhm = {
		  "TOXIC",
		  "BODY_SLAM",
		  "TAKE_DOWN",
		  "DOUBLE_EDGE",
		  "BUBBLEBEAM",
		  "WATER_GUN",
		  "ICE_BEAM",
		  "BLIZZARD",
		  "PAY_DAY",
		  "RAGE",
		  "EARTHQUAKE",
		  "FISSURE",
		  "DIG",
		  "PSYCHIC_M",
		  "TELEPORT",
		  "MIMIC",
		  "DOUBLE_TEAM",
		  "REFLECT",
		  "BIDE",
		  "FIRE_BLAST",
		  "SWIFT",
		  "SKULL_BASH",
		  "REST",
		  "THUNDER_WAVE",
		  "PSYWAVE",
		  "TRI_ATTACK",
		  "SUBSTITUTE",
		  "SURF",
		  "STRENGTH",
		  "FLASH",
		},
		spriteFront = mod.assets:path("assets/_temp_front.png"),
		spriteBack = mod.assets:path("assets/_temp_back.png"),
		frontSize = 5,
		palette = "SLOWKING",
		evolutions = {}
	})
	mod.content.cries:register("SLOWKING", { file = mod.assets:path("assets/slowking_cry.wav") })
	mod.content.icons:register("SLOWKING", "MON")
	dex_no = dex_no + 1

	-- Magnemite Line
	mod.content.pokemon:patch("MAGNEMITE", { dex = dex_no })
	dex_no = dex_no + 1
	mod.content.pokemon:patch("MAGNETON", { dex = dex_no,
	evolutions = {
		{
		item = "THUNDER_STONE",
		level = 1,
		method = "ITEM",
		species = "MAGNEZONE"
		},
		}
	}
	)
	dex_no = dex_no + 1
	mod.content.text:register("_MagnezoneDexEntry", "Reforged, MAGNEZONE has more\nmagnetic power than ever\nbefore. Interferes\nwith TV signals.")
	mod.content.palettes:register("MAGNEZONE", {{255,255,255},{247,223,111},{207,159,0},{0,0,0}})
	mod.content.pokemon:register("MAGNEZONE", {
		id = "MAGNEZONE", 
		name = "MAGNEZONE", 
		dex = dex_no, 
		types = { "ELECTRIC" },
		dexEntry = { 
			heightFt = 3,
			heightIn = 11,
			kind = "MAGNET AREA         ",
			weight = 3968,
			text = ("_MagnezoneDexEntry")
		},
		catchRate = 30, 
		baseExp = 211, 
		growthRate = "MEDIUM_FAST",
		baseStats = { 
			hp = 70, 
			attack = 70, 
			defense = 115, 
			speed = 60, 
			special = 130 },
		level1Moves = { "BARRIER", "TACKLE", "THUNDERSHOCK", "SUPERSONIC" }, 
		learnset = {
			{ level = 6, move = "THUNDERSHOCK" },
			{ level = 11, move = "SUPERSONIC" },
			{ level = 14, move = "SONICBOOM" },
			{ level = 17, move = "THUNDER_WAVE" },
			{ level = 22, move = "SPARK" },
			{ level = 34, move = "SCREECH" },
			}, 
		tmhm = {
		  "TOXIC",
		  "TAKE_DOWN",
		  "DOUBLE_EDGE",
		  "HYPER_BEAM",
		  "RAGE",
		  "THUNDERBOLT",
		  "THUNDER",
		  "TELEPORT",
		  "MIMIC",
		  "DOUBLE_TEAM",
		  "REFLECT",
		  "BIDE",
		  "SWIFT",
		  "REST",
		  "THUNDER_WAVE",
		  "SUBSTITUTE",
		  "FLASH",
		},
		spriteFront = mod.assets:path("assets/_temp_front.png"),
		spriteBack = mod.assets:path("assets/_temp_back.png"),
		frontSize = 5,
		palette = "MAGNEZONE",
		evolutions = {}
	})
	mod.content.cries:register("MAGNEZONE", { file = mod.assets:path("assets/magnezone_cry.wav") })
	mod.content.icons:register("MAGNEZONE", "BALL")
	dex_no = dex_no + 1

	-- Farfetch’d Line
	mod.content.pokemon:patch("FARFETCHD", { dex = dex_no })
	dex_no = dex_no + 1

	-- Doduo Line
	mod.content.pokemon:patch("DODUO", { dex = dex_no })
	dex_no = dex_no + 1
	mod.content.pokemon:patch("DODRIO", { dex = dex_no })
	dex_no = dex_no + 1

	-- Seel Line
	mod.content.pokemon:patch("SEEL", { dex = dex_no })
	dex_no = dex_no + 1
	mod.content.pokemon:patch("DEWGONG", { dex = dex_no })
	dex_no = dex_no + 1

	-- Grimer Line
	mod.content.pokemon:patch("GRIMER", { dex = dex_no })
	dex_no = dex_no + 1
	mod.content.pokemon:patch("MUK", { dex = dex_no })
	dex_no = dex_no + 1

	-- Shellder Line
	mod.content.pokemon:patch("SHELLDER", { dex = dex_no })
	dex_no = dex_no + 1
	mod.content.pokemon:patch("CLOYSTER", { dex = dex_no })
	dex_no = dex_no + 1

	-- Gastly Line
	mod.content.pokemon:patch("GASTLY", { dex = dex_no })
	dex_no = dex_no + 1
	mod.content.pokemon:patch("HAUNTER", { dex = dex_no })
	dex_no = dex_no + 1
	mod.content.pokemon:patch("GENGAR", { dex = dex_no })
	dex_no = dex_no + 1

	-- Onix Line
	mod.content.pokemon:patch("ONIX", { dex = dex_no})
	dex_no = dex_no + 1

	-- Drowzee Line
	mod.content.pokemon:patch("DROWZEE", { dex = dex_no })
	dex_no = dex_no + 1
	mod.content.pokemon:patch("HYPNO", { dex = dex_no })
	dex_no = dex_no + 1

	-- Krabby Line
	mod.content.pokemon:patch("KRABBY", { dex = dex_no })
	dex_no = dex_no + 1
	mod.content.pokemon:patch("KINGLER", { dex = dex_no })
	dex_no = dex_no + 1

	-- Voltorb Line
	mod.content.pokemon:patch("VOLTORB", { dex = dex_no })
	dex_no = dex_no + 1
	mod.content.pokemon:patch("ELECTRODE", { dex = dex_no })
	dex_no = dex_no + 1

	-- Exeggcute Line
	mod.content.pokemon:patch("EXEGGCUTE", { dex = dex_no })
	dex_no = dex_no + 1
	mod.content.pokemon:patch("EXEGGUTOR", { dex = dex_no })
	dex_no = dex_no + 1

	-- Cubone Line
	mod.content.pokemon:patch("CUBONE", { dex = dex_no })
	dex_no = dex_no + 1
	mod.content.pokemon:patch("MAROWAK", { dex = dex_no })
	dex_no = dex_no + 1

	-- Hitmon Line
	-- NEW MON: TYROGUE
	mod.content.pokemon:patch("HITMONLEE", { dex = dex_no })
	dex_no = dex_no + 1
	mod.content.pokemon:patch("HITMONCHAN", { dex = dex_no })
	dex_no = dex_no + 1
	-- NEW MON: HITMONTOP

	-- Lickitung Line
	mod.content.pokemon:patch("LICKITUNG", { dex = dex_no })
	dex_no = dex_no + 1
	-- NEW MON: LICKILICKY

	-- Koffing Line
	mod.content.pokemon:patch("KOFFING", { dex = dex_no })
	dex_no = dex_no + 1
	mod.content.pokemon:patch("WEEZING", { dex = dex_no })
	dex_no = dex_no + 1

	-- Rhyhorn Line
	mod.content.pokemon:patch("RHYHORN", { dex = dex_no })
	dex_no = dex_no + 1
	mod.content.pokemon:patch("RHYDON", { dex = dex_no })
	dex_no = dex_no + 1
	-- NEW MON: RHYPERIOR

	-- Chansey Line
	mod.content.text:register("_HappinyDexEntry", "It likes to collect\nand carry white\nround stones. It\ngives its stone to\nthose it considers\nits friend.")
	mod.content.palettes:register("HAPPINY_PAL", { {255,255,255}, {244,176,199}, {227,121,170}, {0,0,0} } )
	mod.content.pokemon:register("HAPPINY", {
		id = "HAPPINY", 
		name = "HAPPINY", 
		dex = dex_no, 
		palette = "HAPPINY_PAL",
		dexEntry = { 
			heightFt = 2,
			heightIn = 0,
			kind = "PLAYHOUSE   ",
			weight = 538,
			text = ("_HappinyDexEntry")
		},
		types = { "NORMAL" },
		baseStats = { 
			hp = 100, 
			attack = 5, 
			defense = 5, 
			speed = 30, 
			special = 65 
		},
		catchRate = 130, 
		baseExp = 255, 
		growthRate = "FAST",
		level1Moves = { "POUND" }, 
		learnset = {
			{ level = 4, move = "DEFENSE_CURL" },
		}, 
		tmhm = {
			"MEGA_PUNCH",
			"MEGA_KICK",
			"TOXIC",
			"BODY_SLAM",
			"TAKE_DOWN",
			"DOUBLE_EDGE",
			"BUBBLEBEAM",
			"WATER_GUN",
			"ICE_BEAM",
			"BLIZZARD",
			"HYPER_BEAM",
			"SUBMISSION",
			"COUNTER",
			"SEISMIC_TOSS",
			"RAGE",
			"SOLARBEAM",
			"THUNDERBOLT",
			"THUNDER",
			"PSYCHIC_M",
			"TELEPORT",
			"MIMIC",
			"DOUBLE_TEAM",
			"REFLECT",
			"BIDE",
			"METRONOME",
			"EGG_BOMB",
			"FIRE_BLAST",
			"SKULL_BASH",
			"SOFTBOILED",
			"REST",
			"THUNDER_WAVE",
			"PSYWAVE",
			"TRI_ATTACK",
			"SUBSTITUTE",
			"STRENGTH",
			"FLASH"
		},
		evolutions = { { method = "FRIENDSHIP", species = "CHANSEY" }, { method = "LEVEL", level = 15, species = "CHANSEY" } },
		spriteFront = mod.assets:path("assets/happiny_front.png"),
		spriteBack = mod.assets:path("assets/happiny_back.png"),
		frontSize = 5
	})
	mod.content.cries:register("HAPPINY", { file = mod.assets:path("assets/happiny_cry.wav") })
	mod.content.icons:register("HAPPINY", "FAIRY")
	dex_no = dex_no + 1
	mod.content.pokemon:patch("CHANSEY", { dex = dex_no })
	dex_no = dex_no + 1
	-- NEW MON: BLISSEY

	-- Tangela Line
	mod.content.pokemon:patch("TANGELA", { dex = dex_no })
	dex_no = dex_no + 1
	-- NEW MON: TANGROWTH

	-- Kangaskhan Line
	mod.content.pokemon:patch("KANGASKHAN", { dex = dex_no })
	dex_no = dex_no + 1

	-- Horsea Line
	mod.content.pokemon:patch("HORSEA", { dex = dex_no })
	dex_no = dex_no + 1
	mod.content.pokemon:patch("SEADRA", { dex = dex_no })
	dex_no = dex_no + 1

	-- Goldeen Line
	mod.content.pokemon:patch("GOLDEEN", { dex = dex_no })
	dex_no = dex_no + 1
	mod.content.pokemon:patch("SEAKING", { dex = dex_no })
	dex_no = dex_no + 1

	-- Staryu Line
	mod.content.pokemon:patch("STARYU", { dex = dex_no })
	dex_no = dex_no + 1
	mod.content.pokemon:patch("STARMIE", { dex = dex_no })
	dex_no = dex_no + 1

	-- Mr. Mime Line
	-- NEW MON: MIME JR.
	mod.content.pokemon:patch("MRMIME", { dex = dex_no })
	dex_no = dex_no + 1

	-- Scyther Line
	mod.content.pokemon:patch("SCYTHER", { dex = dex_no })
	dex_no = dex_no + 1
	-- NEW MON: KLEAVOR

	-- Jynx Line
	-- NEW MON: SMOOCHUM
	mod.content.pokemon:patch("JYNX", { dex = dex_no })
	dex_no = dex_no + 1

	-- Electabuzz Line
	-- NEW MON: ELEKID
	mod.content.pokemon:patch("ELECTABUZZ", { dex = dex_no })
	dex_no = dex_no + 1
	-- NEW MON: ELECTIVIRE

	-- Magmar Line
	-- NEW MON: MAGBY
	mod.content.pokemon:patch("MAGMAR", { dex = dex_no })
	dex_no = dex_no + 1
	-- NEW MON: MAGMORTAR

	-- Pinsir Line
	mod.content.pokemon:patch("PINSIR", { dex = dex_no })
	dex_no = dex_no + 1

	-- Tauros Line
	mod.content.pokemon:patch("TAUROS", { dex = dex_no })
	dex_no = dex_no + 1

	-- Magikarp Line
	mod.content.pokemon:patch("MAGIKARP", { dex = dex_no })
	dex_no = dex_no + 1
	mod.content.pokemon:patch("GYARADOS", { dex = dex_no })
	dex_no = dex_no + 1

	-- Lapras Line
	mod.content.pokemon:patch("LAPRAS", { dex = dex_no })
	dex_no = dex_no + 1

	-- Ditto Line
	mod.content.pokemon:patch("DITTO", { dex = dex_no })
	dex_no = dex_no + 1

	-- Eevee Line
	mod.content.pokemon:patch("EEVEE", { dex = dex_no })
	dex_no = dex_no + 1
	mod.content.pokemon:patch("VAPOREON", { dex = dex_no })
	dex_no = dex_no + 1
	mod.content.pokemon:patch("JOLTEON", { dex = dex_no })
	dex_no = dex_no + 1
	mod.content.pokemon:patch("FLAREON", { dex = dex_no })
	dex_no = dex_no + 1
	-- NEW MON: ESPEON
	-- NEW MON: LEAFEON
	-- NEW MON: GLACEON

	-- Porygon Line
	mod.content.pokemon:patch("PORYGON", { dex = dex_no })
	dex_no = dex_no + 1
	-- NEW MON: PORYGON2
	-- NEW MON: PORYGON-Z

	-- Omanyte Line
	mod.content.pokemon:patch("OMANYTE", { dex = dex_no })
	dex_no = dex_no + 1
	mod.content.pokemon:patch("OMASTAR", { dex = dex_no })
	dex_no = dex_no + 1

	-- Kabuto Line
	mod.content.pokemon:patch("KABUTO", { dex = dex_no })
	dex_no = dex_no + 1
	mod.content.pokemon:patch("KABUTOPS", { dex = dex_no })
	dex_no = dex_no + 1

	-- Aerodactyl Line
	mod.content.pokemon:patch("AERODACTYL", { dex = dex_no })
	dex_no = dex_no + 1

	-- Snorlax Line
	-- NEW MON: MUNCHLAX
	mod.content.pokemon:patch("SNORLAX", { dex = dex_no })
	dex_no = dex_no + 1

	-- Articuno Line
	mod.content.pokemon:patch("ARTICUNO", { dex = dex_no })
	dex_no = dex_no + 1

	-- Zapdos Line
	mod.content.pokemon:patch("ZAPDOS", { dex = dex_no })
	dex_no = dex_no + 1

	-- Moltres Line
	mod.content.pokemon:patch("MOLTRES", { dex = dex_no })
	dex_no = dex_no + 1

	-- Dratini Line
	mod.content.pokemon:patch("DRATINI", { dex = dex_no })
	dex_no = dex_no + 1
	mod.content.pokemon:patch("DRAGONAIR", { dex = dex_no })
	dex_no = dex_no + 1
	mod.content.pokemon:patch("DRAGONITE", { dex = dex_no })
	dex_no = dex_no + 1

	-- Mewtwo Line
	mod.content.pokemon:patch("MEWTWO", { dex = dex_no })
	dex_no = dex_no + 1

	-- Mew Line
	mod.content.pokemon:patch("MEW", { dex = dex_no })
	dex_no = dex_no + 1

	-- Testing Code
	mod.content.encounters:patch("ROUTE_1", {
	grass = { slots = { __prepend = { { species = "PICHU", level = 5 } } } },
	})

	-- Adjust the Pokédex Size
	mod.content.constants:patch("dexSize", dex_no)
	end
