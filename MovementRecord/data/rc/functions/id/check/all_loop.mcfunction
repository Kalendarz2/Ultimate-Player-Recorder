scoreboard players add $id rc_id 1
function rc:id/check/check
execute if score $id rc_menu matches 0 run function rc:id/check/all_loop