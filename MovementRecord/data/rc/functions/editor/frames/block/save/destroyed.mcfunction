#Reset temp storage
data modify storage minecraft:animation Edit.TempData set value [0,0,0]

#Store data
execute store result storage minecraft:animation Edit.TempData[0] int 1 run data get entity @s Pos[0]
execute store result storage minecraft:animation Edit.TempData[1] int 1 run data get entity @s Pos[1]
execute store result storage minecraft:animation Edit.TempData[2] int 1 run data get entity @s Pos[2]

data modify storage minecraft:animation Edit.BrokenData append from storage minecraft:animation Edit.TempData
execute if entity @e[tag=selected_frame,tag=!save_blocks_temp] run kill @s