#Unstack
scoreboard players operation @s menu > @e[tag=display_entity,type=item] menu
scoreboard players add @s menu 1

execute store result entity @s Item.tag.Unstack int 1 run scoreboard players get @s menu