#Select frames to unload
scoreboard players operation $frame_array rc_time /= $1000 rc_id
execute as @e[tag=frame] run scoreboard players operation @s rc_time = @s rc_id
scoreboard players remove @e[tag=frame] rc_time 1
scoreboard players operation @e[tag=frame] rc_time /= $1000 rc_id

execute as @e[tag=frame] if score @s rc_time > $frame_array rc_time run tag @s add sort_frame

#Sort frames
function rc:editor/frames/sort

#Append array
execute at @s as @e[tag=sort_frame,sort=furthest] run data modify storage minecraft:animation Edit.FrontArray append from entity @s data.Frame
kill @e[tag=sort_frame]