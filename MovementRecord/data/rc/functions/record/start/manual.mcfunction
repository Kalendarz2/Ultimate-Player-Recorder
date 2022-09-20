function rc:id/check/check
execute if score $id rc_menu matches 0 run function rc:record/cancel
execute if score $id rc_menu matches 0 run tellraw @s ["",{"text":"Id ","color":"dark_red"},{"score":{"name":"@s","objective":"record"},"color":"dark_red"},{"text":" is already in use! Execute this command without any arguments, to generate id automaticly.","color":"dark_red"}]