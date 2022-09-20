#Get hardcoded data
execute if score $id rc_id matches 1..100 run function rc:id/get/hardcoded1
execute if score $id rc_id matches 101..200 run function rc:id/get/hardcoded2
data modify storage minecraft:animation Menu set value []
data modify storage minecraft:animation Menu append from storage minecraft:animation GetAnimation

#Assign data to slot
execute if data storage minecraft:animation GetAnimation run function rc:menu/assign/assign
data remove storage minecraft:animation GetAnimation

#Loop 5 times
scoreboard players remove $id rc_id 1
execute if score $id rc_id >= $menu rc_menu run function rc:menu/load_hardcoded