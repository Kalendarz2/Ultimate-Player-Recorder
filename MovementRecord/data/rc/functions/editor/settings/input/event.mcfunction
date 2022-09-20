#Copy/Paste events
execute if score @s edit matches 401 run data modify storage minecraft:animation Edit.EventClipboard set from entity @e[tag=selected_frame,limit=1] data.Frame.Event
execute if score @s edit matches 402 as @e[tag=selected_frames] run data modify entity @s data.Frame.Event set from storage minecraft:animation Edit.EventClipboard

#Command
execute if score @s edit matches 403 at @s run summon minecraft:armor_stand ~ ~ ~ {Marker:1,Tags:["edit_minecart_stand","edit_minecart_group"],Invisible:1,Passengers:[{id:"command_block_minecart",Command:"execute as @e[tag=pl_command] if score @s pl_id = @e[tag=command_marker,limit=1,sort=nearest] pl_id2 at @s run <COMMAND>",Tags:["edit_minecart","edit_minecart_group","edit_minecart4"]}]}

#Sync
execute if score @s edit matches 404 run data modify entity @e[tag=selected_frame,limit=1] data.Frame.Event append value {Sync:1}

#Score
execute if score @s edit matches 405..406 at @s run summon minecraft:armor_stand ~ ~ ~ {Marker:1,Tags:["edit_minecart_stand","edit_minecart_group"],Invisible:1,Passengers:[{id:"command_block_minecart",Command:"scoreboard players set $frame_event rc_frames ",Tags:["edit_minecart","edit_minecart_group","edit_minecart5"]}]}

#Anim
execute if score @s edit matches 406 run tag @e[tag=edit_minecart5] add edit_minecart6

#Next/Prev
execute if score @s edit matches 407 run scoreboard players remove @s rc_event 1
execute if score @s edit matches 408 run scoreboard players add @s rc_event 1

#Individual event options
execute if score @s edit matches 410..449 run function rc:editor/settings/input/per_event