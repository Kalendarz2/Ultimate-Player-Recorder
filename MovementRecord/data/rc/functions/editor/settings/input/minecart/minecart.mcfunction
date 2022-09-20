execute if entity @s[tag=edit_minecart1] unless entity @s[nbt={Command:""}] run function rc:editor/settings/input/minecart/change_block
execute if entity @s[tag=edit_minecart2] unless entity @s[nbt={Command:"data modify storage minecraft:animation Edit.TempData set value {}"}] run function rc:editor/settings/input/minecart/run_command
execute if entity @s[tag=edit_minecart4] unless entity @s[nbt={Command:""}] unless entity @s[nbt={Command:"execute as @e[tag=pl_command] if score @s pl_id = @e[tag=command_marker,limit=1,sort=nearest] pl_id2 at @s run <COMMAND>"}] run function rc:editor/settings/input/minecart/get_command
execute if entity @s[tag=edit_minecart5] unless entity @s[nbt={Command:"scoreboard players set $frame_event rc_frames "}] run function rc:editor/settings/input/minecart/run_command
execute if entity @s[tag=edit_minecart7] unless entity @s[nbt={Command:""}] run function rc:editor/settings/input/minecart/anim

execute if entity @s[tag=edit_minecart8] store success score @s rc_event run data modify storage minecraft:animation Edit.TempData set from entity @s Command
execute if entity @s[tag=edit_minecart8] unless entity @s[nbt={Command:""}] if score @s rc_event matches 1 as @e[tag=selected_frame] run function rc:editor/frames/event/edit/save
execute if entity @s[tag=edit_minecart9] unless entity @s[nbt={Command:"minecraft:"}] run function rc:editor/settings/input/minecart/select_blocks
