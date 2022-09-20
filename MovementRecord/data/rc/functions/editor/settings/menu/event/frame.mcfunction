#Copy data
data modify entity @s data.TempEvent set from entity @s data.Frame.Event

#Page display
scoreboard players set @s rc_menu 0
scoreboard players operation @s rc_menu -= $frame_event rc_event

#Display loop
execute if data entity @s data.TempEvent[0] run function rc:editor/settings/menu/event/load

#Reset
tag @s remove has_sync
tag @s remove has_score