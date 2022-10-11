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
execute unless data storage minecraft:animation TempAnimation{Length:0} at @s run playsound minecraft:entity.player.levelup master @s
execute unless data storage minecraft:animation TempAnimation{Length:0} run tellraw @s {"text":"Animation saved successfully!","color":"green"}

execute if data storage minecraft:animation TempAnimation{Length:0} at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 0.5 1
execute if data storage minecraft:animation TempAnimation{Length:0} run tellraw @s {"text":"Animation did not contain any frames and was not saved.","color":"red"}