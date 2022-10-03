#Pause recording
execute if score @s rc_click matches 1.. if data entity @s SelectedItem.tag.PauseRecording run function rc:record/pause
execute if score @s rc_click matches 1.. if data entity @s SelectedItem.tag.ResumeRecording run function rc:record/resume

bossbar set minecraft:recording name ["",{"text":"● ","color":"red"},{"text":"Recording..."},{"text":" | ","color":"gray"},{"text":"Frames: ","color":"gold"},{"score":{"name":"@s","objective":"rc_frames"},"color":"yellow"}]
execute at @e[tag=rc_start_pos] run particle minecraft:portal ~ ~ ~ 0 0 0 0.1 10

#Display blocks
execute if entity @s[tag=spawn_blocks] if data storage minecraft:animation TempAnimation{Manual:1} at @e[tag=rc_block_main] align xyz run function rc:record/blocks/display

#Save blocks
execute if entity @e[tag=rc_block_check] run function rc:record/blocks/save

#Entity
execute if data storage minecraft:animation TempAnimation{Spawned:1} at @s positioned ~ ~1.5 ~ run function rc:record/entity/entity

#Custom events
execute if score @s rc_click matches 1.. if data entity @s SelectedItem.tag.Event run function rc:record/event

#Record frequency
execute if score $rc_tick rc_id matches 1.. run function rc:record/frequency
execute unless score $rc_tick rc_id matches 1.. run scoreboard players set $rc_tick rc_time 0

#Recording
execute if data storage minecraft:animation TempAnimation{Manual:0} if score $rc_tick rc_time matches 0 run function rc:record/record
execute if data storage minecraft:animation TempAnimation{Manual:1} if score @s rc_click matches 1.. if data entity @s SelectedItem.tag.NextFrame run function rc:record/record

#Remove last frame
execute if score @s rc_click matches 1.. if score @s rc_frames matches 1.. if data entity @s SelectedItem.tag.LastFrame run function rc:record/remove_frame

#Stop recording
execute if score @s rc_click matches 1.. if data entity @s SelectedItem.tag.StopRecording run function rc:record/stop
execute if score @s record matches 1.. run function rc:record/stop