#Reset
tag @s[tag=rc_data] add this_rc_data
scoreboard players set @e[type=#rc:summonable] rc_time 0

#Frame array
data modify storage minecraft:animation TempAnimation set from entity @s[tag=this_rc_data] data.Info
function rc:record/storage_slot/load_frames

#Count
execute store result storage minecraft:animation TempAnimation.Length int 1 run scoreboard players get @s rc_frames
execute if entity @s[tag=rc_data] store result storage minecraft:animation TempAnimation.Length int 1 run data get storage minecraft:animation TempAnimation.Frames

#Append main array
execute unless data storage minecraft:animation TempAnimation{Length:0} run data modify storage minecraft:animation Animation append from storage minecraft:animation TempAnimation
execute unless data storage minecraft:animation TempAnimation{Length:0} run function rc:id/list/append
forceload remove 12587343 12587360 12587279 12587360

#Exit
function rc:record/cancel
scoreboard players set @s[tag=menu_open] rc_time 150

#Message
tellraw @a[tag=rc_debug] ["",{"text":"<RC Debug> ","color":"dark_green","bold":true},{"selector":"@s","color":"gray"},{"text":" recorded an animation ","color":"gray"},{"nbt":"TempAnimation.Name","storage":"minecraft:animation"},{"text":" with id ","color":"gray"},{"nbt":"TempAnimation.id","storage":"minecraft:animation"}]
execute unless data storage minecraft:animation {APIMode:1} unless entity @s[tag=start_from_api] run function rc:record/stop_message
tag @s remove start_from_api