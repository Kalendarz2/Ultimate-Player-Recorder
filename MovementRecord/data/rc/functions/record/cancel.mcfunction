#Kill
scoreboard players set @s[scores={rc_leave=1..}] rc_id 0
scoreboard players operation $slot_id rc_id = @s rc_id
execute as @e[tag=rc_cancel] if score @s rc_id = $slot_id rc_id run kill @s
execute unless entity @e[tag=rc_block_main] run kill @e[tag=rc_block]
kill @e[type=item,nbt={Item:{tag:{Name:1}}}]
kill @e[type=item,nbt={Item:{tag:{Settings:1}}}]
kill @e[type=item,nbt={Item:{tag:{Carrot:1}}}]
kill @e[tag=this_rc_data]

execute unless data storage minecraft:animation {APIMode:1} run tellraw @s {"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"}
clear @s carrot_on_a_stick{Carrot:1}
clear @s written_book{Settings:1}
execute if data storage minecraft:animation {Bukkit:1} run clear @s minecraft:written_book
tag @s remove is_recording
tag @s remove record_get
tag @s remove record_start
tag @s remove spawn_blocks
tag @s remove no_position
tag @s remove rc_wait
bossbar set minecraft:recording players @a[tag=is_recording]

scoreboard players set @s rc_id 0
scoreboard players set @s rc_frames 0
scoreboard players set @s rc_time 0
scoreboard players operation @s[tag=menu_open] menu = @s rc_menu