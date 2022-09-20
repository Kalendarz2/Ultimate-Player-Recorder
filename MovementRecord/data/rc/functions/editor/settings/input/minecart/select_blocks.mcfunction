#Refresh menu
scoreboard players set @p[tag=in_editor] rc_time 180

#Select blocks
execute unless entity @s[nbt={Command:"minecraft:air"}] as @e[tag=display_block,tag=!destroy_block] run function rc:editor/settings/input/minecart/select_blocks_as
execute if entity @s[nbt={Command:"minecraft:air"}] run tag @e[tag=destroy_block] add selected_block

#Update blocks
execute as @e[tag=selected_block] run data modify entity @s Glowing set value 1
execute as @e[tag=display_block,tag=!selected_block] run data modify entity @s Glowing set value 0

kill @s