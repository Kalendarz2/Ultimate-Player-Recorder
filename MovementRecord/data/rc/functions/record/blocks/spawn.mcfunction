#Spawn
kill @e[tag=rc_block]
kill @e[tag=rc_block_main]
execute at @s run summon minecraft:marker ~ ~ ~ {Tags:["rc_block_main"]}
summon minecraft:marker 12587344 10 12587360 {Tags:["rc_block"]}

fill 12587343 10 12587359 12587355 32 12587371 air
execute at @s align xyz run clone ~-5 ~-4 ~-5 ~5 ~6 ~5 12587344 22 12587360
fill 12587344 9 12587360 12587354 9 12587370 bedrock
fill 12587344 21 12587360 12587354 21 12587370 bedrock

#Copy
execute at @e[tag=rc_block] run summon minecraft:marker ~ ~ ~1 {Tags:["rc_block"]}
execute at @e[tag=rc_block] run summon minecraft:marker ~ ~ ~2 {Tags:["rc_block"]}
execute at @e[tag=rc_block] run summon minecraft:marker ~ ~ ~4 {Tags:["rc_block"]}
execute at @e[tag=rc_block,limit=3] run summon minecraft:marker ~ ~ ~8 {Tags:["rc_block"]}

execute at @e[tag=rc_block] run summon minecraft:marker ~1 ~ ~ {Tags:["rc_block"]}
execute at @e[tag=rc_block] run summon minecraft:marker ~2 ~ ~ {Tags:["rc_block"]}
execute at @e[tag=rc_block] run summon minecraft:marker ~4 ~ ~ {Tags:["rc_block"]}
execute at @e[tag=rc_block,limit=33] run summon minecraft:marker ~8 ~ ~ {Tags:["rc_block"]}

execute at @e[tag=rc_block] run summon minecraft:marker ~ ~1 ~ {Tags:["rc_block"]}
execute at @e[tag=rc_block] run summon minecraft:marker ~ ~2 ~ {Tags:["rc_block"]}
execute at @e[tag=rc_block] run summon minecraft:marker ~ ~4 ~ {Tags:["rc_block"]}
execute at @e[tag=rc_block,limit=363] run summon minecraft:marker ~ ~8 ~ {Tags:["rc_block"]}

#Score
execute as @e[tag=rc_block] store result score @s rc_pos_x run data get entity @s Pos[0]
execute as @e[tag=rc_block] store result score @s rc_pos_y run data get entity @s Pos[1]
execute as @e[tag=rc_block] store result score @s rc_pos_z run data get entity @s Pos[2]
scoreboard players remove @e[tag=rc_block] rc_pos_x 12587349
scoreboard players remove @e[tag=rc_block] rc_pos_y 14
scoreboard players remove @e[tag=rc_block] rc_pos_z 12587365
