scoreboard players operation $frame_event rc_id = @s edit
execute if score @s edit matches 410..419 run scoreboard players remove $frame_event rc_id 410
execute if score @s edit matches 420..429 run scoreboard players remove $frame_event rc_id 420
execute if score @s edit matches 430..439 run scoreboard players remove $frame_event rc_id 430
execute if score @s edit matches 440..449 run scoreboard players remove $frame_event rc_id 440

#Event page * 10 (from rc:editor/settings/menu/event/event)
scoreboard players operation $frame_event rc_id += $frame_event rc_event

#Delete
execute if score @s edit matches 410..419 as @e[tag=selected_frame] run function rc:editor/frames/event/delete

#Edit
execute if score @s edit matches 420..429 at @s as @e[tag=selected_frame] run function rc:editor/frames/event/edit/minecart

#Move up
execute if score @s edit matches 430..439 unless score $frame_event rc_id matches 0 as @e[tag=selected_frame] run function rc:editor/frames/event/move

#Move down
execute if score @s edit matches 440..449 store result score $frame_event rc_menu run data get entity @e[tag=selected_frame,limit=1] data.Frame.Event
execute if score @s edit matches 440..449 run scoreboard players remove $frame_event rc_menu 1
execute if score @s edit matches 440..449 if score $frame_event rc_id < $frame_event rc_menu as @e[tag=selected_frame] run function rc:editor/frames/event/move