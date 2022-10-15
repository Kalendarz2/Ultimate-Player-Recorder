#Manual
scoreboard players operation $id rc_id = @s record
execute unless score $id rc_id matches 1 run function rc:id/check/check_extended
execute unless score $id rc_id matches 1 if score $id_out rc_id matches 1 run function rc:record/start/cancel

#Auto
execute if score $id rc_id matches 1 run function rc:id/check/all

execute if score $id_out rc_id matches 0 run function rc:record/start/load/id