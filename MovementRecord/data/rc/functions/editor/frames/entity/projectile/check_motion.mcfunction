#Check for motion
execute unless score @s rc_pos_x matches 0 run tag @s add rc_motion
execute unless score @s rc_pos_y matches 0 run tag @s add rc_motion
execute unless score @s rc_pos_z matches 0 run tag @s add rc_motion

#Summon path
execute if entity @s[tag=rc_motion] run function rc:editor/frames/entity/projectile/projectile

tag @s remove rc_motion