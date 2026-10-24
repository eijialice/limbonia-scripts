# coindb.lua

A complete offline database of every skill's coin count for every current identity in **Limbus Company**, plus:

- **Coin Counting** — Attack, defense and E.G.O. coin counts for every current identity, plus 43 conditional skills with dynamic based coin counting for the reuse skills behaviours that I could somewhat replicate, and 12 toggleable re-use mechanic skills that could not be replicated within the current API; Currently with user-selectable base or max values.
- **E.G.O. tier classification** — Risk level name (ZAYIN / TETH / HE / WAW) or tier number (1 / 2 / 3 / 4), with exact, at-least and at-most comparison helpers.
- **Bulk tier enumeration** —Rreturn every E.G.O. at a tier, at a tier or higher, or at a tier or lower as a sorted array of skill IDs.
- **Corroded E.G.O. detection** — Distinguish base from corroded, and positive-coin corroded from negative-coin corroded, via `isEgoCorroded`, `isCorrodedPositive`, `isCorrodedNegative` and `corrodedPolarity`.
- **Negative coin skill detection** — There is currently no way to determine if a skill is a negative coin or not, so this lookup in `DB.negative` is the only way to tell a negative coin skill from a positive one at runtime.
- **Identity name lookup** — `coindb.units[unitId]` Returns the identity name for logging or filtering.
- **Category classification** — `coindb.category(u, s)` reports `"skills"`, `"defense"`, `"ego"`, `"negative"`, `"conditional"` or `"toggle"` for any skill.
- **Direct table enumeration** — Walk every skill a unit has, every identity in the game, or every E.G.O. at a specific tier with plain Lua iteration.
- **Does not do anything to affect ANYTHING in the game** — loading `coindb.lua` does not buff, debuff or change anything; safe to import in every script that needs it.

---

## Table of Contents

- [Installation](#installation)
- [Quick Reference](#quick-reference)
- [API Reference](#api-reference)
  - [getCount](#getcount)
  - [category](#category)
  - [egoTierOf](#egotierof)
  - [egoTierNumber](#egotiernumber)
  - [egoTierIs](#egotieris)
  - [egoTierAtLeast](#egotieratleast)
  - [egoTierAtMost](#egotieratmost)
  - [egosInTier](#egosintier)
  - [egosAtLeastTier / egosAtMostTier](#egosatleasttier--egosatmosttier)
  - [isEgoCorroded](#isegocorroded)
  - [isCorrodedPositive](#iscorrodedpositive)
  - [isCorrodedNegative](#iscorrodednegative)
  - [corrodedPolarity](#corrodedpolarity)
  - [egoKind](#egokind)
  - [isNegativeCoin](#isnegativecoin)
  - [coindb.units](#coindbunits)
- [Mode Switches](#mode-switches)
- [Constants](#constants)
- [Direct Table Access](#direct-table-access)
- [Conditional Record Types](#conditional-record-types)
- [Dynamic Conditional Evaluator](#dynamic-conditional-evaluator)
- [Examples](#examples)
- [Common Pitfalls](#common-pitfalls)
- [Coverage](#coverage)

---

## Installation

**1. Place `coindb.lua` in the same folder as the script that will use it.**

```
Mods/YourMod/scripts/
    yourscriptname.lua    <- your script
    coindb.lua            <- this file
```

**2. Import it at the top of your script.**

```lua
local coindb = import("coindb")
```

No `.lua` needed on the end.

---

## Quick Reference

### Functions

| Function | Returns |
|---|---|
| `coindb.getCount(u, s)` | Coin count |
| `coindb.category(u, s)` | Which table |
| `coindb.isNegativeCoin(u, s)` | Negative coin skill? |

### Tier

| Function | Returns |
|---|---|
| `coindb.egoTierOf(s)` | `"TETH"` |
| `coindb.egoTierNumber(s)` | `2` |
| `coindb.egoTierIs(s, t)` | Exact match |
| `coindb.egoTierAtLeast(s, t)` | This or higher |
| `coindb.egoTierAtMost(s, t)` | This or lower |
| `coindb.egosInTier(t)` | Every ID at tier |
| `coindb.egosAtLeastTier(t)` | Every ID at tier or higher |
| `coindb.egosAtMostTier(t)` | Every ID at tier or lower |

### Corrosion

| Function | Returns |
|---|---|
| `coindb.isEgoCorroded(s)` | Any corroded |
| `coindb.isCorrodedPositive(s)` | Positive coin corroded |
| `coindb.isCorrodedNegative(s)` | Negative coin corroded |
| `coindb.corrodedPolarity(s)` | `"positive"` / `"negative"` |
| `coindb.egoKind(s)` | `"base"` / `"corroded"` |

### Modes and Constants

```lua
coindb.conditional.mode = "dynamic" | "min" | "max"
coindb.toggle.mode      = "base" | "max"
coindb.TIER_ZAYIN / TIER_TETH / TIER_HE / TIER_WAW
```

---

## API Reference

### getCount

**`coindb.getCount(unitId, skillId)`** returns the coin count for a skill.

```lua
local n = coindb.getCount(10916, 1091603)   -- 4
```

**Return values:**

| Return | Case |
|---|---|
| `number` | Skills, defense, ego, negative |
| `number` | Toggle skills (per `toggle.mode`) |
| `number` | Conditional skills (per `conditional.mode`) |
| `nil, record` | Conditional when `conditional.mode = "dynamic"` |
| `nil, nil` | Unknown skills |

The `record` second return is the conditional recipe, useful when you want to compute the real coin count yourself from live state. See [Conditional Record Types](#conditional-record-types).

---

### category

**`coindb.category(unitId, skillId)`** tells you which table the skill lives in.

```lua
coindb.category(10916, 1091603)   -- "skills"
coindb.category(10916, 1091604)   -- "defense"
coindb.category(10916, 2010111)   -- "ego"
coindb.category(10312, 1031205)   -- "negative"
coindb.category(10101, 1011601)   -- "conditional"
coindb.category(10101, 9999999)   -- nil
```

**Possible returns:** `"skills"`, `"defense"`, `"ego"`, `"negative"`, `"conditional"`, `"toggle"`, or `nil`.

---

### egoTierOf

**`coindb.egoTierOf(skillId)`** returns the tier name for an E.G.O. skill.

```lua
coindb.egoTierOf(2020711)   -- "TETH"
coindb.egoTierOf(2020611)   -- "WAW"
coindb.egoTierOf(1010101)   -- nil (not an EGO)
```

---

### egoTierNumber

**`coindb.egoTierNumber(skillId)`** returns the tier as a number, 1 to 4.

```lua
coindb.egoTierNumber(2020111)   -- 1  (ZAYIN)
coindb.egoTierNumber(2020711)   -- 2  (TETH)
coindb.egoTierNumber(2020611)   -- 3  (HE)
coindb.egoTierNumber(2020811)   -- 4  (WAW)
```

---

### egoTierIs

**`coindb.egoTierIs(skillId, tier)`** returns true if the E.G.O.'s tier is **exactly** the requested tier.

```lua
coindb.egoTierIs(2020711, "TETH")   -- true
coindb.egoTierIs(2020711, "HE")     -- false
coindb.egoTierIs(2020711, 2)        -- true (number works too)
```

---

### egoTierAtLeast

**`coindb.egoTierAtLeast(skillId, tier)`** returns true if the E.G.O.'s tier is the requested tier **or higher**.

```lua
coindb.egoTierAtLeast(2020611, "HE")   -- true  (HE is HE)
coindb.egoTierAtLeast(2020611, "WAW")  -- false (HE is not WAW)
coindb.egoTierAtLeast(2020811, "HE")   -- true  (WAW >= HE)
coindb.egoTierAtLeast(2020711, "HE")   -- false (TETH < HE)
```

---

### egoTierAtMost

**`coindb.egoTierAtMost(skillId, tier)`** returns true if the E.G.O.'s tier is the requested tier **or lower**.

```lua
coindb.egoTierAtMost(2020711, "HE")   -- true  (TETH <= HE)
coindb.egoTierAtMost(2020611, "HE")   -- true  (HE <= HE)
coindb.egoTierAtMost(2020811, "HE")   -- false (WAW > HE)
```

---

### egosInTier

**`coindb.egosInTier(tier)`** returns every E.G.O. skill ID at **exactly** this tier.

```lua
for _, id in ipairs(coindb.egosInTier("WAW")) do
    log("WAW EGO:", id)
end
```

---

### egosAtLeastTier / egosAtMostTier

**`coindb.egosAtLeastTier(tier)`** and **`coindb.egosAtMostTier(tier)`** return every E.G.O. at this tier or higher, or lower.

```lua
coindb.egosAtLeastTier("HE")   -- every HE and WAW EGO
coindb.egosAtMostTier("TETH")  -- every ZAYIN and TETH EGO
```

---

### isEgoCorroded

**`coindb.isEgoCorroded(skillId)`** returns true if this skill is **any** corroded E.G.O. (either polarity).

```lua
coindb.isEgoCorroded(2020321)   -- true  (Hex Nail corroded)
coindb.isEgoCorroded(2020221)   -- true  (Fluid Sac corroded)
coindb.isEgoCorroded(2020311)   -- false (base)
```

---

### isCorrodedPositive

**`coindb.isCorrodedPositive(skillId)`** returns true if this is a corroded E.G.O. with **positive coins**.

```lua
coindb.isCorrodedPositive(2020321)   -- true
coindb.isCorrodedPositive(2020221)   -- false (negative)
```

---

### isCorrodedNegative

**`coindb.isCorrodedNegative(skillId)`** returns true if this is a corroded E.G.O. with **negative coins**.

```lua
coindb.isCorrodedNegative(2020221)   -- true
coindb.isCorrodedNegative(2020321)   -- false
```

---

### corrodedPolarity

**`coindb.corrodedPolarity(skillId)`** returns `"positive"` or `"negative"` for a corroded E.G.O., `nil` otherwise.

```lua
coindb.corrodedPolarity(2020321)   -- "positive"
coindb.corrodedPolarity(2020221)   -- "negative"
coindb.corrodedPolarity(2020311)   -- nil (base, not corroded)
```

---

### egoKind

**`coindb.egoKind(skillId)`** returns `"base"`, `"corroded"`, or `nil` (not an E.G.O.).

```lua
coindb.egoKind(2020311)   -- "base"
coindb.egoKind(2020321)   -- "corroded"
coindb.egoKind(1010101)   -- nil (not an EGO)
```

---

### isNegativeCoin

**`coindb.isNegativeCoin(unitId, skillId)`** returns true if this skill is a **negative coin skill** for this unit.

The game exposes no polarity field, so this lookup in the `DB.negative` table is the only way to tell negative from positive at runtime.

```lua
coindb.isNegativeCoin(10913, 1091305)   -- true  (Sword Sharpened)
coindb.isNegativeCoin(10913, 1091301)   -- false (Positive S1)
coindb.isNegativeCoin(11005, 1100501)   -- true  (Sinclair The One Who Shall Grip)
coindb.isNegativeCoin(10101, 1010101)   -- false (not in DB.negative)
```

**Covered identities (8 total):**

| ID | Sinner | Identity | Notes |
|---|---|---|---|
| 10111 | Yi Sang | LCE Lantern | S3 only |
| 10312 | Don Quixote | In the Name of Love and Hate | All variants |
| 10504 | Meursault | N Corp. Grosshammer | Counter only |
| 10508 | Meursault | Blade Lineage Mentor | S3 only |
| 10705 | Heathcliff | Sunshower | S1-S3 |
| 10710 | Heathcliff | Wild Hunt | S3 negative only |
| 10913 | Rodion | Sword Sharpened with Tears | All variants |
| 11005 | Sinclair | The One Who Shall Grip | All skills |

A skill is negative only if the specific `skillId` is in the table. An identity with one negative skill does not make its other skills negative. Wild Hunt is the clearest case: only `1071005` is negative; its other skills are positive.

---

### coindb.units

`coindb.units` is a plain data table: `unitId` to short identity name. Useful for logging and for filtering by name.

```lua
coindb.units[10916]   -- "The House of Spiders: The Thumb Nursefather"
coindb.units[10512]   -- "The Thumb East Capo IIII"
coindb.units[10101]   -- "LCB Sinner"
```

Not a function, just a table read. Guard with `or` in case the ID is not in the table:

```lua
local name = coindb.units[e.unit.id] or ("unit" .. e.unit.id)
```

---

## Mode Switches

Two toggle properties you can change at any time.

### conditional.mode

| Value | Behaviour |
|---|---|
| `"dynamic"` (default) | `getCount` returns `nil, record` for conditional skills; you compute the real number from live state |
| `"min"` | `getCount` returns the base count |
| `"max"` | `getCount` returns the max count |

```lua
coindb.conditional.mode = "max"   -- always use the ceiling
```

### toggle.mode

| Value | Behaviour |
|---|---|
| `"base"` (default) | `getCount` returns the base count |
| `"max"` | `getCount` returns the max count |

```lua
coindb.toggle.mode = "max"        -- always use the ceiling
```

---

## Constants

```lua
coindb.TIER_ZAYIN  = 1
coindb.TIER_TETH   = 2
coindb.TIER_HE     = 3
coindb.TIER_WAW    = 4
```

---

## Direct Table Access

All tables are plain Lua tables, safe to walk. Useful for enumeration and for building your own filters.

| Table | Access | Value |
|---|---|---|
| `coindb.units` | `[unitId]` | string |
| `coindb.skills` | `[unitId][skillId]` | number |
| `coindb.defense` | `[unitId][skillId]` | number |
| `coindb.negative` | `[unitId][skillId]` | number |
| `coindb.ego` | `[skillId]` | number |
| `coindb.egoCorroded` | `[skillId]` | number |
| `coindb.egoCorrodedPositive` | `[skillId]` | number |
| `coindb.egoTier` | `[skillId]` | `"TETH"` etc. |
| `coindb.egoTiers` | `[tierName]` | number (1-4) |
| `coindb.conditional.skills` | `[skillId]` | record |
| `coindb.toggle.skills` | `[skillId]` | `{base=N, max=M}` |

Always guard with `or {}` before `pairs`:

```lua
for id, coins in pairs(coindb.skills[10916] or {}) do
    -- ...
end
```

**How many entries each table has:**

| Table | Entries |
|---|---|
| `skills` | ~1,000 |
| `defense` | ~250 |
| `negative` | 8 identities |
| `ego` | 119 base E.G.O.s |
| `egoCorroded` | ~80 negative corroded |
| `egoCorrodedPositive` | ~19 positive corroded |
| `egoTier` | 220 (base + corroded) |

---

## Conditional Record Types

When `getCount` returns `nil, record`, the record's `type` tells you how to compute the actual count from live state. These are the types currently in use:

| Type | Fields |
|---|---|
| `perStack` | `stack`, `perStack`, `maxBonus`, `offset` |
| `perNStack` | `stack`, `stackSize`, `perStack`, `maxBonus` |
| `threshold` | `stack`, `threshold`, `bonus` |
| `speed` | `threshold`, `bonus` |
| `hpBelow` | `threshold` (0-1), `bonus` |
| `thresholdAny` | `stacks[]`, `threshold`, `bonus` |
| `perNStackAny` | `stacks[]`, `stackSize`, `perStack`, `maxBonus` |
| `targetThreshold` | `stack`, `threshold`, `bonus` |
| `targetBelow` | `stack`, `threshold`, `bonus` |
| `targetThresholdOrHp` | `stack`, `stackThreshold`, `hpThreshold`, `bonus` |
| `targetDoubleThreshold` | `stacks[]`, `thresholds[]`, `bonus` |
| `thresholdOrHp` | `stack`, `stackThreshold`, `hpThreshold`, `bonus` |
| `hpOrThreshold` | `hpThreshold`, `stack`, `stackThreshold`, `bonus` |
| `hpOrTargetThreshold` | `hpThreshold`, `stacks[]`, `stackThreshold`, `bonus` |
| `stackAndThreshold` | `stack`, `stackThreshold`, `secondStack`, `secondThreshold`, `bonus` |
| `multiThreshold` | `rules[]` with `{stack, bonus, ignoreRest}` |
| `event` | `event`, `perEvent`, `maxBonus` |

Every record also carries `min` and `max` — the base count and the ceiling — so you can clamp the result yourself.

---

## Dynamic Conditional Evaluator

If you want to compute the real coin count from live state under `conditional.mode = "dynamic"`, here is a template that covers the most common record types. 

```lua
local function resolveConditionalCoins(u, rec)
    if not rec then return nil end
    local function clamp(n)
        return math.max(rec.min, math.min(rec.max, n))
    end

    if rec.type == "threshold" then
        if (u:buffStacks(rec.stack) or 0) >= (rec.threshold or 1) then
            return clamp(rec.min + (rec.bonus or 1))
        end
        return rec.min

    elseif rec.type == "perStack" then
        local n = (u:buffStacks(rec.stack) or 0) + (rec.offset or 0)
        if n < 0 then n = 0 end
        return clamp(rec.min + math.min(n, rec.maxBonus or 0))

    elseif rec.type == "perNStack" then
        local n = u:buffStacks(rec.stack) or 0
        local bonus = math.min(
            math.floor(n / (rec.stackSize or 10)) * (rec.perStack or 1),
            rec.maxBonus or 0)
        return clamp(rec.min + bonus)

    elseif rec.type == "speed" then
        if (u.speed or 0) >= (rec.threshold or 10) then
            return clamp(rec.min + (rec.bonus or 1))
        end
        return rec.min

    elseif rec.type == "hpBelow" then
        if u.maxHp and u.maxHp > 0
           and (u.hp or 0) / u.maxHp < rec.threshold then
            return clamp(rec.min + (rec.bonus or 1))
        end
        return rec.min

    elseif rec.type == "thresholdAny" then
        for _, name in ipairs(rec.stacks) do
            if (u:buffStacks(name) or 0) >= (rec.threshold or 1) then
                return clamp(rec.min + (rec.bonus or 1))
            end
        end
        return rec.min
    end

    -- Unhandled types fall back to max. Extend as needed
    -- by reading Conditional Record Types above.
    return rec.max
end

-- usage:
local n, rec = coindb.getCount(u.id, e.skill.id)
if not n and rec then n = resolveConditionalCoins(u, rec) end
if not n then n = 3 end  -- safe default
```

---

## Examples

### Example 1: Log every skill's coin count

```lua
local coindb = import("coindb")

on(TIMING.ON_START_BEHAVIOUR, { scope = "any" }, function(e)
    if not e.unit or not e.skill then return end
    local n = coindb.getCount(e.unit.id, e.skill.id)
    log("skill", e.skill.id, "coins =", n or "?")
end)
```

### Example 2: Only react to defensive skills

```lua
local coindb = import("coindb")

on(TIMING.ON_START_BEHAVIOUR, { scope = "any" }, function(e)
    if not e.unit or not e.skill then return end
    if coindb.category(e.unit.id, e.skill.id) ~= "defense" then
        return
    end
    addBuff(e.unit, "AttackUp", 2, 1)
end)
```

### Example 3: HE and above E.G.O.s gain +10 Power

```lua
local coindb = import("coindb")

contribute(DECISION.SKILL_POWER, { scope = "any" }, function(e)
    if not e.skill or e.skill.kind ~= "ego" then return end
    if e.powerBonus == nil then return end
    if not coindb.egoTierAtLeast(e.skill.id, "HE") then return end
    return e.powerBonus + 10
end)
```

### Example 4: Tier-scaled Count

```lua
local coindb = import("coindb")

local TIER_COUNT = {
    ZAYIN = 2,
    TETH  = 3,
    HE    = 4,
    WAW   = 5,
}

on(TIMING.ON_START_BEHAVIOUR, { scope = "any" }, function(e)
    if not e.skill or e.skill.kind ~= "ego" then return end
    local tier = coindb.egoTierOf(e.skill.id)
    if not tier then return end
    addBuff(e.unit, "SomeCount", TIER_COUNT[tier], 1)
end)
```

### Example 5: Corroded positive E.G.O.s gain 10 AttackUp

```lua
local coindb = import("coindb")

on(TIMING.ON_START_BEHAVIOUR, { scope = "any" }, function(e)
    if not e.skill or not e.skill.id then return end
    if not coindb.isCorrodedPositive(e.skill.id) then return end
    addBuff(e.unit, "AttackUp", 10, 1)
end)
```

### Example 6: Corroded negative E.G.O.s gain 10 AttackDmgUp

```lua
local coindb = import("coindb")

on(TIMING.ON_START_BEHAVIOUR, { scope = "any" }, function(e)
    if not e.skill or not e.skill.id then return end
    if not coindb.isCorrodedNegative(e.skill.id) then return end
    addBuff(e.unit, "AttackDmgUp", 10, 1)
end)
```

### Example 7: Negative coin skills gain Final Power

```lua
local coindb = import("coindb")

on(TIMING.ON_START_BEHAVIOUR, { scope = "any" }, function(e)
    if not e.unit or e.unit.isAlly == false then return end
    if not e.skill or not e.skill.id then return end
    if not coindb.isNegativeCoin(e.unit.id, e.skill.id) then return end

    local coins = coindb.getCount(e.unit.id, e.skill.id) or 3
    local bonus = math.max(1, math.floor(8 / coins))
    addBuff(e.unit, "PlusCoinValueUp", bonus, 1)
end)
```

### Example 8: Coin-count-scaled damage

```lua
local coindb = import("coindb")

contribute(DECISION.ATTACK_DAMAGE, { scope = "any" }, function(e)
    if not e.unit or not e.damage or not e.skill then return end
    local coins = coindb.getCount(e.unit.id, e.skill.id)
    if not coins then return end

    -- +5% per extra coin beyond the first
    local mult = 1 + (coins - 1) * 0.05
    return math.floor(e.damage * mult)
end)
```

### Example 9: Log every skill NOT in the DB

```lua
local coindb = import("coindb")

on(TIMING.ON_START_BEHAVIOUR, { scope = "any" }, function(e)
    if not e.unit or not e.skill or not e.skill.id then return end
    if e.unit.isAlly == false then return end

    if coindb.getCount(e.unit.id, e.skill.id) == nil then
        log("###MISSING " .. e.unit.id .. ":" .. e.skill.id ..
            " kind=" .. tostring(e.skill.kind))
    end
end)
```

Run this for a few fights. Every `###MISSING` line tells you the exact `unitId:skillId` pair to add to `coindb.lua`.

### Example 10: List every WAW E.G.O. in the game

```lua
local coindb = import("coindb")

on(TIMING.ON_BATTLE_START, { scope = "any" }, function(e)
    if not e.unit or e.unit.isAlly == false then return end

    local count = 0
    for _, id in ipairs(coindb.egosAtLeastTier("WAW")) do
        count = count + 1
    end
    log("### WAW+ EGOs in game:", count)
end)
```

### Example 11: Log the identity name of the unit using a skill

```lua
local coindb = import("coindb")

on(TIMING.ON_START_BEHAVIOUR, { scope = "any" }, function(e)
    if not e.unit or not e.skill then return end
    local name = coindb.units[e.unit.id] or ("unit" .. e.unit.id)
    log("###SKILL " .. name .. " used skill " .. e.skill.id)
end)
```

### Example 12: Iterate every skill a specific unit has

```lua
local coindb = import("coindb")

on(TIMING.ON_BATTLE_START, { scope = "any" }, function(e)
    if not e.unit or e.unit.isAlly == false then return end

    -- attack skills
    for id, coins in pairs(coindb.skills[e.unit.id] or {}) do
        log("attack", id, coins)
    end

    -- defense skills
    for id, coins in pairs(coindb.defense[e.unit.id] or {}) do
        log("defense", id, coins)
    end

    -- negative coin skills (if any)
    for id, coins in pairs(coindb.negative[e.unit.id] or {}) do
        log("negative", id, coins)
    end
end)
```

### Example 13: Total coins across all of a unit's attack skills

```lua
local coindb = import("coindb")

on(TIMING.ON_BATTLE_START, { scope = "any" }, function(e)
    if not e.unit or e.unit.isAlly == false then return end

    local total = 0
    local count = 0
    for id, coins in pairs(coindb.skills[e.unit.id] or {}) do
        total = total + coins
        count = count + 1
    end
    if count > 0 then
        log("avg coins:", total / count)
    end
end)
```

---

## Common Pitfalls

1. **`import("coindb.lua")` is refused.** Use `import("coindb")` — no file extension needed.

2. **"File not found" on the Scripts panel.** `coindb.lua` is not in the same folder as the file that imports it. Check where your script key points in `mod.json`.

3. **`getCount` returns `nil` for a skill you know exists.** Either the DB does not have it, or you passed the wrong `unitId`. Use the `###MISSING` pattern (Example 9) to find the exact pair to add.

4. **Conditional skills return `nil` under dynamic mode.** That is the signal to compute the number yourself from the record. Set `coindb.conditional.mode = "max"` if you do not want to evaluate conditions.

5. **A buff granted at `ON_START_BEHAVIOUR` may not reach the first coin.** If it must be live before coin 0 rolls, apply it at `BEFORE_ROLL_COIN` with `e.coin.index == 0` instead.

6. **An enemy's skill ID may collide with a player's.** All tables are keyed by `(unitId, skillId)`, not `skillId` alone, so the same skill number under a different unit is treated as different. E.G.O. lookups are the exception: they are keyed by `skillId` alone because E.G.O.s belong to the sinner, not to an identity.

7. **`isEgoCorroded` works even before the coin value is filled in.** Detection and count are separate: an entry with `-1` will still be flagged as corroded, but `getCount` returns `nil`.

8. **`coindb` has no side effects on game state.** It is a pure data table. Loading it does not buff, debuff, or change anything. Safe to import in every script that needs it — only one copy loads.

---

## Coverage

- All 12 sinners
- Every identity logged at time of writing
- Every E.G.O. tested (base + corroded, 220 entries)
- Negative coin skills (8 identities)
- Conditional skills (43 entries)
- Toggle skills (12 entries)

**Known gaps:** A few E.G.O.s were never triggered in the test run. If you see one, the `###MISSING` pattern will name the ID to add.