#Prepare
scoreboard players set @s rc_menu 0
data modify entity @s data.TempEvent set value []

#New array
execute if data entity @s data.Frame.Event[0] run function rc:editor/frames/event/delete_loop
data modify entity @s data.Frame.Event set from entity @s data.TempEvent
