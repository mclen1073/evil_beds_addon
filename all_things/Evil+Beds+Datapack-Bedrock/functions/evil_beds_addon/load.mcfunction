# Evil Beds Addon load
scoreboard objectives add eba_sleep minecraft.custom:minecraft.sleep_in_bed
scoreboard objectives add eba_seen dummy

tellraw @a [{"text":"[Evil Beds Addon] ","color":"dark_red"},{"text":"Loaded successfully.","color":"gray"}]
