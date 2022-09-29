#Reset temp storage
data remove storage minecraft:animation Edit.TempData
data modify storage minecraft:animation Edit.TempData set value {Motion:[0.0,0.0,0.0],Type:1,Pos:[0.0,0.0,0.0],Rot:[0.0,0.0]}

#Store data
execute store result storage minecraft:animation Edit.TempData.Type int 1 run scoreboard players get @s rc_event
data modify storage minecraft:animation Edit.TempData.Pos set from entity @s Pos
data modify storage minecraft:animation Edit.TempData.Rot set from entity @s Rotation
data modify storage minecraft:animation Edit.TempData.Item set from entity @s Item
data modify storage minecraft:animation Edit.TempData.crit set from entity @s crit
data modify storage minecraft:animation Edit.TempData.damage set from entity @s damage

#Motion
execute store result storage minecraft:animation Edit.TempData.Motion[0] double 0.01 run scoreboard players get @s rc_pos_x
execute store result storage minecraft:animation Edit.TempData.Motion[1] double 0.01 run scoreboard players get @s rc_pos_y
execute store result storage minecraft:animation Edit.TempData.Motion[2] double 0.01 run scoreboard players get @s rc_pos_z

#Save
data modify storage minecraft:animation Edit.EntityData append from storage minecraft:animation Edit.TempData
execute if entity @e[tag=selected_frame,tag=!save_blocks_temp] run kill @s