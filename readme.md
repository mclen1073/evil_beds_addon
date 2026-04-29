# Evil Beds Addon

This repository now contains a playable Minecraft datapack addon that extends the original `evil_bed` behavior.

## What the addon does
- Watches for each time a player sleeps in a bed.
- Triggers a curse event on that player:
  - lightning strike,
  - smoke particles,
  - phantom ambience,
  - temporary blindness and slowness,
  - warning message.

## Install
1. Copy the `Evil+Beds+Datapack` folder into your world's `datapacks` directory.
2. Run `/reload` in-game.
3. Sleep in a bed to trigger the addon effects.

## Files added
- `data/evil_beds_addon/functions/load.mcfunction`
- `data/evil_beds_addon/functions/tick.mcfunction`
- `data/evil_beds_addon/functions/trigger.mcfunction`
