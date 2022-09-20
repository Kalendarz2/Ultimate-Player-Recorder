#Get animation id
function rc:id/get/get

#Save to clipboard
data modify storage minecraft:animation Clipboard set from storage minecraft:animation GetAnimation
tellraw @s ["",{"text":"Animation ","color":"yellow"},{"nbt":"GetAnimation.Name","storage":"minecraft:animation","bold":true,"color":"aqua"},{"text":" has been saved to the clipboard.","color":"yellow"}]

#Reset
scoreboard players set @s[tag=menu_open] rc_time 100
data remove storage minecraft:animation GetAnimation