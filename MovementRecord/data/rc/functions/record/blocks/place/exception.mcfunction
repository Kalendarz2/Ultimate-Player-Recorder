execute if block ~ ~ ~ #minecraft:leaves if block ~ ~12 ~ #minecraft:leaves run tag @s add rc_no_place
execute unless entity @s[tag=rc_no_place] run function rc:record/blocks/place/place
tag @s remove rc_no_place