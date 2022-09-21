#Save blocks
execute as @e[tag=has_block] run function rc:editor/frames/block/save/placed_main
execute as @e[tag=remove_block] run function rc:editor/frames/block/save/destroyed_main

#Delay
data modify storage minecraft:animation Edit.FramesDelay set from storage minecraft:animation Edit.Frames

#Save BackArray
data modify storage minecraft:animation Edit.Frames set from storage minecraft:animation Edit.BackArray

#Sort frames
tag @e[tag=frame] add sort_frame
function rc:editor/frames/sort
tag @e remove sort_frame

execute at @s as @e[tag=frame,sort=nearest] run data modify storage minecraft:animation Edit.Frames append from entity @s data.Frame
kill @e[tag=frame]

#Save FrontArray
execute if data storage minecraft:animation Edit.FrontArray[0] run function rc:editor/close/save/front_array

#Save unused frames
execute if data storage minecraft:animation Edit.FramesDelay[0] at @s run function rc:editor/close/save/unused

#Recreate main array
data modify storage minecraft:animation EditAnimation set from storage minecraft:animation Animation
function rc:editor/close/save/clear_storage
data remove storage minecraft:animation Edit.BackArray
data remove storage minecraft:animation Edit.FrontArray
data modify storage minecraft:animation Animation set value []
function rc:editor/close/save/array_loop

#Reset
function rc:editor/close/close