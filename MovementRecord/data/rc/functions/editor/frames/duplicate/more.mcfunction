#Save block changes
tag @e[tag=selected_frame] add save_blocks_temp
execute as @e[tag=has_block] run function rc:editor/frames/block/save/placed_main
execute as @e[tag=remove_block] run function rc:editor/frames/block/save/destroyed_main

#Save entities
execute as @e[tag=has_entity] run function rc:editor/frames/entity/save/save
tag @e[tag=selected_frame] remove save_blocks_temp

#Change id
execute as @e[tag=frame_general] if score @s rc_id >= $frame_edit rc_id run scoreboard players operation @s rc_id += $frame_edit rc_time

#Calculate distance
scoreboard players operation $frame_edit rc_shift = $frame_edit rc_id
scoreboard players operation $frame_edit rc_shift -= @e[tag=frame_selection_start] rc_id

#Duplicate
execute as @e[tag=selected_frames,tag=!selected_frame] run function rc:editor/frames/duplicate/as
execute as @e[tag=selected_frame,tag=frame_selection_start] run function rc:editor/frames/duplicate/as
scoreboard players operation $editor rc_frames += $frame_edit rc_time