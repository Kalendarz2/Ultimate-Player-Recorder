data modify entity @s data.Motion set from storage minecraft:animation Edit.EntityData[0].Motion

#Internal id
scoreboard players operation @s rc_shift > @e[tag=editor_entity_data] rc_shift
scoreboard players add @s rc_shift 1
scoreboard players operation @e[tag=this_b,limit=1] rc_shift = @s rc_shift

#Id
scoreboard players operation @s rc_id = @e[tag=this_a,limit=1] rc_id
tag @s remove this_c