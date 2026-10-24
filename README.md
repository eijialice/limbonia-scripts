# Limbonia Scripts

A collection of scripts for Limbonia, organized by purpose.

Full documentation, API references and guides live on the GitBook:

**https://eijialice.gitbook.io/limbonia-scripts/**

---

## Table of Contents

- [Libraries](#libraries)
- [Utilities](#utilities)
- [Unit Scripts](#unit-scripts)
- [Mirror Dungeon Recreation](#mirror-dungeon-recreation)

---

## Libraries

Reusable modules meant to be imported by other scripts. They do not do anything on their own; they supply data or helper functions so that scripts built on top do not have to duplicate the work.

### coindb.lua

A complete offline database of every skill's coin count for every current identity in Limbus Company, with lookup helpers built on top of it.

**What it provides:**

- **Coin Counting** — Attack, defense and E.G.O. coin counts for every current identity, plus 43 conditional skills with dynamic based coin counting for the reuse skills behaviours that I could somewhat replicate, and 12 toggleable re-use mechanic skills that could not be replicated within the current API; Currently with user-selectable base or max values.
- **E.G.O. tier classification** — Risk level name (ZAYIN / TETH / HE / WAW) or tier number (1 / 2 / 3 / 4), with exact, at-least and at-most comparison helpers.
- **Bulk tier enumeration** —Rreturn every E.G.O. at a tier, at a tier or higher, or at a tier or lower as a sorted array of skill IDs.
- **Corroded E.G.O. detection** — Distinguish base from corroded, and positive-coin corroded from negative-coin corroded, via `isEgoCorroded`, `isCorrodedPositive`, `isCorrodedNegative` and `corrodedPolarity`.
- **Negative coin skill detection** — There is currently no way to determine if a skill is a negative coin or not, so this lookup in `DB.negative` is the only way to tell a negative coin skill from a positive one at runtime.
- **Identity name lookup** — `coindb.units[unitId]` Returns the identity name for logging or filtering.
- **Category classification** — `coindb.category(u, s)` reports `"skills"`, `"defense"`, `"ego"`, `"negative"`, `"conditional"` or `"toggle"` for any skill.
- **Direct table enumeration** — Walk every skill a unit has, every identity in the game, or every E.G.O. at a specific tier with plain Lua iteration.
- **Does not do anything to affect ANYTHING in the game** — loading `coindb.lua` does not buff, debuff or change anything; safe to import in every script that needs it.

Full API reference and examples: **https://eijialice.gitbook.io/limbonia-scripts/**

---

## Utilities

Standalone scripts that improve quality of life or expose information, without being tied to a specific identity or mechanic.

*No scripts yet.*

---

## Unit Scripts

Scripts built around one identity or a specific team, adding mechanics tied to that identity's kit.

*No scripts yet.*

---

## Mirror Dungeon Recreation

Scripts that recreate or approximate Mirror Dungeon mechanics in regular fights.

*No scripts yet.*