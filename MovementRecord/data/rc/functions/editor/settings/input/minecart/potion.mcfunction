#Store data
execute as @e[tag=selected_entity,type=potion] run data modify entity @s Item.tag.Potion set from entity @e[tag=edit_minecart11,limit=1] Command
execute as @e[tag=selected_entity,type=arrow] run data modify entity @s Potion set from entity @e[tag=edit_minecart11,limit=1] Command

kill @s