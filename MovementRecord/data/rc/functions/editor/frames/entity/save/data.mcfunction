#Reset temp storage
data remove storage minecraft:animation Edit.TempData
data modify storage minecraft:animation Edit.TempData set value {Motion:[],Type:1,Pos:[0.0,0.0,0.0],Rot:[0.0,0.0]}

#Store data
execute store result storage minecraft:animation Edit.TempData.Type int 1 run scoreboard players get @s rc_event
data modify storage minecraft:animation Edit.TempData.Pos set from entity @s Pos
data modify storage minecraft:animation Edit.TempData.Rot set from entity @s Rotation

data modify storage minecraft:animation Edit.EntityData append from storage minecraft:animation Edit.TempData
execute if entity @e[tag=selected_frame,tag=!save_blocks_temp] run kill @s