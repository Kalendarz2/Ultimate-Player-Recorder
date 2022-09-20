#Save blocks
execute as @e[tag=has_block] run function rc:editor/frames/block/save/placed_main
execute as @e[tag=remove_block] run function rc:editor/frames/block/save/destroyed_main

#Sort frames
tag @e[tag=frame] add sort_frame
execute as @e[tag=frame,scores={rc_id=1},limit=1] run function rc:editor/frames/sort
tag @e remove sort_frame

execute at @e[tag=frame,scores={rc_id=1},limit=1] as @e[tag=frame,sort=nearest] run data modify storage minecraft:animation Edit.Frames append from entity @s data.Frame
kill @e[tag=frame]

#Recreate main array
data modify storage minecraft:animation EditAnimation set from storage minecraft:animation Animation
function rc:editor/close/save/clear_storage
data modify storage minecraft:animation Animation set value []
function rc:editor/close/save/array_loop

#Reset
function rc:editor/close/close