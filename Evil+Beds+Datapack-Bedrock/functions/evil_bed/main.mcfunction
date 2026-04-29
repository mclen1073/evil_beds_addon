#---------------------------------------------------------
# This Datapack was made by CommandGeek
# Please do not copy or credit this as your own work!
# Youtube: www.youtube.com/CommandGeek
#---------------------------------------------------------

scoreboard players set @e[name=evil_bed] Bed180 180

# For all "a bed"

execute as @e[name="a bed"] run data modify entity @s Rotation[1] set value 0.0f

scoreboard players add @e[tag=walk,scores={Walk=0}] walking 1
scoreboard players remove @e[tag=walk,scores={Walk=1}] walking 1
scoreboard players set @e[scores={walking=5..}] Walk 1
scoreboard players set @e[scores={walking=..-5}] Walk 0
scoreboard players set @e[name=bed_body,tag=!walk] walking 0

execute as @e[name=bed_body] store result entity @s Pose.LeftLeg[0] float 15 run scoreboard players get @s walking
execute as @e[name=bed_body] store result entity @s Pose.RightLeg[0] float -15 run scoreboard players get @s walking
execute as @e[name=bed_body] store result entity @s Pose.RightArm[0] float 15 run scoreboard players get @s walking
execute as @e[name=bed_body] store result entity @s Pose.LeftArm[0] float -15 run scoreboard players get @s walking

execute at @e[scores={walking=-5}] run playsound minecraft:block.wood.fall master @a ~ ~ ~ 1 1
    
effect give @e[type=minecraft:vindicator,name="a bed"] invisibility 1 1 true
effect give @e[type=minecraft:vindicator,name="a bed"] speed 1 0 true


# functinos for bed_body

execute as @e[name=bed_body] at @e[name="a bed"] if score @s BedID = @e[name="a bed",distance=0,limit=1] BedID run function evil_bed:bed_body

# functions for bed

execute as @e[name=evil_bed] at @e[name="a bed"] if score @s BedID = @e[name="a bed",distance=0,limit=1] BedID run function evil_bed:evil_bed

# Kill Bed

execute as @e[name="a bed"] store result score @s BedHealth run data get entity @s Health

execute as @e[tag=bed] at @e[name="a bed",scores={BedHealth=..940}] if score @s BedID = @e[name="a bed",distance=0,limit=1] BedID run function evil_bed:bed_kill

# Spawn Bed

execute as @a[scores={BedWhite=1..}] at @s run function evil_bed:spawn_bed
execute as @a[scores={BedOrange=1..}] at @s run function evil_bed:spawn_bed
execute as @a[scores={BedMagenta=1..}] at @s run function evil_bed:spawn_bed
execute as @a[scores={BedLightBlue=1..}] at @s run function evil_bed:spawn_bed
execute as @a[scores={BedYellow=1..}] at @s run function evil_bed:spawn_bed
execute as @a[scores={BedLime=1..}] at @s run function evil_bed:spawn_bed
execute as @a[scores={BedPink=1..}] at @s run function evil_bed:spawn_bed
execute as @a[scores={BedGray=1..}] at @s run function evil_bed:spawn_bed
execute as @a[scores={BedLightGray=1..}] at @s run function evil_bed:spawn_bed
execute as @a[scores={BedCyan=1..}] at @s run function evil_bed:spawn_bed
execute as @a[scores={BedPurple=1..}] at @s run function evil_bed:spawn_bed
execute as @a[scores={BedBlue=1..}] at @s run function evil_bed:spawn_bed
execute as @a[scores={BedBrown=1..}] at @s run function evil_bed:spawn_bed
execute as @a[scores={BedGreen=1..}] at @s run function evil_bed:spawn_bed
execute as @a[scores={BedRed=1..}] at @s run function evil_bed:spawn_bed
execute as @a[scores={BedBlack=1..}] at @s run function evil_bed:spawn_bed

scoreboard players set @a BedWhite 0
scoreboard players set @a BedOrange 0
scoreboard players set @a BedMagenta 0
scoreboard players set @a BedLightBlue 0
scoreboard players set @a BedYellow 0
scoreboard players set @a BedLime 0
scoreboard players set @a BedPink 0
scoreboard players set @a BedGray 0
scoreboard players set @a BedLightGray 0
scoreboard players set @a BedCyan 0
scoreboard players set @a BedPurple 0
scoreboard players set @a BedBlue 0
scoreboard players set @a BedBrown 0
scoreboard players set @a BedGreen 0
scoreboard players set @a BedRed 0
scoreboard players set @a BedBlack 0

scoreboard players set @e[name=bed_body,tag=new] Walk 0
execute as @e[tag=new] run data merge entity @s {Rotation:[0.0f,0.0f]}
execute as @e[name="a bed",tag=new] store result score @s BedID run function evil_bed:bed_id
execute as @e[name="a bed",tag=new] run scoreboard players operation @e[tag=new,limit=3] BedID = @s BedID
execute as @e[name="a bed",tag=new] at @s run tp @s ~ ~3 ~
execute as @e[name="a bed",tag=new] run data merge entity @s {Motion:[0.0d,-10.0d,0.0d]}
tag @e[tag=new] remove new
    

    
    
execute as @e[name="a bed"] store result score @s BedRotation run data get entity @s Rotation[0]
scoreboard players set @e[name=evil_bed] Bed180 180




scoreboard players add @e[name="a bed"] BedSec 1
execute as @e[name="a bed",scores={BedSec=5}] at @s run function evil_bed:spawn_effects
execute as @e[name="a bed",scores={BedSec=3}] run data merge entity @s {NoAI:1b}
execute as @e[name="a bed",scores={BedSec=4..100}] at @s run tp @s ~ ~.01 ~ ~10 ~

# execute as @e[name="a bed",scores={BedSec=20}] at @s run playsound minecraft:entity.zombie.attack_wooden_door master @a ~ ~ ~ 1 0
# execute as @e[name="a bed",scores={BedSec=20}] at @s run particle block oak_planks ~ ~1 ~ .5 1 .5 2 100

execute as @e[name="a bed",scores={BedSec=40}] at @s run playsound minecraft:entity.zombie.attack_wooden_door master @a ~ ~ ~ 1 0
execute as @e[name="a bed",scores={BedSec=40}] at @s run particle block oak_planks ~ ~1 ~ .5 1 .5 2 100

execute as @e[name="a bed",scores={BedSec=60}] at @s run playsound minecraft:entity.zombie.attack_wooden_door master @a ~ ~ ~ 1 0
execute as @e[name="a bed",scores={BedSec=60}] at @s run particle block oak_planks ~ ~1 ~ .5 1 .5 2 100

execute as @e[name="a bed",scores={BedSec=80}] at @s run playsound minecraft:entity.zombie.attack_wooden_door master @a ~ ~ ~ 1 0
execute as @e[name="a bed",scores={BedSec=80}] at @s run particle block oak_planks ~ ~1 ~ .5 1 .5 2 100

execute as @e[name="a bed",scores={BedSec=100}] at @s run function evil_bed:activate_effects


execute at @e[name="a bed"] run particle smoke ~ ~ ~ .5 1 .5 0 10

# Bed Hat

replaceitem entity @a[nbt={Inventory:[{Slot:103b, id:"minecraft:leather_helmet", Count:1b, tag:{display:{Name:'{"text":"Red Bed Hat","color":"red","italic":"false","bold":"true"}'}}}]}] armor.head red_bed{display:{Name:'{"text":"Red Bed Hat","color":"red","italic":"false","bold":"true"}'},HideFlags:39,AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Slot:"head",Amount:700,Operation:0,UUIDMost:34283,UUIDLeast:116642}]}

replaceitem entity @a[nbt={Inventory:[{Slot:103b, id:"minecraft:leather_helmet", Count:1b, tag:{display:{Name:'{"text":"Red Bed Hat","color":"red","italic":"false","bold":"true"}'}}}]}] armor.head red_bed{display:{Name:'{"text":"Red Bed Hat","color":"red","italic":"false","bold":"true"}'},HideFlags:39,AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Slot:"head",Amount:700,Operation:0,UUIDMost:34283,UUIDLeast:116642}]}

replaceitem entity @a[nbt={Inventory:[{Slot:103b, id:"minecraft:leather_helmet", Count:1b, tag:{display:{Name:'{"text":"Red Bed Hat","color":"red","italic":"false","bold":"true"}'}}}]}] armor.head red_bed{display:{Name:'{"text":"Red Bed Hat","color":"red","italic":"false","bold":"true"}'},HideFlags:39,AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Slot:"head",Amount:700,Operation:0,UUIDMost:34283,UUIDLeast:116642}]}

replaceitem entity @a[nbt={Inventory:[{Slot:103b, id:"minecraft:leather_helmet", Count:1b, tag:{display:{Name:'{"text":"Red Bed Hat","color":"red","italic":"false","bold":"true"}'}}}]}] armor.head red_bed{display:{Name:'{"text":"Red Bed Hat","color":"red","italic":"false","bold":"true"}'},HideFlags:39,AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Slot:"head",Amount:700,Operation:0,UUIDMost:34283,UUIDLeast:116642}]}

replaceitem entity @a[nbt={Inventory:[{Slot:103b, id:"minecraft:leather_helmet", Count:1b, tag:{display:{Name:'{"text":"Red Bed Hat","color":"red","italic":"false","bold":"true"}'}}}]}] armor.head red_bed{display:{Name:'{"text":"Red Bed Hat","color":"red","italic":"false","bold":"true"}'},HideFlags:39,AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Slot:"head",Amount:700,Operation:0,UUIDMost:34283,UUIDLeast:116642}]}

replaceitem entity @a[nbt={Inventory:[{Slot:103b, id:"minecraft:leather_helmet", Count:1b, tag:{display:{Name:'{"text":"Red Bed Hat","color":"red","italic":"false","bold":"true"}'}}}]}] armor.head red_bed{display:{Name:'{"text":"Red Bed Hat","color":"red","italic":"false","bold":"true"}'},HideFlags:39,AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Slot:"head",Amount:700,Operation:0,UUIDMost:34283,UUIDLeast:116642}]}

replaceitem entity @a[nbt={Inventory:[{Slot:103b, id:"minecraft:leather_helmet", Count:1b, tag:{display:{Name:'{"text":"Red Bed Hat","color":"red","italic":"false","bold":"true"}'}}}]}] armor.head red_bed{display:{Name:'{"text":"Red Bed Hat","color":"red","italic":"false","bold":"true"}'},HideFlags:39,AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Slot:"head",Amount:700,Operation:0,UUIDMost:34283,UUIDLeast:116642}]}

replaceitem entity @a[nbt={Inventory:[{Slot:103b, id:"minecraft:leather_helmet", Count:1b, tag:{display:{Name:'{"text":"Red Bed Hat","color":"red","italic":"false","bold":"true"}'}}}]}] armor.head red_bed{display:{Name:'{"text":"Red Bed Hat","color":"red","italic":"false","bold":"true"}'},HideFlags:39,AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Slot:"head",Amount:700,Operation:0,UUIDMost:34283,UUIDLeast:116642}]}

replaceitem entity @a[nbt={Inventory:[{Slot:103b, id:"minecraft:leather_helmet", Count:1b, tag:{display:{Name:'{"text":"Red Bed Hat","color":"red","italic":"false","bold":"true"}'}}}]}] armor.head red_bed{display:{Name:'{"text":"Red Bed Hat","color":"red","italic":"false","bold":"true"}'},HideFlags:39,AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Slot:"head",Amount:700,Operation:0,UUIDMost:34283,UUIDLeast:116642}]}

replaceitem entity @a[nbt={Inventory:[{Slot:103b, id:"minecraft:leather_helmet", Count:1b, tag:{display:{Name:'{"text":"Red Bed Hat","color":"red","italic":"false","bold":"true"}'}}}]}] armor.head red_bed{display:{Name:'{"text":"Red Bed Hat","color":"red","italic":"false","bold":"true"}'},HideFlags:39,AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Slot:"head",Amount:700,Operation:0,UUIDMost:34283,UUIDLeast:116642}]}

replaceitem entity @a[nbt={Inventory:[{Slot:103b, id:"minecraft:leather_helmet", Count:1b, tag:{display:{Name:'{"text":"Red Bed Hat","color":"red","italic":"false","bold":"true"}'}}}]}] armor.head red_bed{display:{Name:'{"text":"Red Bed Hat","color":"red","italic":"false","bold":"true"}'},HideFlags:39,AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Slot:"head",Amount:700,Operation:0,UUIDMost:34283,UUIDLeast:116642}]}

replaceitem entity @a[nbt={Inventory:[{Slot:103b, id:"minecraft:leather_helmet", Count:1b, tag:{display:{Name:'{"text":"Red Bed Hat","color":"red","italic":"false","bold":"true"}'}}}]}] armor.head red_bed{display:{Name:'{"text":"Red Bed Hat","color":"red","italic":"false","bold":"true"}'},HideFlags:39,AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Slot:"head",Amount:700,Operation:0,UUIDMost:34283,UUIDLeast:116642}]}

replaceitem entity @a[nbt={Inventory:[{Slot:103b, id:"minecraft:leather_helmet", Count:1b, tag:{display:{Name:'{"text":"Red Bed Hat","color":"red","italic":"false","bold":"true"}'}}}]}] armor.head red_bed{display:{Name:'{"text":"Red Bed Hat","color":"red","italic":"false","bold":"true"}'},HideFlags:39,AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Slot:"head",Amount:700,Operation:0,UUIDMost:34283,UUIDLeast:116642}]}

replaceitem entity @a[nbt={Inventory:[{Slot:103b, id:"minecraft:leather_helmet", Count:1b, tag:{display:{Name:'{"text":"Red Bed Hat","color":"red","italic":"false","bold":"true"}'}}}]}] armor.head red_bed{display:{Name:'{"text":"Red Bed Hat","color":"red","italic":"false","bold":"true"}'},HideFlags:39,AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Slot:"head",Amount:700,Operation:0,UUIDMost:34283,UUIDLeast:116642}]}

replaceitem entity @a[nbt={Inventory:[{Slot:103b, id:"minecraft:leather_helmet", Count:1b, tag:{display:{Name:'{"text":"Red Bed Hat","color":"red","italic":"false","bold":"true"}'}}}]}] armor.head red_bed{display:{Name:'{"text":"Red Bed Hat","color":"red","italic":"false","bold":"true"}'},HideFlags:39,AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Slot:"head",Amount:700,Operation:0,UUIDMost:34283,UUIDLeast:116642}]}

replaceitem entity @a[nbt={Inventory:[{Slot:103b, id:"minecraft:leather_helmet", Count:1b, tag:{display:{Name:'{"text":"Red Bed Hat","color":"red","italic":"false","bold":"true"}'}}}]}] armor.head red_bed{display:{Name:'{"text":"Red Bed Hat","color":"red","italic":"false","bold":"true"}'},HideFlags:39,AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Slot:"head",Amount:700,Operation:0,UUIDMost:34283,UUIDLeast:116642}]}










