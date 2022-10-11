execute if data storage minecraft:animation TempAnimation{Manual:1} at @s run playsound minecraft:block.note_block.hat master @s
scoreboard players add @s rc_frames 1
execute if score @s rc_frames matches 1 at @s run tag @e[tag=rc_data] add rc_start_pos
execute if score @s rc_frames matches 1 run tp @e[tag=this_rc_data] @s

#Overwrite storage
data modify storage minecraft:animation TempFrame set value {Pos:[0.0,0.0,0.0],Rot:[0.0f,0.0f],Item:{},Event:[],TempEvent:{},Shift:0,Placed:[],Broken:[],TempBlock:[0,0,0],Entity:[]}

#Entity
execute if data entity @e[tag=this_rc_data,limit=1] data.Entity[0] run function rc:record/entity/save

#Position
execute if entity @s[tag=!no_position] store result storage minecraft:animation TempFrame.Pos[0] double 0.01 run data get entity @s Pos[0] 100
execute if entity @s[tag=!no_position] store result storage minecraft:animation TempFrame.Pos[1] double 0.01 run data get entity @s Pos[1] 100
execute if entity @s[tag=!no_position] store result storage minecraft:animation TempFrame.Pos[2] double 0.01 run data get entity @s Pos[2] 100
execute if data storage minecraft:animation TempAnimation{Position:0} run tag @s add no_position

#Rotation
execute if data storage minecraft:animation TempAnimation{Rotation:1} store result storage minecraft:animation TempFrame.Rot[0] float 0.01 run data get entity @s Rotation[0] 100
execute if data storage minecraft:animation TempAnimation{Rotation:1} store result storage minecraft:animation TempFrame.Rot[1] float 0.01 run data get entity @s Rotation[1] 100

#Event
execute as @e[tag=this_rc_data,scores={rc_event=1..}] run function rc:record/event_set
scoreboard players set @e[tag=this_rc_data] rc_event 0

#Shift
execute if score @s rc_shift matches 1.. if data storage minecraft:animation TempAnimation{Sneaking:1} run data modify storage minecraft:animation TempFrame.Shift set value 1

#Item
execute if data storage minecraft:animation TempAnimation{Item:1} unless data entity @s SelectedItem.tag.Carrot run data modify storage minecraft:animation TempFrame.Item set from entity @s SelectedItem

#Blocks
execute at @s[tag=spawn_blocks] run function rc:record/blocks/check

#Save
data remove storage minecraft:animation TempFrame.TempEvent
data remove storage minecraft:animation TempFrame.TempBlock

#Frame buffer (for block and entity delay)
data modify entity @e[tag=this_rc_data,limit=1] data.Frames append from storage minecraft:animation TempFrame
execute if data entity @e[tag=this_rc_data,limit=1] data.Frames[4] run function rc:record/storage_slot/save_frame