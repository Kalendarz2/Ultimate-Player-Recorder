#Delete multiple frames
execute as @e[tag=selected_frame] if score @s rc_id < @e[tag=frame_selection_start,limit=1] rc_id run tag @s remove selected_frames
execute as @e[tag=selected_frame] if score @s rc_id > @e[tag=frame_selection_end,limit=1] rc_id run tag @s remove selected_frames

scoreboard players operation $frame_edit rc_id = @e[tag=frame_selection_start,limit=1] rc_id

scoreboard players operation @e[tag=frame] rc_time = @e[tag=frame_selection_end,limit=1] rc_id
execute store result score $frame_edit rc_time run kill @e[tag=selected_frames]
execute as @e[tag=frame] if score @s rc_id > @s rc_time run scoreboard players operation @s rc_id -= $frame_edit rc_time

#Frames
scoreboard players operation $editor rc_frames -= $frame_edit rc_time