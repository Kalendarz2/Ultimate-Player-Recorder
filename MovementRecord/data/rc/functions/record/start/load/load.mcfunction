#Summon data marker
execute at @s run summon marker ~ ~ ~ {Tags:["rc_data","this_rc_data"]}
scoreboard players operation @e[tag=this_rc_data] rc_id = @s rc_id
scoreboard players operation @e[tag=this_rc_data] rc_menu = $id rc_id
tag @s remove this_load_id

#Setup
tag @s add is_recording
data modify storage minecraft:animation TempAnimation set from storage minecraft:animation DefaultSettings
data modify storage minecraft:animation TempAnimation merge from storage minecraft:animation RecordAPI
execute store result storage minecraft:animation TempAnimation.id int 1 run scoreboard players get $id rc_id
data modify entity @e[tag=this_rc_data,limit=1] data.Info set from storage minecraft:animation TempAnimation

#Prepare chunks
forceload add 12587359 12587360
fill 12587359 0 12587360 12587359 1 12587360 air
setblock 12587358 0 12587360 bedrock
setblock 12587359 1 12587360 barrier
setblock 12587358 1 12587361 barrier
setblock 12587357 1 12587360 barrier
setblock 12587358 1 12587359 barrier

#Settings
execute unless data storage minecraft:animation {APIMode:1} if entity @s[type=player,tag=!start_from_api] run function rc:record/start/load/player

#Skip settings
scoreboard players set @s record 0
execute unless entity @s[type=player] run function rc:record/start/start
execute if data storage minecraft:animation {APIMode:1} if entity @s[type=player] run function rc:record/start/start
execute unless data storage minecraft:animation {APIMode:1} if entity @s[type=player,tag=start_from_api] run function rc:record/start/start
tag @e[tag=this_rc_data] remove this_rc_data