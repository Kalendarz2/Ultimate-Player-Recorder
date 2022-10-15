#Save blocks
scoreboard players operation $slot_id rc_id = @s rc_id
execute as @e[tag=rc_block_main] if score @s rc_id = $slot_id rc_id run tag @s add this_rc_block_main
execute at @e[tag=this_rc_block_main] align xyz run clone ~-5 ~-4 ~-5 ~5 ~6 ~5 12587344 10 12587360
execute positioned 12587344 10 12587360 run kill @e[type=item,distance=..200]

#Get marker position
execute store result score @s rc_pos_x run data get entity @e[tag=this_rc_block_main,limit=1] Pos[0] 1
execute store result score @s rc_pos_y run data get entity @e[tag=this_rc_block_main,limit=1] Pos[1] 1
execute store result score @s rc_pos_z run data get entity @e[tag=this_rc_block_main,limit=1] Pos[2] 1

#Compare
tag @s add this
execute if data storage minecraft:animation TempAnimation{Broken:1} run function rc:record/storage_slot/blocks/compare_break
execute if data storage minecraft:animation TempAnimation{Placed:1} run function rc:record/storage_slot/blocks/compare_place
execute as @e[tag=rc_button] if score @s rc_id = $slot_id rc_id at @s if block ~ ~ ~ #minecraft:buttons[powered=false] run function rc:record/blocks/place/place
execute as @e[tag=rc_button] if score @s rc_id = $slot_id rc_id at @s unless block ~ ~ ~ #minecraft:buttons run kill @s

tag @s remove this
tag @s remove rc_sound
tag @s remove rc_sound2

#Clone blocks
execute at @s align xyz run function rc:record/storage_slot/blocks/clone

tp @e[tag=this_rc_block_main] @s
tag @e[tag=this_rc_block_main] remove this_rc_block_main