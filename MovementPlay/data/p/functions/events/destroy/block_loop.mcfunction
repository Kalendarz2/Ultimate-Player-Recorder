summon marker ~ ~ ~ {Tags:["destroy_pos","this_position"]}
data modify storage minecraft:play TempFrame.ConvertData set value [0.0,0.0,0.0]
execute store result storage minecraft:play TempFrame.ConvertData[0] double 1 run data get storage minecraft:play TempFrame.Broken[0][0]
execute store result storage minecraft:play TempFrame.ConvertData[1] double 1 run data get storage minecraft:play TempFrame.Broken[0][1]
execute store result storage minecraft:play TempFrame.ConvertData[2] double 1 run data get storage minecraft:play TempFrame.Broken[0][2]
execute unless data storage minecraft:play Info{Relative:1} as @e[tag=destroy_pos,tag=this_position] run data modify entity @s Pos set from storage minecraft:play TempFrame.ConvertData
execute if data storage minecraft:play Info{Relative:1} as @e[tag=destroy_pos,tag=this_position] run data modify entity @s data.Pos set from storage minecraft:play TempFrame.ConvertData
execute as @e[tag=destroy_pos,tag=this_position] at @s run tp @s ~0.5 ~0.5 ~0.5
tag @e remove this_position

data remove storage minecraft:play TempFrame.Broken[0]
execute if data storage minecraft:play TempFrame.Broken[0] run function p:events/destroy/block_loop