#Check id
scoreboard players operation $id rc_id = @s edit
function rc:id/check/check

#No id
execute if score $id rc_menu matches 1.. run tellraw @s ["",{"text":"There is no animation with id ","color":"dark_red"},{"score":{"name":"@s","objective":"edit"},"color":"dark_red"},{"text":". Use /trigger menu to see all available animations.","color":"dark_red"}]

#Id
execute if score $id rc_menu matches 0 run function rc:editor/start/load