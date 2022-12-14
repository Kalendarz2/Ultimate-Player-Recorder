#Manual
scoreboard players operation $id rc_id = @s paste
execute unless score $id rc_id matches 1 run function rc:id/check/check_extended
execute unless score $id rc_id matches 1 if score $id_out rc_id matches 1 run tellraw @s ["",{"text":"Id ","color":"dark_red"},{"score":{"name":"@s","objective":"paste"},"color":"dark_red"},{"text":" is already in use! Execute this command without any arguments, to generate id automaticly.","color":"dark_red"}]

#Auto
execute if score $id rc_id matches 1 run function rc:id/check/all

execute if score $id_out rc_id matches 0 run function rc:clipboard/success
execute if score $id_out rc_id matches 0 run tellraw @s ["",{"text":"Animation ","color":"yellow"},{"nbt":"Clipboard.Name","storage":"minecraft:animation","bold":true,"color":"aqua"},{"text":" has been successfully pasted with id ","color":"yellow"},{"nbt":"Clipboard.id","storage":"minecraft:animation","bold":false,"color":"white"}]