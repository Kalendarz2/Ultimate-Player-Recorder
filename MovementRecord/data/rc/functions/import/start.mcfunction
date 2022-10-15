#Manual
scoreboard players operation $id rc_id = @s import
execute unless score $id rc_id matches 1 run function rc:id/check/check_extended
execute unless score $id rc_id matches 1 if score $id_out rc_id matches 1 run tellraw @s ["",{"text":"Id ","color":"dark_red"},{"score":{"name":"@s","objective":"import"},"color":"dark_red"},{"text":" is already in use! Execute this command without any arguments, to generate id automaticly.","color":"dark_red"}]

#Auto
execute if score $id rc_id matches 1 run function rc:id/check/all

execute if score $id_out rc_id matches 0 run function rc:import/success