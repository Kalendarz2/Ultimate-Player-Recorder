#Append new array
execute unless score @s rc_menu = $frame_event rc_id run data modify entity @s data.TempEvent append from entity @s data.Frame.Event[0]
execute if score @s rc_menu = $frame_event rc_id run data modify entity @s data.TempEvent append from entity @s data.TempTempEvent
scoreboard players add @s rc_menu 1

#Loop
data remove entity @s data.Frame.Event[0]
execute if data entity @s data.Frame.Event[0] run function rc:editor/frames/event/edit/loop