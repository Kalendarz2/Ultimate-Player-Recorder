#Sort frames (it is much more efficient to run @e several times and use the built-in sorting method (x*n+n) than to iterate through all the frames and look for the next id (n^2))
tp @e[tag=sort_frame] @s
execute store result score @e[tag=sort_frame] rc_pos_x run data get entity @s Pos[0] 100
execute as @e[tag=sort_frame] run scoreboard players operation @s rc_pos_x += @s rc_id
execute as @e[tag=sort_frame] store result entity @s Pos[0] double 0.01 run scoreboard players get @s rc_pos_x