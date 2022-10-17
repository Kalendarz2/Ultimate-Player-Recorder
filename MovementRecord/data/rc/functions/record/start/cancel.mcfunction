function rc:record/cancel
scoreboard players set @s[tag=menu_open] rc_time 120
execute unless data storage minecraft:animation {APIMode:1} run tellraw @s ["",{"text":"Id ","color":"dark_red"},{"score":{"name":"@s","objective":"record"},"color":"dark_red"},{"text":" is already in use! Execute this command without any arguments, to generate id automaticly.","color":"dark_red"}]
function rc:internal_api/messages/occupied_slot
scoreboard players set @s record 0