-- Define sets and vars used by this job file.
function init_gear_sets()
	--------------------------------------
	-- Start defining the sets
	--------------------------------------
	
	-- Precast Sets
	-- Precast sets to enhance JAs
	sets.precast.JA.Angon = {ammo="Angon",hands="Pteroslaver Finger Gauntlets"}
    sets.CapacityMantle = {back="Mecistopins Mantle"}
    sets.Berserker = {neck="Berserker's Torque"}
    sets.WSDayBonus     = { head="Gavialis Helm" }

	sets.precast.JA.Jump = {
        ammo="Ginsen",
		head="Acro Helm",
        neck="Asperity Necklace",
        ear1="Brutal Earring",
        ear2="Tripudio Earring",
		body="Lancer's Plackart +2",
        hands={name="Taeon Gloves", augments={'STR+9','Accuracy+18','"Triple Atk."+2'}},
        ring1="Rajas Ring",
        ring2="Oneiros Ring",
		back="Bleating Mantle",
        waist="Windbuffet Belt +1",
        legs="Taeon Tights",
        feet="Taeon Boots"
    }

	sets.precast.JA['Ancient Circle'] = { legs="Vishap Brais" }
	sets.TreasureHunter = {waist="Chaac Belt"}

	sets.precast.JA['High Jump'] = set_combine(sets.precast.JA.Jump, {
    }) 
	sets.precast.JA['Soul Jump'] = set_combine(sets.precast.JA.Jump, {
        legs="Lancer's Cuissots +2"
    })
	sets.precast.JA['Spirit Jump'] = set_combine(sets.precast.JA.Jump, {
        legs="Lancer's Cuissots +2"
        --feet="Lancer's Schynbalds +2"
    })
	sets.precast.JA['Super Jump'] = sets.precast.JA.Jump

	sets.precast.JA['Spirit Link'] = {hands="Lancer's Vambraces +2", head="Vishap Armet +1"}
	sets.precast.JA['Call Wyvern'] = {body="Wyrm Mail"}
	sets.precast.JA['Deep Breathing'] = {--head="Wyrm Armet +1" or Petroslaver Armet +1
    }
	sets.precast.JA['Spirit Surge'] = { --body="Wyrm Mail +2"
    }
	
	-- Healing Breath sets
	sets.HB = {
        ammo="Ginsen",
		head="Wyrm Armet",
        neck="Lancer's Torque",
        ear1="Steelflash Earring",
        ear2="Bladeborn Earring",
		body="Xaddi Mail",
        hands="Cizin Mufflers +1",
        ring1="Dark Ring",
        ring2="K'ayres Ring",
        back={name="Updraft Mantle", augments={'STR+3','Weapon skill damage +2%','Pet: Breath +9'}},
        waist="Glassblower's Belt",
        legs="Vishap Brais",
        feet="Wym. Greaves +2"
    }

	-- Waltz set (chr and vit)
	sets.precast.Waltz = {
		head="Yaoyotl Helm",
		back="Bleating Mantle"}
		
	-- Don't need any special gear for Healing Waltz.
	sets.precast.Waltz['Healing Waltz'] = {}

	-- Fast cast sets for spells
	sets.precast.FC = {
        ammo="Impatiens",
        head="Cizin Helm +1", 
        ear1="Loquacious Earring", 
        hands="Buremte Gloves",
        ring1="Prolix Ring"
    }
    
	-- Midcast Sets
	sets.midcast.FastRecast = {
		head="Otomi Helm",
        hands="Umuthi Gloves",
		legs="Ares' Flanchard +1",
        feet="Ejekamal Boots",
    }	
		
	sets.midcast.Breath = set_combine(sets.midcast.FastRecast, { head="Vishap Armet +1" })
	-- Weaponskill sets
	-- Default set for any weaponskill that isn't any more specifically defined
	sets.precast.WS = {}

	sets.precast.WS = {
        ammo="Thew Bomblet",
		head="Otomi Helm",
        neck="Ganesha's Mala",
        ear1="Brutal Earring",
        ear2="Moonshade Earring",
		body="Acro Surcoat",
        hands={name="Taeon Gloves", augments={'STR+9','Accuracy+18','"Triple Atk."+2'}},
        ring1="Ifrit Ring",
        ring2="Ifrit Ring +1",
		back="Bleating Mantle",
        waist="Windbuffet Belt +1",
        legs="Taeon Tights",
        feet="Acro Leggings"
    }
	sets.precast.WS.Acc = set_combine(sets.precast.WS, {
        back={name="Updraft Mantle", augments={'STR+2','Weapon skill damage +3%','Pet: Damage taken -3%'}},
        head="Yaoyotl Helm",
        legs="Xaddi Cuisses"
    })
	
	-- Specific weaponskill sets.  Uses the base set if an appropriate WSMod version isn't found.
	sets.precast.WS['Stardiver'] = set_combine(sets.precast.WS, {
        neck="Shadow Gorget",
        waist="Soil Belt"
    })
	sets.precast.WS['Stardiver'].Mid = set_combine(sets.precast.WS['Stardiver'], {
        head="Yaoyotl Helm",
        back={name="Updraft Mantle", augments={'STR+2','Weapon skill damage +3%','Pet: Damage taken -3%'}},
    })
	sets.precast.WS['Stardiver'].Acc = set_combine(sets.precast.WS.Acc, {neck="Shadow Gorget",waist="Soil Belt"})

    sets.precast.WS["Camlann's Torment"] = set_combine(sets.precast.WS, {
        neck="Breeze Gorget",
        body="Phorcys Korazin",
        back="Buquwik Cape",
        waist="Windbuffet Belt +1",
        back={name="Updraft Mantle", augments={'STR+2','Weapon skill damage +3%','Pet: Damage taken -3%'}},
    })
	sets.precast.WS["Camlann's Torment"].Mid = set_combine(sets.precast.WS["Camlann's Torment"], {
        head="Yaoyotl Helm", 
        ear1="Bladeborn Earring", 
        ear2="Steelflash Earring", 
        back={name="Updraft Mantle", augments={'STR+2','Weapon skill damage +3%','Pet: Damage taken -3%'}},
    })
	sets.precast.WS["Camlann's Torment"].Acc = set_combine(sets.precast.WS["Camlann's Torment"].Mid, {})

	sets.precast.WS['Drakesbane'] = set_combine(sets.precast.WS, {
        hands="Mikinaak Gauntlets",
        back="Rancorous Mantle",
        waist="Windbuffet Belt +1"
    })
	sets.precast.WS['Drakesbane'].Mid = set_combine(sets.precast.WS['Drakesbane'], {
        back={name="Updraft Mantle", augments={'STR+2','Weapon skill damage +3%','Pet: Damage taken -3%'}},
        head="Yaoyotl Helm",
        hands={name="Taeon Gloves", augments={'STR+9','Accuracy+18','"Triple Atk."+2'}},
    })
	sets.precast.WS['Drakesbane'].Acc = set_combine(sets.precast.WS['Drakesbane'].Mid, {hands="Mikinaak Gauntlets"})

	
	-- Sets to return to when not performing an action.
	
	-- Resting sets
	sets.resting = {
        head="Twilight Helm",
        neck="Twilight Torque",
        ear1="Bladeborn Earring",
        ear2="Steelflash Earring",
		body="Twilight Mail",
        hands="Cizin Mufflers +1",
        ring1="Dark Ring",
        ring2="Paguroidea Ring",
		back="Repulse Mantle",
        legs="Crimson Cuisses",
        feet="Whirlpool Greaves"
    }
	

	-- Idle sets
	sets.idle = {}

	-- Idle sets (default idle set not needed since the other three are defined, but leaving for testing purposes)
	sets.idle.Town = {
        ammo="Ginsen",
		head="Otomi Helm",
        neck="Ganesha's Mala",
        ear1="Brutal Earring",
        ear2="Tripudio Earring",
		body="Acro Surcoat",
        hands="Acro Gauntlets",
        ring1="Ifrit Ring +1",
        ring2="Oneiros Ring",
		back="Bleating Mantle",
        waist="Windbuffet Belt +1",
        legs="Crimson Cuisses",
        feet="Acro Leggings"
    }
	
	sets.idle.Field = set_combine(sets.idle.Town, {
        head="Otomi Helm",
        neck="Twilight Torque",
		body="Ares' Cuirass +1",
        ring1="Dark Ring",
        ring2="Paguroidea Ring",
        waist="Flume Belt",
        back="Engulfer's Cape +1"
    })

    sets.idle.Regen = set_combine(sets.idle.Field, {
        head="Twilight Helm",
		body="Ares' Cuirass +1",
    })

	sets.idle.Weak = set_combine(sets.idle.Field, {
		head="Twilight Helm",
		body="Twilight Mail",
    })
	
	-- Defense sets
	sets.defense.PDT = {
        ammo="Ginsen",
		head="Ighwa Cap",
        neck="Twilight Torque",
        ear1="Bladeborn Earring",
        ear2="Steelflash Earring",
		body="Emet Harness +1",
        hands="Cizin Mufflers +1",
        ring1="Patricius Ring",
        ring2="Dark Ring",
		back="Repulse Mantle",
        waist="Flume Belt",
        legs="Cizin Breeches +1",
        feet="Cizin Greaves +1"
    }

	sets.defense.Reraise = set_combine(sets.defense.PDT, {
		head="Twilight Helm",
		body="Twilight Mail"
    })

	sets.defense.MDT = set_combine(sets.defense.PDT, {
         back="Engulfer Cape +1"
    })

	sets.Kiting = {legs="Crimson Cuisses"}

	sets.Reraise = {head="Twilight Helm",body="Twilight Mail"}

	-- Engaged sets

	-- Variations for TP weapon and (optional) offense/defense modes.  Code will fall back on previous
	-- sets if more refined versions aren't defined.
	-- If you create a set with both offense and defense modes, the offense mode should be first.
	-- EG: sets.engaged.Dagger.Accuracy.Evasion
	
	-- Normal melee group
	sets.engaged = {
        ammo="Ginsen",
		head="Acro Helm",
        neck="Ganesha's Mala",
        ear1="Brutal Earring",
        ear2="Tripudio Earring",
		body="Acro Surcoat",
        hands={name="Taeon Gloves", augments={'STR+9','Accuracy+18','"Triple Atk."+2'}},
        ring1="Rajas Ring",
        ring2="Oneiros Ring",
        back="Bleating Mantle",
        waist="Windbuffet Belt +1",
        legs="Taeon Tights",
        feet="Taeon Boots"
    }

	sets.engaged.Mid = set_combine(sets.engaged, {
        head="Yaoyotl Helm",
        ear1="Zennaroi Earring",
    })

	sets.engaged.Acc = set_combine(sets.engaged.Mid, {
        neck="Iqabi Necklace",
        waist="Olseni Belt",
        ring1="Mars's Ring",
        back={name="Updraft Mantle", augments={'STR+2','Weapon skill damage +3%','Pet: Damage taken -3%'}},
        legs="Xaddi Cuisses"
    })

    sets.engaged.PDT = set_combine(sets.engaged, {
        head="Ighwa Cap",
        neck="Twilight Torque",
        body="Emet Harness +1",
        ring2="Patricius Ring",
        hands="Cizin Mufflers +1",
        back="Repulse Mantle",
        legs="Cizin Breeches +1",
        feet="Cizin Greaves +1"
    })
	sets.engaged.Mid.PDT = set_combine(sets.engaged.Mid, {
        head="Ighwa Cap",
        ring2="Patricius Ring",
        body="Emet Harness +1",
        hands="Cizin Mufflers +1",
        back="Repulse Mantle",
        legs="Cizin Breeches +1",
    })
	sets.engaged.Acc.PDT = set_combine(sets.engaged.Acc, {
        head="Ighwa Cap",
        ring2="Patricius Ring",
        body="Emet Harness +1",
        hands="Cizin Mufflers +1",
        back="Repulse Mantle",
        legs="Cizin Breeches +1",
    })

    sets.engaged.War = set_combine(sets.engaged, {
        hands="Acro Gauntlets",
        neck="Asperity Necklace",
        ring2="K'ayres Ring"
    })
    sets.engaged.War.Mid = set_combine(sets.engaged.Mid, {
        hands="Acro Gauntlets",
        neck="Asperity Necklace",
        ring2="K'ayres Ring"
    })

	sets.engaged.Reraise = set_combine(sets.engaged, {
		head="Twilight Helm",
		body="Twilight Mail"
    })

	sets.engaged.Acc.Reraise = sets.engaged.Reraise

end

