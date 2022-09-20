#Manual
scoreboard players operation $id rc_id = @s paste
execute unless score $id rc_id matches 1 run function rc:id/check/check
execute unless score $id rc_id matches 1 if score $id rc_menu matches 0 run tellraw @s ["",{"text":"Id ","color":"dark_red"},{"score":{"name":"@s","objective":"paste"},"color":"dark_red"},{"text":" is already in use! Execute this command without any arguments, to generate id automaticly.","color":"dark_red"}]

#Auto
execute if score $id rc_id matches 1 run function rc:id/check/all

execute if score $id rc_menu matches 1.. run function rc:clipboard/success