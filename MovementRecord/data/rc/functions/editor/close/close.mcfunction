tellraw @s {"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"}
data remove storage minecraft:animation Edit
execute at @s run playsound minecraft:block.note_block.xylophone master @s ~ ~ ~ 1 0.5
bossbar set minecraft:editor players
forceload remove 12587359 12587360

tag @s remove in_editor
tag @s remove cancel_ask
tag @s remove save_ask
kill @e[type=item,nbt={Item:{tag:{Edit_Settings:1}}}]
kill @e[type=item,nbt={Item:{tag:{Edit_Name:1}}}]
kill @e[tag=frame_general]
kill @e[tag=editor]
kill @e[tag=edit_minecart_group]

scoreboard players set @s edit 0
scoreboard players reset @s settings
scoreboard players set @s rc_time 180
scoreboard players operation @s[tag=menu_open] menu = @s rc_menu