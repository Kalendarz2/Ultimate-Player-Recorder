tag @s add pl_command
summon marker 12587360 1 12587360 {Tags:["p_place_marker","this_d","command_marker","pl_temp_barrier"]}
scoreboard players operation @e[tag=this_d] pl_id2 = @s pl_id

#Command block position
execute as @e[tag=this_d] run function p:events/place/id

#Place
execute as @e[tag=this_d] at @s run function p:events/command_block