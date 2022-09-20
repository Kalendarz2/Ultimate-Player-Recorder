#Save block changes
execute as @e[tag=selected_frame] run function rc:editor/frames/block/save/selected_frame

#Duplicate frame
execute as @e[tag=frame_general] if score @s rc_id > $frame_edit rc_id run scoreboard players add @s rc_id 1

scoreboard players set $frame_edit rc_shift 1
scoreboard players add $frame_edit rc_id 1
scoreboard players add $editor rc_frames 1
execute as @e[tag=selected_frame] run function rc:editor/frames/duplicate/as