#Check id
scoreboard players operation $id rc_id = @s edit
function rc:id/check/check

#No id
execute if score $id rc_menu matches 1.. run tellraw @s ["",{"text":"There is no animation with id ","color":"dark_red"},{"score":{"name":"@s","objective":"edit"},"color":"dark_red"},{"text":". Use /trigger menu to see all available animations.","color":"dark_red"}]

#Id
execute if score $id rc_menu matches 0 unless entity @e[tag=editor] run function rc:editor/start/load
execute if score $id rc_menu matches 0 if entity @e[tag=editor] run scoreboard players set @s rc_time 100
execute if score $id rc_menu matches 0 if entity @e[tag=editor] run tellraw @s ["",{"text":"Another player is already editing an animation. Only one editor can be open at the same time.","color":"dark_red"}]