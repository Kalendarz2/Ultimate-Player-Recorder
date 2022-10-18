summon marker ~ ~ ~ {Tags:["rc_button","this_button","rc_cancel"]}
scoreboard players operation @e[tag=this_button] rc_id = @a[tag=this] rc_id

#Convert int to double
data modify storage minecraft:animation TempBlock.Button set value [0.0d,0.0d,0.0d]
execute store result storage minecraft:animation TempBlock.Button[0] double 1 run scoreboard players get $rc_block rc_pos_x
execute store result storage minecraft:animation TempBlock.Button[1] double 1 run scoreboard players get $rc_block rc_pos_y
execute store result storage minecraft:animation TempBlock.Button[2] double 1 run scoreboard players get $rc_block rc_pos_z

#Teleport marker
data modify entity @e[tag=this_button,limit=1] Pos set from storage minecraft:animation TempBlock.Button
tag @e[tag=this_button] remove this_button
