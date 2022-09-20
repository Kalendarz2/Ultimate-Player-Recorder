function p:events/destroy/block_loop

#Relative
execute as @e[tag=destroy_pos] if data storage minecraft:play Info{Relative:1} run function p:events/destroy/relative

execute at @e[tag=destroy_pos] run setblock ~ ~ ~ air destroy
kill @e[tag=destroy_pos]