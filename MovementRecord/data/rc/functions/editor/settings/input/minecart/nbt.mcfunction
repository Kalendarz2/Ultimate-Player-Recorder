execute as @e[tag=selected_entity] run function rc:editor/frames/entity/clear_nbt
execute store result score $frame_edit rc_time run data get storage minecraft:animation Edit.TempData
execute if score $frame_edit rc_time matches 1.. as @e[tag=selected_entity] run function rc:editor/frames/entity/nbt