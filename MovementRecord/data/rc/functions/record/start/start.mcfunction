#Kill
scoreboard players operation $slot_id rc_id = @s rc_id
execute as @e[tag=record_wait_move] if score @s rc_id = $slot_id rc_id run kill @s
execute as @e[tag=rc_minecart_group] if score @s rc_id = $slot_id rc_id run kill @s

#Start
scoreboard players set @s rc_frames 0
tag @s remove record_get
tag @s remove rc_wait
tag @s add record_start
execute store result score @e[tag=this_rc_data,limit=1] rc_frames run data get storage minecraft:animation TempAnimation.Frequency

#Spawn block markers
execute if data storage minecraft:animation TempAnimation{Placed:1} run tag @s add spawn_blocks
execute if data storage minecraft:animation TempAnimation{Broken:1} run tag @s add spawn_blocks
execute if entity @s[tag=spawn_blocks] run function rc:record/blocks/init

#Items
execute unless data storage minecraft:animation {APIMode:1} if entity @s[type=player,tag=!start_from_api] run function rc:record/start/items

#Message
tellraw @a[tag=rc_debug] ["",{"text":"<RC Debug> ","color":"dark_green","bold":true},{"selector":"@s","color":"gray"},{"text":" started recording with id ","color":"gray"},{"nbt":"TempAnimation.id","storage":"minecraft:animation"}]