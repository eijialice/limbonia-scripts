local DB = {}

-- ============================================================
--  UNIT NAME REGISTRY
--  coindb.units[unitId] = short identity name
-- ============================================================
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
	[10701] = "Shi Assoc. South Section 5 Heathcliff",
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

-- ============================================================
--  ID and Sinner Skills
-- ============================================================
DB.skills = {
    -- 1. Yi Sang
    [10101] = { [1010101]=1, [1010102]=2, [1010103]=3 },                          -- LCB Sinner
    [10102] = { [1010201]=1, [1010202]=3, [1010203]=2 },                          -- Seven Assoc.
    [10103] = { [1010301]=1, [1010302]=2, [1010303]=3 },                          -- Blade Lineage
    [10104] = { [1010401]=3, [1010402]=3, [1010403]=3 },                          -- Spicebush
    [10105] = { [1010501]=2, [1010502]=1, [1010503]=3 },                          -- Molar Office
    [10106] = { [1010601]=1, [1010602]=2, [1010603]=3 },                          -- W Corp.
    [10107] = { [1010701]=2, [1010702]=2, [1010703]=2 },                          -- Pequod First Mate
    [10108] = { [1010801]=2, [1010802]=3, [1010803]=4 },                          -- Dieci
    [10109] = { [1010901]=3, [1010903]=4 },                                       -- Ring Pointillist
    [10110] = { [1011001]=2, [1011002]=2, [1011003]=4 },                          -- Solemn Lament
    [10111] = { [1011101]=2, [1011102]=1, [1011103]=3 },                          -- Lantern
    [10112] = { [1011201]=2, [1011202]=3, [1011203]=4 },                          -- Liu
    [10113] = { [1011301]=1, [1011302]=2, [1011303]=2 },                          -- Fell Bullet
    [10114] = { [1011401]=2, [1011402]=2, [1011403]=3, [1011405]=4 },             -- Heishou Wu
    [10115] = { [1011501]=2, [1011502]=3, [1011503]=4, [1011505]=9 },             -- Index Nursefather
    [10116] = { [1011601]=1, [1011602]=2, [1011603]=3, [1011605]=4 },             -- Dimension Shredder

    -- 2. Faust
    [10201] = { [1020101]=1, [1020102]=2, [1020103]=2 },                          -- LCB Sinner
    [10202] = { [1020201]=1, [1020202]=2, [1020203]=3 },                          -- W Corp.
    [10203] = { [1020301]=1, [1020302]=3, [1020303]=2 },                          -- Lobotomy Remnant
    [10204] = { [1020401]=2, [1020402]=3, [1020403]=3 },                          -- The One Who Grips
    [10205] = { [1020501]=2, [1020502]=3, [1020503]=2 },                          -- Zwei
    [10206] = { [1020601]=2, [1020602]=3, [1020603]=3 },                          -- Seven Assoc.
    [10207] = { [1020701]=1, [1020702]=3, [1020703]=3 },                          -- Regret
    [10208] = { [1020801]=3, [1020802]=2, [1020803]=2 },                          -- Blade Lineage
    [10209] = { [1020901]=2, [1020902]=2, [1020903]=4 },                          -- Butler
    [10210] = { [1021001]=2, [1021002]=3, [1021003]=4 },                          -- MultiCrack
    [10211] = { [1021101]=2, [1021102]=3, [1021103]=3, [1021105]=3 },             -- Ardor Blossom
    [10212] = { [1021201]=2, [1021202]=2, [1021203]=3, [1021205]=3 },             -- Heishou Mao
    [10213] = { [1021301]=2, [1021302]=3, [1021303]=4, [1021305]=1 },             -- Shi East
    [10214] = { [1021401]=2, [1021402]=3, [1021403]=3 },                          -- Index Proselyte
    [10215] = { [1021501]=2, [1021502]=3, [1021503]=4, [1021505]=2, [1021506]=3, [1021507]=4 }, -- Ring Apprentice
    [10216] = { [1021601]=2, [1021602]=2, [1021603]=3, [1021605]=2, [1021606]=3 },-- Dawn Office

    -- 3. Don Quixote
    [10301] = { [1030101]=1, [1030102]=1, [1030103]=3 },                          -- LCB Sinner
    [10302] = { [1030201]=1, [1030202]=3, [1030203]=5 },                          -- W Corp.
    [10303] = { [1030301]=1, [1030302]=2, [1030303]=1 },                          -- Shi Director
    [10304] = { [1030401]=2, [1030402]=1, [1030403]=3 },                          -- N Corp.
    [10305] = { [1030501]=2, [1030502]=2, [1030503]=2 },                          -- Cinq Director
    [10306] = { [1030601]=2, [1030602]=2, [1030603]=4 },                          -- Middle Little Sister
    [10307] = { [1030701]=1, [1030702]=3, [1030703]=3 },                          -- Lantern
    [10308] = { [1030801]=2, [1030802]=2, [1030803]=3 },                          -- Blade Lineage
    [10309] = { [1030901]=2, [1030902]=3, [1030903]=4 },                          -- T Corp.
    [10310] = { [1031001]=2, [1031002]=2, [1031003]=3, [1031005]=3, [1031006]=3, [1031007]=4 }, -- La Manchaland Manager
    [10311] = { [1031101]=2, [1031102]=3, [1031103]=4 },                          -- Cinq East
    [10313] = { [1031301]=2, [1031302]=3, [1031303]=4 },                          -- Heishou Wei
    [10314] = { [1031401]=2, [1031402]=3, [1031403]=2, [1031405]=2, [1031406]=2, [1031407]=4 }, -- Index Proxy
    [10315] = { [1031501]=2, [1031502]=2, [1031503]=3, [1031505]=1, [1031506]=3 },-- Le Noir Manager

    -- 4. Ryoshu
    [10401] = { [1040101]=1, [1040102]=2, [1040103]=3 },                          -- LCB Sinner
    [10402] = { [1040201]=1, [1040202]=1, [1040203]=3 },                          -- Seven Assoc.
    [10403] = { [1040301]=1, [1040302]=2, [1040303]=2 },                          -- Kurokumo
    [10404] = { [1040401]=2, [1040402]=3, [1040403]=4 },                          -- R.B. Chef
    [10405] = { [1040501]=3, [1040502]=3, [1040503]=4 },                          -- W Corp.
    [10406] = { [1040601]=1, [1040602]=2, [1040603]=3 },                          -- LCCB
    [10407] = { [1040701]=2, [1040702]=2, [1040703]=4 },                          -- Liu
    [10408] = { [1040801]=2, [1040802]=2, [1040803]=2 },                          -- Edgar Butler
    [10409] = { [1040901]=2, [1040902]=3, [1040903]=3 },                          -- District 20 Yurodivy
    [10410] = { [1041001]=2, [1041002]=3, [1041003]=3, [1041005]=3 },             -- Red Eyes
    [10411] = { [1041101]=2, [1041102]=2, [1041103]=3 },                          -- Heishou Mao
    [10412] = { [1041201]=2, [1041202]=2, [1041203]=3, [1041205]=1 },             -- Contempt
    [10413] = { [1041301]=1, [1041302]=3, [1041303]=4 },                          -- Drifting Blade
    [10414] = { [1041401]=2, [1041402]=3, [1041403]=3, [1041405]=3, [1041406]=1 },-- Faint Aroma
    [10415] = { [1041501]=3, [1041502]=3, [1041503]=1, [1041505]=1, [1041506]=1, [1041508]=2 }, -- Blade of Spiders
    [10416] = { [1041601]=2, [1041602]=3, [1041603]=3, [1041605]=4, [1041606]=4 },-- Le Noir Footwear

    -- 5. Meursault
    [10501] = { [1050101]=2, [1050102]=1, [1050103]=4 },                          -- LCB Sinner
    [10502] = { [1050201]=2, [1050202]=2, [1050203]=3 },                          -- Liu
    [10503] = { [1050301]=1, [1050302]=3, [1050303]=4 },                          -- W Corp.
    [10504] = { [1050401]=2, [1050402]=2, [1050403]=2 },                          -- N Corp. Grosshammer
    [10505] = { [1050501]=1, [1050502]=2, [1050503]=4 },                          -- Rosespanner
    [10506] = { [1050601]=1, [1050602]=3, [1050603]=3 },                          -- R Corp. Rhino
    [10507] = { [1050701]=2, [1050702]=2, [1050703]=3 },                          -- Middle Little Brother
    [10508] = { [1050801]=2, [1050802]=3 },                                       -- Blade Lineage Mentor
    [10509] = { [1050901]=1, [1050902]=2, [1050903]=4 },                          -- Dead Rabbits
    [10510] = { [1051001]=2, [1051002]=2, [1051003]=3 },                          -- Dieci Director
    [10511] = { [1051101]=2, [1051102]=3, [1051103]=3 },                          -- Cinq West
    [10512] = { [1051201]=2, [1051202]=3, [1051203]=3, [1051205]=5 },             -- Thumb Capo
    [10513] = { [1051301]=3, [1051302]=2, [1051303]=4, [1051305]=4 },             -- Prince of La Manchaland
    [10514] = { [1051401]=1, [1051402]=3, [1051403]=4 },                          -- Hornet
    [10515] = { [1051501]=2, [1051502]=3, [1051503]=3 },                          -- Ring Fauvist

    -- 6. Hong Lu
    [10601] = { [1060101]=1, [1060102]=2, [1060103]=2 },                          -- LCB Sinner
    [10602] = { [1060201]=1, [1060202]=2, [1060203]=3 },                          -- Kurokumo
    [10603] = { [1060301]=1, [1060302]=3, [1060303]=1 },                          -- Tingtang
    [10604] = { [1060401]=2, [1060402]=2, [1060403]=2 },                          -- Liu
    [10605] = { [1060501]=1, [1060502]=2, [1060503]=2 },                          -- K Corp.
    [10606] = { [1060601]=2, [1060602]=2, [1060603]=3 },                          -- W Corp.
    [10607] = { [1060701]=2, [1060702]=3, [1060703]=4 },                          -- Hook Office
    [10608] = { [1060801]=1, [1060802]=3, [1060803]=3 },                          -- Dieci
    [10609] = { [1060901]=2, [1060902]=3, [1060903]=4 },                          -- District 20 Yurodivy
    [10610] = { [1061001]=2, [1061002]=2, [1061003]=3 },                          -- Fanghunt
    [10611] = { [1061101]=3, [1061102]=3, [1061103]=3, [1061105]=4, [1061106]=4, [1061108]=2 }, -- Full-Stop
    [10612] = { [1061201]=2, [1061202]=4, [1061203]=1 },                          -- R Corp. Reindeer
    [10613] = { [1061301]=2, [1061302]=4, [1061303]=1, [1061305]=2, [1061306]=3 },-- Lord of Hongyuan
    [10614] = { [1061401]=2, [1061402]=3, [1061403]=4, [1061405]=1, [1061406]=5, [1061408]=2 }, -- Ring Nursefather
    [10615] = { [1061501]=3, [1061502]=2, [1061503]=4 },                          -- S Corp. Ch'unokkun
    [10616] = { [1061601]=1, [1061602]=2, [1061603]=3 },                          -- Cinq East

    -- 7. Heathcliff
    [10701] = { [1070101]=1, [1070102]=2, [1070103]=2 },                          -- LCB Sinner
    [10703] = { [1070301]=3, [1070302]=4, [1070303]=5 },                          -- R Corp. Rabbit
    [10704] = { [1070401]=2, [1070402]=1, [1070403]=3 },                          -- N Corp. Kleinhammer
    [10706] = { [1070601]=2, [1070602]=1, [1070603]=4 },                          -- Seven Assoc.
    [10707] = { [1070701]=2, [1070702]=3, [1070703]=4 },                          -- Pequod Harpooneer
    [10708] = { [1070801]=2, [1070802]=2, [1070803]=3 },                          -- Oufi
    [10709] = { [1070901]=2, [1070902]=3, [1070903]=4 },                          -- MultiCrack Fixer
    [10710] = { [1071001]=2, [1071002]=3, [1071003]=2 },                          -- Wild Hunt
    [10711] = { [1071101]=3, [1071102]=1, [1071103]=1, [1071105]=1 },             -- Full-Stop
    [10712] = { [1071201]=2, [1071202]=2, [1071203]=3, [1071205]=1 },             -- Kurokumo
    [10713] = { [1071301]=2, [1071302]=2, [1071303]=4 },                          -- W Corp. CCA
    [10714] = { [1071401]=3, [1071402]=3, [1071403]=4, [1071405]=4 },             -- Heishou You
    [10715] = { [1071501]=3, [1071502]=3, [1071503]=1, [1071505]=1, [1071507]=3 },-- Middle Big Brother
    [10716] = { [1071601]=2, [1071602]=3, [1071603]=3, [1071606]=4 },             -- Thumb Apprentice

    -- 8. Ishmael
    [10801] = { [1080101]=1, [1080102]=1, [1080103]=1 },                          -- LCB Sinner
    [10802] = { [1080201]=2, [1080202]=1, [1080203]=4 },                          -- R Corp. Reindeer
    [10803] = { [1080301]=2, [1080302]=2, [1080303]=2 },                          -- Shi
    [10804] = { [1080401]=1, [1080402]=3, [1080403]=4 },                          -- LCCB
    [10805] = { [1080501]=1, [1080502]=2, [1080503]=1 },                          -- Sloshing
    [10806] = { [1080601]=2, [1080602]=3, [1080603]=4 },                          -- Liu
    [10807] = { [1080701]=2, [1080702]=2, [1080703]=3 },                          -- Molar Boatworks
    [10808] = { [1080801]=2, [1080802]=3, [1080803]=4 },                          -- Pequod Captain
    [10809] = { [1080901]=2, [1080902]=2, [1080903]=3 },                          -- Edgar Butler
    [10810] = { [1081001]=2, [1081002]=3, [1081003]=3 },                          -- Zwei West
    [10811] = { [1081101]=2, [1081102]=2, [1081103]=3 },                          -- Kurokumo Captain
    [10812] = { [1081201]=2, [1081202]=4, [1081203]=1, [1081205]=2 },             -- Family Hierarch
    [10813] = { [1081301]=2, [1081302]=3, [1081303]=3 },                          -- Jeong's Office
    [10814] = { [1081401]=2, [1081402]=3, [1081403]=4 },                          -- Middle Apprentice
    [10815] = { [1081501]=2, [1081502]=3, [1081503]=3, [1081505]=2, [1081506]=4 },-- LCD OSIR
    [10816] = { [1081601]=2, [1081602]=2, [1081603]=3 },                          -- Boutique du Rouge

    -- 9. Rodion
    [10901] = { [1090101]=1, [1090102]=2, [1090103]=4 },                          -- LCB Sinner
    [10902] = { [1090201]=1, [1090202]=2, [1090203]=1 },                          -- Kurokumo
    [10903] = { [1090301]=1, [1090302]=2, [1090303]=2 },                          -- LCCB
    [10904] = { [1090401]=2, [1090402]=2, [1090403]=4 },                          -- N Corp. Mittelhammer
    [10905] = { [1090501]=2, [1090502]=2, [1090503]=3 },                          -- Rosespanner Rep
    [10906] = { [1090601]=2, [1090602]=2, [1090603]=3 },                          -- Zwei
    [10907] = { [1090701]=3, [1090702]=4, [1090703]=4 },                          -- Dieci
    [10908] = { [1090801]=2, [1090802]=3, [1090803]=4 },                          -- Liu Director
    [10909] = { [1090901]=2, [1090902]=2, [1090903]=4 },                          -- T Corp.
    [10910] = { [1091001]=2, [1091002]=3, [1091003]=3 },                          -- Devyat'
    [10911] = { [1091101]=2, [1091102]=3, [1091103]=3, [1091105]=3 },             -- Princess
    [10912] = { [1091201]=2, [1091202]=3 },                                       -- Heishou Si
    [10914] = { [1091401]=2, [1091402]=2, [1091403]=4 },                          -- R Corp. Reindeer
    [10915] = { [1091501]=1, [1091502]=2, [1091503]=4, [1091505]=4 },             -- Ring Fauvist Docent
    [10916] = { [1091601]=2, [1091602]=3, [1091603]=4, [1091605]=2, [1091606]=3, [1091607]=5 }, -- Thumb Nursefather
    [10917] = { [1091701]=1, [1091702]=3, [1091703]=3, [1091705]=1, [1091706]=2 },-- Alteration Shop

    -- 10. Sinclair
    [11001] = { [1100101]=1, [1100102]=3, [1100103]=3 },                          -- LCB Sinner
    [11002] = { [1100201]=2, [1100202]=3, [1100203]=1 },                          -- Blade Lineage
    [11003] = { [1100301]=1, [1100302]=2, [1100303]=1 },                          -- Zwei
    [11004] = { [1100401]=2, [1100402]=3, [1100403]=1 },                          -- Los Mariachis
    [11005] = { [1100501]=2, [1100502]=4, [1100503]=3 },                          -- The One Who Shall Grip
    [11006] = { [1100601]=1, [1100602]=3, [1100603]=2 },                          -- Red Sheet
    [11007] = { [1100701]=4, [1100702]=1, [1100703]=2 },                          -- Molar Boatworks
    [11008] = { [1100801]=2, [1100802]=3, [1100803]=3 },                          -- Cinq Director
    [11009] = { [1100901]=1, [1100902]=3, [1100903]=2, [1100905]=1 },             -- Dawn Office
    [11010] = { [1101001]=2, [1101002]=2, [1101003]=3 },                          -- Zwei West
    [11011] = { [1101101]=2, [1101102]=3, [1101103]=3 },                          -- Devyat'
    [11012] = { [1101201]=2, [1101202]=3, [1101203]=3 },                          -- Middle Little Brother
    [11013] = { [1101301]=2, [1101302]=2, [1101303]=3 },                          -- Thumb Soldato
    [11014] = { [1101401]=3, [1101402]=3, [1101403]=4 },                          -- Heishou You
    [11015] = { [1101501]=2, [1101502]=2, [1101503]=1 },                          -- Pinky Apprentice
    [11016] = { [1101601]=1, [1101602]=2, [1101603]=3, [1101605]=1, [1101606]=3,
                [1101607]=3, [1101608]=2, [1101609]=1, [1101610]=4, [1101611]=5 },-- Crimson God of Le Rouge

    -- 11. Outis
    [11101] = { [1110101]=3, [1110102]=2, [1110103]=1 },                          -- LCB Sinner
    [11102] = { [1110201]=1, [1110202]=2, [1110203]=2 },                          -- Blade Lineage
    [11103] = { [1110301]=1, [1110302]=1, [1110303]=1 },                          -- G Corp.
    [11104] = { [1110401]=1, [1110402]=2, [1110403]=3 },                          -- Seven Assoc. Director
    [11105] = { [1110501]=1, [1110502]=3, [1110503]=4 },                          -- Molar Office
    [11106] = { [1110601]=2, [1110602]=2, [1110603]=1 },                          -- Cinq
    [11107] = { [1110701]=2, [1110702]=2, [1110703]=1 },                          -- Magic Bullet
    [11108] = { [1110801]=2, [1110802]=3, [1110803]=4 },                          -- Wuthering Heights
    [11109] = { [1110901]=2, [1110902]=2, [1110903]=2 },                          -- Ring Pointillist
    [11110] = { [1111001]=2, [1111002]=2, [1111003]=4 },                          -- W Corp. Captain
    [11111] = { [1111101]=2, [1111102]=3, [1111103]=4 },                          -- Barber
    [11112] = { [1111201]=2, [1111202]=2, [1111203]=3 },                          -- Heishou Mao
    [11113] = { [1111301]=2, [1111302]=3, [1111303]=3 },                          -- T Corp. VDCU
    [11114] = { [1111401]=2, [1111402]=3, [1111403]=3 },                          -- LCA Udjat
    [11115] = { [1111501]=2, [1111502]=3, [1111503]=4, [1111505]=2, [1111506]=5,
                [1111507]=5, [1111508]=4, [1111509]=1, [1111510]=4, [1111511]=5 },-- Middle Nursefather

    -- 12. Gregor
    [11201] = { [1120101]=1, [1120102]=1, [1120103]=2 },                          -- LCB Sinner
    [11202] = { [1120201]=2, [1120202]=3, [1120203]=4 },                          -- Liu
    [11203] = { [1120301]=2, [1120302]=1, [1120303]=4 },                          -- G Corp. Corporal
    [11204] = { [1120401]=2, [1120402]=1, [1120403]=4 },                          -- R.B. Sous-chef
    [11205] = { [1120501]=2, [1120502]=1, [1120503]=3 },                          -- Rosespanner
    [11206] = { [1120601]=2, [1120602]=4, [1120603]=3 },                          -- Zwei
    [11207] = { [1120701]=2, [1120702]=2, [1120703]=2 },                          -- Twinhook
    [11208] = { [1120801]=1, [1120802]=2, [1120803]=3 },                          -- Kurokumo Captain
    [11209] = { [1120901]=1, [1120902]=2, [1120903]=4 },                          -- Edgar Heir
    [11210] = { [1121001]=2, [1121002]=2, [1121003]=3 },                          -- Priest of La Manchaland
    [11211] = { [1121101]=2, [1121102]=2, [1121103]=3 },                          -- Firefist
    [11212] = { [1121201]=2, [1121202]=3, [1121203]=1 },                          -- Heishou Si
    [11213] = { [1121301]=2, [1121302]=3, [1121303]=4, [1121305]=1, [1121306]=4 },-- Night Awls
    [11214] = { [1121401]=2, [1121402]=4, [1121403]=3 },                          -- Lamp
    [11215] = { [1121501]=2, [1121502]=3, [1121503]=3, [1121505]=3 },             -- AEDD
    [11216] = { [1121601]=2, [1121602]=3, [1121603]=4, [1121605]=4, [1121607]=4 },-- Dawn Office
}

-- ============================================================
--  Defense Skills.
-- ============================================================
DB.defense = {
    -- 1. Yi Sang
    [10101] = { [1010104]=1 },                     -- LCB Sinner
    [10102] = { [1010204]=1 },                     -- Seven Assoc.
    [10103] = { [1010304]=1 },                     -- Blade Lineage
    [10104] = { [1010404]=1 },                     -- Spicebush
    [10105] = { [1010504]=1 },                     -- Molar Office
    [10106] = { [1010604]=1 },                     -- W Corp.
    [10107] = { [1010704]=1 },                     -- Pequod First Mate
    [10108] = { [1010804]=1 },                     -- Dieci
    [10109] = { [1010904]=1 },                     -- Ring Pointillist
    [10110] = { [1011004]=1 },                     -- Solemn Lament
    [10111] = { [1011104]=1 },                     -- Lantern
    [10112] = { [1011204]=2 },                     -- Liu
    [10113] = { [1011304]=1 },                     -- Fell Bullet
    [10114] = { [1011404]=1 },                     -- Heishou Wu
    [10115] = { [1011504]=1 },                     -- Index Nursefather
    [10116] = { [1011604]=1 },                     -- Dimension Shredder

    -- 2. Faust
    [10201] = { [1020104]=1 },                     -- LCB Sinner
    [10202] = { [1020204]=1 },                     -- W Corp.
    [10203] = { [1020304]=1 },                     -- Lobotomy Remnant
    [10204] = { [1020404]=1 },                     -- The One Who Grips
    [10205] = { [1020504]=1 },                     -- Zwei
    [10206] = { [1020604]=1 },                     -- Seven Assoc.
    [10207] = { [1020704]=1 },                     -- Regret
    [10208] = { [1020804]=1 },                     -- Blade Lineage
    [10209] = { [1020904]=1 },                     -- Butler
    [10210] = { [1021004]=1 },                     -- MultiCrack
    [10211] = { [1021104]=1 },                     -- Ardor Blossom
    [10212] = { [1021204]=2, [1021206]=2, [1021207]=3 },  -- Heishou Mao
    [10213] = { [1021304]=1, [1021306]=1 },        -- Shi East
    [10214] = { [1021404]=3 },                     -- Index Proselyte
    [10215] = { [1021504]=1, [1021508]=1, [1021509]=2 },  -- Ring Apprentice
    [10216] = { [1021604]=2, [1021607]=3 },        -- Dawn Office

    -- 3. Don Quixote
    [10301] = { [1030104]=1 },                     -- LCB Sinner
    [10302] = { [1030204]=1 },                     -- W Corp.
    [10303] = { [1030304]=1 },                     -- Shi Director
    [10304] = { [1030404]=1 },                     -- N Corp.
    [10305] = { [1030504]=1 },                     -- Cinq Director
    [10306] = { [1030604]=2, [1030605]=4 },        -- Middle Little Sister
    [10307] = { [1030704]=1 },                     -- Lantern
    [10308] = { [1030804]=1 },                     -- Blade Lineage
    [10309] = { [1030904]=1 },                     -- T Corp.
    [10310] = { [1031004]=2, [1031008]=2 },        -- La Manchaland Manager
    [10311] = { [1031104]=1 },                     -- Cinq East
    [10312] = { [1031204]=1 },                     -- Love and Hate
    [10313] = { [1031304]=2 },                     -- Heishou Wei
    [10314] = { [1031404]=3, [1031408]=3 },        -- Index Proxy
    [10315] = { [1031504]=2 },                     -- Le Noir Manager

    -- 4. Ryoshu
    [10401] = { [1040104]=1 },                     -- LCB Sinner
    [10402] = { [1040204]=1 },                     -- Seven Assoc.
    [10403] = { [1040304]=1 },                     -- Kurokumo
    [10404] = { [1040404]=1 },                     -- R.B. Chef
    [10405] = { [1040504]=1 },                     -- W Corp.
    [10406] = { [1040604]=1 },                     -- LCCB
    [10407] = { [1040704]=1 },                     -- Liu
    [10408] = { [1040804]=1 },                     -- Edgar Butler
    [10409] = { [1040904]=1 },                     -- District 20 Yurodivy
    [10410] = { [1041004]=2 },                     -- Red Eyes
    [10411] = { [1041104]=1 },                     -- Heishou Mao
    [10412] = { [1041204]=1, [1041206]=2 },        -- Contempt
    [10413] = { [1041304]=1 },                     -- Drifting Blade
    [10414] = { [1041404]=1 },                     -- Faint Aroma
    [10415] = { [1041504]=1 },                     -- Blade of Spiders
    [10416] = { [1041604]=2 },                     -- Le Noir Footwear

    -- 5. Meursault
    [10501] = { [1050104]=1 },                     -- LCB Sinner
    [10502] = { [1050204]=1 },                     -- Liu
    [10503] = { [1050304]=1 },                     -- W Corp.
    [10504] = { [1050404]=1 },                     -- N Corp. Grosshammer
    [10505] = { [1050504]=1 },                     -- Rosespanner
    [10506] = { [1050604]=1 },                     -- R Corp. Rhino
    [10507] = { [1050704]=2 },                     -- Middle Little Brother
    [10508] = { [1050804]=1 },                     -- Blade Lineage Mentor
    [10509] = { [1050904]=1 },                     -- Dead Rabbits
    [10510] = { [1051004]=1 },                     -- Dieci Director
    [10511] = { [1051104]=1 },                     -- Cinq West
    [10512] = { [1051204]=2 },                     -- Thumb Capo
    [10513] = { [1051304]=2 },                     -- Prince of La Manchaland
    [10514] = { [1051404]=1 },                     -- Hornet
    [10515] = { [1051504]=2 },                     -- Ring Fauvist

    -- 6. Hong Lu
    [10601] = { [1060104]=1 },                     -- LCB Sinner
    [10602] = { [1060204]=1 },                     -- Kurokumo
    [10603] = { [1060304]=1 },                     -- Tingtang
    [10604] = { [1060404]=1 },                     -- Liu
    [10605] = { [1060504]=1 },                     -- K Corp.
    [10606] = { [1060604]=1 },                     -- W Corp.
    [10607] = { [1060704]=1 },                     -- Hook Office
    [10608] = { [1060804]=1 },                     -- Dieci
    [10609] = { [1060904]=1 },                     -- District 20 Yurodivy
    [10610] = { [1061004]=1 },                     -- Fanghunt
    [10611] = { [1061104]=1, [1061107]=2 },        -- Full-Stop
    [10612] = { [1061204]=1 },                     -- R Corp. Reindeer
    [10613] = { [1061304]=1 },                     -- Lord of Hongyuan
    [10614] = { [1061404]=1, [1061407]=2 },        -- Ring Nursefather
    [10615] = { [1061504]=1 },                     -- S Corp. Ch'unokkun
    [10616] = { [1061604]=1 },                     -- Cinq East

    -- 7. Heathcliff
    [10701] = { [1070104]=1 },                     -- LCB Sinner
    [10703] = { [1070304]=1 },                     -- R Corp. Rabbit
    [10704] = { [1070404]=1 },                     -- N Corp. Kleinhammer
    [10705] = { [1070504]=2 },                     -- Sunshower
    [10706] = { [1070604]=1 },                     -- Seven Assoc.
    [10707] = { [1070704]=2 },                     -- Pequod Harpooneer
    [10708] = { [1070804]=1 },                     -- Oufi
    [10709] = { [1070904]=1 },                     -- MultiCrack Fixer
    [10710] = { [1071004]=2, [1071006]=2 },        -- Wild Hunt
    [10711] = { [1071104]=1, [1071106]=1 },        -- Full-Stop
    [10712] = { [1071204]=1 },                     -- Kurokumo
    [10713] = { [1071304]=1 },                     -- W Corp. CCA
    [10714] = { [1071404]=2 },                     -- Heishou You
    [10715] = { [1071504]=2 },                     -- Middle Big Brother
    [10716] = { [1071604]=2, [1071605]=1 },        -- Thumb Apprentice

    -- 8. Ishmael
    [10801] = { [1080104]=1 },                     -- LCB Sinner
    [10802] = { [1080204]=1 },                     -- R Corp. Reindeer
    [10803] = { [1080304]=1 },                     -- Shi
    [10804] = { [1080404]=1 },                     -- LCCB
    [10805] = { [1080504]=1 },                     -- Sloshing
    [10806] = { [1080604]=1 },                     -- Liu
    [10807] = { [1080704]=1 },                     -- Molar Boatworks
    [10808] = { [1080804]=1 },                     -- Pequod Captain
    [10809] = { [1080904]=1 },                     -- Edgar Butler
    [10810] = { [1081004]=1 },                     -- Zwei West
    [10811] = { [1081104]=1 },                     -- Kurokumo Captain
    [10812] = { [1081204]=1 },                     -- Family Hierarch
    [10813] = { [1081304]=2 },                     -- Jeong's Office
    [10814] = { [1081404]=2 },                     -- Middle Apprentice
    [10815] = { [1081504]=1, [1081507]=1 },        -- LCD OSIR
    [10816] = { [1081604]=2, [1081605]=1 },        -- Boutique du Rouge

    -- 9. Rodion
    [10901] = { [1090104]=1 },                     -- LCB Sinner
    [10902] = { [1090204]=1, [1090205]=1 },        -- Kurokumo
    [10903] = { [1090304]=1 },                     -- LCCB
    [10904] = { [1090404]=1 },                     -- N Corp. Mittelhammer
    [10905] = { [1090504]=1 },                     -- Rosespanner Rep
    [10906] = { [1090604]=1 },                     -- Zwei
    [10907] = { [1090704]=1 },                     -- Dieci
    [10908] = { [1090804]=1 },                     -- Liu Director
    [10909] = { [1090904]=1 },                     -- T Corp.
    [10910] = { [1091004]=1, [1091005]=1 },        -- Devyat'
    [10911] = { [1091104]=2 },                     -- Princess
    [10912] = { [1091204]=1 },                     -- Heishou Si
    [10913] = { [1091304]=1, [1091308]=2 },        -- Sword Sharpened
    [10914] = { [1091404]=1 },                     -- R Corp. Reindeer
    [10915] = { [1091504]=1, [1091506]=1 },        -- Ring Fauvist Docent
    [10916] = { [1091604]=2, [1091608]=1 },        -- Thumb Nursefather
    [10917] = { [1091704]=1 },                     -- Alteration Shop

    -- 10. Sinclair
    [11001] = { [1100104]=1 },                     -- LCB Sinner
    [11002] = { [1100204]=1 },                     -- Blade Lineage
    [11003] = { [1100304]=1 },                     -- Zwei
    [11004] = { [1100404]=1 },                     -- Los Mariachis
    [11005] = { [1100504]=1 },                     -- The One Who Shall Grip
    [11006] = { [1100604]=1 },                     -- Red Sheet
    [11007] = { [1100704]=1 },                     -- Molar Boatworks
    [11008] = { [1100804]=1 },                     -- Cinq Director
    [11009] = { [1100904]=1 },                     -- Dawn Office
    [11010] = { [1101004]=1 },                     -- Zwei West
    [11011] = { [1101104]=1 },                     -- Devyat'
    [11012] = { [1101204]=1 },                     -- Middle Little Brother
    [11013] = { [1101304]=1 },                     -- Thumb Soldato
    [11014] = { [1101404]=2 },                     -- Heishou You
    [11015] = { [1101504]=1, [1101505]=1 },        -- Pinky Apprentice
    [11016] = { [1101604]=1 },                     -- Crimson God of Le Rouge

    -- 11. Outis
    [11101] = { [1110104]=1 },                     -- LCB Sinner
    [11102] = { [1110204]=1 },                     -- Blade Lineage
    [11103] = { [1110304]=1 },                     -- G Corp.
    [11104] = { [1110404]=1 },                     -- Seven Assoc. Director
    [11105] = { [1110504]=1 },                     -- Molar Office
    [11106] = { [1110604]=1 },                     -- Cinq
    [11107] = { [1110704]=1 },                     -- Magic Bullet
    [11108] = { [1110804]=1 },                     -- Wuthering Heights
    [11109] = { [1110904]=1 },                     -- Ring Pointillist
    [11110] = { [1111004]=1 },                     -- W Corp. Captain
    [11111] = { [1111104]=1 },                     -- Barber
    [11112] = { [1111204]=1 },                     -- Heishou Mao
    [11113] = { [1111304]=1 },                     -- T Corp. VDCU
    [11114] = { [1111404]=1 },                     -- LCA Udjat
    [11115] = { [1111504]=2 },                     -- Middle Nursefather

    -- 12. Gregor
    [11201] = { [1120104]=1 },                     -- LCB Sinner
    [11202] = { [1120204]=1 },                     -- Liu
    [11203] = { [1120304]=1 },                     -- G Corp. Corporal
    [11204] = { [1120404]=1 },                     -- R.B. Sous-chef
    [11205] = { [1120504]=1 },                     -- Rosespanner
    [11206] = { [1120604]=1 },                     -- Zwei
    [11207] = { [1120704]=1 },                     -- Twinhook
    [11208] = { [1120804]=1 },                     -- Kurokumo Captain
    [11209] = { [1120904]=1 },                     -- Edgar Heir
    [11210] = { [1121004]=1 },                     -- Priest of La Manchaland
    [11211] = { [1121104]=1 },                     -- Firefist
    [11212] = { [1121204]=1 },                     -- Heishou Si
    [11213] = { [1121304]=1 },                     -- Night Awls
    [11214] = { [1121404]=1 },                     -- Lamp
    [11215] = { [1121504]=1 },                     -- AEDD
    [11216] = { [1121604]=2, [1121606]=2 },        -- Dawn Office
}

-- ============================================================
--  EGO SKILLS -- skillId -> coin count
--  Grouped by sinner.
-- ============================================================
DB.ego = {
    -- 1. Yi Sang
    [2010111] = 1,   -- Crow's Eye View - ZAYIN
    [2010211] = 1,   -- 4th Match Flame - TETH
    [2010311] = 1,   -- Wishing Cairn  - TETH
    [2010411] = 1,   -- Dimension Shredder - HE
    [2010511] = 1,   -- Sunshower - WAW
    [2010611] = 1,   -- Bygone Days - ZAYIN
    [2010711] = 2,   -- Fell Bullet - HE
    [2010811] = 4,   -- Great Trichiliocosm [三千大世界] - WAW
    [2010911] = 5,   -- Solemn Lament - HE

    -- 2. Faust
    [2020111] = 1,   -- Representation Emitter - ZAYIN
    [2020211] = 1,   -- Fluid Sac - HE
    [2020311] = 1,   -- Hex Nail - TETH
    [2020411] = 1,   -- Telepole - HE
    [2020511] = 1,   -- 9:2 - TETH
    [2020611] = 4,   -- Everlasting - WAW
    [2020711] = 3,   -- Lasso - TETH
    [2020811] = 2,   -- Thoracalgia - HE
    [2020911] = 1,   -- Command : Meltdown - HE
    [2021011] = 2,   -- Ardor Blossom Star - HE
    [2021111] = 1,   -- Le Trou - WAW
    [2021112] = 1,   -- Boucher un trou - WAW

    -- 3. Don Quixote
    [2030111] = 1,   -- La Sange de Sancho - ZAYIN
    [2030211] = 1,   -- Fluid Sac - HE
    [2030311] = 1,   -- Telepole - HE
    [2030411] = 1,   -- Lifetime Stew - TETH
    [2030511] = 1,   -- Wishing Cairn - TETH
    [2030611] = 1,   -- Electric Screaming - TETH
    [2030711] = 4,   -- Yearning - Mircalla - WAW
    [2030811] = 2,   -- Red Sheet - HE
    [2030911] = 2,   -- In the Name of Love and Hate - Major Arcana Slave!!! - WAW
    [2031011] = 1,   -- I'll Go fer Scissors. How 'Bout You? - ZAYIN

    -- 4. Ryoshu
    [2040111] = 1,   -- Forest for the Flames - ZAYIN
    [2040211] = 1,   -- 4th Match Flame - HE
    [2040311] = 1,   -- Red Eyes - TETH
    [2040411] = 1,   -- Red Eyes (Open) - HE
    [2040511] = 1,   -- Soda - ZAYIN
    [2040611] = 1,   -- Blind Obsession - TETH
    [2040711] = 2,   -- Contempt, Awe - WAW
    [2040811] = 2,   -- Thoracalgia - HE
    [2040911] = 3,   -- Great Trichiliocosm [三千大世界] - WAW

    -- 5. Meursault
    [2050111] = 1,   -- Chains of Others - ZAYIN
    [2050211] = 1,   -- Screwloose Wallop - TETH
    [2050311] = 1,   -- Pursuance - HE
    [2050411] = 1,   -- Capote - HE
    [2050511] = 1,   -- Regret - TETH
    [2050611] = 1,   -- Electric Screaming - TETH
    [2050711] = 4,   -- Yearning - Mircalla - WAW
    [2050811] = 4,   -- Crushbound Past - WAW
    [2050911] = 2,   -- Shadow-vested Bladesinger [着影揮刀] - HE
    [2051011] = 2,   -- Hollow - WAW

    -- 6. Hong Lu
    [2060111] = 1,   -- Land of Illusion - ZAYIN
    [2060211] = 1,   -- Roseate Desire - TETH
    [2060311] = 1,   -- Dimension Shredder - HE
    [2060411] = 1,   -- Soda - TETH
    [2060511] = 1,   -- Effervescent Corrosion - HE
    [2060611] = 1,   -- Cavernous Wailing - TETH
    [2060711] = 4,   -- Lasso - TETH 
    [2060811] = 1,   -- Tears of the Tarnished Blood - Inception [始] - WAW
    [2060812] = 4,   -- Tears of the Tarnished Blood - The End [終] - WAW
    [2060911] = 2,   -- To Remain Oneself [宁作吾] - HE
    [2061011] = 2,   -- Repudiation - ZAYIN

    -- 7. Heathcliff
    [2070111] = 1,   -- Bodysack - ZAYIN
    [2070211] = 1,   -- Telepole - HE 
    [2070311] = 1,   -- AEDD - TETH
    [2070411] = 1,   -- Ya Śūnyatā Tad Rūpam - HE
    [2070511] = 1,   -- Holiday - ZAYIN
    [2070611] = 1,   -- Binds - WAW
    [2070711] = 2,   -- Fell Bullet - TETH
    [2070811] = 2,   -- Asymmetrical Inertia -
    [2070911] = 3,   -- Move-in Reg. - TETH

    -- 8. Ishmael
    [2080111] = 1,   -- Snagharpoon - ZAYIN
    [2080211] = 1,   -- Roseate Desire - TETH
    [2080311] = 1,   -- Ardor Blossom Star - HE 
    [2080411] = 1,   -- Capote - TETH 
    [2080511] = 1,   -- Blind Obsession - WAW
    [2080611] = 2,   -- Wingbeat - HE
    [2080711] = 1,   -- Bygone Days - TETH 
    [2080811] = 2,   -- Christmas Nightmare - HE
    [2080911] = 2,   -- Hundred-Footed Death Maggot [蝍蛆殺] - ZAYIN
    [2081011] = 3,   -- Tidal Elegy - HE 

      -- 9. Rodion
    [2090111] = 1,   -- What is Cast - ZAYIN
    [2090211] = 1,   -- 4th Match Flame - HE
    [2090311] = 1,   -- Rime Shank - TETH 
    [2090411] = 1,   -- Effervescent Corrosion - TETH 
    [2090511] = 1,   -- Pursuance - HE
    [2090611] = 1,   -- Sanguine Desire - WAW
	[2090711] = 2,   -- Hex Nail - HE 
    [2090811] = 2,   -- Indicant's Trial - WAW
    [2090911] = 1,   -- Into the Sunset - ZAYIN 
    [2091011] = 3,   -- Mirror-touch - TETH 

    -- 10. Sinclair
    [2100111] = 1,   -- Branch of Knowledge - ZAYIN 
    [2100211] = 1,   -- Impending Day - TETH
    [2100311] = 1,   -- Lifetime Stew - TETH 
    [2100411] = 1,   -- Lantern - HE
    [2100511] = 1,   -- 9:2 - HE
    [2100611] = 1,   -- Cavernous Wailing - ZAYIN
    [2100711] = 2,   -- Hex Nail - TETH 
    [2100811] = 2,   -- Tears of the Tarnished Blood [汚血泣淚] - WAW 
    [2100911] = 3,   -- Harmony - HE

    -- 11. Outis
    [2110111] = 1,   -- To Páthos Máthos - ZAYIN
    [2110211] = 1,   -- Ebony Stem - HE
    [2110311] = 1,   -- Ya Śūnyatā Tad Rūpam - TETH
    [2110411] = 1,   -- Sunshower - TETH 
    [2110511] = 1,   -- Holiday - HE
    [2110611] = 1,   -- Binds - WAW
    [2110711] = 1,   -- Dimension Shredder - HE
    [2110811] = 1,   -- Magic Bullet - HE
    [2110911] = 1,   -- I'll Go fer Scissors. How 'Bout You? - ZAYIN

    -- 12. Gregor
    [2120111] = 1,   -- Suddenly, One Day - ZAYIN
    [2120211] = 1,   -- Legderdemain - ZAYIN 
    [2120311] = 1,   -- Lantern - TETH
    [2120411] = 1,   -- AEDD - HE 
    [2120511] = 1,   -- Garden of Thorns - WAW 
    [2120611] = 1,   -- Bygone Days - TETH 
    [2120711] = 3,   -- Solemn Lament - HE 
    [2120811] = 2,   -- Christmas Nightmare - HE 
    [2120911] = 1,   -- Unbrilliant Glory - Flowing - WAW
    [2120912] = 1,   -- Unbrilliant Glory - Incandescence - WAW
    [2121011] = 2,   -- Move-in Reg. - TETH 
	
}

-- ============================================================
--  EGO TIER -- risk levels, name and number
-- ============================================================
DB.egoTiers = {
    ["ZAYIN"] = 1,
    ["TETH"]  = 2,
    ["HE"]    = 3,
    ["WAW"]   = 4,
}

-- Convenience constants (either `coindb.TIER_HE` or just `3`)
	DB.TIER_ZAYIN = 1
	DB.TIER_TETH  = 2
	DB.TIER_HE    = 3
	DB.TIER_WAW   = 4

-- ============================================================
--  EGO TIER LOOKUP -- skillId -> tier name
--  Sorted by sinner, then by id within each sinner.
--  Corroded variants carry the same tier as their base.
-- ============================================================
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
    [2020321] = "TETH",    -- Hex Nail (corroded)
    [2020411] = "HE",      -- Telepole
    [2020421] = "HE",      -- Telepole (corroded)
    [2020511] = "TETH",    -- 9:2
    [2020521] = "TETH",    -- 9:2 (corroded)
    [2020611] = "WAW",     -- Everlasting
    [2020621] = "WAW",     -- Everlasting (corroded)
    [2020711] = "TETH",    -- Lasso
    [2020721] = "TETH",    -- Lasso (corroded)
    [2020811] = "HE",      -- Thoracalgia
    [2020821] = "HE",      -- Thoracalgia (corroded)
    [2020911] = "HE",      -- Command : Meltdown
    [2020921] = "HE",      -- Command : Meltdown (corroded)
    [2021011] = "HE",      -- Ardor Blossom Star
    [2021021] = "HE",      -- Ardor Blossom Star (corroded)
    [2021111] = "WAW",     -- Le Trou
    [2021112] = "WAW",     -- Boucher un trou

    -- 3. Don Quixote
    [2030111] = "ZAYIN",   -- La Sange de Sancho
    [2030211] = "HE",      -- Fluid Sac
    [2030221] = "HE",      -- Fluid Sac (corroded)
    [2030311] = "HE",      -- Telepole
    [2030321] = "HE",      -- Telepole (corroded)
    [2030411] = "TETH",    -- Lifetime Stew
    [2030421] = "TETH",    -- Lifetime Stew (corroded)
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
    [2031021] = "ZAYIN",   -- I'll Go fer Scissors (corroded)

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
    [2050221] = "TETH",    -- Screwloose Wallop (corroded)
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
    [2060321] = "HE",      -- Dimension Shredder (corroded)
    [2060411] = "TETH",    -- Soda
    [2060421] = "TETH",    -- Soda (corroded)
    [2060511] = "HE",      -- Effervescent Corrosion
    [2060521] = "HE",      -- Effervescent Corrosion (corroded)
    [2060611] = "TETH",    -- Cavernous Wailing
    [2060621] = "TETH",    -- Cavernous Wailing (corroded)
    [2060711] = "TETH",    -- Lasso
    [2060721] = "TETH",    -- Lasso (corroded)
    [2060811] = "WAW",     -- Tears of the Tarnished Blood - Inception
    [2060812] = "WAW",     -- Tears of the Tarnished Blood - The End
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
    [2070921] = "TETH",    -- Move-in Reg. (corroded)

    -- 8. Ishmael
    [2080111] = "ZAYIN",   -- Snagharpoon
    [2080211] = "TETH",    -- Roseate Desire
    [2080221] = "TETH",    -- Roseate Desire (corroded)
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
    [2090321] = "TETH",    -- Rime Shank (corroded)
    [2090411] = "TETH",    -- Effervescent Corrosion
    [2090421] = "TETH",    -- Effervescent Corrosion (corroded)
    [2090511] = "HE",      -- Pursuance
    [2090521] = "HE",      -- Pursuance (corroded)
    [2090611] = "WAW",     -- Sanguine Desire
    [2090621] = "WAW",     -- Sanguine Desire (corroded)
    [2090711] = "HE",      -- Hex Nail
    [2090721] = "HE",      -- Hex Nail (corroded)
    [2090811] = "WAW",     -- Indicant's Trial
    [2090821] = "WAW",     -- Indicant's Trial (corroded)
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
    [2110221] = "HE",      -- Ebony Stem (corroded)
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
    [2110921] = "ZAYIN",   -- I'll Go fer Scissors (corroded)

    -- 12. Gregor
    [2120111] = "ZAYIN",   -- Suddenly, One Day
    [2120211] = "ZAYIN",   -- Legderdemain
    [2120221] = "ZAYIN",   -- Legderdemain (corroded)
    [2120311] = "TETH",    -- Lantern
    [2120321] = "TETH",    -- Lantern (corroded)
    [2120411] = "HE",      -- AEDD
    [2120421] = "HE",      -- AEDD (corroded)
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
    [2121011] = "TETH",    -- Move-in Reg.
    [2121021] = "TETH",    -- Move-in Reg. (corroded)
}

-- ============================================================
--  CORRODED EGO SKILLS -- These use negative coins.
--  skillId -> coin count. 
-- ============================================================
DB.egoCorroded = {
    -- 1. Yi Sang
    [2010221] = 1,   -- 4th Match Flame (corroded)
    [2010321] = 1,   -- Wishing Cairn (corroded)
    [2010421] = 1,   -- Dimension Shredder (corroded)
    [2010521] = 1,   -- Sunshower (corroded)
    [2010621] = 1,   -- Bygone Days (corroded)
    [2010721] = 2,   -- Fell Bullet (corroded)
    [2010821] = 4,   -- Great Trichiliocosm (corroded)
    [2010921] = 3,   -- Solemn Lament (corroded)

    -- 2. Faust
    [2020221] = 1,   -- Fluid Sac (corroded)
    [2020521] = 1,   -- 9:2 (corroded)
    [2020621] = 1,   -- Everlasting (corroded)
    [2020821] = 2,   -- Thoracalgia (corroded)
    [2021021] = 3,   -- Ardor Blossom Star (corroded)
    [2021121] = 3,   -- Hollow (corroded)  -- NOTE: see data-issue section

    -- 3. Don Quixote
    [2030221] = 1,   -- Fluid Sac (corroded)
    [2030521] = 1,   -- Wishing Cairn (corroded)
    [2030621] = 1,   -- Electric Screaming (corroded)
    [2030721] = 2,   -- Yearning - Mircalla (corroded)
    [2030821] = 2,   -- Red Sheet (corroded)
    [2030921] = 2,   -- In the Name of Love and Hate / Maximized Reversed Arcana Slave - Erasure of Hatred (corroded)

    -- 4. Ryoshu
    [2040221] = 1,   -- 4th Match Flame (corroded)
    [2040321] = 1,   -- Red Eyes (corroded)
    [2040421] = 1,   -- Red Eyes (Open, corroded)
    [2040521] = 1,   -- Soda (corroded)
    [2040621] = 1,   -- Blind Obsession (corroded)
    [2040721] = 1,   -- Contempt, Awe (corroded)
    [2040821] = 2,   -- Thoracalgia (corroded)
    [2040921] = 1,   -- Great Trichiliocosm (corroded)

    -- 5. Meursault
    [2050321] = 1,   -- Pursuance (corroded)
    [2050421] = 1,   -- Capote (corroded)
    [2050521] = 1,   -- Regret (corroded)
    [2050621] = 1,   -- Electric Screaming (corroded)
    [2050721] = 4,   -- Yearning - Mircalla (corroded)
    [2050821] = 1,   -- Crushbound Past (corroded)
    [2050921] = 4,   -- Shadow-vested Bladesinger (corroded)
    [2051021] = 2,   -- Hollow (corroded)

    -- 6. Hong Lu
    [2060221] = 1,   -- Roseate Desire (corroded)
    [2060421] = 1,   -- Soda (corroded)
    [2060521] = 1,   -- Effervescent Corrosion (corroded)
    [2060621] = 1,   -- Cavernous Wailing (corroded)
    [2060821] = 4,   -- Tears of the Tarnished Blood - Inception [始] (corroded)
    [2060921] = 3,   -- To Remain Oneself (corroded)
    [2061021] = 2,   -- Repudiation (corroded)

    -- 7. Heathcliff
    [2070221] = 1,   -- Telepole (corroded)
    [2070321] = 1,   -- AEDD (corroded)
    [2070421] = 1,   -- Ya Śūnyatā Tad Rūpam (corroded)
    [2070521] = 1,   -- Holiday (corroded)
    [2070621] = 1,   -- Binds (corroded)
    [2070721] = 1,   -- Fell Bullet (corroded)
    [2070821] = 2,   -- Asymmetrical Inertia (corroded)

    -- 8. Ishmael
    [2080321] = 1,   -- Ardor Blossom Star (corroded)
    [2080421] = 1,   -- Capote (corroded)
    [2080521] = 1,   -- Blind Obsession (corroded)
    [2080621] = 1,   -- Wingbeat (corroded)
    [2080721] = 1,   -- Bygone Days (corroded)
    [2080821] = 3,   -- Christmas Nightmare (corroded)
    [2080921] = 2,   -- Hundred-Footed Death Maggot (corroded)
    [2081021] = 4,   -- Tidal Elegy (corroded)

    -- 9. Rodion
    [2090221] = 1,   -- 4th Match Flame (corroded)
    [2090421] = 1,   -- Effervescent Corrosion (corroded)
    [2090521] = 1,   -- Pursuance (corroded)
    [2090621] = 1,   -- Sanguine Desire (corroded)
    [2090721] = 2,   -- Hex Nail (corroded)
    [2090921] = 2,   -- Into the Sunset (corroded)
    [2091021] = 3,   -- Mirror-touch (corroded)

    -- 10. Sinclair
    [2100221] = 1,   -- Impending Day (corroded)
    [2100321] = 1,   -- Lifetime Stew (corroded)
    [2100421] = 1,   -- Lantern (corroded)
    [2100521] = 1,   -- 9:2 (corroded)
    [2100621] = 1,   -- Cavernous Wailing (corroded)
    [2100721] = 2,   -- Hex Nail (corroded)
    [2100821] = 2,   -- Tears of the Tarnished Blood (corroded)
    [2100921] = 3,   -- Harmony (corroded)

    -- 11. Outis
    [2110321] = 1,   -- Ya Śūnyatā Tad Rūpam (corroded)
    [2110421] = 1,   -- Sunshower (corroded)
    [2110521] = 1,   -- Holiday (corroded)
    [2110621] = 1,   -- Binds (corroded)
    [2110721] = 1,   -- Dimension Shredder (corroded)
    [2110821] = 1,   -- Magic Bullet (corroded)

    -- 12. Gregor
    [2120221] = 1,   -- Legderdemain (corroded)
    [2120521] = 1,   -- Garden of Thorns (corroded)
    [2120621] = 1,   -- Bygone Days (corroded)
    [2120721] = 1,   -- Solemn Lament (corroded)
    [2120821] = 2,   -- Christmas Nightmare (corroded)
    [2120921] = 4,   -- Unbrilliant Glory - Flowing (corroded)  -- NOTE: see data-issue section
}

-- ============================================================
--  CORRODED EGO SKILLS -- Ones that use Positive coins. 
--  skillId -> coin count. These use positive coins.
-- ============================================================
DB.egoCorrodedPositive = {
    -- 2. Faust
    [2020321] = 1,   -- Hex Nail (corroded)
    [2020421] = 1,   -- Telepole (corroded)
    [2020721] = 3,   -- Lasso (corroded)
    [2020921] = 4,   -- Command : Meltdown (corroded)

    -- 3. Don Quixote
    [2030321] = 1,   -- Telepole (corroded)
    [2030421] = 1,   -- Lifetime Stew (corroded)
    [2031021] = 3,   -- I'll Go fer Scissors (corroded)

    -- 5. Meursault
    [2050221] = 1,   -- Screwloose Wallop (corroded)

    -- 6. Hong Lu
    [2060321] = 1,   -- Dimension Shredder (corroded)
    [2060721] = 3,   -- Lasso (corroded)

    -- 7. Heathcliff
    [2070921] = 3,   -- Move-in Reg. (corroded)

    -- 8. Ishmael
    [2080221] = 1,   -- Roseate Desire (corroded)

    -- 9. Rodion
    [2090321] = 1,   -- Rime Shank (corroded)
    [2090821] = 2,   -- Indicant's Trial (corroded)

    -- 11. Outis
    [2110221] = 1,   -- Ebony Stem (corroded)
    [2110921] = 3,   -- I'll Go fer Scissors (corroded)

    -- 12. Gregor
    [2120321] = 1,   -- Lantern (corroded)
    [2120421] = 1,   -- AEDD (corroded)
    [2121021] = 2,   -- Move-in Reg. (corroded)
}

-- ============================================================
--  NEGATIVE COIN SKILLS
--  skillId present here = negative coin skill
--  Absent from this table = positive (even if in DB.skills)
-- ============================================================
DB.negative = {
    -- 1. Yi Sang
    [10111] = { [1011103]=3 },                                          -- LCE Lantern (S3 only)

    -- 3. Don Quixote
    [10312] = { [1031205]=2, [1031206]=2, [1031207]=3 },                -- Love and Hate Don Quixote (Negative Form Skills)

    -- 5. Meursault
    [10504] = { [1050404]=1 },                                          -- Guido Meursault (counter only)
    [10508] = { [1050803]=1 },                                          -- Blade Lineage Mentor (S3 only)

    -- 7. Heathcliff
    [10705] = { [1070501]=3, [1070502]=4, [1070503]=3 },                -- Sunshower (S1-S3)
    [10710] = { [1071005]=2 },                                          -- Wild Hunt (S3 Dullhan Version only)

    -- 9. Rodion
    [10913] = { [1091305]=2, [1091306]=3, [1091307]=3 },                -- Sword Sharpened With Tears Rodion (Negative Form Skills)

    -- 10. Sinclair
    [11005] = { [1100501]=2, [1100502]=4, [1100503]=3, [1100504]=1 },   -- The One Who Shall Grip Sinclar (Skills 1-3 and Defense)
}
-- ============================================================
--  CONDITIONAL SKILLS -- coin count depends on runtime state
--  modes: "dynamic" | "min" | "max"
-- ============================================================
DB.conditional = {
    mode = "dynamic",
    skills = {
        -- 1. Yi Sang
        -- 1010702: base 2, +1 per crit this action, cap 5
        [1010702] = { min=2, max=5, type="event", event="crit",
                      perEvent=1, maxBonus=3 },
        -- 1011601: base 1, +1 if has any DriftingDimensionYiSang
        [1011601] = { min=1, max=2, type="threshold",
                      stack="DriftingDimensionYiSang", threshold=1, bonus=1 },

        -- 2. Faust
        -- 1021201: base 2, +1 at 10+ speed
        [1021201] = { min=2, max=3, type="speed", threshold=10, bonus=1 },
        -- 1021203 / 1021205 / 1021207: base 3, +1 at 10+ speed
        [1021203] = { min=3, max=4, type="speed", threshold=10, bonus=1 },
        [1021205] = { min=3, max=4, type="speed", threshold=10, bonus=1 },
        [1021207] = { min=3, max=4, type="speed", threshold=10, bonus=1 },
        -- 1021601: base 2, +1 if 20+ of any StigmaCelloCase
        [1021601] = { min=2, max=3, type="thresholdAny",
                      stacks={"StigmaCelloCaseOne","StigmaCelloCaseTwo","StigmaCelloCaseThree"},
                      threshold=20, bonus=1 },
        -- 1021602 / 1021603: +1 per 10 of any StigmaCelloCase (max +2)
        [1021602] = { min=2, max=4, type="perNStackAny",
                      stacks={"StigmaCelloCaseOne","StigmaCelloCaseTwo","StigmaCelloCaseThree"},
                      stackSize=10, perStack=1, maxBonus=2 },
        [1021603] = { min=3, max=5, type="perNStackAny",
                      stacks={"StigmaCelloCaseOne","StigmaCelloCaseTwo","StigmaCelloCaseThree"},
                      stackSize=10, perStack=1, maxBonus=2 },

        -- 3. Don Quixote
        -- 1030703: base 3, +1 at 50% or less HP
        [1030703] = { min=3, max=4, type="hpBelow", threshold=0.5, bonus=1 },

        -- 4. Ryoshu
        -- 1041101: base 1, +1 at 10+ speed
        [1041101] = { min=1, max=2, type="speed", threshold=10, bonus=1 },
        -- 1041103: base 3, +1 at 10+ speed
        [1041103] = { min=3, max=4, type="speed", threshold=10, bonus=1 },
        -- 1041507: base 2, +1 per SojiRyoshuEntangle, cap 6
        [1041507] = { min=2, max=6, type="perStack", stack="SojiRyoshuEntangle",
                      perStack=1, maxBonus=4, threshold=4 },

        -- 5. Meursault
        -- 1051503: base 3, +1 if below 50% HP OR target has 5+ of either claw
        [1051503] = { min=3, max=4, type="hpOrTargetThreshold",
                      hpThreshold=0.5,
                      stacks={"BearClawWoundAlly","EagleClawWoundAlly"},
                      stackThreshold=5, bonus=1 },

        -- 6. Hong Lu
        -- 1060202: base 2, +2 if target has <4 Laceration count
        [1060202] = { min=2, max=4, type="targetBelow",
                      stack="Laceration", threshold=4, bonus=2 },
        -- 1060801: base 1, +1 per (KnowledgeExplored - 1)
        [1060801] = { min=1, max=5, type="perStack",
                      stack="KnowledgeExplored", perStack=1, maxBonus=4, offset=-1 },
        -- 1061003: base 3, +1 if target has 15+ Burst OR below 30% HP
        [1061003] = { min=3, max=4, type="targetThresholdOrHp",
                      stack="Burst", stackThreshold=15, hpThreshold=0.3, bonus=1 },
        -- 1061502: base 2, +1 if target has 2+ TiedRopeHongLu
        [1061502] = { min=2, max=3, type="targetThreshold",
                      stack="TiedRopeHongLu", threshold=2, bonus=1 },
        -- 1061602 / 1061603: +1 if target has enough DianxueHongLu
        [1061602] = { min=2, max=3, type="targetThreshold",
                      stack="DianxueHongLu", threshold=2, bonus=1 },
        [1061603] = { min=3, max=4, type="targetThreshold",
                      stack="DianxueHongLu", threshold=1, bonus=1 },

        -- 7. Heathcliff
        -- 1071204 (defensive 1): base 1. CloudWall -> +2 (ignores others).
        --   Else +1 per BlackCloudBlade / EngageToBattle.
        [1071204] = { min=1, max=3, type="multiThreshold",
                      rules = {
                        { stack="CloudWall",       bonus=2, ignoreRest=true },
                        { stack="BlackCloudBlade", bonus=1 },
                        { stack="EngageToBattle",  bonus=1 },
                      } },
        -- 1071405: base 4, +1 if 20+ Combustion OR below 50% HP
        [1071405] = { min=4, max=5, type="thresholdOrHp",
                      stack="Combustion", stackThreshold=20, hpThreshold=0.5, bonus=1 },

        -- 8. Ishmael
        -- 1080302: base 2, +2 if below 50% HP
        [1080302] = { min=2, max=4, type="hpBelow", threshold=0.5, bonus=2 },
        -- 1081305: base 1, +1 per (HanafudaCombo-1), cap 5
        [1081305] = { min=1, max=5, type="perStack", stack="HanafudaCombo",
                      perStack=1, maxBonus=4, offset=-1 },
        -- 1081501 / 1081502: +1 if has AengduNewArmIshmael AND 3+ Agility
        [1081501] = { min=2, max=3, type="stackAndThreshold",
                      stack="AengduNewArmIshmael", stackThreshold=1,
                      secondStack="Agility", secondThreshold=3, bonus=1 },
        [1081502] = { min=3, max=4, type="stackAndThreshold",
                      stack="AengduNewArmIshmael", stackThreshold=1,
                      secondStack="Agility", secondThreshold=3, bonus=1 },
        -- 1081506: base 4, +1 at 5+ Agility
        [1081506] = { min=4, max=5, type="threshold",
                      stack="Agility", threshold=5, bonus=1 },
        -- 1081602 / 1081603: +1 if has RougeIshmaelEclose
        [1081602] = { min=2, max=3, type="threshold",
                      stack="RougeIshmaelEclose", threshold=1, bonus=1 },
        [1081603] = { min=3, max=4, type="threshold",
                      stack="RougeIshmaelEclose", threshold=1, bonus=1 },

        -- 9. Rodion
        -- 1091003: base 3, +1 if target has 15+ Burst AND 3+ Burst Count
        [1091003] = { min=3, max=4, type="targetDoubleThreshold",
                      stacks={"Burst","BurstCount"}, thresholds={15,3}, bonus=1 },
        -- 1091307: base 3, +1 if 10+ BlackTearsAlly, cap 4
        [1091307] = { min=3, max=4, type="threshold", stack="BlackTearsAlly",
                      threshold=10, bonus=1 },
        -- 1091705: base 1, +1 if has 3+ ChargeKhakiAlly
        [1091705] = { min=1, max=2, type="threshold",
                      stack="ChargeKhakiAlly", threshold=3, bonus=1 },

        -- 10. Sinclair
        -- 1101402: base 3, +1 if ChickenStance OR below 50% HP
        [1101402] = { min=3, max=4, type="thresholdOrHp",
                      stack="ChickenStance", stackThreshold=1, hpThreshold=0.5, bonus=1 },

        -- 11. Outis
        -- 1111201: base 2, +1 at 10+ speed
        [1111201] = { min=2, max=3, type="speed", threshold=10, bonus=1 },
        -- 1111203: base 3, +1 at 10+ speed
        [1111203] = { min=3, max=4, type="speed", threshold=10, bonus=1 },

        -- 12. Gregor
        -- 1121202: base 3, +1 at 30+ Breath potency
        [1121202] = { min=3, max=4, type="threshold",
                      stack="Breath", threshold=30, bonus=1 },
        -- 1121601 / 1121602: +1 if 20+ of any StigmaWorkshopHandStep
        [1121601] = { min=2, max=3, type="thresholdAny",
                      stacks={"StigmaWorkshopHandStep1","StigmaWorkshopHandStep2","StigmaWorkshopHandStep3"},
                      threshold=20, bonus=1 },
        [1121602] = { min=3, max=4, type="thresholdAny",
                      stacks={"StigmaWorkshopHandStep1","StigmaWorkshopHandStep2","StigmaWorkshopHandStep3"},
                      threshold=20, bonus=1 },

        -- E.G.O. conditionals
        -- 2021112: base 1, +1 per BulletHole potency, cap 5
        [2021112] = { min=1, max=5, type="perStack", stack="BulletHole",
                      perStack=1, maxBonus=4 },
        -- 2051011: base 2, +4 if 4+ BulletHole
        [2051011] = { min=2, max=6, type="threshold",
                      stack="BulletHole", threshold=4, bonus=4 },
        -- 2100811: base 2, +1 if below 30% HP OR 20+ YesDragonSelf
        [2100811] = { min=2, max=3, type="hpOrThreshold",
                      hpThreshold=0.3, stack="YesDragonSelf",
                      stackThreshold=20, bonus=1 },
        -- 2120912: base 1, +1 per 10 MlynarWaiting, cap 4
        [2120912] = { min=1, max=4, type="perNStack", stack="MlynarWaiting",
                      stackSize=10, perStack=1, maxBonus=3 },
    },
}

-- ============================================================
-- TOGGLE SKILLS -- set the mode to either be "base" or "max" depending on how much coins you want.
-- mode: "base" | "max"
-- ============================================================
DB.toggle = {
    mode = "base",
    skills = {
        [2080611] = { base=2, max=7 },  -- Wingbeat
        [1091203] = { base=3, max=5 },  -- Heishou Rodion S3
        [1010902] = { base=1, max=3 },  -- Ring Yi Sang's S2
        [1021606] = { base=3, max=5 },  -- Faust: Dawn Office S3
        [1021607] = { base=3, max=5 },  -- Faust: Dawn Office defensive S2
        [1060302] = { base=3, max=4 },  -- Hong Lu: Tingtang S2
        [1090502] = { base=2, max=3 },  -- Rodion: Rosespanner S2
        [1100901] = { base=1, max=2 },  -- Sinclair: Dawn Office S1 (was conditional)
        [1110902] = { base=2, max=4 },  -- Outis: Ring Pointillist S2
        [1121003] = { base=3, max=4 },  -- Gregor: Priest of La Manchaland S3
        [2100911] = { base=3, max=7 },  -- Sinclair EGO (2021112 pair)
        [2120711] = { base=3, max=8 },  -- Gregor EGO (2020611 pair)
    },
}

-- ============================================================
--  LOOKUP HELPERS
-- ============================================================

-- Which table the skill lives in.
function DB.category(unitId, skillId)
    if DB.conditional.skills[skillId] then return "conditional" end
    if DB.toggle.skills[skillId] then return "toggle" end
    if DB.skills[unitId] and DB.skills[unitId][skillId] then return "skills" end
    if DB.defense[unitId] and DB.defense[unitId][skillId] then return "defense" end
    if DB.ego[skillId]
       or DB.egoCorroded[skillId]
       or DB.egoCorrodedPositive[skillId] then return "ego" end
    if DB.negative[unitId] and DB.negative[unitId][skillId] then return "negative" end
    return nil
end

-- Coin count. Returns (count, record).
--   For conditional under "dynamic": count is nil, record is the recipe.
--   For unknown skills: both are nil.
function DB.getCount(unitId, skillId)
    local cat = DB.category(unitId, skillId)
    if not cat then return nil end

    if cat == "conditional" then
        local rec = DB.conditional.skills[skillId]
        if DB.conditional.mode == "min" then return rec.min, rec end
        if DB.conditional.mode == "max" then return rec.max, rec end
        return nil, rec
    end

    if cat == "toggle" then
        local rec = DB.toggle.skills[skillId]
        if DB.toggle.mode == "max" then return rec.max, rec end
        return rec.base, rec
    end

    if cat == "ego" then
        local n = DB.ego[skillId]
        if n then return n, nil end
        local c = DB.egoCorroded[skillId]
        if c and c > 0 then return c, nil end
        local p = DB.egoCorrodedPositive[skillId]
        if p and p > 0 then return p, nil end
        return nil, nil
    end

    return (DB[cat][unitId] or {})[skillId], nil
end

-- ============================================================
--  EGO TIER HELPERS
--  Tier may be a number (1-4) or a name ("ZAYIN"/"TETH"/"HE"/"WAW").
-- ============================================================
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

-- ============================================================
--  CORROSION HELPERS
-- ============================================================

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
    if DB.ego[skillId] ~= nil     then return "base" end
    return nil
end

-- ============================================================
--  END OF HELPERS
-- ============================================================

return DB