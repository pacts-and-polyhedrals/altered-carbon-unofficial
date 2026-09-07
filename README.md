# Altered Carbon RPG — Foundry VTT v14 + Cold Storage

Private release-candidate build for Foundry VTT v14, using the user-supplied **2020 Altered Carbon RPG Core Rulebook as the primary rules authority** and the supplied 2020 Quick Start as a secondary cross-check. When the two differ, this build follows the Core Rulebook.

The repository contains two packages:

1. **`altered-carbon-rpg`** — reusable standalone system with DHF/sleeve separation, character creation, all 32 Skills, the complete 240-Trait mechanical catalog, 30 Baggage results, status/injury/scandal reference data, roll-low checks, Luck, opposed tests, Speed Dice, damage/Protection, Ego/Stack rules, Depletion, Wealth/Deferral/Credits, Requests, Virtual, resleeving, AI/Religious/Envoy/Meth variants, equipment modification, vehicle rules, backups and adversary frameworks.
2. **`cold-storage`** — **Cold Storage: The Faces We Left Behind**, an original Bay City 2384 one-shot module with eight pregens, forty former-sleeve dossiers, twenty recurring contact DHFs, exactly 160 historical relationship links, six factions, four principal source-based adversary templates, clue redundancy, journals 00–18, GM relationship tools and eight replaceable placeholder scenes.

## Rules completeness and source boundary

This is a **private licensed-use build**. It contains source-derived mechanical reference text extracted from the supplied 2020 Core Rulebook so the GM can use the complete rules inside Foundry. It does **not** contain the original PDF or official artwork. Do not redistribute the private rules-reference data unless you have the necessary rights.

The system includes structured data for the rules that are practical to model directly and searchable page-reference datasets for the complete source sections where individual entries are too numerous or contextual to convert safely into deterministic automation:

- 32 Core Skills, including their special rules and Triggered Effects.
- 240 Traits across all Core Trait Trees/Branches.
- 30 Baggage entries.
- 21 status effects, 3 Injury families and 17 Scandals.
- Six Archetypes with five published Starting Packages each.
- Complete private mechanical reference for Sleeve rules (9 source pages), Chapter 6 gear/technology (63 source pages) and Chapter 7 GM procedures (48 source pages).
- Character resources, advancement, Wealth/Deferral/Credits, Resource Catalogs, Tech Points, Cargo/Body Slots, Requests/Networks, Virtual, viral programs, vehicles, backups, Minions/Nemeses and variant-character rules.

## Automation highlights

- Roll-low d12 → d4 Skill engine, Target Result, Difficulty, Training/Gear bonuses, Bonus Dice, Degrees, Aces and Catastrophes.
- All Luck modes, including Dumb Luck SP spending.
- Opposed-check challenge/respond chat workflow.
- Speed Dice Intent → Check → Resolution console with private commitment and GM reveal. Speed Dice use Perception Bonus, minimum 1 and Core natural maximum 5 after modifiers.
- Wounds, Damage Threshold = Strength, sleeve HP, Protection, Health overflow, Dying/states, Injuries and rest helpers.
- Ego-loss events, synthetic dissociation, resleeving consequences, stack/sleeve states and Real Death controls.
- Weapon and equipment **Use** workflow: linked Skill Check, Gear/Bonus Dice, firing-mode modifiers, DP accumulation, Core Depletion Check and Exhausted state.
- Damage chat cards with GM/owner controls for aggregate Wounds + Protection, Ego damage, direct HP, sleeve death, stack damage, Real Death and resleeving state.
- Wealth, Deferral, Credits, Resource Catalog depletion, Requests, AI request adjustments, vehicle helpers and backups.
- Guided 2020 character creator with archetype Skill profiles, published Starting Packages and age-based Baggage.

## Build and verify

```bash
npm test
npm run validate
npm run build
```

`npm run release:check` runs the unit/content tests, validators and release build. Output goes to `dist/` with SHA-256 checksums.

## Install

1. Extract `altered-carbon-rpg-v1.0.0-rc1.zip` to `Data/systems/altered-carbon-rpg/`.
2. Extract `cold-storage-v1.0.0-rc1.zip` to `Data/modules/cold-storage/` for GM-only preparation/import.
3. Restart Foundry VTT and create a world using **Altered Carbon RPG**.
4. Enable **Cold Storage: The Faces We Left Behind**.
5. With only the GM connected, open **Configure Settings → Module Settings → Cold Storage Setup** and import/update the adventure.
6. Select exactly six active pregens and assign them to player accounts.
7. For strict raw-source secrecy, stop Foundry and replace the authoring module with `cold-storage-sealed-v1.0.0-rc1.zip` before players connect. Imported world Documents remain, while `content-src/` is not served to clients.

The combined `altered-carbon-foundry-bundle-v1.0.0-rc1.zip` contains the system ZIP, both Cold Storage module variants, checksums and installation notes.

## Key GM tools

- **AC 2020 Rules Reference** — searchable system/reference browser for Skills, Traits, Baggage and the source-backed rules sections.
- **AC Character Creator** — builds a 2020 character chassis, sleeve, resources, Skills, package Traits and Baggage.
- **Combat Console** — handles Speed Dice commitments and Intent/Check/Resolution state.
- **Actor Gear tab** — Use/Attack, Use with Skill and manual DP controls.
- **Cold Storage Setup** — imports/upgrades the source-controlled one-shot and handles six-of-eight selection/ownership.
- **Cold Storage GM Dashboard** — manages relationship revelation and the sanitized player-facing relationship board.

## Verification status

The release candidate is statically/unit validated and its generated ZIPs are integrity checked. This environment does **not** include a licensed Foundry VTT v14 server, so live six-client Foundry behaviour cannot truthfully be certified here. The deployment smoke test in `docs/acceptance-test.md` remains the final external runtime gate; maps/art/audio are intentionally replaceable placeholder assets and are not a rules-mechanics gap.
