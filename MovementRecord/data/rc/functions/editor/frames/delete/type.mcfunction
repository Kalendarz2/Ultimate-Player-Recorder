#Type
execute unless entity @e[tag=selected_frames,tag=!selected_frame] run function rc:editor/frames/delete/1
execute if entity @e[tag=selected_frames,tag=!selected_frame] run function rc:editor/frames/delete/more

#Update frame count
execute if score $frame_edit rc_id > $editor rc_frames run scoreboard players operation $frame_edit rc_id = $editor rc_frames
execute store result bossbar minecraft:editor max run scoreboard players get $editor rc_frames
execute store result storage minecraft:animation Edit.Length int 1 run scoreboard players get $editor rc_frames
kill @e[tag=display_block]