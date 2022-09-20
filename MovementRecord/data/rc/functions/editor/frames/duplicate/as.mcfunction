#Duplicate frame
execute at @s run summon marker ~ ~ ~ {Tags:["frame","frame_general","this_a"]}

data modify entity @e[tag=frame,tag=this_a,limit=1] data.Frame set from entity @s data.Frame
scoreboard players operation @e[tag=frame,tag=this_a] rc_id = @s rc_id
scoreboard players operation @e[tag=frame,tag=this_a] rc_id += $frame_edit rc_shift
tag @e remove this_a