#Transfer frame to storage
execute if score @s rc_id matches 1 run data modify storage minecraft:animation RecordSlot.1.Frames append from entity @e[tag=this_rc_data,limit=1] data.Frames[0]
execute if score @s rc_id matches 2 run data modify storage minecraft:animation RecordSlot.2.Frames append from entity @e[tag=this_rc_data,limit=1] data.Frames[0]
execute if score @s rc_id matches 3 run data modify storage minecraft:animation RecordSlot.3.Frames append from entity @e[tag=this_rc_data,limit=1] data.Frames[0]
execute if score @s rc_id matches 4 run data modify storage minecraft:animation RecordSlot.4.Frames append from entity @e[tag=this_rc_data,limit=1] data.Frames[0]
execute if score @s rc_id matches 5 run data modify storage minecraft:animation RecordSlot.5.Frames append from entity @e[tag=this_rc_data,limit=1] data.Frames[0]
execute if score @s rc_id matches 6 run data modify storage minecraft:animation RecordSlot.6.Frames append from entity @e[tag=this_rc_data,limit=1] data.Frames[0]
execute if score @s rc_id matches 8 run data modify storage minecraft:animation RecordSlot.8.Frames append from entity @e[tag=this_rc_data,limit=1] data.Frames[0]
execute if score @s rc_id matches 9 run data modify storage minecraft:animation RecordSlot.9.Frames append from entity @e[tag=this_rc_data,limit=1] data.Frames[0]
execute if score @s rc_id matches 10 run data modify storage minecraft:animation RecordSlot.10.Frames append from entity @e[tag=this_rc_data,limit=1] data.Frames[0]
data remove entity @e[tag=this_rc_data,limit=1] data.Frames[0]