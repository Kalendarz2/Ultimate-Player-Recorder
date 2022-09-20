execute store result score @s pl_pos_x run data get entity @s data.Pos[0] 100
execute store result score @s pl_pos_y run data get entity @s data.Pos[1] 100
execute store result score @s pl_pos_z run data get entity @s data.Pos[2] 100

scoreboard players operation @s pl_pos_x -= @e[tag=this_a,tag=frames,limit=1] pl_pos_x
scoreboard players operation @s pl_pos_y -= @e[tag=this_a,tag=frames,limit=1] pl_pos_y
scoreboard players operation @s pl_pos_z -= @e[tag=this_a,tag=frames,limit=1] pl_pos_z

data modify storage minecraft:play TempFrame.ConvertData set value [0.0,0.0,0.0]
execute store result storage minecraft:play TempFrame.ConvertData[0] double 0.01 run scoreboard players get @s pl_pos_x
execute store result storage minecraft:play TempFrame.ConvertData[1] double 0.01 run scoreboard players get @s pl_pos_y
execute store result storage minecraft:play TempFrame.ConvertData[2] double 0.01 run scoreboard players get @s pl_pos_z
data modify entity @s Pos set from storage minecraft:play TempFrame.ConvertData
execute at @s run tp @s ~0.5 ~0.5 ~0.5