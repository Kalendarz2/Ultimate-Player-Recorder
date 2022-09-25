#Cancel
execute if data storage minecraft:animation {Bukkit:0} unless data entity @s Inventory[{tag:{Name:1}}] run function rc:record/cancel
execute unless data entity @s Inventory[{tag:{Settings:1}}] run function rc:record/cancel

#Start
execute if data storage minecraft:animation {Bukkit:0} if data entity @s Inventory[{id:"minecraft:written_book",tag:{Name:1}}] run function rc:record/start/settings/trigger
execute if data storage minecraft:animation {Bukkit:1} if data entity @s Inventory[{id:"minecraft:written_book",tag:{pages:['{"text":"§2Sign this book with the name of your animation"}']}}] run function rc:record/start/settings/trigger
tag @e remove rc_animation_trigger

#Minecart
execute as @e[tag=rc_minecart_stand] at @s unless entity @p[distance=..5] run kill @e[tag=rc_minecart_group]
execute as @e[tag=rc_minecart_stand] at @s unless entity @e[tag=rc_minecart,distance=..1] run kill @e[tag=rc_minecart_group]

execute as @e[tag=rc_minecart] unless entity @s[nbt={Command:""}] unless entity @s[nbt={Command:"execute as @e[tag=pl_command] if score @s pl_id = @e[tag=command_marker,limit=1,sort=nearest] pl_id2 at @s run <COMMAND>"}] run tag @s add minecart_command
execute as @e[tag=rc_minecart1,tag=minecart_command] run data modify storage minecraft:animation Event.Event1.Action set from entity @s Command
execute as @e[tag=rc_minecart2,tag=minecart_command] run data modify storage minecraft:animation Event.Event2.Action set from entity @s Command
execute as @e[tag=rc_minecart3,tag=minecart_command] run data modify storage minecraft:animation Event.Event3.Action set from entity @s Command
execute as @e[tag=rc_minecart4,tag=minecart_command] run data modify storage minecraft:animation Event.Event4.Action set from entity @s Command

execute as @e[tag=rc_minecart1,tag=minecart_command] run data modify storage minecraft:animation Event.Event1.Type set value 1
execute as @e[tag=rc_minecart2,tag=minecart_command] run data modify storage minecraft:animation Event.Event2.Type set value 1
execute as @e[tag=rc_minecart3,tag=minecart_command] run data modify storage minecraft:animation Event.Event3.Type set value 1
execute as @e[tag=rc_minecart4,tag=minecart_command] run data modify storage minecraft:animation Event.Event4.Type set value 1

execute if entity @e[tag=rc_minecart,tag=minecart_command] run function rc:record/start/settings/update
execute if entity @e[tag=rc_minecart,tag=minecart_command] run kill @e[tag=rc_minecart_group]

#Settings book
scoreboard players enable @s settings
execute if score @s settings matches 1.. run function rc:record/start/settings/update