summon marker ~ ~ ~ {Tags:["this_c","editor_entity_data","frame_general"]}

#Position
execute store result score @e[tag=this_c] rc_click run data get entity @s Pos[0] 1000
execute store result score @e[tag=this_c] rc_event run data get entity @s Pos[1] 1000
execute store result score @e[tag=this_c] rc_shift run data get entity @s Pos[2] 1000

#Motion
scoreboard players operation @e[tag=this_c] rc_pos_x = @s rc_pos_x
scoreboard players operation @e[tag=this_c] rc_pos_y = @s rc_pos_y
scoreboard players operation @e[tag=this_c] rc_pos_z = @s rc_pos_z

#Type
execute if score @s rc_event matches 1..3 run tag @e[tag=this_c] add arrow
execute if score @s rc_event matches 4..8 run tag @e[tag=this_c] add snowball

#Scale (4 particles per tick)
scoreboard players operation @e[tag=this_c] rc_pos_x *= $10 rc_id
scoreboard players operation @e[tag=this_c] rc_pos_y *= $10 rc_id
scoreboard players operation @e[tag=this_c] rc_pos_z *= $10 rc_id

scoreboard players operation @e[tag=this_c] rc_pos_x /= $4 rc_id
scoreboard players operation @e[tag=this_c] rc_pos_y /= $4 rc_id
scoreboard players operation @e[tag=this_c] rc_pos_z /= $4 rc_id

tag @e[tag=this_c] remove this_c