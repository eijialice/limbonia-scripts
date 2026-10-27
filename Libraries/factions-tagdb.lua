local DB = {}

DB.factions = {
    ["Liu Assoc"]     = { 10112, 10407, 10502, 10604, 10806, 10908, 11202 },
    ["Zwei Assoc"]    = { 10205, 10810, 10906, 11003, 11010, 11206 },
    ["Seven Assoc"]   = { 10102, 10206, 10402, 10706, 11104 },
    ["Shi Assoc"]     = { 10213, 10303, 10702, 10803 },
    ["Cinq Assoc"]    = { 10305, 10311, 10511, 10616, 11008, 11106 },
    ["Devyat Assoc"]  = { 10910, 11011 },
    ["Dieci Assoc"]   = { 10108, 10510, 10608, 10907 },
    ["Oufi Assoc"]    = { 10708 },

    ["N Corp"] = { 10113, 10304, 10412, 10504, 10704, 10904 },
    ["W Corp"] = { 10106, 10202, 10302, 10405, 10503, 10606, 10713, 11110 },
    ["R Corp"] = { 10506, 10612, 10703, 10802, 10914 },
    ["T Corp"] = { 10309, 10909, 11113 },
    ["K Corp"] = { 10605 },
    ["S Corp"] = { 10615 },
    ["G Corp"] = { 11103, 11203 },

    ["LCCB"]                 = { 10406, 10804, 10903 },
    ["Dawn Office"]          = { 10216, 11009, 11216 },
    ["Molar Office"]         = { 10105, 10807, 11007, 11105 },
    ["Rosespanner Workshop"] = { 10505, 10905, 11205 },
    ["MultiCrack Office"]    = { 10210, 10709 },
    ["Hook Office"]          = { 10607 },
    ["Fanghunt Office"]      = { 10610 },
    ["Full-Stop Office"]     = { 10611, 10711 },
    ["Firefist Office"]      = { 11211 },
    ["Jeongs Office"]        = { 10813 },

    ["Blade Lineage"]     = { 10103, 10208, 10308, 10508, 10815, 11002, 11102 },
    ["Heishou"]           = { 10114, 10212, 10313, 10411, 10714, 10912, 11014, 11112, 11212 },
    ["Kurokumo Clan"]     = { 10403, 10602, 10712, 10811, 10902, 11208 },
    ["The Middle"]        = { 10306, 10507, 10715, 10814, 11012, 11115 },
    ["Index"]             = { 10115, 10214, 10314 },
    ["The Thumb"]         = { 10512, 10716, 10916, 11013 },
    ["The Pequod"]        = { 10107, 10707, 10808 },
    ["Edgar Family"]      = { 10408, 10809, 11209 },
    ["Wuthering Heights"] = { 10209, 10710, 11108 },
    ["La Manchaland"]     = { 10310, 10513, 10911, 11111, 11210 },
    ["Yurodiviye"]        = { 10409, 10609 },
    ["Dead Rabbits"]      = { 10509 },
    ["Tingtang Gang"]     = { 10603 },
    ["Los Mariachis"]     = { 11004 },
    ["Twinhook Pirates"]  = { 11207 },
    ["Night Awls"]        = { 11213 },
    ["Family Hierarch"]   = { 10812 },
    ["LCA Udjat"]         = { 11114 },

    ["House of Spiders"] = { 10115, 10215, 10415, 10614, 10716, 10814, 10916, 11015, 11115 },

    ["Haute Couture"] = { 10315, 10416, 10816, 10917, 11016 },
    ["Le Noir"]       = { 10315, 10416 },
    ["Le Rouge"]      = { 10816, 11016 },

    ["Hongyuan"] = { 10114, 10212, 10313, 10411, 10413, 10613, 10714, 10912, 11014, 11112, 11212 },

    ["Ring Pointillist"] = { 10109, 11109 },
    ["Ring Fauvist"]     = { 10515, 10915 },
    ["Ring Corporism"]   = { 10215, 10614 },
    ["The Ring"]         = { 10109, 10215, 10515, 10614, 10915, 11109 },

    ["Fanatic"] = { 10204, 10304, 10504, 10704, 10904, 11005 },

    ["Lobotomy"] = { 10110, 10203, 10207, 10307, 10312, 10410, 10414,
                     10514, 10705, 10805, 10913, 11006, 11107, 11214 },

    ["LCE"] = { 10111, 10116, 10211, 11214, 11215 },

    ["Effloresced EGO"] = { 10104 },

    ["LCB Sinner"] = { 10101, 10201, 10301, 10401, 10501, 10601,
                       10701, 10801, 10901, 11001, 11101, 11201 },

    ["R.B."] = { 10404, 11204 },
}

DB.membership = {}
for factionName, ids in pairs(DB.factions) do
    for _, id in ipairs(ids) do
        DB.membership[id] = DB.membership[id] or {}
        table.insert(DB.membership[id], factionName)
    end
end

for _, list in pairs(DB.membership) do
    table.sort(list)
end

function DB.isInFaction(unitId, factionName)
    for _, f in ipairs(DB.membership[unitId] or {}) do
        if f == factionName then return true end
    end
    return false
end

function DB.factionsOf(unitId)
    return DB.membership[unitId] or {}
end

function DB.membersOf(factionName)
    return DB.factions[factionName] or {}
end

function DB.memberCount(factionName)
    return #(DB.factions[factionName] or {})
end

function DB.sharesFaction(unitIdA, unitIdB)
    local listA = DB.membership[unitIdA] or {}
    local listB = DB.membership[unitIdB] or {}
    for _, fa in ipairs(listA) do
        for _, fb in ipairs(listB) do
            if fa == fb then return true, fa end
        end
    end
    return false, nil
end

function DB.allFactions()
    local list = {}
    for name in pairs(DB.factions) do
        list[#list + 1] = name
    end
    table.sort(list)
    return list
end

function DB.allTaggedUnits()
    local list = {}
    for id in pairs(DB.membership) do
        list[#list + 1] = id
    end
    table.sort(list)
    return list
end

return DB