#Clear blocks
setblock ~ ~-1 ~ bedrock
setblock ~1 ~ ~ barrier
setblock ~ ~ ~1 barrier
setblock ~-1 ~ ~ barrier
setblock ~ ~ ~-1 barrier
fill ~ ~ ~ ~ ~1 ~ air

#Spawn test
execute unless block 12587358 1 12587360 #minecraft:buttons run summon arrow ~ ~1 ~ {Motion:[0.0,-10.0,0.0],Tags:["rc_block_check","rc_block_check_id","rc_cancel"]}
execute if block 12587358 1 12587360 #minecraft:buttons run summon arrow ~0.4 ~1 ~0.4 {Motion:[0.0,-10.0,0.0],Tags:["rc_block_check","rc_block_check_id","rc_cancel"]}
scoreboard players operation @e[tag=rc_block_check_id] rc_id = @e[tag=this] rc_id
tag @e[tag=rc_block_check_id] remove rc_block_check_id
clone 12587358 1 12587360 12587358 1 12587360 ~ ~ ~

#Change pos
tp @s ~ ~ ~2
scoreboard players add @s rc_pos_z 1
execute if score @s rc_pos_z matches 7.. run function rc:record/blocks/place/move