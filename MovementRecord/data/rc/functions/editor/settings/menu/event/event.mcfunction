#Prepare page
scoreboard players add @s rc_event 0
scoreboard players operation $frame_event rc_event = @s rc_event
scoreboard players operation $frame_event rc_event *= $10 rc_id

#Force page if no more events
execute store result score $frame_event rc_menu run data get entity @e[tag=selected_frame,limit=1] data.Frame.Event
execute if score @s rc_event matches 1.. if score $frame_event rc_event >= $frame_event rc_menu run function rc:editor/settings/menu/event/force_page

#Display events
execute as @e[tag=selected_frame] run function rc:editor/settings/menu/event/frame

#Footer
execute if score @s rc_event matches 1.. run data modify storage minecraft:animation RecordSettings.EditorEventPrev set value '[{"text":"<","bold":true,"color":"gold","clickEvent":{"action":"run_command","value":"/trigger edit set 407"},"hoverEvent":{"action":"show_text","contents":[{"text":"Previous page","color":"gold"}]}}]'
execute if score @s rc_event matches ..0 run data modify storage minecraft:animation RecordSettings.EditorEventPrev set value '[{"text":"<","bold":true,"color":"dark_gray","hoverEvent":{"action":"show_text","contents":[{"text":"Previous page","color":"gray"}]}}]'

execute if data entity @e[tag=selected_frame,limit=1] data.TempEvent[0] run data modify storage minecraft:animation RecordSettings.EditorEventNext set value '[{"text":">","bold":true,"color":"gold","clickEvent":{"action":"run_command","value":"/trigger edit set 408"},"hoverEvent":{"action":"show_text","contents":[{"text":"Next page","color":"gold"}]}}]'
execute unless data entity @e[tag=selected_frame,limit=1] data.TempEvent[0] run data modify storage minecraft:animation RecordSettings.EditorEventNext set value '[{"text":">","bold":true,"color":"dark_gray","hoverEvent":{"action":"show_text","contents":[{"text":"Next page","color":"gray"}]}}]'

tellraw @s ["",{"text":"\nCmd","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger edit set 403"},"hoverEvent":{"action":"show_text","contents":[{"text":"Add a new command. If left default value, executes a command as the entity or if removed, as a command block","color":"gold"}]}},{"text":" | ","color":"dark_gray"},{"text":"Sync","color":"dark_aqua","clickEvent":{"action":"run_command","value":"/trigger edit set 404"},"hoverEvent":{"action":"show_text","contents":[{"text":"Add a new synchronization event. Triggers recording synchronization","color":"gold"}]}},{"text":" | ","color":"dark_gray"},{"text":"Score","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger edit set 405"},"hoverEvent":{"action":"show_text","contents":[{"text":"Add a new score event. Sets \"score\" scoreboard on the entity","color":"gold"}]}},{"text":" | ","color":"dark_gray"},{"text":"Anim","color":"dark_aqua","clickEvent":{"action":"run_command","value":"/trigger edit set 406"},"hoverEvent":{"action":"show_text","contents":[{"text":"Add a new animation event. Stops the ongoing animation and performs the selected one if the entity has the specified tag. The first minecart requires an animation id and the second one a tag. If the second minecart is destroyed, the event will not require a tag.","color":"gold"}]}},{"text":" | ","color":"dark_gray"},{"nbt":"RecordSettings.EditorEventPrev","storage":"minecraft:animation","interpret":true},{"text":" "},{"nbt":"RecordSettings.EditorEventNext","storage":"minecraft:animation","interpret":true},{"text":" | ","color":"dark_gray"},{"text":"Back","color":"red","clickEvent":{"action":"run_command","value":"/trigger edit set 100"},"hoverEvent":{"action":"show_text","contents":[{"text":"Exit event settings","color":"gold"}]}}]