scoreboard players add @s rc_time 1

#Drag & gravity (same values as in the game's code)
execute if entity @s[tag=snowball] run function rc:editor/frames/entity/projectile/drag/arrow_snowball
execute if entity @s[tag=arrow] run function rc:editor/frames/entity/projectile/drag/arrow_snowball
execute unless entity @s[tag=snowball] unless entity @s[tag=arrow] run function rc:editor/frames/entity/projectile/drag/default

#Loop
scoreboard players set @s rc_frames 0
function rc:editor/frames/entity/projectile/trajectory_loop

#End
execute if score @s rc_time matches 40.. run kill @s 