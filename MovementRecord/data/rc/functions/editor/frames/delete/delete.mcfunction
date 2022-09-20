execute if entity @e[tag=frame,tag=!selected_frames] run function rc:editor/frames/delete/type

execute unless entity @e[tag=frame,tag=!selected_frames] run tellraw @s ["",{"text":"You cannot delete all frames, leave at least one. If you want to delete this animation, do so in the menu","color":"dark_red"}]
execute unless entity @e[tag=frame,tag=!selected_frames] run scoreboard players set @s rc_time -1