local DB = {}

-----------------------------------------------------
--  IDENTITY NAMES
-----------------------------------------------------
DB.units = {
    -- 1. Yi Sang
    [10101] = "LCB Sinner",
    [10102] = "Seven Assoc. South Section 6",
    [10103] = "Blade Lineage Salsu",
    [10104] = "Effloresced E.G.O::Spicebush",
    [10105] = "Molar Office Fixer",
    [10106] = "W Corp. L3 Cleanup Agent",
    [10107] = "The Pequod First Mate",
    [10108] = "Dieci Assoc. South Section 4",
    [10109] = "The Ring Pointillist Student",
    [10110] = "Lobotomy E.G.O::Solemn Lament",
    [10111] = "LCE E.G.O::Lantern",
    [10112] = "Liu Assoc. South Section 3",
    [10113] = "N Corp. E.G.O::Fell Bullet",
    [10114] = "Heishou Pack - Wu Branch Adept",
    [10115] = "The House of Spiders: The Index Nursefather",
    [10116] = "LCE E.G.O::Dimension Shredder",

    -- 2. Faust
    [10201] = "LCB Sinner",
    [10202] = "W Corp. L2 Cleanup Agent",
    [10203] = "Lobotomy Corp. Remnant",
    [10204] = "The One Who Grips",
    [10205] = "Zwei Assoc. South Section 4",
    [10206] = "Seven Assoc. South Section 4",
    [10207] = "Lobotomy E.G.O::Regret",
    [10208] = "Blade Lineage Salsu",
    [10209] = "Wuthering Heights Butler",
    [10210] = "MultiCrack Office Rep",
    [10211] = "LCE E.G.O::Ardor Blossom Star",
    [10212] = "Heishou Pack - Mao Branch Adept",
    [10213] = "Shi Assoc. East Section 3",
    [10214] = "The Index Proselyte: Paper Slip",
    [10215] = "Ring Apprentice",
    [10216] = "Dawn Office Fixer",

    -- 3. Don Quixote
    [10301] = "LCB Sinner",
    [10302] = "W Corp. L3 Cleanup Agent",
    [10303] = "Shi Assoc. South Section 5 Director",
    [10304] = "N Corp. Mittelhammer",
    [10305] = "Cinq Assoc. South Section 5 Director",
    [10306] = "The Middle Little Sister",
    [10307] = "Lobotomy E.G.O::Lantern",
    [10308] = "Blade Lineage Salsu",
    [10309] = "T Corp. Class 3 Collection Staff",
    [10310] = "The Manager of La Manchaland",
    [10311] = "Cinq Assoc. East Section 3",
    [10312] = "Lobotomy E.G.O::In the Name of Love and Hate",
    [10313] = "Heishou Pack - Wei Branch",
    [10314] = "The Index Proxy - Effloresced E.G.O::Procuration",
    [10315] = "Haute Couture::Le Noir Brand Manager",

    -- 4. Ryoshu
    [10401] = "LCB Sinner",
    [10402] = "Seven Assoc. South Section 6",
    [10403] = "Kurokumo Clan Wakashu",
    [10404] = "R.B. Chef de Cuisine",
    [10405] = "W Corp. L3 Cleanup Agent",
    [10406] = "LCCB Assistant Manager",
    [10407] = "Liu Assoc. South Section 4",
    [10408] = "Edgar Family Chief Butler",
    [10409] = "District 20 Yurodivy",
    [10410] = "Lobotomy E.G.O::Red Eyes & Penitence",
    [10411] = "Heishou Pack - Mao Branch",
    [10412] = "N Corp. E.G.O::Contempt, Awe",
    [10413] = "Drifting Blade of Hongyuan",
    [10414] = "Lobotomy E.G.O::Faint Aroma & Solitude",
    [10415] = "Blade of the House of Spiders",
    [10416] = "Haute Couture::Le Noir Footwear Hall",

    -- 5. Meursault
    [10501] = "LCB Sinner",
    [10502] = "Liu Assoc. South Section 6",
    [10503] = "W Corp. L2 Cleanup Agent",
    [10504] = "N Corp. Grosshammer",
    [10505] = "Rosespanner Workshop Fixer",
    [10506] = "R Corp. 4th Pack Rhino",
    [10507] = "The Middle Little Brother",
    [10508] = "Blade Lineage Mentor",
    [10509] = "Dead Rabbits Boss",
    [10510] = "Dieci Assoc. South Section 4 Director",
    [10511] = "Cinq Assoc. West Section 3",
    [10512] = "The Thumb East Capo IIII",
    [10513] = "The Prince of La Manchaland",
    [10514] = "Lobotomy E.G.O::Hornet Alteration",
    [10515] = "The Ring Fauvist Student",

    -- 6. Hong Lu
    [10601] = "LCB Sinner",
    [10602] = "Kurokumo Clan Wakashu",
    [10603] = "Tingtang Gang Gangleader",
    [10604] = "Liu Assoc. South Section 5",
    [10605] = "K Corp. Class 3 Excision Staff",
    [10606] = "W Corp. L2 Cleanup Agent",
    [10607] = "Hook Office Fixer",
    [10608] = "Dieci Assoc. South Section 4",
    [10609] = "District 20 Yurodivy",
    [10610] = "Fanghunt Office Fixer",
    [10611] = "Full-Stop Office Rep",
    [10612] = "R Corp. 4th Pack Reindeer",
    [10613] = "The Lord of Hongyuan",
    [10614] = "The House of Spiders: The Ring Nursefather",
    [10615] = "S Corp. Ch'unokkun",
    [10616] = "Cinq Assoc. East Section 3",

    -- 7. Heathcliff
    [10701] = "LCB Sinner",
    [10702] = "Shi Assoc. South Section 5",
    [10703] = "R Corp. 4th Pack Rabbit",
    [10704] = "N Corp. Kleinhammer",
    [10705] = "Lobotomy E.G.O::Sunshower",
    [10706] = "Seven Assoc. South Section 4",
    [10707] = "The Pequod Harpooneer",
    [10708] = "Oufi Assoc. South Section 3",
    [10709] = "MultiCrack Office Fixer",
    [10710] = "Wild Hunt",
    [10711] = "Full-Stop Office Fixer",
    [10712] = "Kurokumo Clan Wakashu",
    [10713] = "W Corp. L4 Cleanup Agent - CCA",
    [10714] = "Heishou Pack - You Branch Adept",
    [10715] = "The Middle Big Brother",
    [10716] = "The House of Spiders: The Thumb Apprentice",

    -- 8. Ishmael
    [10801] = "LCB Sinner",
    [10802] = "R Corp. 4th Pack Reindeer",
    [10803] = "Shi Assoc. South Section 5",
    [10804] = "LCCB Assistant Manager",
    [10805] = "Lobotomy E.G.O::Sloshing",
    [10806] = "Liu Assoc. South Section 4",
    [10807] = "Molar Boatworks Fixer",
    [10808] = "The Pequod Captain",
    [10809] = "Edgar Family Butler",
    [10810] = "Zwei Assoc. West Section 3",
    [10811] = "Kurokumo Clan Captain",
    [10812] = "Family Hierarch Candidate",
    [10813] = "Jeong's Office Rep",
    [10814] = "The House of Spiders: The Middle Apprentice",
    [10815] = "LCD OSIR Team",
    [10816] = "Haute Couture::Boutique du Rouge",

    -- 9. Rodion
    [10901] = "LCB Sinner",
    [10902] = "Kurokumo Clan Wakashu",
    [10903] = "LCCB Assistant Manager",
    [10904] = "N Corp. Mittelhammer",
    [10905] = "Rosespanner Workshop Rep",
    [10906] = "Zwei Assoc. South Section 5",
    [10907] = "Dieci Assoc. South Section 4",
    [10908] = "Liu Assoc. South Section 4 Director",
    [10909] = "T Corp. Class 2 Collection Staff",
    [10910] = "Devyat' Assoc. North Section 3",
    [10911] = "The Princess of La Manchaland",
    [10912] = "Heishou Pack - Si Branch",
    [10913] = "Lobotomy E.G.O::The Sword Sharpened with Tears",
    [10914] = "R Corp. 4th Pack Reindeer",
    [10915] = "The Ring Fauvist Docent",
    [10916] = "The House of Spiders: The Thumb Nursefather",
    [10917] = "Haute Couture::Alteration Shop",

    -- 10. Sinclair
    [11001] = "LCB Sinner",
    [11002] = "Blade Lineage Salsu",
    [11003] = "Zwei Assoc. South Section 6",
    [11004] = "Los Mariachis Jefe",
    [11005] = "The One Who Shall Grip",
    [11006] = "Lobotomy E.G.O::Red Sheet",
    [11007] = "Molar Boatworks Fixer",
    [11008] = "Cinq Assoc. South Section 4 Director",
    [11009] = "Dawn Office Fixer",
    [11010] = "Zwei Assoc. West Section 3",
    [11011] = "Devyat' Assoc. North Section 3",
    [11012] = "The Middle Little Brother",
    [11013] = "The Thumb East Soldato II",
    [11014] = "Heishou Pack - You Branch",
    [11015] = "The House of Spiders: The Pinky Apprentice",
    [11016] = "Haute Couture::The Crimson God of Le Rouge",

    -- 11. Outis
    [11101] = "LCB Sinner",
    [11102] = "Blade Lineage Salsu",
    [11103] = "G Corp. Head Manager",
    [11104] = "Seven Assoc. South Section 6 Director",
    [11105] = "Molar Office Fixer",
    [11106] = "Cinq Assoc. South Section 4",
    [11107] = "Lobotomy E.G.O::Magic Bullet",
    [11108] = "Wuthering Heights Chief Butler",
    [11109] = "The Ring Pointillist Student",
    [11110] = "W Corp. L3 Cleanup Captain",
    [11111] = "The Barber of La Manchaland",
    [11112] = "Heishou Pack - Mao Branch",
    [11113] = "T Corp. Class 3 VDCU Staff",
    [11114] = "LCA Udjat Vanguard Team 3 Leader",
    [11115] = "The House of Spiders: The Middle Nursefather",

    -- 12. Gregor
    [11201] = "LCB Sinner",
    [11202] = "Liu Assoc. South Section 6",
    [11203] = "G Corp. Manager Corporal",
    [11204] = "R.B. Sous-chef",
    [11205] = "Rosespanner Workshop Fixer",
    [11206] = "Zwei Assoc. South Section 4",
    [11207] = "Twinhook Pirates First Mate",
    [11208] = "Kurokumo Clan Captain",
    [11209] = "Edgar Family Heir",
    [11210] = "The Priest of La Manchaland",
    [11211] = "Firefist Office Survivor",
    [11212] = "Heishou Pack - Si Branch",
    [11213] = "Night Awls Capitano",
    [11214] = "Lobotomy E.G.O::Lamp",
    [11215] = "LCE E.G.O::AEDD",
    [11216] = "Dawn Office Rep",
}

-----------------------------------------------------
--  E.G.O. TIER -- name to number
-----------------------------------------------------
DB.egoTiers = {
    ["ZAYIN"] = 1,
    ["TETH"]  = 2,
    ["HE"]    = 3,
    ["WAW"]   = 4,
}

DB.TIER_ZAYIN = 1
DB.TIER_TETH  = 2
DB.TIER_HE    = 3
DB.TIER_WAW   = 4

-----------------------------------------------------
--  E.G.O. TIER -- skillId to tier name
--  Covers both base and corroded E.G.O.s.
-----------------------------------------------------
DB.egoTier = {
    -- 1. Yi Sang
    [2010111] = "ZAYIN",   -- Crow's Eye View
    [2010211] = "TETH",    -- 4th Match Flame
    [2010221] = "TETH",    -- 4th Match Flame (corroded)
    [2010311] = "TETH",    -- Wishing Cairn
    [2010321] = "TETH",    -- Wishing Cairn (corroded)
    [2010411] = "HE",      -- Dimension Shredder
    [2010421] = "HE",      -- Dimension Shredder (corroded)
    [2010511] = "WAW",     -- Sunshower
    [2010521] = "WAW",     -- Sunshower (corroded)
    [2010611] = "ZAYIN",   -- Bygone Days
    [2010621] = "ZAYIN",   -- Bygone Days (corroded)
    [2010711] = "HE",      -- Fell Bullet
    [2010721] = "HE",      -- Fell Bullet (corroded)
    [2010811] = "WAW",     -- Great Trichiliocosm
    [2010821] = "WAW",     -- Great Trichiliocosm (corroded)
    [2010911] = "HE",      -- Solemn Lament
    [2010921] = "HE",      -- Solemn Lament (corroded)

    -- 2. Faust
    [2020111] = "ZAYIN",   -- Representation Emitter
    [2020211] = "HE",      -- Fluid Sac
    [2020221] = "HE",      -- Fluid Sac (corroded)
    [2020311] = "TETH",    -- Hex Nail
    [2020321] = "TETH",    -- Hex Nail (corroded, positive)
    [2020411] = "HE",      -- Telepole
    [2020421] = "HE",      -- Telepole (corroded, positive)
    [2020511] = "TETH",    -- 9:2
    [2020521] = "TETH",    -- 9:2 (corroded)
    [2020611] = "WAW",     -- Everlasting
    [2020621] = "WAW",     -- Everlasting (corroded)
    [2020711] = "TETH",    -- Lasso
    [2020721] = "TETH",    -- Lasso (corroded, positive)
    [2020811] = "HE",      -- Thoracalgia
    [2020821] = "HE",      -- Thoracalgia (corroded)
    [2020911] = "HE",      -- Command : Meltdown
    [2020921] = "HE",      -- Command : Meltdown (corroded, positive)
    [2021011] = "HE",      -- Ardor Blossom Star
    [2021021] = "HE",      -- Ardor Blossom Star (corroded)
    [2021111] = "WAW",     -- Le Trou
    [2021112] = "WAW",     -- Boucher un trou
    [2021121] = "WAW",     -- Le Trou (corroded, flagged in data)

    -- 3. Don Quixote
    [2030111] = "ZAYIN",   -- La Sange de Sancho
    [2030211] = "HE",      -- Fluid Sac
    [2030221] = "HE",      -- Fluid Sac (corroded)
    [2030311] = "HE",      -- Telepole
    [2030321] = "HE",      -- Telepole (corroded, positive)
    [2030411] = "TETH",    -- Lifetime Stew
    [2030421] = "TETH",    -- Lifetime Stew (corroded, positive)
    [2030511] = "TETH",    -- Wishing Cairn
    [2030521] = "TETH",    -- Wishing Cairn (corroded)
    [2030611] = "TETH",    -- Electric Screaming
    [2030621] = "TETH",    -- Electric Screaming (corroded)
    [2030711] = "WAW",     -- Yearning - Mircalla
    [2030721] = "WAW",     -- Yearning - Mircalla (corroded)
    [2030811] = "HE",      -- Red Sheet
    [2030821] = "HE",      -- Red Sheet (corroded)
    [2030911] = "WAW",     -- In the Name of Love and Hate
    [2030921] = "WAW",     -- In the Name of Love and Hate (corroded)
    [2031011] = "ZAYIN",   -- I'll Go fer Scissors
    [2031021] = "ZAYIN",   -- I'll Go fer Scissors (corroded, positive)

    -- 4. Ryoshu
    [2040111] = "ZAYIN",   -- Forest for the Flames
    [2040211] = "HE",      -- 4th Match Flame
    [2040221] = "HE",      -- 4th Match Flame (corroded)
    [2040311] = "TETH",    -- Red Eyes
    [2040321] = "TETH",    -- Red Eyes (corroded)
    [2040411] = "HE",      -- Red Eyes (Open)
    [2040421] = "HE",      -- Red Eyes (Open, corroded)
    [2040511] = "ZAYIN",   -- Soda
    [2040521] = "ZAYIN",   -- Soda (corroded)
    [2040611] = "TETH",    -- Blind Obsession
    [2040621] = "TETH",    -- Blind Obsession (corroded)
    [2040711] = "WAW",     -- Contempt, Awe
    [2040721] = "WAW",     -- Contempt, Awe (corroded)
    [2040811] = "HE",      -- Thoracalgia
    [2040821] = "HE",      -- Thoracalgia (corroded)
    [2040911] = "WAW",     -- Great Trichiliocosm
    [2040921] = "WAW",     -- Great Trichiliocosm (corroded)

    -- 5. Meursault
    [2050111] = "ZAYIN",   -- Chains of Others
    [2050211] = "TETH",    -- Screwloose Wallop
    [2050221] = "TETH",    -- Screwloose Wallop (corroded, positive)
    [2050311] = "HE",      -- Pursuance
    [2050321] = "HE",      -- Pursuance (corroded)
    [2050411] = "HE",      -- Capote
    [2050421] = "HE",      -- Capote (corroded)
    [2050511] = "TETH",    -- Regret
    [2050521] = "TETH",    -- Regret (corroded)
    [2050611] = "TETH",    -- Electric Screaming
    [2050621] = "TETH",    -- Electric Screaming (corroded)
    [2050711] = "WAW",     -- Yearning - Mircalla
    [2050721] = "WAW",     -- Yearning - Mircalla (corroded)
    [2050811] = "WAW",     -- Crushbound Past
    [2050821] = "WAW",     -- Crushbound Past (corroded)
    [2050911] = "HE",      -- Shadow-vested Bladesinger
    [2050921] = "HE",      -- Shadow-vested Bladesinger (corroded)
    [2051011] = "WAW",     -- Hollow
    [2051021] = "WAW",     -- Hollow (corroded)

    -- 6. Hong Lu
    [2060111] = "ZAYIN",   -- Land of Illusion
    [2060211] = "TETH",    -- Roseate Desire
    [2060221] = "TETH",    -- Roseate Desire (corroded)
    [2060311] = "HE",      -- Dimension Shredder
    [2060321] = "HE",      -- Dimension Shredder (corroded, positive)
    [2060411] = "TETH",    -- Soda
    [2060421] = "TETH",    -- Soda (corroded)
    [2060511] = "HE",      -- Effervescent Corrosion
    [2060521] = "HE",      -- Effervescent Corrosion (corroded)
    [2060611] = "TETH",    -- Cavernous Wailing
    [2060621] = "TETH",    -- Cavernous Wailing (corroded)
    [2060711] = "TETH",    -- Lasso
    [2060721] = "TETH",    -- Lasso (corroded, positive)
    [2060811] = "WAW",     -- Tears of the Tarnished Blood - Inception
    [2060812] = "WAW",     -- Tears of the Tarnished Blood - The End
    [2060821] = "WAW",     -- Tears of the Tarnished Blood - Inception (corroded)
    [2060911] = "HE",      -- To Remain Oneself
    [2060921] = "HE",      -- To Remain Oneself (corroded)
    [2061011] = "ZAYIN",   -- Repudiation
    [2061021] = "ZAYIN",   -- Repudiation (corroded)

    -- 7. Heathcliff
    [2070111] = "ZAYIN",   -- Bodysack
    [2070211] = "HE",      -- Telepole
    [2070221] = "HE",      -- Telepole (corroded)
    [2070311] = "TETH",    -- AEDD
    [2070321] = "TETH",    -- AEDD (corroded)
    [2070411] = "HE",      -- Ya Śūnyatā Tad Rūpam
    [2070421] = "HE",      -- Ya Śūnyatā Tad Rūpam (corroded)
    [2070511] = "ZAYIN",   -- Holiday
    [2070521] = "ZAYIN",   -- Holiday (corroded)
    [2070611] = "WAW",     -- Binds
    [2070621] = "WAW",     -- Binds (corroded)
    [2070711] = "TETH",    -- Fell Bullet
    [2070721] = "TETH",    -- Fell Bullet (corroded)
    [2070811] = "HE",      -- Asymmetrical Inertia
    [2070821] = "HE",      -- Asymmetrical Inertia (corroded)
    [2070911] = "TETH",    -- Move-in Reg.
    [2070921] = "TETH",    -- Move-in Reg. (corroded, positive)

    -- 8. Ishmael
    [2080111] = "ZAYIN",   -- Snagharpoon
    [2080211] = "TETH",    -- Roseate Desire
    [2080221] = "TETH",    -- Roseate Desire (corroded, positive)
    [2080311] = "HE",      -- Ardor Blossom Star
    [2080321] = "HE",      -- Ardor Blossom Star (corroded)
    [2080411] = "TETH",    -- Capote
    [2080421] = "TETH",    -- Capote (corroded)
    [2080511] = "WAW",     -- Blind Obsession
    [2080521] = "WAW",     -- Blind Obsession (corroded)
    [2080611] = "HE",      -- Wingbeat
    [2080621] = "HE",      -- Wingbeat (corroded)
    [2080711] = "TETH",    -- Bygone Days
    [2080721] = "TETH",    -- Bygone Days (corroded)
    [2080811] = "HE",      -- Christmas Nightmare
    [2080821] = "HE",      -- Christmas Nightmare (corroded)
    [2080911] = "ZAYIN",   -- Hundred-Footed Death Maggot
    [2080921] = "ZAYIN",   -- Hundred-Footed Death Maggot (corroded)
    [2081011] = "HE",      -- Tidal Elegy
    [2081021] = "HE",      -- Tidal Elegy (corroded)

    -- 9. Rodion
    [2090111] = "ZAYIN",   -- What is Cast
    [2090211] = "HE",      -- 4th Match Flame
    [2090221] = "HE",      -- 4th Match Flame (corroded)
    [2090311] = "TETH",    -- Rime Shank
    [2090321] = "TETH",    -- Rime Shank (corroded, positive)
    [2090411] = "TETH",    -- Effervescent Corrosion
    [2090421] = "TETH",    -- Effervescent Corrosion (corroded)
    [2090511] = "HE",      -- Pursuance
    [2090521] = "HE",      -- Pursuance (corroded)
    [2090611] = "WAW",     -- Sanguine Desire
    [2090621] = "WAW",     -- Sanguine Desire (corroded)
    [2090711] = "HE",      -- Hex Nail
    [2090721] = "HE",      -- Hex Nail (corroded)
    [2090811] = "WAW",     -- Indicant's Trial
    [2090821] = "WAW",     -- Indicant's Trial (corroded, positive)
    [2090911] = "ZAYIN",   -- Into the Sunset
    [2090921] = "ZAYIN",   -- Into the Sunset (corroded)
    [2091011] = "TETH",    -- Mirror-touch
    [2091021] = "TETH",    -- Mirror-touch (corroded)

    -- 10. Sinclair
    [2100111] = "ZAYIN",   -- Branch of Knowledge
    [2100211] = "TETH",    -- Impending Day
    [2100221] = "TETH",    -- Impending Day (corroded)
    [2100311] = "TETH",    -- Lifetime Stew
    [2100321] = "TETH",    -- Lifetime Stew (corroded)
    [2100411] = "HE",      -- Lantern
    [2100421] = "HE",      -- Lantern (corroded)
    [2100511] = "HE",      -- 9:2
    [2100521] = "HE",      -- 9:2 (corroded)
    [2100611] = "ZAYIN",   -- Cavernous Wailing
    [2100621] = "ZAYIN",   -- Cavernous Wailing (corroded)
    [2100711] = "TETH",    -- Hex Nail
    [2100721] = "TETH",    -- Hex Nail (corroded)
    [2100811] = "WAW",     -- Tears of the Tarnished Blood
    [2100821] = "WAW",     -- Tears of the Tarnished Blood (corroded)
    [2100911] = "HE",      -- Harmony
    [2100921] = "HE",      -- Harmony (corroded)

    -- 11. Outis
    [2110111] = "ZAYIN",   -- To Páthos Máthos
    [2110211] = "HE",      -- Ebony Stem
    [2110221] = "HE",      -- Ebony Stem (corroded, positive)
    [2110311] = "TETH",    -- Ya Śūnyatā Tad Rūpam
    [2110321] = "TETH",    -- Ya Śūnyatā Tad Rūpam (corroded)
    [2110411] = "TETH",    -- Sunshower
    [2110421] = "TETH",    -- Sunshower (corroded)
    [2110511] = "HE",      -- Holiday
    [2110521] = "HE",      -- Holiday (corroded)
    [2110611] = "WAW",     -- Binds
    [2110621] = "WAW",     -- Binds (corroded)
    [2110711] = "HE",      -- Dimension Shredder
    [2110721] = "HE",      -- Dimension Shredder (corroded)
    [2110811] = "HE",      -- Magic Bullet
    [2110821] = "HE",      -- Magic Bullet (corroded)
    [2110911] = "ZAYIN",   -- I'll Go fer Scissors
    [2110921] = "ZAYIN",   -- I'll Go fer Scissors (corroded, positive)

    -- 12. Gregor
    [2120111] = "ZAYIN",   -- Suddenly, One Day
    [2120211] = "ZAYIN",   -- Legderdemain
    [2120221] = "ZAYIN",   -- Legderdemain (corroded)
    [2120311] = "TETH",    -- Lantern
    [2120321] = "TETH",    -- Lantern (corroded, positive)
    [2120411] = "HE",      -- AEDD
    [2120421] = "HE",      -- AEDD (corroded, positive)
    [2120511] = "WAW",     -- Garden of Thorns
    [2120521] = "WAW",     -- Garden of Thorns (corroded)
    [2120611] = "TETH",    -- Bygone Days
    [2120621] = "TETH",    -- Bygone Days (corroded)
    [2120711] = "HE",      -- Solemn Lament
    [2120721] = "HE",      -- Solemn Lament (corroded)
    [2120811] = "HE",      -- Christmas Nightmare
    [2120821] = "HE",      -- Christmas Nightmare (corroded)
    [2120911] = "WAW",     -- Unbrilliant Glory - Flowing
    [2120912] = "WAW",     -- Unbrilliant Glory - Incandescence
    [2120921] = "WAW",     -- Unbrilliant Glory - Flowing (corroded)
    [2121011] = "TETH",    -- Move-in Reg.
    [2121021] = "TETH",    -- Move-in Reg. (corroded, positive)
}

-----------------------------------------------------
--  CORRODED E.G.O. -- NEGATIVE COIN variants (set)
--  Membership here = corroded + negative coins.
-----------------------------------------------------
DB.egoCorroded = {
    -- 1. Yi Sang
    [2010221] = true,   -- 4th Match Flame (corroded)
    [2010321] = true,   -- Wishing Cairn (corroded)
    [2010421] = true,   -- Dimension Shredder (corroded)
    [2010521] = true,   -- Sunshower (corroded)
    [2010621] = true,   -- Bygone Days (corroded)
    [2010721] = true,   -- Fell Bullet (corroded)
    [2010821] = true,   -- Great Trichiliocosm (corroded)
    [2010921] = true,   -- Solemn Lament (corroded)

    -- 2. Faust
    [2020221] = true,   -- Fluid Sac (corroded)
    [2020521] = true,   -- 9:2 (corroded)
    [2020621] = true,   -- Everlasting (corroded)
    [2020821] = true,   -- Thoracalgia (corroded)
    [2021021] = true,   -- Ardor Blossom Star (corroded)
    [2021121] = true,   -- Le Trou (corroded, flagged in data)

    -- 3. Don Quixote
    [2030221] = true,   -- Fluid Sac (corroded)
    [2030521] = true,   -- Wishing Cairn (corroded)
    [2030621] = true,   -- Electric Screaming (corroded)
    [2030721] = true,   -- Yearning - Mircalla (corroded)
    [2030821] = true,   -- Red Sheet (corroded)
    [2030921] = true,   -- In the Name of Love and Hate (corroded)

    -- 4. Ryoshu
    [2040221] = true,   -- 4th Match Flame (corroded)
    [2040321] = true,   -- Red Eyes (corroded)
    [2040421] = true,   -- Red Eyes (Open, corroded)
    [2040521] = true,   -- Soda (corroded)
    [2040621] = true,   -- Blind Obsession (corroded)
    [2040721] = true,   -- Contempt, Awe (corroded)
    [2040821] = true,   -- Thoracalgia (corroded)
    [2040921] = true,   -- Great Trichiliocosm (corroded)

    -- 5. Meursault
    [2050321] = true,   -- Pursuance (corroded)
    [2050421] = true,   -- Capote (corroded)
    [2050521] = true,   -- Regret (corroded)
    [2050621] = true,   -- Electric Screaming (corroded)
    [2050721] = true,   -- Yearning - Mircalla (corroded)
    [2050821] = true,   -- Crushbound Past (corroded)
    [2050921] = true,   -- Shadow-vested Bladesinger (corroded)
    [2051021] = true,   -- Hollow (corroded)

    -- 6. Hong Lu
    [2060221] = true,   -- Roseate Desire (corroded)
    [2060421] = true,   -- Soda (corroded)
    [2060521] = true,   -- Effervescent Corrosion (corroded)
    [2060621] = true,   -- Cavernous Wailing (corroded)
    [2060821] = true,   -- Tears of the Tarnished Blood - Inception (corroded)
    [2060921] = true,   -- To Remain Oneself (corroded)
    [2061021] = true,   -- Repudiation (corroded)

    -- 7. Heathcliff
    [2070221] = true,   -- Telepole (corroded)
    [2070321] = true,   -- AEDD (corroded)
    [2070421] = true,   -- Ya Śūnyatā Tad Rūpam (corroded)
    [2070521] = true,   -- Holiday (corroded)
    [2070621] = true,   -- Binds (corroded)
    [2070721] = true,   -- Fell Bullet (corroded)
    [2070821] = true,   -- Asymmetrical Inertia (corroded)

    -- 8. Ishmael
    [2080321] = true,   -- Ardor Blossom Star (corroded)
    [2080421] = true,   -- Capote (corroded)
    [2080521] = true,   -- Blind Obsession (corroded)
    [2080621] = true,   -- Wingbeat (corroded)
    [2080721] = true,   -- Bygone Days (corroded)
    [2080821] = true,   -- Christmas Nightmare (corroded)
    [2080921] = true,   -- Hundred-Footed Death Maggot (corroded)
    [2081021] = true,   -- Tidal Elegy (corroded)

    -- 9. Rodion
    [2090221] = true,   -- 4th Match Flame (corroded)
    [2090421] = true,   -- Effervescent Corrosion (corroded)
    [2090521] = true,   -- Pursuance (corroded)
    [2090621] = true,   -- Sanguine Desire (corroded)
    [2090721] = true,   -- Hex Nail (corroded)
    [2090921] = true,   -- Into the Sunset (corroded)
    [2091021] = true,   -- Mirror-touch (corroded)

    -- 10. Sinclair
    [2100221] = true,   -- Impending Day (corroded)
    [2100321] = true,   -- Lifetime Stew (corroded)
    [2100421] = true,   -- Lantern (corroded)
    [2100521] = true,   -- 9:2 (corroded)
    [2100621] = true,   -- Cavernous Wailing (corroded)
    [2100721] = true,   -- Hex Nail (corroded)
    [2100821] = true,   -- Tears of the Tarnished Blood (corroded)
    [2100921] = true,   -- Harmony (corroded)

    -- 11. Outis
    [2110321] = true,   -- Ya Śūnyatā Tad Rūpam (corroded)
    [2110421] = true,   -- Sunshower (corroded)
    [2110521] = true,   -- Holiday (corroded)
    [2110621] = true,   -- Binds (corroded)
    [2110721] = true,   -- Dimension Shredder (corroded)
    [2110821] = true,   -- Magic Bullet (corroded)

    -- 12. Gregor
    [2120221] = true,   -- Legderdemain (corroded)
    [2120521] = true,   -- Garden of Thorns (corroded)
    [2120621] = true,   -- Bygone Days (corroded)
    [2120721] = true,   -- Solemn Lament (corroded)
    [2120821] = true,   -- Christmas Nightmare (corroded)
    [2120921] = true,   -- Unbrilliant Glory - Flowing (corroded, flagged)
}

-----------------------------------------------------
--  CORRODED E.G.O. -- POSITIVE COIN variants (set)
--  Membership here = corroded + positive coins.
-----------------------------------------------------
DB.egoCorrodedPositive = {
    -- 2. Faust
    [2020321] = true,   -- Hex Nail (corroded)
    [2020421] = true,   -- Telepole (corroded)
    [2020721] = true,   -- Lasso (corroded)
    [2020921] = true,   -- Command : Meltdown (corroded)

    -- 3. Don Quixote
    [2030321] = true,   -- Telepole (corroded)
    [2030421] = true,   -- Lifetime Stew (corroded)
    [2031021] = true,   -- I'll Go fer Scissors (corroded)

    -- 5. Meursault
    [2050221] = true,   -- Screwloose Wallop (corroded)

    -- 6. Hong Lu
    [2060321] = true,   -- Dimension Shredder (corroded)
    [2060721] = true,   -- Lasso (corroded)

    -- 7. Heathcliff
    [2070921] = true,   -- Move-in Reg. (corroded)

    -- 8. Ishmael
    [2080221] = true,   -- Roseate Desire (corroded)

    -- 9. Rodion
    [2090321] = true,   -- Rime Shank (corroded)
    [2090821] = true,   -- Indicant's Trial (corroded)

    -- 11. Outis
    [2110221] = true,   -- Ebony Stem (corroded)
    [2110921] = true,   -- I'll Go fer Scissors (corroded)

    -- 12. Gregor
    [2120321] = true,   -- Lantern (corroded)
    [2120421] = true,   -- AEDD (corroded)
    [2121021] = true,   -- Move-in Reg. (corroded)
}


-----------------------------------------------------
--  NEGATIVE COIN SKILLS
--  unitId -> { skillId -> true }
--  Membership here = the skill uses negative coins.
-----------------------------------------------------
DB.negative = {
    -- 1. Yi Sang
    [10111] = { [1011103]=true },   -- LCE Lantern (S3 only)

    -- 3. Don Quixote
    [10312] = { [1031205]=true, [1031206]=true, [1031207]=true },   -- In the Name of Love and Hate

    -- 5. Meursault
    [10504] = { [1050404]=true },   -- N Corp. Grosshammer (counter only)
    [10508] = { [1050803]=true },   -- Blade Lineage Mentor (S3 only)

    -- 7. Heathcliff
    [10705] = { [1070501]=true, [1070502]=true, [1070503]=true },   -- Sunshower
    [10710] = { [1071005]=true },   -- Wild Hunt (S3 negative only)

    -- 9. Rodion
    [10913] = { [1091305]=true, [1091306]=true, [1091307]=true },   -- Sword Sharpened with Tears

    -- 10. Sinclair
    [11005] = { [1100501]=true, [1100502]=true, [1100503]=true, [1100504]=true },   -- The One Who Shall Grip
}


--  helpers
local function normalizeTier(t)
    if type(t) == "number" then return t end
    if type(t) == "string" then return DB.egoTiers[t:upper()] end
    return nil
end

function DB.egoTierOf(skillId)
    return DB.egoTier[skillId]
end

function DB.egoTierNumber(skillId)
    local name = DB.egoTier[skillId]
    if not name then return nil end
    return DB.egoTiers[name]
end

function DB.egoTierIs(skillId, tier)
    local n = DB.egoTierNumber(skillId)
    local m = normalizeTier(tier)
    if not n or not m then return false end
    return n == m
end

function DB.egoTierAtLeast(skillId, tier)
    local n = DB.egoTierNumber(skillId)
    local m = normalizeTier(tier)
    if not n or not m then return false end
    return n >= m
end

function DB.egoTierAtMost(skillId, tier)
    local n = DB.egoTierNumber(skillId)
    local m = normalizeTier(tier)
    if not n or not m then return false end
    return n <= m
end

function DB.egosInTier(tier)
    local m = normalizeTier(tier)
    if not m then return {} end
    local list = {}
    for id, name in pairs(DB.egoTier) do
        if DB.egoTiers[name] == m then list[#list + 1] = id end
    end
    table.sort(list)
    return list
end

function DB.egosAtLeastTier(tier)
    local m = normalizeTier(tier)
    if not m then return {} end
    local list = {}
    for id, name in pairs(DB.egoTier) do
        if DB.egoTiers[name] >= m then list[#list + 1] = id end
    end
    table.sort(list)
    return list
end

function DB.egosAtMostTier(tier)
    local m = normalizeTier(tier)
    if not m then return {} end
    local list = {}
    for id, name in pairs(DB.egoTier) do
        if DB.egoTiers[name] <= m then list[#list + 1] = id end
    end
    table.sort(list)
    return list
end


function DB.isEgoCorroded(skillId)
    return DB.egoCorroded[skillId] ~= nil
        or DB.egoCorrodedPositive[skillId] ~= nil
end

function DB.isCorrodedPositive(skillId)
    return DB.egoCorrodedPositive[skillId] ~= nil
end

function DB.isCorrodedNegative(skillId)
    return DB.egoCorroded[skillId] ~= nil
end

function DB.corrodedPolarity(skillId)
    if DB.egoCorrodedPositive[skillId] ~= nil then return "positive" end
    if DB.egoCorroded[skillId] ~= nil         then return "negative" end
    return nil
end

function DB.egoKind(skillId)
    if DB.isEgoCorroded(skillId) then return "corroded" end
    if DB.egoTier[skillId] ~= nil then return "base" end
    return nil
end


function DB.isBaseEgo(skillId)
    return DB.egoTier[skillId] ~= nil
       and DB.egoCorroded[skillId] == nil
       and DB.egoCorrodedPositive[skillId] == nil
end


function DB.isNegativeCoin(unitId, skillId)
    return DB.negative[unitId] ~= nil
       and DB.negative[unitId][skillId] ~= nil
end

return DB