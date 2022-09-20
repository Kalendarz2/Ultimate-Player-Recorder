scoreboard players add @s rc_time 1
execute if score @s rc_time matches 2 store success score @s rc_shift run forceload add ~ ~1000000
execute if score @s rc_time matches 2 run forceload add ~ ~1000000
execute if score @s rc_time matches 2 run tp @s ~ ~ ~1000000
execute if score @s rc_time matches 20 run tp @s ~ ~ ~-1000000
execute if score @s rc_time matches 20 if score @s rc_shift matches 1.. at @s run forceload remove ~ ~1000000
scoreboard players set @s[scores={rc_time=20..}] rc_time 0
