#Negative or no id
execute unless score $id rc_id matches 1.. run function rc:internal_api/messages/positive_id

#Is recording
execute if entity @s[tag=is_recording] run tellraw @a[tag=rc_debug] ["",{"text":"<RC Debug> ","color":"dark_green","bold":true},{"selector":"@s","color":"dark_red"},{"text":" is already beeing recorded.","color":"dark_red"}]
scoreboard players operation @s[tag=!is_recording] record = $id rc_id

#Start
tag @s[type=!#rc:other,scores={record=1..},tag=!is_recording] add start_from_api
execute if entity @s[type=!#rc:other,scores={record=1..},tag=!is_recording] run function rc:record/start/pre_start