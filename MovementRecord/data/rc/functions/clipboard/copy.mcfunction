#Check id
scoreboard players operation $id rc_id = @s copy
function rc:id/check/check

#No id
execute if score $id_out rc_id matches 0 run tellraw @s ["",{"text":"There is no animation with id ","color":"dark_red"},{"score":{"name":"@s","objective":"copy"},"color":"dark_red"},{"text":". Use /trigger menu to see all available animations.","color":"dark_red"}]

#Id
execute if score $id_out rc_id matches 1 run function rc:clipboard/save