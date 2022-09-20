#ID
scoreboard players operation @s pl_id = @e[tag=pl_entity_temp] pl_id

#Position
data modify entity @s data.Pos set from storage minecraft:play TempFrame.Entity[0].Pos
execute if data entity @e[tag=this_a,limit=1] data.Animation{Relative:1} run function p:events/entity/relative

#Save data
data modify entity @s data.Rotation set from storage minecraft:play TempFrame.Entity[0].Rot
data modify entity @s data.Motion set from storage minecraft:play TempFrame.Entity[0].Motion
data modify entity @s data.Item set from storage minecraft:play TempFrame.Entity[0].Item

tag @s remove pl_entity_data_temp