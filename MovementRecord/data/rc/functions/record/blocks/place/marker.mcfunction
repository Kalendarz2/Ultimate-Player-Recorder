#Clear blocks
setblock ~ 0 ~ bedrock
setblock ~1 1 ~ barrier
setblock ~ 1 ~1 barrier
setblock ~-1 1 ~ barrier
setblock ~ 1 ~-1 barrier
fill ~ ~1 ~ ~ ~2 ~ air

#Spawn test
execute unless block 12587358 1 12587360 #minecraft:buttons run summon arrow ~ ~1 ~ {Motion:[0.0,-10.0,0.0],Tags:["rc_block_check"]}
execute if block 12587358 1 12587360 #minecraft:buttons run summon arrow ~0.4 ~1 ~0.4 {Motion:[0.0,-10.0,0.0],Tags:["rc_block_check"]}
clone 12587358 1 12587360 12587358 1 12587360 ~ ~ ~

#Change pos
tp @s ~ ~ ~2
scoreboard players add @s rc_id 1
execute if score @s rc_id matches 7.. run tp @s ~-2 ~ ~-12
execute if score @s rc_id matches 7.. run scoreboard players set @s rc_id 0