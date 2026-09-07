# Acceptance Test Status — v1.0.0-rc1

## Automated/static verification completed

- 48 rules/content tests pass.
- System and module manifests parse and target Foundry VTT v14.
- All JavaScript/ES modules pass `node --check`.
- All packaged JSON parses.
- Source-backed Core data validates at 32 Skills, 240 Traits, 30 Baggage, six Archetypes × five Starting Packages, 63 Chapter 6 pages, 9 Sleeve pages and 48 Chapter 7 GM pages.
- Cold Storage validates at 8 pregens, 40 former sleeves, 20 recurring contacts, exactly 160 relationships, 6 factions, 19 journals, 8 loadouts and 4 principal adversaries.
- Every former sleeve has exactly one Enemy, Rival, Ally and Loved One relationship.
- Every essential revelation has at least three independent clue channels.
- Every former-sleeve biography meets the 150–250 word production target.
- Release build produces system, authoring module, sealed runtime module, combined bundle and repository ZIPs plus SHA-256 checksums.
- ZIP integrity and checksum verification are part of the release QA procedure.

## Foundry v14 live acceptance gate

This environment does not contain a licensed Foundry VTT v14 server. Run the following in the actual deployment before declaring production certification:

1. Install the `v1.0.0-rc1` system ZIP; create a world; enable the authoring Cold Storage module and run its importer.
2. Open every Actor and Item sheet type and the **AC 2020 Rules Reference**.
3. Create at least one character of each Archetype and exercise Standard, AI, Religious, Envoy and Meth variants.
4. Verify Stack 30 defaults, sleeve ranges/Health, age resources, Starting Package Traits, Baggage and advancement methods.
5. Roll normal checks, Bonus Dice, every Luck mode, Ace/Catastrophe and opposed checks.
6. Use a weapon from the Gear tab. Confirm linked Skill roll, firing mode extra Degrees/Damage, DP addition, same-die Depletion Check, Exhausted state and damage chat card.
7. Apply aggregate Wounds with Protection from the chat card; test direct HP, Ego damage, sleeve death, stack damage, Real Death and Begin Resleeving.
8. Run a full Intent → Check → Resolution cycle with one GM and six player accounts. Confirm Speed Dice cap at five, commitments remain secret until GM reveal, spent dice persist and reconnect does not lose state.
9. Activate a candidate sleeve and confirm persistent DHF Attributes/resources/history survive while STR/PER/Health switch. Test explicit cross-sleeve/downgrade flags.
10. Confirm AI realspace low-Skill license prompts/costs, AI Virtual projection, Religious resleeving restriction and Meth backup/Influence starting state.
11. Test Squalor/Poisoned rest blocks and major status penalties.
12. Import Cold Storage twice; confirm source IDs prevent duplicates and v1 migration is idempotent.
13. Select exactly six pregens, assign ownership and verify reserve pregens are inaccessible to players.
14. Reveal Familiar/Suspected/Confirmed relationship states and verify the player relationship board exposes only sanctioned data.
15. Verify GM-only NPC identity, agendas, private memories and raw authoring content cannot be accessed by ordinary player accounts.
16. Stop Foundry, replace the module with the sealed ZIP, reconnect all players and confirm imported Documents still work while `content-src/` is absent.
17. Load/preload all eight placeholder scenes and test reconnect/scene switching.
18. Rehearse the complete four-hour one-shot once with the intended six-client setup.

Any defect found in this live pass should be patched before the Halloween session; it is the only QA stage that cannot be executed in this build container.
