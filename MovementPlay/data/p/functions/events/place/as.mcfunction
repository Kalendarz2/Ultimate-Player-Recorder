summon marker ~ ~-1 ~ {Tags:["p_place_marker","this_d"]}

data modify entity @s BlockState.Name set from storage minecraft:play TempFrame.Placed[0].Name
data modify entity @s BlockState.Properties set from storage minecraft:play TempFrame.Placed[0].Properties
data modify entity @s TileEntityData set from storage minecraft:play TempFrame.Placed[0].TileEntityData
execute as @e[tag=this_d] run function p:events/place/marker

tag @s remove this_c