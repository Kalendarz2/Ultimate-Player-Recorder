#Get animation id
function rc:id/get/get

#Save to clipboard
data modify storage minecraft:animation Clipboard set from storage minecraft:animation GetAnimation

scoreboard players set @s[tag=menu_open] rc_time 100