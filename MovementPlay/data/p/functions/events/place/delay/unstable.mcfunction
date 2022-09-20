summon minecraft:falling_block ~ ~ ~ {Motion:[0.0,-10.0,0.0],Time:1,Tags:["this_f"],BlockState:{Name:"minecraft:oak_sign"}}
data modify entity @e[tag=this_f,limit=1] BlockState.Name set from entity @s data.BlockState.Name
data modify entity @e[tag=this_f,limit=1] BlockState.Properties set from entity @s data.BlockState.Properties
data modify entity @e[tag=this_f,limit=1] TileEntityData set from entity @s data.TileEntityData
execute if block ~ ~-1 ~ air run summon marker ~ ~-1 ~ {Tags:["pl_temp_barrier"]}
execute if block ~ ~-1 ~ air run setblock ~ ~-1 ~ barrier
tag @e remove this_f