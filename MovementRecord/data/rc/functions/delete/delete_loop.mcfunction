#Remove animation
execute store result score $id rc_time run data get storage minecraft:animation DelAnimation[0].id
execute unless score $id rc_time = $id rc_id run data modify storage minecraft:animation Animation append from storage minecraft:animation DelAnimation[0]

#ID list
loot replace entity @s weapon.mainhand loot rc:id_format
execute unless score $id rc_time = $id rc_id run data modify entity @s Tags append from entity @s HandItems[0].tag.display.Name

#Loop
data remove storage minecraft:animation DelAnimation[0]
execute if data storage minecraft:animation DelAnimation[0] run function rc:delete/delete_loop