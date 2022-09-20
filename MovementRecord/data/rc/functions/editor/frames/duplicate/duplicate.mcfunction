#Type
execute store result score $frame_edit rc_time if entity @e[tag=selected_frames,tag=!selected_frame]
execute if entity @e[tag=selected_frame,tag=selected_frames,tag=frame_selection_start] run scoreboard players add $frame_edit rc_time 1

scoreboard players add @e[tag=frame_selection_start] rc_id 1
execute if score $frame_edit rc_id >= @e[tag=frame_selection_start,limit=1] rc_id if score $frame_edit rc_id <= @e[tag=frame_selection_end,limit=1] rc_id run scoreboard players set $frame_edit rc_time -1
scoreboard players remove @e[tag=frame_selection_start] rc_id 1

execute if score $frame_edit rc_time matches 0 run function rc:editor/frames/duplicate/1
execute if score $frame_edit rc_time matches 1.. run function rc:editor/frames/duplicate/more

#Error
execute if score $frame_edit rc_time matches -1 run tellraw @s ["",{"text":"Cannot duplicate frames inside their own position","color":"dark_red"}]
execute if score $frame_edit rc_time matches -1 run scoreboard players set @s rc_time -1

#Update frame count
execute store result bossbar minecraft:editor max run scoreboard players get $editor rc_frames
execute store result storage minecraft:animation Edit.Length int 1 run scoreboard players get $editor rc_frames