#Get hardcoded data
execute if score $id rc_id matches 1..25 run function rc:id/get/hardcoded1
execute if score $id rc_id matches 26..50 run function rc:id/get/hardcoded2
execute if score $id rc_id matches 51..75 run function rc:id/get/hardcoded3
execute if score $id rc_id matches 76..100 run function rc:id/get/hardcoded4
execute if score $id rc_id matches 101..125 run function rc:id/get/hardcoded5
execute if score $id rc_id matches 126..150 run function rc:id/get/hardcoded6
execute if score $id rc_id matches 151..175 run function rc:id/get/hardcoded7
execute if score $id rc_id matches 176..200 run function rc:id/get/hardcoded8
data modify storage minecraft:animation Menu set value []
data modify storage minecraft:animation Menu append from storage minecraft:animation GetAnimation

#Assign data to slot
execute if data storage minecraft:animation GetAnimation run function rc:menu/assign/assign
data remove storage minecraft:animation GetAnimation

#Loop 5 times
scoreboard players remove $id rc_id 1
execute if score $id rc_id >= $menu rc_menu run function rc:menu/load_hardcoded