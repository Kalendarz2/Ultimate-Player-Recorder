#No tag
scoreboard players set $play_event pl_id 1
execute store result score $play_event pl_id run data get storage minecraft:play TempFrame.Event[0].Anim.Condition

#Compare Tags
execute if score $play_event pl_id matches 1.. run function p:events/anim_as

#Apply animation
execute if score $play_event pl_id matches 0 store result score @s animation run data get storage minecraft:play TempFrame.Event[0].Anim.id