# Triggered when a player sleeps in a bed
execute at @s run particle minecraft:smoke ~ ~1 ~ 0.4 0.7 0.4 0.01 40
execute at @s run playsound minecraft:entity.phantom.ambient master @a[distance=..24] ~ ~ ~ 0.8 0.7
execute at @s run summon minecraft:lightning_bolt ~ ~ ~
effect give @s minecraft:blindness 6 0 true
effect give @s minecraft:slowness 8 1 true
tellraw @s [{"text":"Your bed is cursed...","color":"red","italic":true}]
