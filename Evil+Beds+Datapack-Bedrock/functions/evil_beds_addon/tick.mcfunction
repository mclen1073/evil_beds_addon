# Detect newly used beds and trigger curse effects
execute as @a if score @s eba_sleep > @s eba_seen run function evil_beds_addon:trigger
execute as @a run scoreboard players operation @s eba_seen = @s eba_sleep
