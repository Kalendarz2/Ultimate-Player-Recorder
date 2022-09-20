execute store result score @s pl_pos_x run data get entity @s data.Pos[0] 100
execute store result score @s pl_pos_y run data get entity @s data.Pos[1] 100
execute store result score @s pl_pos_z run data get entity @s data.Pos[2] 100

execute store result score @s pl_id2 run data get entity @s data.RelativePos[0]
scoreboard players operation @s pl_pos_x -= @s pl_id2
execute store result score @s pl_id2 run data get entity @s data.RelativePos[1]
scoreboard players operation @s pl_pos_y -= @s pl_id2
execute store result score @s pl_id2 run data get entity @s data.RelativePos[2]
scoreboard players operation @s pl_pos_z -= @s pl_id2

data modify storage minecraft:play TempFrame.ConvertData set value [0.0,0.0,0.0]
execute store result storage minecraft:play TempFrame.ConvertData[0] double 0.01 run scoreboard players get @s pl_pos_x
execute store result storage minecraft:play TempFrame.ConvertData[1] double 0.01 run scoreboard players get @s pl_pos_y
execute store result storage minecraft:play TempFrame.ConvertData[2] double 0.01 run scoreboard players get @s pl_pos_z
data modify entity @s Pos set from storage minecraft:play TempFrame.ConvertData