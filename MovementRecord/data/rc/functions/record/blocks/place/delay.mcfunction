data modify storage minecraft:animation TempBlock.Placed[0].Name set from entity @s inBlockState.Name
data modify storage minecraft:animation TempBlock.Placed[0].Properties set from entity @s inBlockState.Properties
execute if data entity @s inBlockState{Name:"minecraft:bedrock"} at @s if entity @s[y=0.1,dy=0] run function rc:record/blocks/place/other

data modify storage minecraft:animation TempBlock.List append from storage minecraft:animation TempBlock.Placed[0]
data remove storage minecraft:animation TempBlock.Placed[0]
kill @s