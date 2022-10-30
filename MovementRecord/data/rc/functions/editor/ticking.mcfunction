#Animation speed
scoreboard players remove $editor rc_time 1

execute if data storage minecraft:animation Edit{Speed:2} run scoreboard players set $editor rc_time 4
execute if data storage minecraft:animation Edit{Speed:1} run scoreboard players set $editor rc_time 2
execute if data storage minecraft:animation Edit{Speed:0} run scoreboard players set $editor rc_time 0

execute if data storage minecraft:animation Edit{Speed:-1} if score $editor rc_time matches ..-3 run scoreboard players set $editor rc_time -1
execute if data storage minecraft:animation Edit{Speed:-2} if score $editor rc_time matches ..-5 run scoreboard players set $editor rc_time -1
execute if data storage minecraft:animation Edit{Speed:-3} if score $editor rc_time matches ..-11 run scoreboard players set $editor rc_time -1
execute if data storage minecraft:animation Edit{Speed:-4} if score $editor rc_time matches ..-21 run scoreboard players set $editor rc_time -1
execute if data storage minecraft:animation Edit{Speed:-5} if score $editor rc_time matches ..-41 run scoreboard players set $editor rc_time -1
execute if data storage minecraft:animation Edit{Speed:-6} if score $editor rc_time matches ..-81 run scoreboard players set $editor rc_time -1

execute if score $editor rc_time matches -1.. run function rc:editor/settings/input/input