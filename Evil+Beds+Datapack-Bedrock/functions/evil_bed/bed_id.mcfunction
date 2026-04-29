scoreboard players add @s BedID 1
execute at @e[name="a bed"] if score @s BedID <= @e[name="a bed",limit=1,sort=nearest] BedID run schedule function evil_bed:bed_id 1t