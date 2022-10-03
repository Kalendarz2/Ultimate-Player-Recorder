#Store data
scoreboard players operation @s rc_event = @e[tag=this_a,limit=1] rc_event
data modify entity @s crit set from entity @e[tag=this_a,limit=1] crit
data modify entity @s damage set from entity @e[tag=this_a,limit=1] damage
data modify entity @s Potion set from entity @e[tag=this_a,limit=1] Potion

tp @s @e[tag=this_a,limit=1]

#Item
data modify entity @s Item set from entity @e[tag=this_a,limit=1] Item
execute if entity @s[type=item] run function rc:editor/frames/entity/spawn/item

#Rotation
scoreboard players operation @s rc_click = @e[tag=this_a,limit=1] rc_click
scoreboard players operation @s rc_shift = @e[tag=this_a,limit=1] rc_shift

#Projectile
scoreboard players operation @s rc_pos_x = @e[tag=this_a,limit=1] rc_pos_x
scoreboard players operation @s rc_pos_y = @e[tag=this_a,limit=1] rc_pos_y
scoreboard players operation @s rc_pos_z = @e[tag=this_a,limit=1] rc_pos_z

#NBT
data remove storage minecraft:animation Edit.TempData
scoreboard players operation $frame_edit menu = @e[tag=this_a,limit=1] rc_menu
execute as @e[tag=display_entity_nbt] if score @s rc_menu = $frame_edit menu run data modify storage minecraft:animation Edit.TempData set from entity @s data.NBT
execute if data storage minecraft:animation Edit.TempData run function rc:editor/frames/entity/nbt

#Id
scoreboard players operation @s rc_id = @e[tag=this_a,limit=1] rc_id
tag @s remove this_b