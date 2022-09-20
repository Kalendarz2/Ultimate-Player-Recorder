kill @e[tag=rc_button]
kill @e[tag=rc_block]
kill @e[tag=rc_block_main]
kill @e[tag=rc_start_pos]
scoreboard players set @e[type=#rc:summonable] rc_time 0
execute store result storage minecraft:animation TempAnimation.Length int 1 run scoreboard players get @s rc_frames
execute unless data storage minecraft:animation TempAnimation{Length:0} run data modify storage minecraft:animation Animation append from storage minecraft:animation TempAnimation
forceload remove 12587359 12587360 12587279 12587360

function rc:record/cancel
scoreboard players set @s[tag=menu_open] rc_time 130

execute unless data storage minecraft:animation TempAnimation{Length:0} run function rc:id/list/append
execute unless data storage minecraft:animation TempAnimation{Length:0} at @s run playsound minecraft:entity.player.levelup master @s
execute unless data storage minecraft:animation TempAnimation{Length:0} run tellraw @s {"text":"Animation saved successfully!","color":"green"}

execute if data storage minecraft:animation TempAnimation{Length:0} at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 0.5 1
execute if data storage minecraft:animation TempAnimation{Length:0} run tellraw @s {"text":"Animation did not contain any frames and was not saved.","color":"red"}