#Convert data (using execute store directly on the entity causes it to leave loaded chunks)
data modify storage minecraft:animation Edit.ConvertData set value [0.0,0.0,0.0]
execute store result storage minecraft:animation Edit.ConvertData[0] double 1 run data get storage minecraft:animation Edit.PlacedData[0].Pos[0]
execute store result storage minecraft:animation Edit.ConvertData[1] double 1 run data get storage minecraft:animation Edit.PlacedData[0].Pos[1]
execute store result storage minecraft:animation Edit.ConvertData[2] double 1 run data get storage minecraft:animation Edit.PlacedData[0].Pos[2]
data modify entity @s Pos set from storage minecraft:animation Edit.ConvertData
execute at @s run tp @s ~0.5 ~ ~0.5
execute at @s run particle minecraft:composter ~ ~0.5 ~

data modify entity @s BlockState.Name set from storage minecraft:animation Edit.PlacedData[0].Name
data modify entity @s BlockState.Properties set from storage minecraft:animation Edit.PlacedData[0].Properties
data modify entity @s TileEntityData set from storage minecraft:animation Edit.PlacedData[0].TileEntityData
execute if data storage minecraft:animation Edit.PlacedData[0].U run tag @s add unstable_block
scoreboard players operation @s rc_id = @e[tag=this_a,limit=1] rc_id
tag @s remove this_b
