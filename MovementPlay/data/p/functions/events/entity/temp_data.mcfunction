#ID
scoreboard players operation @s pl_id = @e[tag=pl_entity_temp] pl_id

#Save data
data modify entity @s data.Entity set from storage minecraft:play TempFrame.Entity[0]

#Position
execute if data entity @e[tag=this_a,limit=1] data.Animation{Relative:1} run function p:events/entity/relative