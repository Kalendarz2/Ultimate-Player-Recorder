#Select holder by id
scoreboard players operation @e[tag=animation_holder] pl_id2 = @s pl_id
execute as @e[tag=animation_holder] if score @s pl_id = @s pl_id2 run tag @s add this_a
tag @e[tag=this_a] remove kill_a
tp @e[tag=this_a] @s

#Animation speed
scoreboard players remove @s pl_frequency 1

scoreboard players set @s[scores={speed=4..}] pl_frequency 4
scoreboard players set @s[scores={speed=3}] pl_frequency 2
scoreboard players set @s[scores={speed=2}] pl_frequency 0

scoreboard players set @s[scores={speed=1,pl_frequency=..-3}] pl_frequency -1
scoreboard players set @s[scores={speed=..0,pl_frequency=..-5}] pl_frequency -1

#Read animation
execute if entity @s[tag=!stop,scores={pl_frequency=-1..}] run function p:read

#Change animation
execute unless score @s animation = @s pl_animation run tag @s add change_anim
execute unless score @s animation = @s pl_animation run function p:end

tag @e[tag=this_a] remove this_a