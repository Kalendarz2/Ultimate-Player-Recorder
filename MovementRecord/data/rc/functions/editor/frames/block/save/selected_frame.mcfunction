tag @s add save_blocks_temp
execute if entity @s[tag=has_block] run function rc:editor/frames/block/save/placed_main
execute if entity @s[tag=remove_block] run function rc:editor/frames/block/save/destroyed_main
tag @s remove save_blocks_temp