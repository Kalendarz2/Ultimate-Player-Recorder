#Import data
execute store result storage minecraft:animation Clipboard.id int 1 run scoreboard players get $id rc_id
data modify storage minecraft:animation Animation append from storage minecraft:animation Clipboard

scoreboard players set @s[tag=menu_open] rc_time 100
function rc:id/list/append