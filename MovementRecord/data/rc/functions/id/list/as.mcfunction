#Copy id list
data modify entity @s Tags set from storage minecraft:animation idList

#Append tags
loot replace entity @s weapon.mainhand loot rc:id_format
data modify entity @s Tags append from entity @s HandItems[0].tag.display.Name
data modify storage minecraft:animation idList set from entity @s Tags

kill @s