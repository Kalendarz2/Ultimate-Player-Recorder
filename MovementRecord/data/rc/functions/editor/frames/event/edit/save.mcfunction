#Refresh menu
scoreboard players set @p[tag=in_editor] rc_time 180

#Prepare
scoreboard players operation $frame_event rc_id = @e[tag=edit_minecart8] rc_id
scoreboard players set @s rc_menu 0
data modify entity @s data.TempEvent set value []
data modify entity @s data.TempTempEvent set value {Command:"ERROR"}
data modify entity @s data.TempTempEvent.Command set from entity @e[tag=edit_minecart8,limit=1] Command

#New array
execute if data entity @s data.Frame.Event[0] run function rc:editor/frames/event/edit/loop
data modify entity @s data.Frame.Event set from entity @s data.TempEvent

#Minecart
kill @e[tag=edit_minecart8]