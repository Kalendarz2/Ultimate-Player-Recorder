#Reload animation id
execute unless entity @s[tag=anim_from_item] run data modify storage minecraft:play Animation set from storage minecraft:animation Animation
execute unless entity @s[tag=anim_from_item] run function p:start/load_anim
execute unless entity @s[tag=anim_from_item] run data remove storage minecraft:play Animation

#Reload item animation
execute if entity @s[tag=anim_from_item] as @e[tag=this_a,tag=frames,limit=1] run data modify entity @s data.Animation set from entity @s data.LoopAnimation

#Relative animation
execute if data storage minecraft:play Info{Relative:1} if data storage minecraft:play Info{Beginning:0} run function p:start/relative_init

#Animation speed
scoreboard players set @s[scores={speed=..1}] pl_frequency -1000