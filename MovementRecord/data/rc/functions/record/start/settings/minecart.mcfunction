#Get command
execute if entity @s[tag=rc_minecart1] run data modify storage minecraft:animation Event.Event1.Action set from entity @s Command
execute if entity @s[tag=rc_minecart2] run data modify storage minecraft:animation Event.Event2.Action set from entity @s Command
execute if entity @s[tag=rc_minecart3] run data modify storage minecraft:animation Event.Event3.Action set from entity @s Command
execute if entity @s[tag=rc_minecart4] run data modify storage minecraft:animation Event.Event4.Action set from entity @s Command

execute if entity @s[tag=rc_minecart1] run data modify storage minecraft:animation Event.Event1.Type set value 1
execute if entity @s[tag=rc_minecart2] run data modify storage minecraft:animation Event.Event2.Type set value 1
execute if entity @s[tag=rc_minecart3] run data modify storage minecraft:animation Event.Event3.Type set value 1
execute if entity @s[tag=rc_minecart4] run data modify storage minecraft:animation Event.Event4.Type set value 1

execute as @p run function rc:record/start/settings/update
kill @s