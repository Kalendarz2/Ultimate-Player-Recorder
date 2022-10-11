#Save remaining frames
execute if score @s rc_id matches 1 run data modify storage minecraft:animation RecordSlot.1.Frames append from entity @e[tag=this_rc_data,limit=1] data.Frames[]
execute if score @s rc_id matches 2 run data modify storage minecraft:animation RecordSlot.2.Frames append from entity @e[tag=this_rc_data,limit=1] data.Frames[]
execute if score @s rc_id matches 3 run data modify storage minecraft:animation RecordSlot.3.Frames append from entity @e[tag=this_rc_data,limit=1] data.Frames[]
execute if score @s rc_id matches 4 run data modify storage minecraft:animation RecordSlot.4.Frames append from entity @e[tag=this_rc_data,limit=1] data.Frames[]
execute if score @s rc_id matches 5 run data modify storage minecraft:animation RecordSlot.5.Frames append from entity @e[tag=this_rc_data,limit=1] data.Frames[]
execute if score @s rc_id matches 6 run data modify storage minecraft:animation RecordSlot.6.Frames append from entity @e[tag=this_rc_data,limit=1] data.Frames[]
execute if score @s rc_id matches 7 run data modify storage minecraft:animation RecordSlot.7.Frames append from entity @e[tag=this_rc_data,limit=1] data.Frames[]
execute if score @s rc_id matches 8 run data modify storage minecraft:animation RecordSlot.8.Frames append from entity @e[tag=this_rc_data,limit=1] data.Frames[]
execute if score @s rc_id matches 9 run data modify storage minecraft:animation RecordSlot.9.Frames append from entity @e[tag=this_rc_data,limit=1] data.Frames[]
execute if score @s rc_id matches 10 run data modify storage minecraft:animation RecordSlot.10.Frames append from entity @e[tag=this_rc_data,limit=1] data.Frames[]

#Load animation settings
execute if score @s rc_id matches 1 run data modify storage minecraft:animation TempAnimation.Frames set from storage minecraft:animation RecordSlot.1.Frames
execute if score @s rc_id matches 2 run data modify storage minecraft:animation TempAnimation.Frames set from storage minecraft:animation RecordSlot.2.Frames
execute if score @s rc_id matches 3 run data modify storage minecraft:animation TempAnimation.Frames set from storage minecraft:animation RecordSlot.3.Frames
execute if score @s rc_id matches 4 run data modify storage minecraft:animation TempAnimation.Frames set from storage minecraft:animation RecordSlot.4.Frames
execute if score @s rc_id matches 5 run data modify storage minecraft:animation TempAnimation.Frames set from storage minecraft:animation RecordSlot.5.Frames
execute if score @s rc_id matches 6 run data modify storage minecraft:animation TempAnimation.Frames set from storage minecraft:animation RecordSlot.6.Frames
execute if score @s rc_id matches 7 run data modify storage minecraft:animation TempAnimation.Frames set from storage minecraft:animation RecordSlot.7.Frames
execute if score @s rc_id matches 8 run data modify storage minecraft:animation TempAnimation.Frames set from storage minecraft:animation RecordSlot.8.Frames
execute if score @s rc_id matches 9 run data modify storage minecraft:animation TempAnimation.Frames set from storage minecraft:animation RecordSlot.9.Frames
execute if score @s rc_id matches 10 run data modify storage minecraft:animation TempAnimation.Frames set from storage minecraft:animation RecordSlot.10.Frames

#Clear storage
execute if score @s rc_id matches 1 run data modify storage minecraft:animation RecordSlot.1 set value {}
execute if score @s rc_id matches 2 run data modify storage minecraft:animation RecordSlot.2 set value {}
execute if score @s rc_id matches 3 run data modify storage minecraft:animation RecordSlot.3 set value {}
execute if score @s rc_id matches 4 run data modify storage minecraft:animation RecordSlot.4 set value {}
execute if score @s rc_id matches 5 run data modify storage minecraft:animation RecordSlot.5 set value {}
execute if score @s rc_id matches 6 run data modify storage minecraft:animation RecordSlot.6 set value {}
execute if score @s rc_id matches 7 run data modify storage minecraft:animation RecordSlot.7 set value {}
execute if score @s rc_id matches 8 run data modify storage minecraft:animation RecordSlot.8 set value {}
execute if score @s rc_id matches 9 run data modify storage minecraft:animation RecordSlot.9 set value {}
execute if score @s rc_id matches 10 run data modify storage minecraft:animation RecordSlot.10 set value {}