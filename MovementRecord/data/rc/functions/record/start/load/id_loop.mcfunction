scoreboard players add $slot_id rc_id 1
execute as @e[tag=is_recording,tag=!this_load_id] if score @s rc_id = $slot_id rc_id run function rc:record/start/load/id_loop