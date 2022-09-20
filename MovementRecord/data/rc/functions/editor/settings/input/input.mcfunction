#Reset minecarts
kill @e[tag=edit_minecart_group]

#Selected frame settings
execute if score @s edit matches ..16 run function rc:editor/settings/input/frame

#Selection
execute if score @s edit matches 17 if entity @e[tag=frame_selection_start] if entity @e[tag=frame_selection_end] run function rc:editor/close/save/part

#Ticking
execute if score @s edit matches 18 run scoreboard players set $editor rc_shift 1
execute if score @s edit matches 19 run scoreboard players set $editor rc_shift 0

#Bossbar
execute store result bossbar minecraft:editor value run scoreboard players get $frame_edit rc_id
bossbar set minecraft:editor name ["",{"text":"Frame: ","color":"gold"},{"score":{"name":"$frame_edit","objective":"rc_id"},"color":"yellow"},{"text":"/","color":"yellow"},{"score":{"name":"$editor","objective":"rc_frames"},"color":"yellow"}]
execute if entity @e[tag=frame_selection_start] run bossbar set minecraft:editor name ["",{"text":"Frame: ","color":"gold"},{"score":{"name":"$frame_edit","objective":"rc_id"},"color":"yellow"},{"text":"/","color":"yellow"},{"score":{"name":"$editor","objective":"rc_frames"},"color":"yellow"},{"text":" | ","color":"gray"},{"text":"Selection: ","color":"gold"},{"score":{"name":"@e[tag=frame_selection_start,limit=1]","objective":"rc_id"},"color":"yellow"},{"text":" - ","color":"yellow"},{"score":{"name":"@e[tag=frame_selection_end,limit=1]","objective":"rc_id"},"color":"yellow"}]

#Open sub-menu
execute if score @s edit matches 100 run scoreboard players set $editor rc_menu 0
execute if score @s edit matches 100 run scoreboard players set @s rc_event 0

execute if score @s edit matches 101 run scoreboard players set $editor rc_menu 1
execute if score @s edit matches 102 run scoreboard players set $editor rc_menu 2
execute if score @s edit matches 103 run scoreboard players set $editor rc_menu 3
execute if score @s edit matches 104 run scoreboard players set $editor rc_menu 4
execute if score @s edit matches 105 run scoreboard players set $editor rc_menu 5

#Move frames
execute if score @s edit matches 20..41 run function rc:editor/settings/input/move
execute if score @s edit matches 50..65 run function rc:editor/settings/input/rotate

#Copy/Paste item
execute if score @s edit matches 45 run data modify storage minecraft:animation Edit.ItemClipboard set from entity @e[tag=selected_frame,limit=1] data.Frame.Item
execute if score @s edit matches 46 as @e[tag=selected_frames] run data modify entity @s data.Frame.Item set from storage minecraft:animation Edit.ItemClipboard 

#Blocks
execute if score @s edit matches 200..299 run function rc:editor/settings/input/blocks

#Event
execute if score @s edit matches 400..499 run function rc:editor/settings/input/event

#Load position & rotation
execute if data storage minecraft:animation Edit{Position:1} as @e[tag=selected_frame] run data modify entity @s Pos set from entity @s data.Frame.Pos
execute if data storage minecraft:animation Edit{Rotation:1} as @e[tag=selected_frame] run data modify entity @s Rotation set from entity @s data.Frame.Rot

#Load data to armor stand
tp @e[tag=editor] @e[tag=selected_frame,limit=1]
data modify entity @e[tag=editor,limit=1] Pose.Head set value [0.01f,0.01f,0.01f]
execute as @e[tag=editor] store result entity @s Pose.Head[0] float 1 run data get entity @s Rotation[1]
data modify entity @e[tag=editor,limit=1] HandItems[0] set from entity @e[tag=selected_frame,limit=1] data.Frame.Item

#Other
execute at @s run playsound minecraft:block.note_block.hat master @s[scores={edit=2..167312}] ~ ~ ~ 1 1.5
scoreboard players set @s[scores={rc_time=1..}] rc_time 0
scoreboard players set @s[scores={rc_time=-1}] rc_time 60

#Loop
execute if score $editor rc_time matches 1.. run scoreboard players remove $editor rc_time 1
execute if score $editor rc_time matches 1.. run function rc:editor/settings/input/input