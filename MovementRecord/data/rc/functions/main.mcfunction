#Datapack modules
execute unless data storage minecraft:animation {APIMode:1} run function rc:modules

#Record unless entity @e[tag=is_recording] TEMP --------------------------------------------
tag @e[tag=rc_data] add rc_kill
execute as @e[type=!#rc:other,scores={record=1..},tag=!is_recording] run function rc:record/start/pre_start
execute as @a[tag=record_get] run function rc:record/start/settings/get
execute as @e[tag=record_start] run function rc:record/main
clear @a[tag=!record_get] minecraft:written_book{Settings:1}
clear @a[tag=!record_get] minecraft:writable_book{Name:1}

#Recording async
execute unless data storage minecraft:animation {APIMode:1} at @e[tag=rc_start_pos] run particle minecraft:portal ~ ~ ~ 0 0 0 0.1 10
kill @e[tag=rc_place_blocks]

#Cancel
execute as @e[tag=rc_data,tag=rc_kill] run function rc:record/stop
execute as @a[tag=is_recording,scores={rc_leave=1..}] run function rc:record/cancel

execute unless data storage minecraft:animation {APIMode:1} run tellraw @a[scores={record=..-1}] ["",{"text":"Id cannot be negative!","color":"dark_red"}]
execute as @e[scores={record=..-1}] run tellraw @a[tag=rc_debug] ["",{"text":"<RC Debug> ","color":"dark_green","bold":true},{"text":"Id cannot be negative!","color":"dark_red"}]
execute as @e[type=#rc:other,scores={record=1..}] run tellraw @a[tag=rc_debug] ["",{"text":"<RC Debug> ","color":"dark_green","bold":true},{"selector":"@s","color":"dark_red"},{"text":" can not be recorded.","color":"dark_red"}]

#Datapack compatibility
scoreboard players set $dp_check animation 0

#Scores
scoreboard players set @a rc_leave 0
scoreboard players set @a rc_shift 0
scoreboard players set @a rc_click 0
scoreboard players set @a settings 0

scoreboard players set @e[scores={record=1..}] record 0
scoreboard players set @e[scores={record=..-1}] record 0