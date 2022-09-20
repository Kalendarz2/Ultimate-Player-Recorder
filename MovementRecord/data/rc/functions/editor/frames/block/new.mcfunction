summon minecraft:falling_block 12587358 3 12587360 {NoGravity:1,Glowing:1,Time:-30000,Tags:["display_block","frame_general","this_b","selected_block"]}
scoreboard players operation @e[tag=this_b,limit=1] rc_id = @e[tag=selected_frame,limit=1] rc_id
execute at @s align xyz run tp @e[tag=this_b] ~0.5 ~ ~0.5

tag @e[tag=selected_frame] add has_block
tag @e remove this_b