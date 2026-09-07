# Status — v1.0.0-rc1

| Stage | State | Notes |
|---|---|---|
| Repository/bootstrap | VERIFIED | Foundry v14 monorepo, manifests, CI-friendly tests/validators and reproducible ZIP build. |
| Rules authority | VERIFIED | Supplied 2020 Core Rulebook is primary; supplied Quick Start is secondary. Core values supersede Quick Start conflicts. |
| Core data coverage | VERIFIED | 32 Skills, 240 Traits, 30 Baggage, 21 statuses, 3 Injuries, 17 Scandals, six Archetypes × five Starting Packages. |
| Source-backed long-form reference | VERIFIED | 9 Sleeve pages, 63 Chapter 6 equipment/technology pages and 48 Chapter 7 GM pages included as private in-system reference data. Source PDFs are not packaged. |
| Data architecture | COMPLETE | DHF Actor / Sleeve Item split; character, NPC, threat, AI and vehicle actors; typed rules/content Items. |
| Core checks | COMPLETE | Roll-low dice, TR, Difficulty, Bonuses, Bonus Dice, Degrees, Ace, Luck modes, Catastrophe and opposed comparison. |
| Speed Dice combat | COMPLETE (system engine) | Perception-based d6 pool, min 1/max 5, secret Active commitment, simultaneous GM reveal, lowest Active total, Check/Resolution state and spent dice. Live multiplayer QA pending externally. |
| Damage/survival | COMPLETE (deterministic + guided) | Damage Threshold = Strength, sleeve HP, Wounds→HP overflow, aggregate Protection, Dying/states, rest, injuries, SP mitigation and chat state controls. Contextual Triggered Effects remain GM/player choices as in the source. |
| Ego / Stack / resleeving | COMPLETE | Ego loss/recovery, synthetic modifiers, stack/sleeve states, Real Death, downgrade/cross-sleeve/double-sleeve reference, backups and candidate-sleeve activation. |
| Equipment/depletion | COMPLETE (operational framework) | Weapon/armour/equipment/augmentation/software models; weapon/equipment Use workflows; firing modes; DP, Capacity, Depletion Checks, Exhausted; Tech Points and Cargo rules. Complete Ch.6 source reference is browsable. |
| Wealth / Contacts / Requests | COMPLETE | Wealth, Price Levels, Deferral, Debt, Credits, Resource Catalog rules, Network/Request profiles and AI request differences. |
| Character creation / advancement | COMPLETE (guided) | Stack starts 30, sleeve limits/HP, age resources, archetype resources, 32 starting Skills, five packages per Archetype, age Baggage, Skill/Specialisation/Attribute advancement helpers. Choice-heavy Traits/Baggage effects remain explicit rather than guessed. |
| Variants | COMPLETE (rules + deterministic invariants) | AI, Religious Coding, Envoy and Meth rules are in reference; deterministic restrictions/adjustments are enforced where unambiguous. |
| Virtual / viral | COMPLETE (mechanics/reference) | Virtual attribute substitution, Envoy/AI modifiers, viral class/dice rules, Ego procedures and complete GM reference. |
| Vehicles | COMPLETE (mechanics/reference) | Vehicle Actor, Structure/Durability, Handling/Fire Control degradation, fuel/travel helpers and source reference. |
| Adversaries | COMPLETE | Minion/Nemesis procedures plus four principal Cold Storage combat templates with source-based mechanical profiles. |
| Cold Storage world bible | COMPLETE | Journals 00–18, factions, Palimpsest material, revelations and four-hour adventure guide. |
| Pregens / prior sleeves | COMPLETE | 8 pregens, 8 current sleeves and 40 former-sleeve dossiers at the specified production length. |
| Contacts / relationships | COMPLETE | 20 recurring contacts and exactly 160 historical Enemy/Rival/Ally/Loved-One links. |
| Clue redundancy | VERIFIED | Every essential revelation has at least three independent delivery channels. |
| Scenes | COMPLETE AS REPLACEABLE PLACEHOLDERS | 8 gridless labelled Foundry scenes. Final bespoke maps/art/audio were explicitly left to the last asset phase. |
| Secret-data sealing | VERIFIED (build) | Sealed runtime ZIP omits `cold-storage/content-src/` after GM import. |
| Automated/static QA | VERIFIED | 48 tests plus content/manifests, syntax, JSON and ZIP/checksum validation. |
| Foundry v14 live QA | EXTERNAL RUNTIME GATE | No licensed Foundry v14 server is available in this environment; follow `docs/acceptance-test.md`. |
