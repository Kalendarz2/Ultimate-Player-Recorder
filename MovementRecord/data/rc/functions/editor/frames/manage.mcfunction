tag @e[tag=selected_frame] add frame_limit
tag @e[tag=frame_selection_start] add frame_limit
tag @e[tag=frame_selection_end] add frame_limit

#Get max frame
scoreboard players set $frame_id rc_id 0
scoreboard players operation $frame_id rc_id > @e[tag=frame] rc_id

#Get max selected
scoreboard players set $frame_array rc_frames 0
scoreboard players operation $frame_array rc_frames > @e[tag=frame_limit] rc_id
scoreboard players operation $frame_array rc_time = $frame_array rc_frames
scoreboard players operation $frame_array rc_shift = $frame_array rc_frames
scoreboard players add $frame_array rc_frames 200
scoreboard players add $frame_array rc_shift 1199

#Load saved frames
scoreboard players set $frame_id rc_frames 0
execute if score $frame_array rc_frames > $frame_id rc_id if data storage minecraft:animation Edit.FrontArray[0] at @e[tag=frame,limit=1] run function rc:editor/frames/load/front

#Load new frames
execute if score $frame_array rc_frames > $frame_id rc_id unless data storage minecraft:animation Edit.FrontArray[0] if data storage minecraft:animation Edit.Frames[0] if score $frame_id rc_frames matches ..999 at @e[tag=frame,limit=1] run function rc:editor/frames/load/load

#Save frames
execute if score $frame_array rc_shift < $frame_id rc_id at @s run function rc:editor/frames/unload/front


#Get min frame
scoreboard players set $frame_id rc_id 100000000
scoreboard players operation $frame_id rc_id < @e[tag=frame] rc_id

#Get min selected
scoreboard players set $frame_array rc_frames 100000000
scoreboard players operation $frame_array rc_frames < @e[tag=frame_limit] rc_id
scoreboard players operation $frame_array rc_time = $frame_array rc_frames
scoreboard players operation $frame_array rc_shift = $frame_array rc_frames
scoreboard players remove $frame_array rc_frames 200
scoreboard players remove $frame_array rc_shift 1199

#Load saved frames
scoreboard players set $frame_id rc_frames 0
execute if score $frame_array rc_frames < $frame_id rc_id if data storage minecraft:animation Edit.BackArray[0] at @e[tag=frame,limit=1] run function rc:editor/frames/load/back

#Save frames
execute if score $frame_array rc_shift > $frame_id rc_id at @s run function rc:editor/frames/unload/back

tag @e[tag=frame_limit] remove frame_limit