tp @s ~-2 ~ ~-12
scoreboard players add @s rc_pos_x 1
execute if score @s rc_pos_x matches 8.. run tp @s ~14 ~-3 ~-12
execute if score @s rc_pos_x matches 8.. run scoreboard players set @s rc_pos_x 0
scoreboard players set @s rc_pos_z 0