execute store result score $id rc_time run data get storage minecraft:animation GetAnimation[0].id
execute unless score $id rc_time = $id rc_id run data remove storage minecraft:animation GetAnimation[0]
execute unless score $id rc_time = $id rc_id run function rc:id/get/loop