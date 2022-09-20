scoreboard players add @s rc_time 1
tellraw @s[scores={rc_time=1},tag=!delete_all] ["",{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\nAre you sure you want to delete animation ","color":"yellow"},{"nbt":"DelAnimation.Name","storage":"minecraft:animation","bold":true,"color":"aqua"},{"text":"? This action is pernament!","color":"yellow"},"\n",{"text":"Delete","bold":true,"color":"red","insertion":"/trigger delete","clickEvent":{"action":"run_command","value":"/trigger delete"}},{"text":" | ","color":"gold"},{"text":"Cancel","bold":true,"color":"green","insertion":"/trigger delete set -1","clickEvent":{"action":"run_command","value":"/trigger delete set -1"}}]
tellraw @s[scores={rc_time=1},tag=delete_all] ["",{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\nAre you sure you want to delete all animations? This action is pernament!","color":"yellow"},"\n",{"text":"Delete","bold":true,"color":"red","insertion":"/trigger delete","clickEvent":{"action":"run_command","value":"/trigger delete"}},{"text":" | ","color":"gold"},{"text":"Cancel","bold":true,"color":"green","insertion":"/trigger delete set -1","clickEvent":{"action":"run_command","value":"/trigger delete set -1"}}]
scoreboard players set @s[scores={rc_time=180..}] rc_time 0

#Confirm
execute if score @s[tag=!delete_all] delete matches 1.. run function rc:delete/confirm
execute if score @s[tag=delete_all] delete matches 1.. run function rc:delete/confirm_all

#Cancel
execute if score @s delete matches ..-1 run function rc:delete/cancel

scoreboard players set @s delete 0