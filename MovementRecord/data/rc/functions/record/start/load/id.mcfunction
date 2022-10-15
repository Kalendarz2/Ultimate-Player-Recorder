#Id of simultaneous recordings
tag @s add this_load_id
scoreboard players set $slot_id rc_id 0
function rc:record/start/load/id_loop
scoreboard players operation @s rc_id = $slot_id rc_id
execute if score @s rc_id matches 11.. run tag @s add no_id_slot

#Load
execute if score @s rc_id matches ..10 run function rc:record/start/load/load

#No id slot
execute if score @s rc_id matches 11.. run function rc:record/start/load/cancel