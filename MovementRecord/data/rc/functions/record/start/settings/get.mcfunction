#Load TempAnimation
scoreboard players operation $slot_id rc_id = @s rc_id
execute as @e[tag=rc_data] if score @s rc_id = $slot_id rc_id run tag @s add this_rc_data
tag @e[tag=this_rc_data] remove rc_kill
data modify storage minecraft:animation TempAnimation set from entity @e[tag=this_rc_data,limit=1] data.Info

#Cancel
execute if data storage minecraft:animation {Bukkit:0} unless data entity @s Inventory[{tag:{Name:1}}] run function rc:record/cancel
execute unless data entity @s Inventory[{tag:{Settings:1}}] run function rc:record/cancel

#Start
execute if data storage minecraft:animation {Bukkit:0} if data entity @s Inventory[{id:"minecraft:written_book",tag:{Name:1}}] run function rc:record/start/settings/trigger
execute if data storage minecraft:animation {Bukkit:1} if data entity @s Inventory[{id:"minecraft:written_book",tag:{pages:['{"text":"§2Sign this book with the name of your animation"}']}}] run function rc:record/start/settings/trigger
tag @e remove rc_animation_trigger

#Minecart
scoreboard players operation $slot_id rc_id = @s rc_id
execute as @e[tag=rc_minecart] if score @s rc_id = $slot_id rc_id unless entity @s[nbt={Command:""}] unless entity @s[nbt={Command:"execute as @e[tag=pl_command] if score @s pl_id = @e[tag=command_marker,limit=1,sort=nearest] pl_id2 at @s run <COMMAND>"}] run tag @s add minecart_command
execute at @s as @e[tag=minecart_command] run function rc:record/start/settings/minecart

execute as @e[tag=rc_minecart_stand] if score @s rc_id = $slot_id rc_id at @s unless entity @p[distance=..5] run kill @e[tag=rc_minecart_group,distance=..2]
execute as @e[tag=rc_minecart_stand] if score @s rc_id = $slot_id rc_id at @s unless entity @e[tag=rc_minecart,distance=..1] run kill @s

#Settings book
scoreboard players enable @s settings
execute if score @s settings matches 1.. run function rc:record/start/settings/update

#Save TempAnimation
data modify entity @e[tag=this_rc_data,limit=1] data.Info set from storage minecraft:animation TempAnimation
tag @e[tag=this_rc_data] remove this_rc_data