# Dragon RPG EDITOR
This repo contains code for the editor portion of the DragonRPG Creation System, an application meant to be on par (but not compatible) with the RPG Maker series of game creation systems.

Just how RPG Maker 2000/2003 has been written in Delphi, the DragonRPG is written using the free and open source Delphi clone, Lazarus, and is meant to be a free alternative to the RPG Maker series of tools.

At this point, it is unknown which language will be used to create the engine portion of the DragonRPG Creation System, however the editing experience will be familiar to anyone who had been using RPG Maker in the past.

Some of the planned features include:

 - Infinite layers, each with its own event layer, which would facilitate more gameplay possibilities than in basic RPG Maker.
 - Use any tiles in any map. Each tile is its separate image, and the engine will build tileset atlas for each map at runtime, meaning you will always have any tile you want in any map.
 - Support for RMXP-style autotiles, as it's one of the best autotile formats allowing for maximum control, while having simple format to both implement as well draw.
 - You can use any resolution and tile size you want.
 - You can set any layer as invisible as well as choose which layers have collision processed with player and events from other layers. Events from specific layer always have collisions processed with its layer, unless they're in the passthrough mode. Layer the player character is on, is always visible.
 - Free and open source!
