#Refresh menu
scoreboard players set @p[tag=in_editor] rc_time 180

#Store data
data modify storage minecraft:animation Edit.TempData set value {Command:"ERROR"}
data modify storage minecraft:animation Edit.TempData.Command set from entity @s Command
data modify entity @e[tag=selected_frame,limit=1] data.Frame.Event append from storage minecraft:animation Edit.TempData
kill @s