#Deletion mode
execute if data storage minecraft:animation Animation[0] run tag @s add delete_all

#No Data
tellraw @s[tag=!delete_all] ["",{"text":"There are no animations to clear.","color":"dark_red"}]

#Start
execute if entity @s[tag=delete_all] run function rc:delete/start

scoreboard players set @s delete 0