#Summon markers
kill @e[tag=this_a]
summon marker ~ ~ ~ {Tags:["animation_holder","frames","this_a"]}
summon marker ~ ~ ~ {Tags:["animation_holder","info","this_a"]}
execute store result score @s pl_id run data get entity @s UUID[0]
scoreboard players operation @e[tag=this_a] pl_id = @s pl_id

#Load animation from item
execute if entity @s[tag=anim_from_item] run function p:start/from_item

#Match animation id
scoreboard players operation @s pl_animation = @s animation
execute unless entity @s[tag=anim_from_item] run data modify storage minecraft:play Animation set from storage minecraft:animation Animation
execute unless entity @s[tag=anim_from_item] run function p:start/load_anim
execute unless entity @s[tag=anim_from_item] run data remove storage minecraft:play Animation
execute unless entity @s[tag=anim_from_item] unless data entity @e[tag=this_a,tag=info,limit=1] data.Info run tellraw @a[gamemode=creative] ["",{"text":"Animation with id ","color":"dark_red"},{"score":{"name":"@s","objective":"animation"},"color":"dark_red"},{"text":" does not exist.","color":"dark_red"}]

execute store result score @s speed run data get entity @e[tag=this_a,tag=info,limit=1] data.Info.Speed

#Prepare chunks
forceload add 12587360 12587360 12587440 12587360
fill 12587360 0 12587360 12587360 1 12587360 air
setblock 12587360 0 12587360 bedrock
setblock 12587361 1 12587360 barrier
setblock 12587360 1 12587361 barrier
setblock 12587359 1 12587360 barrier
setblock 12587360 1 12587359 barrier

#Relative animation
execute if data entity @e[tag=this_a,tag=info,limit=1] data.Info{Relative:1} run function p:start/relative_init

#Add NoAI
execute unless data entity @s NoAI run tag @s add noNoAI
data merge entity @s {NoAI:1}
tag @s add started