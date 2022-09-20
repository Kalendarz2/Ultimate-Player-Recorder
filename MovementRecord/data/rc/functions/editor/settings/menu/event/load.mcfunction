#Tellraw settings
scoreboard players add @s rc_menu 1
execute if score @s rc_menu matches 1 run function rc:editor/settings/menu/event/tellraw_settings/1
execute if score @s rc_menu matches 2 run function rc:editor/settings/menu/event/tellraw_settings/2
execute if score @s rc_menu matches 3 run function rc:editor/settings/menu/event/tellraw_settings/3
execute if score @s rc_menu matches 4 run function rc:editor/settings/menu/event/tellraw_settings/4
execute if score @s rc_menu matches 5 run function rc:editor/settings/menu/event/tellraw_settings/5
execute if score @s rc_menu matches 6 run function rc:editor/settings/menu/event/tellraw_settings/6
execute if score @s rc_menu matches 7 run function rc:editor/settings/menu/event/tellraw_settings/7
execute if score @s rc_menu matches 8 run function rc:editor/settings/menu/event/tellraw_settings/8
execute if score @s rc_menu matches 9 run function rc:editor/settings/menu/event/tellraw_settings/9
execute if score @s rc_menu matches 10 run function rc:editor/settings/menu/event/tellraw_settings/10

execute if data entity @s data.TempEvent[0].Command run function rc:editor/settings/menu/event/tellraw_settings/command
execute if data entity @s data.TempEvent[0].Sync run function rc:editor/settings/menu/event/tellraw_settings/sync
execute if data entity @s data.TempEvent[0].Score run function rc:editor/settings/menu/event/tellraw_settings/score
execute if data entity @s data.TempEvent[0].Anim run function rc:editor/settings/menu/event/tellraw_settings/anim


execute if score @s rc_menu matches 1.. run tellraw @p[tag=in_editor] ["",{"nbt":"RecordSettings.EditorEventDelete","storage":"minecraft:animation","interpret":true,"hoverEvent":{"action":"show_text","contents":[{"text":"Delete","color":"gold"}]}},{"nbt":"RecordSettings.EditorEventEdit","storage":"minecraft:animation","interpret":true,"hoverEvent":{"action":"show_text","contents":[{"text":"Edit","color":"gold"}]}},{"nbt":"RecordSettings.EditorEventUp","storage":"minecraft:animation","interpret":true,"hoverEvent":{"action":"show_text","contents":[{"text":"Move up","color":"gold"}]}},{"nbt":"RecordSettings.EditorEventDown","storage":"minecraft:animation","interpret":true,"hoverEvent":{"action":"show_text","contents":[{"text":"Move down","color":"gold"}]}},{"text":" | ","bold":true,"color":"gray"},{"nbt":"RecordSettings.EditorEventType","storage":"minecraft:animation","interpret":true}]

#Loop
data remove entity @s data.TempEvent[0]
execute if score @s rc_menu matches ..9 if data entity @s data.TempEvent[0] run function rc:editor/settings/menu/event/load