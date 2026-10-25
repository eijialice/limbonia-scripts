# Limbonia Scripts

A collection of scripts for Limbonia, organized by purpose.

Full documentation, API references and guides live on the GitBook:

**https://eijialice.gitbook.io/limbonia-scripts/**

---

## Table of Contents

- [Unit Scripts](#unit-scripts)
- [Mirror Dungeon Recreation](#mirror-dungeon-recreation)
- [Libraries](#libraries)
- [Utilities](#utilities)

---

## Unit Scripts

Scripts built around one identity or a specific team, adding mechanics tied to that identity's kit.

*No scripts yet.*

---

## Mirror Dungeon

Scripts that recreate or approximate Mirror Dungeon mechanics such as gifts in regular fights.

*No scripts yet.*

---

## Libraries

Reusable modules meant to be imported by other scripts. They do not do anything on their own; they supply data or helper functions so that scripts built on top do not have to duplicate the work.

### 1. coindb.lua

A complete offline database of every skill's coin count for every current identity in Limbus Company, with lookup helpers built on top of it.

**Features:**

- **Coin Counting** — Attack, defense and E.G.O. coin counts for every current identity, plus 43 conditional skills with dynamic based coin counting for the reuse skills behaviours that I could somewhat replicate, and 12 toggleable re-use mechanic skills that could not be replicated within the current API; Currently with user-selectable base or max values.
- **E.G.O. tier classification** — Risk level name (ZAYIN / TETH / HE / WAW) or tier number (1 / 2 / 3 / 4), with exact, at-least and at-most comparison helpers.
- **Bulk tier enumeration** — Return every E.G.O. at a tier, at a tier or higher, or at a tier or lower as a sorted array of skill IDs.
- **Corroded E.G.O. detection** — Distinguish base from corroded, and positive-coin corroded from negative-coin corroded, via `isEgoCorroded`, `isCorrodedPositive`, `isCorrodedNegative` and `corrodedPolarity`.
- **Negative coin skill detection** — There is currently no way to determine if a skill is a negative coin or not, so this lookup in `DB.negative` is the only way to tell a negative coin skill from a positive one at runtime.
- **Identity name lookup** — `coindb.units[unitId]` Returns the identity name for logging or filtering.
- **Category classification** — `coindb.category(u, s)` reports `"skills"`, `"defense"`, `"ego"`, `"negative"`, `"conditional"` or `"toggle"` for any skill.
- **Direct table enumeration** — Walk every skill a unit has, every identity in the game, or every E.G.O. at a specific tier with plain Lua iteration.
- **Does not do anything to affect ANYTHING in the game** — loading `coindb.lua` does not buff, debuff or change anything; safe to import in every script that needs it.

Full API reference and examples: **https://eijialice.gitbook.io/limbonia-scripts/**

---

## Utilities

Standalone scripts that are used to make other scripts.

1. ### keyword-logging,lua 

A scripted discovery tool that logs every buff an identity's skills grant or inflict — per skill, per coin, once per battle — so you can hand-build a database of what each skill does. It reads state and writes log lines; it never touches the fight.

**Features:**

- **Distinguishes between Buff / Status Gain or Infliction** — Every result is filed under one of two distinct fields: `gains=` for buffs the unit applied to itself, `infliction=` for buffs it put on its target. No line ever mixes the two, so no result is ambiguous.
- **Per-coin attribution** — Each line records the coin that *applied* the effect (`coin=0`, `coin=1`, …), and `coin=-1` for On Use effects that fire before the first coin rolls.
- **Full skill-type coverage** — Attack skills, E.G.O.s, guards, evades and counters all log. Each line carries `cat=` (attack / ego / defence / other), `type=` (skill / ego / guard / evade / counter) and `slot=` (1–3 for attack skills, `-` for everything else).
- **Once-per-battle dedup** — Keyed on `(identity, skill, coin)`, so a skill used repeatedly in one fight logs exactly once. Keeps output small enough to read on one screen.
- **Single-target focus** — Automatically resolves the **#1 deployed identity** from the line-up, or a fixed `FORCE_ID` if set. Only that identity's skills are watched — nothing else pollutes the log.
- **Configurable watch list** — `WATCH` names every buff to track, using the game's internal key where it differs from the on-screen word (Bleed = `Laceration`, Tremor = `Vibration`, etc.). Anything not listed is invisible.
- **Readable names** — Player identity names come from `coindb.units` (free table read, no game call); enemies fall back to `unit<id>` with `appearance=` beside them carrying the readable name.
- **Greppable output** — Every line starts with `###D`, so `Limbonia.log` filters clean. Log is emptied each launch — read before restarting.
- **Does not do anything to affect ANYTHING in the game** — loading the script changes no state, applies no buffs, and alters no damage. It only reads and writes log lines. Safe to leave installed during a discovery run; not intended for normal play.

---
