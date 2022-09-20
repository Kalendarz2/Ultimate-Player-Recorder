#Animation speed
scoreboard players remove $editor rc_time 1

execute if data storage minecraft:animation Edit{Speed:4} run scoreboard players set $editor rc_time 4
execute if data storage minecraft:animation Edit{Speed:3} run scoreboard players set $editor rc_time 2
execute if data storage minecraft:animation Edit{Speed:2} run scoreboard players set $editor rc_time 0

execute if data storage minecraft:animation Edit{Speed:1} if score $editor rc_time matches ..-3 run scoreboard players set $editor rc_time -1
execute if data storage minecraft:animation Edit{Speed:0} if score $editor rc_time matches ..-5 run scoreboard players set $editor rc_time -1

execute if score $editor rc_time matches -1.. run function rc:editor/settings/input/input