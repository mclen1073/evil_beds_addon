# Evil Beds Addon (Bedrock)

This repository now ships a **Bedrock Edition behavior pack** version of the project.

## Bedrock pack location
- `Evil+Beds+Datapack-Bedrock/`

## Structure
- `manifest.json` - Bedrock behavior pack manifest.
- `functions/load.json` - functions that run when the pack loads.
- `functions/tick.json` - functions that run every tick.
- `functions/evil_bed/*.mcfunction` - ported original Evil Bed logic files.
- `functions/evil_beds_addon/*.mcfunction` - addon curse logic.

## Install (Bedrock)
1. Copy `Evil+Beds+Datapack-Bedrock` into your `behavior_packs` folder.
2. Activate the behavior pack on your world.
3. Run `/reload` or re-enter the world.

## Notes
- This change ports the file layout to Bedrock behavior pack format.
- Some commands may still require Bedrock-specific command tuning depending on your target game version.
