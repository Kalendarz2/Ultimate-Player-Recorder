#Move frames to BackArray
scoreboard players set $frame_array rc_frames 100000000
scoreboard players operation $frame_array rc_frames < @e[tag=selected_frames] rc_id
execute at @s run function rc:editor/frames/unload/back

#Modify id
execute store result score $frame_edit rc_time run data get storage minecraft:animation GetAnimation.Length
scoreboard players operation @e[tag=frame_general] rc_id += $frame_edit rc_time

#Merge frames with BackArray
data modify storage minecraft:animation Edit.BackArray append from storage minecraft:animation GetAnimation.Frames[]

#Update frame count
scoreboard players operation $editor rc_frames += $frame_edit rc_time
scoreboard players operation $frame_edit rc_id += $frame_edit rc_time
execute store result bossbar minecraft:editor max run scoreboard players get $editor rc_frames
execute store result storage minecraft:animation Edit.Length int 1 run scoreboard players get $editor rc_frames

#Summon frames
function rc:editor/frames/manage

#Reset storage
data remove storage minecraft:animation GetAnimation