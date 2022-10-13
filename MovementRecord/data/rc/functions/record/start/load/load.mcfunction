#Id of simultaneous recordings
tag @s add this_load_id
scoreboard players set $slot_id rc_id 0
function rc:record/start/load/id
scoreboard players operation @s rc_id = $slot_id rc_id
execute if score @s rc_id matches 11.. run tag @s add no_id_slot

#Summon data marker
execute unless entity @s[tag=no_id_slot] at @s run summon marker ~ ~ ~ {Tags:["rc_data","this_rc_data"]}
scoreboard players operation @e[tag=this_rc_data] rc_id = @s rc_id
scoreboard players operation @e[tag=this_rc_data] rc_menu = $id rc_id
tag @s remove this_load_id

#Setup
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
execute unless entity @s[tag=no_id_slot] if entity @s[type=player] run function rc:record/start/load/player

#Skip settings
scoreboard players set @s[type=!player] record 0
execute unless entity @s[tag=no_id_slot] unless entity @s[type=player] run function rc:record/start/start
tag @e[tag=this_rc_data] remove this_rc_data

#No id slot
execute if entity @s[tag=no_id_slot] run function rc:record/cancel
execute if entity @s[tag=no_id_slot] run scoreboard players set @s[tag=menu_open] rc_time 140
execute if entity @s[tag=no_id_slot] unless data storage minecraft:animation {APIMode:1} run tellraw @s ["",{"text":"Only 10 animations can be recorded at the same time.","color":"dark_red"}]
execute if entity @s[tag=no_id_slot] at @s run tellraw @a[tag=rc_debug,distance=0.01..] ["",{"text":"<RC Debug> ","color":"dark_green","bold":true},{"text":"There are no more recording slots for ","color":"dark_red"},{"selector":"@s","color":"dark_red"},{"text":". Only 10 animations can be recorded at the same time.","color":"dark_red"}]
tag @s remove no_id_slot