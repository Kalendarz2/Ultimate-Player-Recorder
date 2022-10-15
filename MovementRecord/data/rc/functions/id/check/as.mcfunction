data modify entity @s Tags set from storage minecraft:animation idList
loot replace entity @s weapon.mainhand loot rc:check_id

execute store result score $id_out rc_id run data get entity @s Tags
data modify entity @s Tags append from entity @s HandItems[0].tag.display.Name
execute store result score $id rc_menu run data get entity @s Tags