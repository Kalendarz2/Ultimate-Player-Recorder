#Paste data
execute as @e[tag=selected_frames] run data modify entity @s data.Frame.Entity set from storage minecraft:animation Edit.EntityClipboard

#Update display
kill @e[tag=display_entity]
kill @e[tag=display_entity_nbt]
execute as @e[tag=selected_frames] if data entity @s data.Frame.Entity[0] run function rc:editor/frames/entity/spawn/load