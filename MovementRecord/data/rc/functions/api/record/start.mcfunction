scoreboard players operation @s record = $id rc_id

execute if score @s record matches 0 run tellraw @a[tag=rc_debug] ["",{"text":"<RC Debug> ","color":"dark_green","bold":true},{"text":"No recording id was provided.","color":"dark_red"}]
execute if entity @s[tag=is_recording] run tellraw @a[tag=rc_debug] ["",{"text":"<RC Debug> ","color":"dark_green","bold":true},{"selector":"@s","color":"dark_red"},{"text":" is already beeing recorded.","color":"dark_red"}]

tag @s[type=!#rc:other,scores={record=1..},tag=!is_recording] add start_from_api
execute if entity @s[type=!#rc:other,scores={record=1..},tag=!is_recording] run function rc:record/start/pre_start