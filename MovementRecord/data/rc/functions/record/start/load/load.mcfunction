#Id of simultaneous recordings (hardcoded)
tag @s add this_load_id
scoreboard players set @s rc_id 1
execute if entity @e[tag=is_recording,tag=!this_load_id] run function rc:record/start/load/id

execute at @s run summon marker ~ ~ ~ {Tags:["rc_data","this_rc_data"]}
scoreboard players operation @e[tag=this_rc_data] rc_id = @s rc_id
scoreboard players operation @e[tag=this_rc_data] rc_menu = $id rc_id
tag @s remove this_load_id

#Setup
data modify entity @e[tag=this_rc_data,limit=1] data.Info set from storage minecraft:animation DefaultSettings
data modify entity @e[tag=this_rc_data,limit=1] data.Info merge from storage minecraft:animation APIAnimation
execute store result entity @e[tag=this_rc_data,limit=1] data.Info.id int 1 run scoreboard players get $id rc_id

#Prepare chunks
forceload add 12587359 12587360 12587279 12587360
fill 12587359 0 12587360 12587359 1 12587360 air
setblock 12587358 0 12587360 bedrock
setblock 12587359 1 12587360 barrier
setblock 12587358 1 12587361 barrier
setblock 12587357 1 12587360 barrier
setblock 12587358 1 12587359 barrier

#Settings
execute if entity @s[type=player] run function rc:record/start/load/player

#Skip settings
scoreboard players set @s[type=!player] record 0
execute unless entity @s[type=player] run function rc:record/start/start
tag @e[tag=this_rc_data] remove this_rc_data