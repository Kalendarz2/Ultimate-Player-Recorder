scoreboard players set @s[tag=!change_anim] animation 0
scoreboard players set @s pl_speed 0

tag @s remove change_anim
tag @s remove started
tag @s remove anim_from_item
data merge entity @s[tag=noNoAI] {NoAI:0}
tag @s remove noNoAI

data remove storage minecraft:play Animation
data remove storage minecraft:play Info
data remove storage minecraft:play TempFrame
kill @e[tag=this_a]