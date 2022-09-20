execute if data storage minecraft:animation Edit{Rotation:1} run data modify entity @s Rotation set from storage minecraft:animation Edit.FrontArray[-1].Rot
data modify entity @s data.Frame set from storage minecraft:animation Edit.FrontArray[-1]

#ID
scoreboard players add $frame_id rc_id 1
scoreboard players operation @s rc_id = $frame_id rc_id

#Pos
execute if data storage minecraft:animation Edit{Position:1} run data modify entity @s Pos set from storage minecraft:animation Edit.FrontArray[-1].Pos
tag @s remove this_a