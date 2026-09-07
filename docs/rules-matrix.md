# Rules Implementation Matrix — 2020 Core Primary

Primary source: the user-supplied **2020 Altered Carbon RPG Core Rulebook**. The supplied 2020 Quick Start is used as a cross-check; Core wins where values or procedures differ.

`Automated` means the system performs the deterministic procedure. `Guided` means Foundry records/calculates the mechanical state but leaves a source-defined choice to the GM/player. `Reference` means the complete source mechanics are accessible in the private Rules Browser because converting the entry into unconditional automation would require guessing context.

| Area | Core mechanic | Implementation | Coverage |
|---|---|---|---|
| Attributes | Sleeve STR/PER separate from persistent Stack EMP/WILL/ACU/INT; Attribute Bonus = tens digit | Actor/Sleeve DataModels, `attributeBonus` | Automated |
| Starting Stack | Stack Attributes begin at 30; starting max 50 before exceptions | Character Creator + models | Automated/guided |
| Sleeve attributes | Birth/Natal/Clone and synthetic grade STR/PER ranges | `SLEEVE_LIMITS`, creator validation | Automated |
| Sleeve Health | Birth/Natal/Clone 2d8+SB; Synth Low 2d6+SB; Mid 2d8+SB; High 2d10+SB | `sleeveHealthFormula` | Automated |
| Damage Threshold | Damage Threshold equals Strength | `damageThresholdFromStrength` | Automated |
| Skill dice | Lv1–5 = d12/d10/d8/d6/d4, roll low; auto-pass thresholds | `skillDie`, roll service | Automated |
| Target Result | Attribute/Gear/Training categories, Difficulty, explicitly stackable modifiers | `targetResult`, roll dialog | Automated |
| Degrees | Difference from TR, equality = +1, max five of each | `degrees` | Automated |
| Ace / Catastrophe | Natural Skill-die 1 Ace; Catastrophe requires natural failed max Skill + max Luck; Bonus result cannot erase natural Catastrophe | `resolveCheck` | Automated |
| Bonus Dice | Keep most favourable valid result; no Ace/Catastrophe from Bonus Dice | roll service | Automated |
| Luck | Beginner, Pressing, Making Own, Tough and Dumb Luck; Stroke of Luck | `applyLuck`, roll service | Automated/guided |
| Opposed / Saves | Compare success/failure Degrees, Attribute tiebreak; responder workflow | `compareOpposed`, chat challenge | Automated |
| Skills | All 32 Core Skill entries, Specialisations, special rules and Triggered Effects | `core-skills.json`, Rules Browser | Structured reference + roll automation |
| Skill advancement | d12→d10 SP20; d10→d8 SP50; d8→d6 SP80; d6→d4 SP125 | `skillUpgradeCost`, Actor method | Automated |
| Specialisation advancement | SP15 + SP5 per existing Specialisation, max SP30 | `specializationCost`, Actor method | Automated |
| Attribute advancement | SP1 raises an Attribute by d4 | `attributeIncreaseFormula`, Actor method | Automated |
| Trait system | 7 Trees, Common/Uncommon/Anomaly costs, unlocks, blackout, prerequisites and Tier 5 rule | 240 Trait records + trait helpers | Structured + automated validation helpers |
| Baggage | 30 Baggage outcomes, age dice/roll count and reroll SP escalation | catalog + creator + helpers | Structured/guided |
| Speed Dice | One d6 per PB, minimum 1, natural maximum 5 after modifiers | `speedDiceFromPerception`, Combat Console | Automated |
| Combat flow | Intent → Check → Resolution; secret Active dice; lowest Active total | `combat.mjs`, Combat Console | Automated state engine |
| Multiple actions | Second check Action +1 Difficulty, third +2, etc. | `actionDifficulty` | Automated helper/guided |
| Zones / movement | Shared, Adjacent, Distant; movement and range Difficulty | mechanics reference | Guided/reference |
| Depletion | DP added per Use; second same-type die with Skill; TR Capacity-DP; failed/at-Capacity Exhaustion | `depletionCheckOutcome`, Item Use workflows | Automated |
| Firing modes | Semi, 3-round burst, fully automatic; DP, auto +, Damage modifiers | `firingModeProfile`, Weapon Use | Automated |
| Wounds / HP | Wounds beyond DT cause HP loss; Dying at threshold | `resolveWoundDamage`, Actor methods | Automated |
| Defense / Cover / Protection | Defense increases attack Difficulty; Protection reduces aggregate Resolution Wounds; Armor Piercing exceptions | reference + damage chat prompt | Guided/automated damage application |
| Injuries | Bone, Flesh and Poisoned procedures/recovery | catalog + state effects | Structured; deterministic penalties partly automated |
| Dying / Stabilization | Dying saves, HP loss, Stable suspension, instant/severe-organic conditions | helpers + state controls/reference | Guided/automated state |
| SP damage mitigation | Escalating SP 1/2/4/8…; HP1 + Injury consequence | helper + Actor method | Automated/guided Injury selection |
| Ego | Ego Points, loss modifiers, psychosurgery/recovery, EP0 splintering | helpers + Actor methods | Automated/guided |
| Viral | Classes, Viral Strike dice/caps, AI exception, Virtual Ego attacks | helpers + rules reference | Automated helper/reference |
| Resleeving | Active sleeve swap; cross-sleeve dissociation, downgrade, synthetic modifiers, stack persistence | `activateSleeve`, resleeving helpers | Automated where inputs are known |
| Double-sleeving / backups | consequence/reference; backup price/IP/lost-time distinction | mechanics reference + backup data | Guided/reference |
| Status effects | 21 Core statuses | structured catalog; common deterministic penalties applied in rolls/rest | Structured + partial deterministic automation |
| Wealth | Wealth Lv1–6 descriptions, Price Levels, Deferral/Debt | economy helpers + Actor fields | Automated/guided |
| Credits | traceable/untraceable, one-use purchase level and change | Credit Set + helpers/reference | Structured/guided |
| Resource Catalog | Capacity, Wealth depletion die, DP, Credits and modifiers | ResourceEntry + helpers | Automated helpers/guided acquisition |
| Tech Points | upgrade/respec TR, Hardwired/model/aftermarket/Chassis/Narrative rules | helpers + full Ch.6 reference | Automated helpers/reference |
| Cargo / Body Slots | Cargo, partial cargo, Heavy, Body Slots and Encumbrance | typed fields + derived encumbrance | Automated core capacity |
| Equipment rules | 34 universal equipment rules plus all item-specific Ch.6 mechanics | structured universal rules + 63-page private Ch.6 reference | Complete reference; typed Items operational |
| Requests / Networks | Request levels, Network dice, exhaustion, material support; AI adjustments | helpers + Network Items | Automated helpers/reference |
| Virtual | attribute projection, duration/training, DHF/AI rules, interrogation/virtual damage | helpers + Virtual condition/construct + GM reference | Automated core/reference |
| Variants | AI, Religious Coding, Envoy, Meth | structured rules + creator/Actor invariants | Structured + deterministic automation |
| Vehicles | Durability/Structure, Size, crew, Handling, Fire Control, fuel/travel | Vehicle Actor + helpers/reference | Automated helpers/reference |
| Minion / Nemesis | Minion same-round threshold, Nemesis options | Threat Actor + helpers/reference | Automated threshold/reference |
| Scandals | 17 Scandals and general Scandal procedures | catalog + GM reference | Structured/reference |
| Campaign / GM | campaign progress, Contacts, NPC creation, endings, SP rewards | complete 48-page private GM reference | Reference |

## Runtime boundary

The rules/data release candidate is complete enough for static verification, but browser/client synchronization, permissions and socket behaviour require an actual licensed Foundry v14 runtime. That final deployment test is documented separately and is not claimed as completed in this container.
