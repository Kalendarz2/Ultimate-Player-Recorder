#Summon
summon minecraft:armor_stand ~ ~ ~ {Marker:1,Tags:["edit_minecart_stand","edit_minecart_group"],Invisible:1,Passengers:[{id:"command_block_minecart",Tags:["edit_minecart","edit_minecart_group","edit_minecart8"]}]}

#Prepare
scoreboard players set @s rc_menu 0
data modify entity @s data.TempEvent set from entity @s data.Frame.Event

#Search for command
execute if data entity @s data.TempEvent[0] run function rc:editor/frames/event/edit/minecart_loop

#Store data
scoreboard players operation @e[tag=edit_minecart8] rc_id = $frame_event rc_id
data modify entity @e[tag=edit_minecart8,limit=1] Command set from entity @s data.TempEvent[0].Command
data modify storage minecraft:animation Edit.TempData set from entity @s data.TempEvent[0].Command