tag @e remove frame_selection_start
tag @s add frame_selection_start

execute if score @s rc_id > @e[tag=frame_selection_end,limit=1] rc_id run function rc:editor/settings/input/selection/start_switch