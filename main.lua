return function(mod)
	-- Friendship evolutions
	mod.content.evolution_methods:register("FRIENDSHIP", {
		check = function(game, mon, evo, trigger)
		return trigger.kind == "levelup" and (mon.friendship or 0) >= 220
		end,
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
	mod.content.pokemon:register("PICHU", {
		id = "PICHU", 
		name = "PICHU", 
		dex = dex_no, 
		dexEntry = { 
			heightFt = 1,
			heightIn = 0,
			kind = "TINY MOUSE",
			weight = 4.4,
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
		tms = {"MEGA_PUNCH", "MEGA_KICK", "BODY_SLAM", "TAKE_DOWN", "DOUBLE_EDGE", "COUNTER", "SEISMIC_TOSS", "THUNDERBOLT", "THUNDER", "DIG", "DOUBLE_TEAM", "REFLECT", "BIDE", "SWIFT", "THUNDER_WAVE", "FLASH"},
		evolutions = { method = "FRIENDSHIP", species = "PIKACHU" },
		spriteFront = mod.assets:path("assets/pichu_front.png"),
		spriteBack = mod.assets:path("assets/pichu_back.png"),
		frontSize = 5
		})
		mod.content.cries:register("PICHU", { file = mod.assets:path("assets/pichu_cry.wav") })
		mod.content.icons:register("PICHU", {
		image = "assets/generated/icons/quadruped.png"
	})
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
	-- NEW MON: CLEFFA
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
	-- NEW MON: IGGLYBUFF
	mod.content.pokemon:patch("JIGGLYPUFF", { dex = dex_no })
	dex_no = dex_no + 1
	mod.content.pokemon:patch("WIGGLYTUFF", { dex = dex_no })
	dex_no = dex_no + 1

	-- Zubat Line
	mod.content.pokemon:patch("ZUBAT", { dex = dex_no })
	dex_no = dex_no + 1
	mod.content.pokemon:patch("GOLBAT", { dex = dex_no })
	dex_no = dex_no + 1
	-- NEW MON: CROBAT

	-- Oddish Line
	mod.content.pokemon:patch("ODDISH", { dex = dex_no })
	dex_no = dex_no + 1
	mod.content.pokemon:patch("GLOOM", { dex = dex_no })
	dex_no = dex_no + 1
	mod.content.pokemon:patch("VILEPLUME", { dex = dex_no })
	dex_no = dex_no + 1
	-- NEW MON: BELLOSSOM

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
	mod.content.pokemon:patch("PRIMEAPE", { dex = dex_no })
	dex_no = dex_no + 1
	-- NEW MON: ANNIHILAPE

	-- Growlithe Line
	mod.content.pokemon:patch("GROWLITHE", { dex = dex_no })
	dex_no = dex_no + 1
	mod.content.pokemon:patch("ARCANINE", { dex = dex_no })
	dex_no = dex_no + 1

	-- Poliwag Line
	mod.content.pokemon:patch("POLIWAG", { dex = dex_no })
	dex_no = dex_no + 1
	mod.content.pokemon:patch("POLIWHIRL", { dex = dex_no })
	dex_no = dex_no + 1
	mod.content.pokemon:patch("POLIWRATH", { dex = dex_no })
	dex_no = dex_no + 1
	-- NEW MON: POLITOED

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
	mod.content.pokemon:patch("SLOWPOKE", { dex = dex_no })
	dex_no = dex_no + 1
	mod.content.pokemon:patch("SLOWBRO", { dex = dex_no })
	dex_no = dex_no + 1
	-- NEW MON: SLOWKING

	-- Magnemite Line
	mod.content.pokemon:patch("MAGNEMITE", { dex = dex_no })
	dex_no = dex_no + 1
	mod.content.pokemon:patch("MAGNETON", { dex = dex_no })
	dex_no = dex_no + 1
	-- NEW MON: MAGNEZONE

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
	mod.content.pokemon:patch("ONIX", { dex = dex_no })
	dex_no = dex_no + 1
	-- NEW MON: STEELIX

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
	-- NEW MON: HAPPINY
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
	-- NEW MON: KINGDRA

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
	-- NEW MON: SCIZOR
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
	-- NEW MON: UMBREON
	-- NEW MON: LEAFEON
	-- NEW MON: GLACEON
	-- NEW MON: SYLVEON

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