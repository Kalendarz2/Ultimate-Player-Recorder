execute if data storage minecraft:animation TempAnimation{Manual:1} at @s run playsound minecraft:block.note_block.hat master @s
scoreboard players add @s rc_frames 1
execute if score @s rc_frames matches 1 run kill @e[tag=rc_start_pos]
execute if score @s rc_frames matches 1 at @s run summon marker ~ ~ ~ {Tags:["rc_start_pos"]}

#Entity
execute if data storage minecraft:animation TempAnimation{Spawned:1} run function rc:record/entity/save

#Overwrite storage
data modify storage animation TempFrame set value {Pos:[0.0,0.0,0.0],Rot:[0.0f,0.0f],Item:{},Event:[],TempEvent:{},Shift:0,Placed:[],Broken:[],TempBlock:[0,0,0],Entity:[]}

#Entity bapass
execute as @e[tag=temp_entity_holder] run data modify storage minecraft:animation TempFrame.Entity set from entity @s data.Entity
kill @e[tag=temp_entity_holder]

#Position
execute if entity @s[tag=!no_position] store result storage minecraft:animation TempFrame.Pos[0] double 0.01 run data get entity @s Pos[0] 100
execute if entity @s[tag=!no_position] store result storage minecraft:animation TempFrame.Pos[1] double 0.01 run data get entity @s Pos[1] 100
execute if entity @s[tag=!no_position] store result storage minecraft:animation TempFrame.Pos[2] double 0.01 run data get entity @s Pos[2] 100
execute if data storage minecraft:animation TempAnimation{Position:0} run tag @s add no_position

#Rotation
execute if data storage minecraft:animation TempAnimation{Rotation:1} store result storage minecraft:animation TempFrame.Rot[0] float 0.01 run data get entity @s Rotation[0] 100
execute if data storage minecraft:animation TempAnimation{Rotation:1} store result storage minecraft:animation TempFrame.Rot[1] float 0.01 run data get entity @s Rotation[1] 100

#Event
execute if score $rc_event rc_time matches 1.. run function rc:record/event_set
scoreboard players set $rc_event rc_time 0

#Shift
execute if score @s rc_shift matches 1.. if data storage minecraft:animation TempAnimation{Sneaking:1} run data modify storage minecraft:animation TempFrame.Shift set value 1

#Item
execute if data storage minecraft:animation TempAnimation{Item:1} unless data entity @s SelectedItem.tag.Carrot run data modify storage minecraft:animation TempFrame.Item set from entity @s SelectedItem

#Blocks
execute at @s[tag=spawn_blocks] run function rc:record/blocks/check

#Save
data remove storage minecraft:animation TempFrame.TempEvent
data remove storage minecraft:animation TempFrame.TempBlock
data modify storage minecraft:animation TempAnimation.Frames append from storage minecraft:animation TempFrame