#Reset temp storage
data remove storage minecraft:animation Edit.TempData
data modify storage minecraft:animation Edit.TempData set value {Motion:[0.0,0.0,0.0],Type:1,Pos:[0.0,0.0,0.0],Rot:[0.0,0.0]}

#Store data
execute store result storage minecraft:animation Edit.TempData.Type int 1 run scoreboard players get @s rc_event
data modify storage minecraft:animation Edit.TempData.Pos set from entity @s Pos
data modify storage minecraft:animation Edit.TempData.crit set from entity @s crit
data modify storage minecraft:animation Edit.TempData.damage set from entity @s damage
data modify storage minecraft:animation Edit.TempData.Potion set from entity @s Potion

#Item
data remove entity @s Item.tag.Unstack
data modify storage minecraft:animation Edit.TempData.Item set from entity @s Item

#Rotation
execute store result storage minecraft:animation Edit.TempData.Rot[0] double 0.1 run scoreboard players get @s rc_click
execute store result storage minecraft:animation Edit.TempData.Rot[1] double 0.1 run scoreboard players get @s rc_shift

#Motion
execute store result storage minecraft:animation Edit.TempData.Motion[0] double 0.01 run scoreboard players get @s rc_pos_x
execute store result storage minecraft:animation Edit.TempData.Motion[1] double 0.01 run scoreboard players get @s rc_pos_y
execute store result storage minecraft:animation Edit.TempData.Motion[2] double 0.01 run scoreboard players get @s rc_pos_z

#NBT
scoreboard players operation $frame_edit menu = @s rc_menu
execute as @e[tag=display_entity_nbt] if score @s rc_menu = $frame_edit menu run tag @s add selected_entity_nbt
data modify storage minecraft:animation Edit.TempData.NBT set from entity @e[tag=selected_entity_nbt,limit=1] data.NBT
execute if entity @e[tag=selected_frame,tag=!save_blocks_temp] run kill @e[tag=selected_entity_nbt]
tag @e[tag=selected_entity_nbt] remove selected_entity_nbt

#Save
data modify storage minecraft:animation Edit.EntityData append from storage minecraft:animation Edit.TempData
execute if entity @e[tag=selected_frame,tag=!save_blocks_temp] run kill @s