#Save blocks
execute at @e[tag=rc_block_main] align xyz run clone ~-5 ~-4 ~-5 ~5 ~6 ~5 12587344 10 12587360

#Get marker position
execute store result score @s rc_pos_x run data get entity @e[tag=rc_block_main,limit=1] Pos[0] 1
execute store result score @s rc_pos_y run data get entity @e[tag=rc_block_main,limit=1] Pos[1] 1
execute store result score @s rc_pos_z run data get entity @e[tag=rc_block_main,limit=1] Pos[2] 1

#Compare
tag @s add this
execute if data storage minecraft:animation TempAnimation{Broken:1} as @e[tag=rc_block] at @s if block ~ ~ ~ air unless block ~ ~12 ~ air run function rc:record/blocks/break
execute if data storage minecraft:animation TempAnimation{Placed:1} as @e[tag=rc_block] at @s unless block ~ ~ ~ air unless blocks ~ ~ ~ ~ ~ ~ ~ ~12 ~ all unless block ~ ~ ~ #minecraft:beds[part=head] unless block ~ ~ ~ #minecraft:doors[half=upper] unless block ~ ~ ~ moving_piston unless block ~ ~ ~ piston_head run function rc:record/blocks/place/place
execute as @e[tag=rc_button] at @s if block ~ ~ ~ #minecraft:buttons[powered=false] run function rc:record/blocks/place/place
execute as @e[tag=rc_button] at @s unless block ~ ~ ~ #minecraft:buttons run kill @s

kill @e[tag=rc_place_blocks]
tag @s remove this
tag @s remove rc_sound
tag @s remove rc_sound2

#Clone blocks
fill 12587344 22 12587360 12587354 32 12587370 air
execute align xyz run clone ~-5 ~-4 ~-5 ~5 ~6 ~5 12587344 22 12587360

tp @e[tag=rc_block_main] @s