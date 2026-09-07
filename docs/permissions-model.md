# Cold Storage Permissions and Secret-Data Model

## Visibility policy

**Everyone:** setting primer, glossary, Bay City, Protectorate, Meth/Grounder context, basic technology and public timeline.

**Character owner:** former sleeves, their historical relationships, private memories, recognition triggers, baggage, secret fragment and epilogue choices.

**GM only:** mapping from historical DHFs to present-day contact Actors, true current identities, Palimpsest history, complete relationship graph, current NPC agendas, false memories, betrayals and reveal conditions.

## Important Foundry security boundary

A module's static files can be requested by connected browser clients. Therefore UI hiding alone is not sufficient protection for the authoring JSON used to create Cold Storage.

The build produces two module packages:

1. `cold-storage-v1.0.0-rc1.zip` — **authoring/import package**. Contains `content-src/` and must be used only while the GM is preparing/importing the world.
2. `cold-storage-sealed-v1.0.0-rc1.zip` — **player runtime package**. Omits `content-src/`, so the raw GM relationship/current-identity source map is not served as a module asset during play.

Recommended procedure:

1. Start Foundry with only the GM connected.
2. Install/enable the authoring package and import Cold Storage.
3. Close the world and stop Foundry.
4. Replace the `Data/modules/cold-storage` folder with the sealed package.
5. Restart Foundry and then allow players to connect.

Imported GM secrets live in world Documents with no player ownership. Player-owned relationship Items contain historical relationship information the PC is supposed to remember, but current NPC agenda/current-alias mapping is not embedded in those Items.

Final multiplayer QA should still inspect ordinary-player document visibility, network/socket behaviour and browser-accessible data in the user's licensed Foundry v14 environment.
