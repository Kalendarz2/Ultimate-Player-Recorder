scoreboard players set @s rc_event 0

#Ticking
execute if score @s edit matches 0 if data storage minecraft:animation Edit{Reverse:0} run scoreboard players add $frame_edit rc_id 1
execute if score @s edit matches 0 if data storage minecraft:animation Edit{Reverse:1} run scoreboard players remove $frame_edit rc_id 1

#Change frame
execute if score @s edit matches 2 run scoreboard players remove $frame_edit rc_id 100
execute if score @s edit matches 3 run scoreboard players remove $frame_edit rc_id 10
execute if score @s edit matches 4 run scoreboard players remove $frame_edit rc_id 1

execute if score @s edit matches 5 run scoreboard players add $frame_edit rc_id 1
execute if score @s edit matches 6 run scoreboard players add $frame_edit rc_id 10
execute if score @s edit matches 7 run scoreboard players add $frame_edit rc_id 100

#Ticking scores
execute if score @s edit matches 0 if data storage minecraft:animation Edit{Reverse:0} if data storage minecraft:animation Edit{Loop:1} if score $frame_edit rc_id > $editor rc_frames run scoreboard players set $frame_edit rc_id 1
execute if score @s edit matches 0 if data storage minecraft:animation Edit{Reverse:0} if data storage minecraft:animation Edit{Loop:0} if score $frame_edit rc_id >= $editor rc_frames run scoreboard players set $editor rc_shift 0 
execute if score @s edit matches 0 if data storage minecraft:animation Edit{Reverse:1} if data storage minecraft:animation Edit{Loop:1} if score $frame_edit rc_id matches ..0 run scoreboard players operation $frame_edit rc_id = $editor rc_frames
execute if score @s edit matches 0 if data storage minecraft:animation Edit{Reverse:1} if data storage minecraft:animation Edit{Loop:0} if score $frame_edit rc_id matches ..1 run scoreboard players set $editor rc_shift 0 

#Limit scores
execute if score $frame_edit rc_id matches ..0 run scoreboard players set $frame_edit rc_id 1
execute if score $frame_edit rc_id > $editor rc_frames run scoreboard players operation $frame_edit rc_id = $editor rc_frames