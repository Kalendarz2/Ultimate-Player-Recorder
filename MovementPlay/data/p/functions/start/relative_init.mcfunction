#Calculate relative position
execute store result score @s pl_pos_x run data get entity @s Pos[0] 100
execute store result score @s pl_pos_y run data get entity @s Pos[1] 100
execute store result score @s pl_pos_z run data get entity @s Pos[2] 100

data modify storage minecraft:play Relative set from entity @e[tag=this_a,tag=frames,limit=1] data.Animation.Frames[0].Pos
execute as @e[tag=this_a,tag=frames,limit=1] store result score @s pl_pos_x run data get storage minecraft:play Relative[0] 100
execute as @e[tag=this_a,tag=frames,limit=1] store result score @s pl_pos_y run data get storage minecraft:play Relative[1] 100
execute as @e[tag=this_a,tag=frames,limit=1] store result score @s pl_pos_z run data get storage minecraft:play Relative[2] 100

scoreboard players operation @e[tag=this_a,tag=frames,limit=1] pl_pos_x -= @s pl_pos_x
scoreboard players operation @e[tag=this_a,tag=frames,limit=1] pl_pos_y -= @s pl_pos_y
scoreboard players operation @e[tag=this_a,tag=frames,limit=1] pl_pos_z -= @s pl_pos_z