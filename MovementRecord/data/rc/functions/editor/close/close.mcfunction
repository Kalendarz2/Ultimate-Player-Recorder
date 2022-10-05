data remove storage minecraft:animation Edit
execute if entity @s[tag=!menu_open] if score $feedback rc_time matches 1 run gamerule sendCommandFeedback true
execute at @s run playsound minecraft:block.note_block.xylophone master @s ~ ~ ~ 1 0.5
bossbar set minecraft:editor players

kill @e[type=item,nbt={Item:{tag:{Edit_Settings:1}}}]
kill @e[type=item,nbt={Item:{tag:{Edit_Name:1}}}]
kill @e[tag=frame_general]
kill @e[tag=editor]
kill @e[tag=edit_minecart_group]

function rc:editor/close/self