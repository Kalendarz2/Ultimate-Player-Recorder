#Save entity changes
execute if entity @s[tag=has_entity] run function rc:editor/frames/entity/save/selected_frame

#Clipboard
data modify storage minecraft:animation Edit.EntityClipboard set from entity @s data.Frame.Entity