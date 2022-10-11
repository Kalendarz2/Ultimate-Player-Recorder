data modify storage minecraft:animation TempBlock.Array[0].Name set from entity @s inBlockState.Name
data modify storage minecraft:animation TempBlock.Array[0].Properties set from entity @s inBlockState.Properties
execute if data entity @s inBlockState{Name:"minecraft:bedrock"} at @s if entity @s[y=0.1,dy=0] run function rc:record/blocks/place/other

data modify storage minecraft:animation TempBlock.FinalArray append from storage minecraft:animation TempBlock.Array[0]
data remove storage minecraft:animation TempBlock.Array[0]
kill @s