playsound minecraft:entity.generic.explode master @a ~ ~ ~ 1 .5
particle block oak_planks ~ ~1 ~ 1 2 1 2 1000
effect give @a[distance=..9] minecraft:instant_damage 1 0 true
data merge entity @s {NoAI:0b,Invulnerable:0b}