execute if block 12587358 1 12587360 #minecraft:buttons run tp @s ~0.4 ~1 ~0.4

scoreboard players operation @s rc_pos_x = $rc_block rc_pos_x
scoreboard players operation @s rc_pos_y = $rc_block rc_pos_y
scoreboard players operation @s rc_pos_z = $rc_block rc_pos_z
scoreboard players operation @s rc_id = @e[tag=this] rc_id
tag @s remove rc_block_check_id