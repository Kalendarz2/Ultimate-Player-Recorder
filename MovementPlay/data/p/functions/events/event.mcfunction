#Events
execute if data storage minecraft:play TempFrame.Event[0].Command run function p:events/command
execute if data storage minecraft:play TempFrame.Event[0].Sync run tag @s add rc_animation_trigger
execute if data storage minecraft:play TempFrame.Event[0].Score store result score @s score run data get storage minecraft:play TempFrame.Event[0].Score
execute if data storage minecraft:play TempFrame.Event[0].Anim run function p:events/anim

#Remove data
data remove storage minecraft:play TempFrame.Event[0]
execute if data storage minecraft:play TempFrame.Event[0] run function p:events/event