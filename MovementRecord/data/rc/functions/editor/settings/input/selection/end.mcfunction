tag @e remove frame_selection_end
tag @s add frame_selection_end

execute if score @s rc_id < @e[tag=frame_selection_start,limit=1] rc_id run function rc:editor/settings/input/selection/end_switch