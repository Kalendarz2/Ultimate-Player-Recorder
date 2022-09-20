execute store result score @s pl_pos_x run data get storage minecraft:play TempFrame.Pos[0] 100
execute store result score @s pl_pos_y run data get storage minecraft:play TempFrame.Pos[1] 100
execute store result score @s pl_pos_z run data get storage minecraft:play TempFrame.Pos[2] 100

scoreboard players operation @s pl_pos_x -= @e[tag=this_a,tag=frames,limit=1] pl_pos_x
scoreboard players operation @s pl_pos_y -= @e[tag=this_a,tag=frames,limit=1] pl_pos_y
scoreboard players operation @s pl_pos_z -= @e[tag=this_a,tag=frames,limit=1] pl_pos_z

execute store result entity @s Pos[0] double 0.01 run scoreboard players get @s pl_pos_x
execute store result entity @s Pos[1] double 0.01 run scoreboard players get @s pl_pos_y
execute store result entity @s Pos[2] double 0.01 run scoreboard players get @s pl_pos_z