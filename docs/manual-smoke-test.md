# Foundry VTT v14 Manual Smoke Test — v1.0.0-rc1

Use one GM and, where possible, six separate browser profiles/player accounts.

## Installation

- Extract `altered-carbon-rpg-v1.0.0-rc1.zip` to `Data/systems/altered-carbon-rpg`.
- Extract `cold-storage-v1.0.0-rc1.zip` to `Data/modules/cold-storage` for GM-only preparation/import.
- Restart Foundry, create a world with **Altered Carbon RPG**, enable **Cold Storage**, then run **Cold Storage Setup**.
- After import, stop Foundry and replace the module with `cold-storage-sealed-v1.0.0-rc1.zip` before players connect if strict raw-source secrecy is desired.

## System smoke

- Open **AC 2020 Rules Reference** and confirm Skills, Traits, Baggage, mechanics, Sleeve reference and equipment reference load. GM also sees the complete GM reference.
- Open **AC Character Creator**; create every Archetype at least once.
- Verify all 32 Skills appear and Stack Attributes start at 30 when using default inputs.
- Roll checks with Difficulty, Training/Gear bonuses, Bonus Dice and all Luck modes.
- Test an opposed check from the chat Respond button.
- Create a Combat and complete Intent → private commitment → GM reveal → Check → Resolution → next Intent.
- Confirm high-PER actors never exceed the Core natural maximum of five Speed Dice after modifiers.
- Use a Weapon from Gear. Test Semi-Automatic, 3-Round Burst and Fully Automatic entries where configured.
- Confirm DP is added before the Depletion Check, the Depletion die matches the Skill die, TR is Capacity-DP and failed/at-Capacity gear becomes Exhausted.
- Roll weapon Damage; apply aggregate Wounds and Protection to a target; separately test Ego, direct HP, sleeve death, stack damage, Real Death and awaiting-resleeving controls.
- Use Equipment/Software with a Skill and verify Depletion is resolved from the Use card. Test manual `+DP` for special/contextual cases.
- Activate a candidate Sleeve and confirm DHF Attributes/history persist.
- Test Short/Long Rest recovery with Poisoned and Squalor.

## Cold Storage smoke

- Confirm 8 pregens, 20 contact Actors, 4 principal adversaries, 8 placeholder scenes and journals 00–18 exist.
- Confirm each pregen has its current sleeve, five prior sleeve dossiers, Starting Package/Traits/Baggage and secret Palimpsest fragment.
- Select exactly six pregens and assign one to each player.
- Open **Cold Storage GM Dashboard** and progress relationship reveal states.
- Confirm the public relationship board contains only player-sanctioned information.
- Verify a player cannot inspect Contact actors' GM-only identity/agenda fields or reserve pregens.
- Replace authoring module with sealed module and reconnect all clients.
