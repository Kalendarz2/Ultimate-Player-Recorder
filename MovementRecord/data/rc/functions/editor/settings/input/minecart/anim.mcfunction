#Refresh menu
scoreboard players set @p[tag=in_editor] rc_time 180

#Store data
data modify storage minecraft:animation Edit.TempData set value {Anim:{id:0,Condition:""}}
execute store result storage minecraft:animation Edit.TempData.Anim.id int 1 run scoreboard players get $frame_event rc_frames
data modify storage minecraft:animation Edit.TempData.Anim.Condition set from entity @s Command
data modify entity @e[tag=selected_frame,limit=1] data.Frame.Event append from storage minecraft:animation Edit.TempData

kill @s