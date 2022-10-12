#First init
execute unless data storage minecraft:animation DPCheck run function rc:first_init

#Init
data remove storage minecraft:animation Clipboard
scoreboard players reset $id
scoreboard players reset $menu
scoreboard players reset $dp_check

scoreboard players set $menu rc_menu 5

scoreboard players set $2 rc_id 2
scoreboard players set $4 rc_id 4
scoreboard players set $10 rc_id 10
scoreboard players set $91 rc_id 91
scoreboard players set $98 rc_id 98
scoreboard players set $99 rc_id 99
scoreboard players set $100 rc_id 100
scoreboard players set $1000 rc_id 1000

#Check for Bukkit
forceload add 12587359 12587360
fill 12587358 9 12587360 12587358 10 12587360 air
setblock 12587358 9 12587360 bedrock
summon arrow 12587358 10 12587360 {Motion:[0.0,-10.0,0.0],Tags:["rc_bukkit_check"]}

schedule function rc:bukkit 10t replace