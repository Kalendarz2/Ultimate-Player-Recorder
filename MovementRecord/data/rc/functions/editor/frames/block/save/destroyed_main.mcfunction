#Reset storage
data modify storage minecraft:animation Edit.BrokenData set value []

#Save blocks
scoreboard players operation $frame_edit rc_menu = @s rc_id
execute as @e[tag=display_block,tag=destroy_block] if score @s rc_id = $frame_edit rc_menu run function rc:editor/frames/block/save/destroyed

data modify entity @s data.Frame.Broken set from storage minecraft:animation Edit.BrokenData