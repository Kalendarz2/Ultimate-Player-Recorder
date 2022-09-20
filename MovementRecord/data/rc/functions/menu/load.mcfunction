execute store result score $id rc_id run data get storage minecraft:animation Menu[0].id
execute if score $id rc_id >= $menu rc_menu if score $id rc_id <= $menu rc_id run function rc:menu/assign/assign
data remove storage minecraft:animation Menu[0]
execute if data storage minecraft:animation Menu[0] run function rc:menu/load