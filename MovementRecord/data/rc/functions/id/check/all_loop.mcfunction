scoreboard players add $id rc_id 1
function rc:id/check/check
execute as @e[tag=rc_data] if score @s rc_menu = $id rc_id run scoreboard players set $id rc_menu 0
execute if score $id rc_menu matches 0 run function rc:id/check/all_loop