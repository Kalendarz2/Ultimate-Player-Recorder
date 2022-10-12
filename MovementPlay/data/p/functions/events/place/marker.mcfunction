#Clear blocks
setblock ~ ~-1 ~ bedrock
setblock ~1 ~ ~ barrier
setblock ~ ~ ~1 barrier
setblock ~-1 ~ ~ barrier
setblock ~ ~ ~-1 barrier
setblock ~ ~ ~ air

#Summon block
summon minecraft:falling_block ~ ~ ~ {Time:1,Tags:["p_place","this_c"]}
execute as @e[tag=this_c] at @s run function p:events/place/block_data

#Summon marker with data
summon marker ~ ~ ~ {Tags:["p_place_marker","this_d"]}
execute as @e[tag=this_d] run function p:events/place/marker_data

#Change pos
tp @s ~ ~ ~2
scoreboard players add @s pl_pos_z 1
execute if score @s pl_pos_z matches 7.. run function p:events/place/move