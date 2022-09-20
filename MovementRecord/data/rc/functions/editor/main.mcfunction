scoreboard players enable @s settings

#Settings book
execute if score @s settings matches 1.. run function rc:editor/settings/update

#Name book
execute if data entity @s Inventory[{tag: {Edit_Name: 1}, id: "minecraft:written_book"}] run function rc:editor/settings/name_book

#Update editor
execute as @e[tag=selected_frame] at @s if data entity @s data.Frame.Event[0] run particle minecraft:dust 1 0 1 1 ~ ~2 ~
execute at @e[tag=selected_frames,tag=!selected_frame] run particle minecraft:dust 0 1 1 0.5 ~ ~ ~ 0 0 0 0 1
execute as @e[tag=display_block] run data merge entity @s {Time: -30000}
execute unless score @s edit matches 167312 run data modify entity @e[tag=selected_frame,limit=1] data.Frame.Item set from entity @e[tag=editor,limit=1] HandItems[0]

execute if score @s edit matches 2.. run function rc:editor/settings/input/input

#Minecart command delay
execute if score $frame_edit rc_pos_x matches 2..3 run function rc:editor/settings/input/minecart/store
execute if score $frame_edit rc_pos_x matches 5 run function rc:editor/settings/input/minecart/score
scoreboard players reset $frame_edit rc_pos_x

#Minecart commands
execute as @e[tag=edit_minecart_stand7] at @s unless entity @e[tag=edit_minecart7,distance=..1] run function rc:editor/settings/input/minecart/anim
execute as @e[tag=edit_minecart] at @s run function rc:editor/settings/input/minecart/minecart

execute at @e[tag=edit_minecart_stand] unless entity @e[tag=edit_minecart,distance=..1] run kill @e[tag=edit_minecart_group]
execute at @e[tag=edit_minecart_stand] unless entity @p[distance=..5] run kill @e[tag=edit_minecart_group]

#Block update
execute as @e[tag=display_block,scores={rc_time=1..}] at @s run function rc:editor/frames/block/update

#Ticking
execute if score @s edit matches ..1 if score $editor rc_shift matches 1 run function rc:editor/ticking

#Menu
scoreboard players add @s rc_time 1
scoreboard players set @s[scores={rc_time=180..}] rc_time 1
execute if score @s[tag=!cancel_ask,tag=!save_ask] rc_time matches 1 run function rc:editor/settings/menu/display

#Cancel
execute if score @s edit matches 1 run function rc:editor/close/save_ask
execute if score @s edit matches -1 run function rc:editor/close/no_save_ask
execute if entity @s[tag=in_editor,tag=!cancel_ask] unless entity @e[tag=editor] run function rc:editor/close/no_save_ask
execute unless data entity @s[tag=in_editor,tag=!cancel_ask] Inventory[{tag: {Edit_Name: 1}}] run function rc:editor/close/no_save_ask
execute unless data entity @s[tag=in_editor,tag=!cancel_ask] Inventory[{tag: {Edit_Settings: 1}}] run function rc:editor/close/no_save_ask

execute if score @s[tag=cancel_ask] rc_time matches 1 run tellraw @s ["",{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\nAre you sure you want to exit without saving?","color":"yellow"},"\n",{"text":"Exit editor","bold":true,"color":"red","clickEvent":{"action":"run_command","value":"/trigger edit set -3"}},{"text":" | ","color":"gold"},{"text":"Cancel","bold":true,"color":"green","clickEvent":{"action":"run_command","value":"/trigger edit set -2"}}]
execute if score @s[tag=save_ask] rc_time matches 1 run tellraw @s ["",{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\nAre you sure you want to apply changes to the animation?","color":"yellow"},"\n",{"text":"Save","bold":true,"color":"green","clickEvent":{"action":"run_command","value":"/trigger edit set -4"}},{"text":" | ","color":"gold"},{"text":"Cancel","bold":true,"color":"red","clickEvent":{"action":"run_command","value":"/trigger edit set -2"}}]

execute if score @s edit matches -4 run function rc:editor/close/save/save
execute if score @s edit matches -3 run function rc:editor/close/close
execute if score @s edit matches -2 run function rc:editor/close/cancel
execute if score @s edit matches ..-1 run scoreboard players set @s edit 0