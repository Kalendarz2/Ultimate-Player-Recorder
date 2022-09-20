#Replace data in older frame
execute if score @s rc_frames matches 2 run data modify storage minecraft:animation TempAnimation.Frames[-1].Entity set from storage minecraft:animation TempFrame.Entity
execute if score @s rc_frames matches 3 run data modify storage minecraft:animation TempAnimation.Frames[-2].Entity set from storage minecraft:animation TempFrame.Entity
execute if score @s rc_frames matches 4 run data modify storage minecraft:animation TempAnimation.Frames[-3].Entity set from storage minecraft:animation TempFrame.Entity
execute if score @s rc_frames matches 5 run data modify storage minecraft:animation TempAnimation.Frames[-4].Entity set from storage minecraft:animation TempFrame.Entity
execute if score @s rc_frames matches 6.. run data modify storage minecraft:animation TempAnimation.Frames[-5].Entity set from storage minecraft:animation TempFrame.Entity

#Bypass frame clear
execute if score @s rc_frames matches 1 run summon marker ~ ~ ~ {Tags:["temp_entity_holder"]}
execute if score @s rc_frames matches 1 run data modify entity @e[tag=temp_entity_holder,limit=1] data.Entity set from storage minecraft:animation TempFrame.Entity
