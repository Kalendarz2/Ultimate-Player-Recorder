#Loop until match
scoreboard players add @s rc_menu 1
execute if score @s rc_menu <= $frame_event rc_id run data remove entity @s data.TempEvent[0]
execute if score @s rc_menu < $frame_event rc_id if data entity @s data.TempEvent[0] run function rc:editor/frames/event/edit/minecart_loop