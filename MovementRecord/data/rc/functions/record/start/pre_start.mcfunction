#Tag
tag @s add is_recording

#Manual
scoreboard players operation $id rc_id = @s record
execute unless score $id rc_id matches 1 run function rc:record/start/manual

#Auto
execute if score $id rc_id matches 1 run function rc:id/check/all

execute if entity @s[tag=is_recording] run function rc:record/start/load