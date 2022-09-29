#Calculate motion
scoreboard players operation @s rc_click += @s rc_pos_x
scoreboard players operation @s rc_event += @s rc_pos_y
scoreboard players operation @s rc_shift += @s rc_pos_z

#Store
data modify storage minecraft:animation Edit.ConvertData set value [0.0,0.0,0.0]
execute store result storage minecraft:animation Edit.ConvertData[0] double 0.001 run scoreboard players get @s rc_click
execute store result storage minecraft:animation Edit.ConvertData[1] double 0.001 run scoreboard players get @s rc_event
execute store result storage minecraft:animation Edit.ConvertData[2] double 0.001 run scoreboard players get @s rc_shift
data modify entity @s Pos set from storage minecraft:animation Edit.ConvertData

execute at @s run particle minecraft:composter ~ ~ ~

#Loop
scoreboard players add @s rc_frames 1
execute if score @s rc_frames matches ..3 run function rc:editor/frames/entity/projectile/trajectory_loop