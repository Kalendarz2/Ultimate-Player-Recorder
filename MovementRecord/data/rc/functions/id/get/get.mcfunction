#Get hardcoded id (much better optimization)
execute if score $id rc_id matches 1..25 run function rc:id/get/hardcoded1
execute if score $id rc_id matches 26..50 run function rc:id/get/hardcoded2
execute if score $id rc_id matches 51..75 run function rc:id/get/hardcoded3
execute if score $id rc_id matches 76..100 run function rc:id/get/hardcoded4
execute if score $id rc_id matches 101..125 run function rc:id/get/hardcoded5
execute if score $id rc_id matches 126..150 run function rc:id/get/hardcoded6
execute if score $id rc_id matches 151..175 run function rc:id/get/hardcoded7
execute if score $id rc_id matches 176..200 run function rc:id/get/hardcoded8

#Get id by iterating
execute if score $id rc_id matches 201.. run data modify storage minecraft:animation GetAnimation set from storage minecraft:animation Animation
execute if score $id rc_id matches 201.. run function rc:id/get/loop
execute if score $id rc_id matches 201.. run data modify storage minecraft:animation GetAnimation set from storage minecraft:animation GetAnimation[0]