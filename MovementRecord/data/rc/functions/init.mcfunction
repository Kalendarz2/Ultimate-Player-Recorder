#First init
execute unless data storage minecraft:animation DPCheck run function rc:first_init

#Init
data remove storage minecraft:animation Clipboard
scoreboard players reset $id
scoreboard players reset $menu
scoreboard players reset $dp_check

scoreboard players set $menu rc_menu 5

scoreboard players set $2 rc_id 2
scoreboard players set $10 rc_id 10
scoreboard players set $1000 rc_id 1000