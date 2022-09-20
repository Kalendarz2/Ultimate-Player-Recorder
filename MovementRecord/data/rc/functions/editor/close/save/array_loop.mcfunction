execute store result score $id rc_time run data get storage minecraft:animation EditAnimation[0].id
execute if score $id rc_time = $editor rc_id run data modify storage minecraft:animation Animation append from storage minecraft:animation Edit
execute unless score $id rc_time = $editor rc_id run data modify storage minecraft:animation Animation append from storage minecraft:animation EditAnimation[0]
data remove storage minecraft:animation EditAnimation[0]

execute if data storage minecraft:animation EditAnimation[0] run function rc:editor/close/save/array_loop