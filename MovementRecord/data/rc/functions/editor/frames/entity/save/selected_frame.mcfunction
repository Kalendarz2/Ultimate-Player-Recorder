tag @s add save_blocks_temp
execute if entity @s[tag=has_entity] run function rc:editor/frames/entity/save/save
tag @s remove save_blocks_temp