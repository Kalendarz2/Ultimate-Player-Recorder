#Summon frames
summon marker ~ ~ ~ {Tags:["frame","frame_general","this_a"]}
execute as @e[tag=frame,tag=this_a] run function rc:editor/frames/load/front_data

#Loop
scoreboard players add $frame_id rc_frames 1
data remove storage minecraft:animation Edit.FrontArray[-1]
execute if score $frame_id rc_frames matches ..999 if data storage minecraft:animation Edit.FrontArray[-1] run function rc:editor/frames/load/front