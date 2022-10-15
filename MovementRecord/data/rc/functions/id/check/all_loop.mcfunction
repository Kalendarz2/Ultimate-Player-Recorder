scoreboard players add $id rc_id 1
function rc:id/check/check_extended
execute if score $id_out rc_id matches 1 run function rc:id/check/all_loop