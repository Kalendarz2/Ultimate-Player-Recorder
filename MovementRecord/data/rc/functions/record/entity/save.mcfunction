#Replace data in older frame
execute if score @s rc_frames matches 2.. as @e[tag=this_rc_data] run data modify entity @s data.Frames[0].Entity set from entity @s data.Entity

#Replace data in current frame
execute if score @s rc_frames matches 1 run data modify storage minecraft:animation TempFrame.Entity set from entity @e[tag=this_rc_data,limit=1] data.Entity
data modify entity @e[tag=this_rc_data,limit=1] data.Entity set value []