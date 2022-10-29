#Frame settings
execute if score @s edit matches 12 run function rc:editor/frames/duplicate/duplicate
execute if score @s edit matches 13 run function rc:editor/frames/delete/delete

#Copy/Paste frame
execute if score @s edit matches 10 as @e[tag=selected_frame,tag=has_entity] run function rc:editor/frames/entity/save/selected_frame
execute if score @s edit matches 10 as @e[tag=selected_frame] run function rc:editor/frames/block/save/selected_frame
execute if score @s edit matches 10 run data modify storage minecraft:animation Edit.Clipboard set from entity @e[tag=selected_frame,limit=1] data.Frame
execute if score @s edit matches 11 as @e[tag=selected_frames] run data modify entity @s data.Frame set from storage minecraft:animation Edit.Clipboard 
execute if score @s edit matches 11 run kill @e[tag=display_block]
execute if score @s edit matches 11 run tag @e[tag=selected_frames] remove has_block
execute if score @s edit matches 11 run tag @e[tag=selected_frames] remove remove_block
execute if score @s edit matches 11 run scoreboard players set @s rc_event 0

#Change frame
execute if score @s edit matches ..7 run function rc:editor/settings/input/change_frame

#Update selected frame
tag @e remove selected_frame
scoreboard players operation @e[tag=frame] rc_time = $frame_edit rc_id
execute as @e[tag=frame] if score @s rc_id = @s rc_time run tag @s add selected_frame

#Select
execute if score @s edit matches 14 as @e[tag=selected_frame] run function rc:editor/settings/input/selection/start
execute if score @s edit matches 15 as @e[tag=selected_frame] run function rc:editor/settings/input/selection/end
execute if score @s edit matches 16 run function rc:editor/settings/input/selection/reset

#Update selected frames
tag @e remove selected_frames
scoreboard players operation @e[tag=frame] rc_time = @e[tag=frame_selection_start,limit=1] rc_id
scoreboard players operation @e[tag=frame] rc_shift = @e[tag=frame_selection_end,limit=1] rc_id
execute if entity @e[tag=frame_selection_start] if entity @e[tag=frame_selection_end] as @e[tag=frame] if score @s rc_id >= @s rc_time if score @s rc_id <= @s rc_shift run tag @s add selected_frames
tag @e[tag=selected_frame] add selected_frames

#Save blocks
execute as @e[tag=has_block,tag=!selected_frames] run function rc:editor/frames/block/save/placed_main
execute as @e[tag=remove_block,tag=!selected_frames] run function rc:editor/frames/block/save/destroyed_main
tag @e[tag=frame,tag=!selected_frames] remove has_block
tag @e[tag=frame,tag=!selected_frames] remove remove_block

#Summon blocks
execute as @e[tag=selected_frames,tag=!has_block] if data entity @s data.Frame.Placed[0] run function rc:editor/frames/block/spawn/placed/placed
execute as @e[tag=selected_frames,tag=!remove_block] if data entity @s data.Frame.Broken[0] run function rc:editor/frames/block/spawn/destroyed/destroyed

#Save entities
execute as @e[tag=has_entity,tag=!selected_frames] run function rc:editor/frames/entity/save/save
tag @e[tag=frame,tag=!selected_frames] remove has_entity

#Summon entities
execute as @e[tag=selected_frames,tag=!has_entity] if data entity @s data.Frame.Entity[0] run function rc:editor/frames/entity/spawn/load

#Frame count limit
execute if data storage minecraft:animation Edit.BackArray[0] run tag @s add frame_limit_c
execute if data storage minecraft:animation Edit.FrontArray[0] run tag @s add frame_limit_c
execute if score @s[tag=frame_limit_c] edit matches ..7 run function rc:editor/frames/manage