#Reset temp storage
data remove storage minecraft:animation Edit.TempData
data modify storage minecraft:animation Edit.TempData set value {Name:"",Pos:[0,0,0]}

#Store data
data modify storage minecraft:animation Edit.TempData.Name set from entity @s BlockState.Name
data modify storage minecraft:animation Edit.TempData.Properties set from entity @s BlockState.Properties
data modify storage minecraft:animation Edit.TempData.TileEntityData set from entity @s TileEntityData
execute if entity @s[tag=unstable_block] run data modify storage minecraft:animation Edit.TempData.U set value 1

execute store result storage minecraft:animation Edit.TempData.Pos[0] int 1 run data get entity @s Pos[0]
execute store result storage minecraft:animation Edit.TempData.Pos[1] int 1 run data get entity @s Pos[1]
execute store result storage minecraft:animation Edit.TempData.Pos[2] int 1 run data get entity @s Pos[2]

data modify storage minecraft:animation Edit.PlacedData append from storage minecraft:animation Edit.TempData
execute if entity @e[tag=selected_frame,tag=!save_blocks_temp] run kill @s