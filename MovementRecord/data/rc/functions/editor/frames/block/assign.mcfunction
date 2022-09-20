scoreboard players operation @e[tag=selected_block] rc_id = @e[tag=selected_frame,limit=1] rc_id
execute if entity @e[tag=selected_block,tag=!destroy_block] run tag @e[tag=selected_frame] add has_block
execute if entity @e[tag=selected_block,tag=destroy_block] run tag @e[tag=selected_frame] add remove_block