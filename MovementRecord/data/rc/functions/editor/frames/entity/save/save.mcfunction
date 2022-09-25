#Reset storage
data modify storage minecraft:animation Edit.EntityData set value []

#Save entities
scoreboard players operation $frame_edit rc_menu = @s rc_id
execute as @e[tag=display_entity] if score @s rc_id = $frame_edit rc_menu run function rc:editor/frames/entity/save/data

data modify entity @s data.Frame.Entity set from storage minecraft:animation Edit.EntityData