#Import data
data modify storage minecraft:animation Import set from entity @s SelectedItem.tag.Animation
execute store result storage minecraft:animation Import.id int 1 run scoreboard players get $id rc_id
data modify storage minecraft:animation Animation append from storage minecraft:animation Import

tellraw @s ["",{"text":"Animation ","color":"yellow"},{"nbt":"Import.Name","storage":"minecraft:animation","bold":true,"color":"aqua"},{"text":" has been successfully imported with id ","color":"yellow"},{"nbt":"Import.id","storage":"minecraft:animation","bold":false,"color":"white"}]
scoreboard players set @s[tag=menu_open] rc_time 100
data remove storage minecraft:animation Import
function rc:id/list/append