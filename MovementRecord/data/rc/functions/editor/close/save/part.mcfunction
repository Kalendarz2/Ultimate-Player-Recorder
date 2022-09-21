#Save blocks
execute as @e[tag=has_block] run function rc:editor/frames/block/save/placed_main
execute as @e[tag=remove_block] run function rc:editor/frames/block/save/destroyed_main

#Sort frames
tag @e[tag=selected_frames] add sort_frame
execute as @e[tag=frame_selection_start,limit=1] run function rc:editor/frames/sort
tag @e remove sort_frame

execute at @e[tag=frame_selection_start,limit=1] as @e[tag=selected_frames,sort=nearest] run data modify storage minecraft:animation Edit.Frames append from entity @s data.Frame
tp @e[tag=selected_frames] @e[tag=frame_selection_start,limit=1]
execute if data storage minecraft:animation Edit{Position:1} as @e[tag=selected_frames] run data modify entity @s Pos set from entity @s data.Frame.Pos

#Auto id
function rc:id/check/all

#Prepare array
function rc:editor/close/save/clear_storage
data modify storage minecraft:animation EditAnimation set from storage minecraft:animation Edit
data remove storage minecraft:animation EditAnimation.BackArray
data remove storage minecraft:animation EditAnimation.FrontArray
execute store result storage minecraft:animation EditAnimation.id int 1 run scoreboard players get $id rc_id
execute store result storage minecraft:animation EditAnimation.Length int 1 if entity @e[tag=selected_frames]
data modify storage minecraft:animation EditAnimation.Name set value "From Selection"
data modify storage minecraft:animation Edit.Frames set value []


#Append main array
data modify storage minecraft:animation Animation append from storage minecraft:animation EditAnimation
function rc:id/list/append


execute at @s run playsound minecraft:entity.player.levelup master @s
tellraw @s ["",{"text":"Animation saved successfully with id ","color":"green"},{"score":{"name":"$id","objective":"rc_id"},"color":"green"}]
scoreboard players set @s rc_time -1