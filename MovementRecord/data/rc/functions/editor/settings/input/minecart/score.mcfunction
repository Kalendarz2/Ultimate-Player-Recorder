#Refresh menu
scoreboard players set @s rc_time 180

#Store data
data modify storage minecraft:animation Edit.TempData set value {Score:0}
execute store result storage minecraft:animation Edit.TempData.Score int 1 run scoreboard players get $frame_event rc_frames
data modify entity @e[tag=selected_frame,limit=1] data.Frame.Event append from storage minecraft:animation Edit.TempData