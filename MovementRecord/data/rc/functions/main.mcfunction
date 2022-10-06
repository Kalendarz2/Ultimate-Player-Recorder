#Datapack modules
execute unless data storage minecraft:animation {APIMode:1} run function rc:modules

#Record unless entity @a[tag=is_recording] TEMP --------------------------------------------
execute as @e[scores={record=1..},tag=!is_recording] unless entity @a[tag=is_recording] run function rc:record/start/pre_start
execute as @a[tag=record_get] run function rc:record/start/settings/get
execute as @e[tag=record_start] run function rc:record/main

clear @a[tag=!record_get] minecraft:written_book{Settings:1}
clear @a[tag=!record_get] minecraft:writable_book{Name:1}

tellraw @a[scores={record=..-1}] ["",{"text":"Id cannot be negative!","color":"dark_red"}]

#Datapack compatibility
scoreboard players set $dp_check animation 0

#Scores
scoreboard players set @a rc_leave 0
scoreboard players set @a rc_shift 0
scoreboard players set @a rc_click 0
scoreboard players set @a settings 0

scoreboard players set @e[scores={record=1..}] record 0

#Check for Bukkit
execute if data storage minecraft:animation {Bukkit:1} run tellraw @a[tag=!rc_bukkit_init] {"text":"You are using an unsupported server software! Some features such as recording placed blocks may not work properly. To ensure stable working of the datapack, please use a vanilla server for 1.19+","color":"red"}
execute if data storage minecraft:animation {Bukkit:1} run tag @a add rc_bukkit_init
execute if data storage minecraft:animation {Bukkit:0} run tag @a remove rc_bukkit_init