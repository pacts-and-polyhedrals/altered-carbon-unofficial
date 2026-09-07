# System Architecture

The persistent **DHF** is the Actor; the current **Sleeve** is an embedded Item. This prevents sleeve death or replacement from destroying the persistent person's Stack attributes, memories, relationships and history.

Actor types: `character`, `npc`, `threat`, `ai`, `vehicle`.

Item types: `sleeve`, `archivedSleeve`, `skill`, `trait`, `specialisation`, `weapon`, `armour`, `equipment`, `augmentation`, `baggage`, `condition`, `relationship`, `clue`, `memory`, `creditSet`, `software`, `virtualConstruct`.

System rules are separated into pure functions (`module/rules-engine.mjs`) so they can be tested outside Foundry. Foundry-specific document mutation lives in `documents.mjs`, chat rolls in `rolls.mjs`, encounter state in `combat.mjs`, and UI in ApplicationV2 sheets.
