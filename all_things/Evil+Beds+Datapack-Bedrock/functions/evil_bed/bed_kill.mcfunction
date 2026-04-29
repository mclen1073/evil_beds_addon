particle minecraft:poof ~ ~ ~ .5 .5 .5 0 50
playsound minecraft:entity.zombie.break_wooden_door master @a ~ ~ ~ .5 1

execute as @s if data entity @s ArmorItems[3].id run function evil_bed:drop_bed

kill @s

