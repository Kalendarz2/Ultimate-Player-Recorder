#Save data
data modify entity @s data.Pos set from storage minecraft:play TempFrame.Placed[0].Pos
data modify entity @s data.BlockState.Name set from storage minecraft:play TempFrame.Placed[0].Name
data modify entity @s data.BlockState.Properties set from storage minecraft:play TempFrame.Placed[0].Properties
data modify entity @s data.TileEntityData set from storage minecraft:play TempFrame.Placed[0].TileEntityData
data modify entity @s data.Relative set from storage minecraft:play Info.Relative

#Save relative pos
data modify entity @s data.RelativePos set value [0,0,0]
execute store result entity @s data.RelativePos[0] int 1 run scoreboard players get @e[tag=this_a,tag=frames,limit=1] pl_pos_x
execute store result entity @s data.RelativePos[1] int 1 run scoreboard players get @e[tag=this_a,tag=frames,limit=1] pl_pos_y
execute store result entity @s data.RelativePos[2] int 1 run scoreboard players get @e[tag=this_a,tag=frames,limit=1] pl_pos_z

#Block id (looking for a free spot)
execute unless data entity @s data.U run function p:events/place/id

#Save id
scoreboard players operation @s pl_id2 = @e[tag=this_a,tag=frames,limit=1] pl_id

tag @s remove this_d