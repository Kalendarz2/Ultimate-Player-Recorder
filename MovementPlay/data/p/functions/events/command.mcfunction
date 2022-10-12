tag @s add pl_command

#Command block
summon marker 12587360 1 12587360 {Tags:["p_place_marker","this_d","command_marker","pl_temp_barrier"]}
scoreboard players operation @e[tag=this_d] pl_id2 = @s pl_id

#Command block position
execute unless entity @e[tag=p_place_main_marker] run summon marker 12587360 1 12587362 {Tags:["p_place_main_marker"]}
execute as @e[tag=p_place_main_marker] at @s run function p:events/command_marker