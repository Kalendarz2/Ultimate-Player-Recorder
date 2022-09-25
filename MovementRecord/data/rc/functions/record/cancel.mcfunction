tellraw @s {"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"}
bossbar set minecraft:recording players
kill @e[type=item,nbt={Item:{tag:{Name:1}}}]
kill @e[type=item,nbt={Item:{tag:{Settings:1}}}]
kill @e[type=item,nbt={Item:{tag:{Carrot:1}}}]
kill @e[tag=rc_minecart_group]
kill @e[tag=rc_block_check]
kill @e[tag=record_wait_move]
clear @a carrot_on_a_stick{Carrot:1}
clear @a written_book{Settings:1}
execute if data storage minecraft:animation {Bukkit:1} run clear @s minecraft:written_book
tag @s remove is_recording
tag @s remove record_get
tag @s remove record_start
tag @s remove spawn_blocks
tag @s remove no_position
tag @s remove rc_wait

scoreboard players set @s rc_frames 0
scoreboard players set @s rc_time 0
scoreboard players operation @s[tag=menu_open] menu = @s rc_menu