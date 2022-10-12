#Clear blocks
setblock ~ ~-1 ~ bedrock
setblock ~1 ~ ~ barrier
setblock ~ ~ ~1 barrier
setblock ~-1 ~ ~ barrier
setblock ~ ~ ~-1 barrier
setblock ~ ~ ~ air

#As
execute as @e[tag=this_d] run function p:events/command_block

#Change pos
tp @s ~ ~ ~2
scoreboard players add @s pl_pos_z 1
execute if score @s pl_pos_z matches 7.. run function p:events/place/move