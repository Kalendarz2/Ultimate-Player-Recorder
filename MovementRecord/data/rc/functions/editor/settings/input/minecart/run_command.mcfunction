data remove storage minecraft:animation Edit.TempData

#Run command
setblock 12587358 5 12587360 minecraft:bedrock
setblock 12587358 5 12587360 minecraft:command_block[facing=up]{auto:1,Command:""}
setblock 12587358 6 12587360 minecraft:chain_command_block{auto:1,Command:"fill 12587358 5 12587360 12587358 6 12587360 stone"}
data modify block 12587358 5 12587360 Command set from entity @s Command
scoreboard players set $frame_event rc_frames 0
execute if entity @s[tag=edit_minecart2] run scoreboard players set $frame_edit rc_pos_x 2
execute if entity @s[tag=edit_minecart3] run scoreboard players set $frame_edit rc_pos_x 3
execute if entity @s[tag=edit_minecart5] run scoreboard players set $frame_edit rc_pos_x 5
execute if entity @s[tag=edit_minecart6] run scoreboard players set $frame_edit rc_pos_x 0
execute if entity @s[tag=edit_minecart6] run summon minecraft:armor_stand ~ ~ ~ {Marker:1,Tags:["edit_minecart_stand","edit_minecart_group","edit_minecart_stand7"],Invisible:1,Passengers:[{id:"command_block_minecart",Tags:["edit_minecart","edit_minecart_group","edit_minecart7"]}]}

kill @s