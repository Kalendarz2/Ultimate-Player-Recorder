function rc:record/cancel
scoreboard players set @s[tag=menu_open] rc_time 140
execute unless data storage minecraft:animation {APIMode:1} run tellraw @s ["",{"text":"Only 10 animations can be recorded at the same time.","color":"dark_red"}]
tellraw @a[tag=rc_debug] ["",{"text":"<RC Debug> ","color":"dark_green","bold":true},{"text":"There are no more recording slots for ","color":"dark_red"},{"selector":"@s","color":"dark_red"},{"text":". Only 10 animations can be recorded at the same time.","color":"dark_red"}]