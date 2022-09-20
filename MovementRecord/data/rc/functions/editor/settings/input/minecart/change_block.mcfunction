execute as @e[tag=selected_block] run data modify entity @s BlockState.Name set from entity @e[tag=edit_minecart,limit=1] Command
scoreboard players set @e[tag=selected_block] rc_time 1

#Test type
execute if entity @s[nbt={Command:"air"}] run tag @s add command_air
execute if entity @s[nbt={Command:"minecraft:air"}] run tag @s add command_air

#Change to destroy type
execute if entity @s[tag=command_air] as @e[tag=selected_block] run function rc:editor/settings/input/minecart/destroy_type
execute if entity @s[tag=command_air] run tag @e[tag=selected_frames,tag=has_block] add remove_block

#Change to place type
execute if entity @e[tag=selected_block,tag=destroy_block] run tag @s[tag=!command_air] add command_place
execute if entity @s[tag=command_place] run team leave @e[tag=selected_block]
execute if entity @s[tag=command_place] run tag @e[tag=selected_block] remove destroy_block
execute if entity @s[tag=command_place] run tag @e[tag=selected_frames,tag=remove_block] add has_block

kill @s