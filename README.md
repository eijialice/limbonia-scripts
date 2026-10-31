# Limbonia Scripts

*Get Limbonia here: https://limbonia.ibello.cc/*

A collection of scripts for Limbonia, made by eiji67.

Full documentation, API, notes and guides are on the GitBook:

**https://eijialice.gitbook.io/limbonia-scripts/**

---

## Table of Contents

- [Unit Scripts](#unit-scripts)
	-[Thumb Rodion](#thumb-rodion)
- [Mirror Dungeon](#mirror-dungeon)
- [Libraries](#libraries)
	- [egodb.lua](#egodb)
	- [faction.tagdb.lua](#factiondb)
- [Utilities](#utilities)
	- [keyword-logging.lua](#keyword-logging)

---

## Unit Scripts:
*Scripts built around one identity or a specific team tied to that unit.*

1. ### Thumb Rodion
	- **Added Mang behaviour similar to Valencina** — Adds 1 Mang to her Disposal and Sezionatura di Cervo Skill and Loses 10 SP at the end of the skill and gains +4 Base power when the conditions are met for Mang generation. 
	- **Unit Template** - Contains a template that fully recreates all of Valencina's skill effects, base power, etc to Thumb Rodion's skills, including skill text.
	
	Preview:

	<img width="400" height="400" alt="preview" src="https://github.com/user-attachments/assets/d5ca9028-72c7-4242-b79f-5ae28b224446" />


	
	
---

## Mirror Dungeon:
*Scripts that recreate or approximate Mirror Dungeon mechanics such as Gifts in other encounters.*

*No scripts yet.*

---

## Libraries:
*Reusable scripts meant to be imported by other scripts. They do not do anything on their own and all they do is supply data or helper functions to your script/s.*

1. ### egodb:
	A  database for identity names, E.G.O. tiers and negative coin skills.

  **Features:**

- **Identity name lookup** — `egodb.units[unitId]` returns the short identity name for logging or filtering. All 195 current identities covered. (updated before the new Heathcliff and Hong Lu ID's)
- **E.G.O. tier classification** — Risk level name (ZAYIN / TETH / HE / WAW) or tier number (1 / 2 / 3 / 4), with exact, at-least and at-most comparison helpers.
- **Bulk tier enumeration** — Return every E.G.O. at a tier, at a tier or higher, or at a tier or lower as a sorted array of skill IDs.
- **Corroded E.G.O. detection** — Distinguish base from corroded, and positive-coin corroded from negative-coin corroded, via `isEgoCorroded`, `isCorrodedPositive`, `isCorrodedNegative`, `corrodedPolarity` and `isBaseEgo`.
- **Negative coin skill detection** — There is currently no way to determine if a skill is a negative coin or not in the API, so this lookup in `DB.negative` is the only way to tell a negative coin skill from a positive one at runtime.

2. ### faction.tagdb:

	A database of every identity's faction membership, with lookup helpers. (unit to faction, faction to unit).

**Features:**

- **Faction Identifier** — Every identity tagged with every faction it belongs to, keyed by the same unit IDs as `coindb.lua` so both databases can be imported together.
- **Bidirectional lookup** — Ask "what factions is this unit in?" or "who is in this faction?" with a single call.
- **Multi-faction tagging** — Units that belong to more than one faction are supported.
- **Parent and sub-faction support** — The Ring returns all Pointillist, Fauvist and Corporism members. Haute Couture returns both Le Noir and Le Rouge. Hongyuan returns the Lord of Hongyuan Hong Lu plus every Heishou Pack ID.
- **Shared faction detection** — `sharesFaction(unitA, unitB)` tells you whether two units share at least one faction and names the shared one.
- **Enumeration helpers** — List every faction in the game, or every unit that belongs to at least one faction.

---

## Utilities:
*Standalone scripts that are used to make other scripts.*


1. ### keyword-logging:
    A logging script that logs every buff / keyword an identity's skills grants or inflict, includes per skill, per coin, once per battle, mainly used for building a database of what each skill and individual coin does.
 
  **Features:**
  
- **Distinguishes between Buff / Status Gain or Infliction** — Every result is filed under one of two distinct fields: `gains=` for buffs the unit applied to itself, `infliction=` for buffs it put on its target. No line ever mixes the two, so no result is ambiguous.
- **Per-coin attribution** — Each line records the coin that *applied* the effect (`coin=0`, `coin=1`, …), and `coin=-1` for On Use effects that fire before the first coin rolls.
- **Full skill-type coverage** — Attack skills, E.G.O.s, guards, evades and counters all log. Each line carries `cat=` (attack / ego / defence / other), `type=` (skill / ego / guard / evade / counter) and `slot=` (1–3 for attack skills, `-` for non-skills).
- **Once-per-battle dedup** — Keyed on `(identity, skill, coin)`, so a skill used repeatedly in one fight logs exactly once. Keeps output small enough to read on one screen.
- **Single-target focus** — Automatically resolves the **#1 deployed identity** from the line-up, or a fixed `FORCE_ID` if set. Only that identity's skills are watched — nothing else pollutes the log.
- **Configurable watch list** — `WATCH` names every buff to track, using the game's internal key where it differs from the on-screen word (Bleed = `Laceration`, Tremor = `Vibration`, etc.). Anything not listed is invisible.
- **Readable names** — Player identity names come from `coindb.units` (free table read, no game call); enemies fall back to `unit<id>` with `appearance=` beside them carrying the readable name.
- **Greppable output** — Every line starts with `###D`, so `Limbonia.log` filters clean.

---
