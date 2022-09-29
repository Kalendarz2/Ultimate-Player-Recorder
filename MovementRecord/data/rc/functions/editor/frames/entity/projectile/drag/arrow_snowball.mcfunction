#Drag
scoreboard players operation @s rc_pos_x *= $99 rc_id
scoreboard players operation @s rc_pos_y *= $99 rc_id
scoreboard players operation @s rc_pos_z *= $99 rc_id
scoreboard players operation @s rc_pos_x /= $100 rc_id
scoreboard players operation @s rc_pos_y /= $100 rc_id
scoreboard players operation @s rc_pos_z /= $100 rc_id

#Gravity
scoreboard players remove @s rc_pos_y 6
scoreboard players remove @s[tag=arrow] rc_pos_y 4