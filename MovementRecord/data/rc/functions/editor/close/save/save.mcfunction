#Save blocks
execute as @e[tag=has_block] run function rc:editor/frames/block/save/placed_main
execute as @e[tag=remove_block] run function rc:editor/frames/block/save/destroyed_main

#Save entities
execute as @e[tag=has_entity] run function rc:editor/frames/entity/save/save

#Save FrontArray
data modify storage minecraft:animation Edit.Frames prepend from storage minecraft:animation Edit.FrontArray[]

#Sort frames
tag @e[tag=frame] add sort_frame
function rc:editor/frames/sort
tag @e remove sort_frame

execute at @s as @e[tag=frame,sort=furthest] run data modify storage minecraft:animation Edit.Frames prepend from entity @s data.Frame
kill @e[tag=frame]

#Save BackArray
data modify storage minecraft:animation Edit.Frames prepend from storage minecraft:animation Edit.BackArray[]

#Recreate main array
data modify storage minecraft:animation EditAnimation set from storage minecraft:animation Animation
function rc:editor/close/save/clear_storage
data remove storage minecraft:animation Edit.BackArray
data remove storage minecraft:animation Edit.FrontArray
data modify storage minecraft:animation Animation set value []
function rc:editor/close/save/array_loop

#Reset
function rc:editor/close/close