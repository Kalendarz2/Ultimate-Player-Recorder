#Select frames to unload
execute as @e[tag=frame] if score @s rc_id > $frame_array rc_frames run tag @s add sort_frame

#Sort frames
function rc:editor/frames/sort

#Append array
execute at @s as @e[tag=sort_frame,sort=furthest] run data modify storage minecraft:animation Edit.FrontArray prepend from entity @s data.Frame
kill @e[tag=sort_frame]