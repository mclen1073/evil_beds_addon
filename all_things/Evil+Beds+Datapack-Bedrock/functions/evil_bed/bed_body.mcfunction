execute at @e[name="a bed",distance=0] run tp @s ~ ~ ~ facing ^ ^1 ^10
execute at @e[name="a bed",nbt={Motion:[0.0d, -0.0784000015258789d, 0.0d]},distance=0] run tag @s remove walk
execute at @e[name="a bed",nbt=!{Motion:[0.0d, -0.0784000015258789d, 0.0d]},scores={BedSec=100..},distance=0] run tag @s add walk
# execute as @s store result entity @s Rotation[0] float 1 run scoreboard players get @e[name="a bed",distance=0,limit=1] BedRotation