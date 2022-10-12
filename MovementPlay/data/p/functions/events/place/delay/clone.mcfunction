clone ~ ~ ~ ~ ~ ~ 12587360 1 12587360

#Relative
execute if data entity @s data{Relative:1} run function p:events/place/delay/relative

#Regular
execute if data entity @s data{Relative:0} store result entity @s Pos[0] double 1 run data get entity @s data.Pos[0]
execute if data entity @s data{Relative:0} store result entity @s Pos[1] double 1 run data get entity @s data.Pos[1]
execute if data entity @s data{Relative:0} store result entity @s Pos[2] double 1 run data get entity @s data.Pos[2]
execute at @s run tp @s ~0.5 ~0.5 ~0.5

#Change block state sound
execute at @s unless block ~ ~ ~ #p:air run function p:events/place/delay/block_update

#Playsound
execute at @s if block ~ ~ ~ #p:air run function p:events/place/delay/sound

#Clone block to destination
execute at @s run clone 12587360 1 12587360 12587360 1 12587360 ~ ~ ~
execute at @s if block ~ ~ ~ air run function p:events/place/delay/unstable

#Multiblock
execute at @s if block ~ ~ ~ #minecraft:beds run function p:events/place/multiblock/bed
execute at @s if block ~ ~ ~ #minecraft:doors run function p:events/place/multiblock/door

kill @s