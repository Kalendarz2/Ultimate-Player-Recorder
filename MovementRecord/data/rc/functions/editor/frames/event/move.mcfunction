#Prepare
scoreboard players set @s rc_menu 0
data modify entity @s data.TempEvent set value []
scoreboard players operation $frame_event rc_menu = $frame_event rc_id
execute if score @p[tag=in_editor] edit matches 430..439 run scoreboard players remove $frame_event rc_menu 1
execute if score @p[tag=in_editor] edit matches 440..449 run scoreboard players add $frame_event rc_id 1

#New array
execute if data entity @s data.Frame.Event[0] run function rc:editor/frames/event/move_loop
data modify entity @s data.Frame.Event set from entity @s data.TempEvent