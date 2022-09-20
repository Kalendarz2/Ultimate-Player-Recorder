#Start animation
execute if entity @s[tag=!started] run function p:start/start

#Save frames
data remove storage minecraft:play TempFrame
data modify storage minecraft:play Info set from entity @e[tag=this_a,tag=info,limit=1] data.Info

execute unless data storage minecraft:play Info{Reverse:1} run data modify storage minecraft:play TempFrame set from entity @e[tag=this_a,tag=frames,limit=1] data.Animation.Frames[0]
execute unless data storage minecraft:play Info{Reverse:1} run data remove entity @e[tag=this_a,tag=frames,limit=1] data.Animation.Frames[0]

execute if data storage minecraft:play Info{Reverse:1} run data modify storage minecraft:play TempFrame set from entity @e[tag=this_a,tag=frames,limit=1] data.Animation.Frames[-1]
execute if data storage minecraft:play Info{Reverse:1} run data remove entity @e[tag=this_a,tag=frames,limit=1] data.Animation.Frames[-1]

#Iterate frames
execute if data storage minecraft:play Info{Position:1} if data storage minecraft:play Info{Relative:0} run data modify entity @s Pos set from storage minecraft:play TempFrame.Pos
execute if data storage minecraft:play Info{Position:1} if data storage minecraft:play Info{Relative:1} if data storage minecraft:play TempFrame run function p:relative_position

execute if data storage minecraft:play Info{Item:1} run data modify entity @s HandItems[0] set from storage minecraft:play TempFrame.Item
execute if data storage minecraft:play Info{Rotation:1} run data modify entity @s Rotation set from storage minecraft:play TempFrame.Rot

#Shift
execute if data storage minecraft:play TempFrame{Shift:1} run tag @s add is_crouching

#Blocks
execute if data storage minecraft:play Info{Placed:1} if data storage minecraft:play TempFrame.Placed[0] run function p:events/place/block
execute if data storage minecraft:play Info{Broken:1} if data storage minecraft:play TempFrame.Broken[0] run function p:events/destroy/block

#Entity
execute at @s if data storage minecraft:play TempFrame.Entity[0] positioned ~ ~1.5 ~ run function p:events/entity/entity

#Events
execute if data storage minecraft:play TempFrame.Event[0] run function p:events/event

#End animation
execute unless entity @e[tag=this_a,limit=1] run function p:end
execute unless data storage minecraft:play TempFrame if data storage minecraft:play Info{Loop:1} run function p:start/start_loop
execute unless data storage minecraft:play TempFrame unless data storage minecraft:play Info{Loop:1} run function p:end

#Loop
scoreboard players remove @s[scores={pl_frequency=1..}] pl_frequency 1
execute if score @s pl_frequency matches 1.. if data storage minecraft:play TempFrame run function p:read