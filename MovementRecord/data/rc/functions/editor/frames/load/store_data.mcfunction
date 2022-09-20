execute if data storage minecraft:animation Edit{Rotation:1} run data modify entity @s Rotation set from storage minecraft:animation Edit.Frames[0].Rot
data modify entity @s data.Frame set from storage minecraft:animation Edit.Frames[0]

#ID
scoreboard players add $frame_id rc_id 1
scoreboard players operation @s rc_id = $frame_id rc_id

#Pos
execute if data storage minecraft:animation Edit{Position:1} if entity @e[tag=frame,tag=!this_a] run data modify entity @s Pos set from storage minecraft:animation Edit.Frames[0].Pos
tag @s remove this_a