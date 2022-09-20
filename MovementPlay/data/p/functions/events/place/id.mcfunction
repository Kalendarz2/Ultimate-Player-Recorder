#ID
scoreboard players set @s pl_id -1
execute if entity @e[tag=p_place_marker,tag=!this_d] run scoreboard players set @s pl_id 1000000

scoreboard players operation @s pl_id < @e[tag=p_place_marker,tag=!this_d] pl_id
execute if score @s pl_id matches ..0 run function p:events/place/high_id
scoreboard players remove @s[tag=!id_set] pl_id 1

#Calculate location
scoreboard players operation @s pl_pos_x = @s pl_id
scoreboard players operation @s pl_pos_z = @s pl_id
scoreboard players operation @s pl_pos_x *= $2 pl_id
scoreboard players operation @s pl_pos_z *= $2 pl_id

scoreboard players operation @s pl_pos_x /= $14 pl_id
scoreboard players operation @s pl_pos_x *= $2 pl_id
scoreboard players operation @s pl_pos_z %= $14 pl_id

scoreboard players add @s pl_pos_x 12587360
scoreboard players add @s pl_pos_z 12587362

execute store result entity @s Pos[0] double 1 run scoreboard players get @s pl_pos_x
execute store result entity @s Pos[2] double 1 run scoreboard players get @s pl_pos_z

#Tp
execute at @s run forceload add ~16 ~
execute at @s run setblock ~ ~-1 ~ bedrock
execute at @s run setblock ~1 ~ ~ barrier
execute at @s run setblock ~ ~ ~1 barrier
execute at @s run setblock ~-1 ~ ~ barrier
execute at @s run setblock ~ ~ ~-1 barrier
execute at @s run setblock ~ ~ ~ air
execute at @s run tp @e[tag=this_c] ~0.5 ~ ~0.5