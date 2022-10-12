data modify storage minecraft:animation TempBlock.Temp set value {Name:"",Pos:[0,0,0]}

data modify storage minecraft:animation TempBlock.Temp.Name set from entity @s inBlockState.Name
data modify storage minecraft:animation TempBlock.Temp.Properties set from entity @s inBlockState.Properties
data modify storage minecraft:animation TempBlock.Temp.TileEntityData set from block ~ ~-0.1 ~
execute store result storage minecraft:animation TempBlock.Temp.Pos[0] int 1 run scoreboard players get @s rc_pos_x
execute store result storage minecraft:animation TempBlock.Temp.Pos[1] int 1 run scoreboard players get @s rc_pos_y
execute store result storage minecraft:animation TempBlock.Temp.Pos[2] int 1 run scoreboard players get @s rc_pos_z

execute if data entity @s inBlockState{Name:"minecraft:bedrock"} at @s if entity @s[y=0.1,dy=0] run function rc:record/blocks/place/other

data modify storage minecraft:animation TempBlock.Array append from storage minecraft:animation TempBlock.Temp
kill @s