#Get hardcoded id (much better optimization)
execute if score $id rc_id matches 1..100 run function rc:id/get/hardcoded1
execute if score $id rc_id matches 101..200 run function rc:id/get/hardcoded2

#Get id by iterating
execute if score $id rc_id matches 201.. run data modify storage minecraft:animation GetAnimation set from storage minecraft:animation Animation
execute if score $id rc_id matches 201.. run function rc:id/get/loop
execute if score $id rc_id matches 201.. run data modify storage minecraft:animation GetAnimation set from storage minecraft:animation GetAnimation[0]