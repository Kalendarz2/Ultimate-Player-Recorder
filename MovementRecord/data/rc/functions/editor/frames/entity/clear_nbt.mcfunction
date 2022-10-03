#Clear NBT marker
scoreboard players operation $frame_edit menu = @s rc_menu
execute as @e[tag=display_entity_nbt] if score @s rc_menu = $frame_edit menu run kill @s

scoreboard players set @s rc_menu 0
data merge entity @s {CustomNameVisible:0,CustomName:""}