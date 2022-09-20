scoreboard players add $rc_tick rc_time 1
execute if score $rc_tick rc_id matches 1 if score $rc_tick rc_time matches 2.. run scoreboard players set $rc_tick rc_time 0
execute if score $rc_tick rc_id matches 2 if score $rc_tick rc_time matches 4.. run scoreboard players set $rc_tick rc_time 0
execute if score $rc_tick rc_id matches 3 if score $rc_tick rc_time matches 10.. run scoreboard players set $rc_tick rc_time 0
execute if score $rc_tick rc_id matches 4 if score $rc_tick rc_time matches 20.. run scoreboard players set $rc_tick rc_time 0
execute if score $rc_tick rc_id matches 5 if score $rc_tick rc_time matches 40.. run scoreboard players set $rc_tick rc_time 0
execute if score $rc_tick rc_id matches 6 if score $rc_tick rc_time matches 80.. run scoreboard players set $rc_tick rc_time 0