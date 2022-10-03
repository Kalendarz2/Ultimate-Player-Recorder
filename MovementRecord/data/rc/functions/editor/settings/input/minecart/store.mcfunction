#Error
execute unless data storage minecraft:animation Edit.TempData run tellraw @s ["",{"text":"An error occurred while executing the command. Make sure the destination path is set to Edit.TempData and the command is correct","color":"dark_red"}]
execute unless data storage minecraft:animation Edit.TempData run scoreboard players set @s rc_time 60

#Store block data
execute if score $frame_edit rc_pos_x matches 1 if data storage minecraft:animation Edit.TempData as @e[tag=selected_block] run data modify entity @s BlockState.Properties set from storage minecraft:animation Edit.TempData
execute if score $frame_edit rc_pos_x matches 2 if data storage minecraft:animation Edit.TempData as @e[tag=selected_block] run data modify entity @s TileEntityData set from storage minecraft:animation Edit.TempData
execute if score $frame_edit rc_pos_x matches 1..2 if data storage minecraft:animation Edit.TempData run scoreboard players set @e[tag=selected_block] rc_time 1

#Item data
execute if score $frame_edit rc_pos_x matches 3 if data storage minecraft:animation Edit.TempData as @e[tag=selected_entity] run data modify entity @s Item set from storage minecraft:animation Edit.TempData
execute if score $frame_edit rc_pos_x matches 3 if data storage minecraft:animation Edit.TempData as @e[tag=selected_entity,type=item] run function rc:editor/frames/entity/spawn/item