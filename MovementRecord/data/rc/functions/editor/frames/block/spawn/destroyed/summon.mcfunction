summon minecraft:falling_block 12587358 3 12587360 {BlockState:{Name:"red_stained_glass"},NoGravity:1,Glowing:1,Time:-30000,Tags:["display_block","destroy_block","frame_general","this_b","selected_block"]}
execute as @e[tag=this_b,limit=1] at @s run function rc:editor/frames/block/spawn/destroyed/data

#Loop
data remove storage minecraft:animation Edit.BrokenData[0]
execute if data storage minecraft:animation Edit.BrokenData[0] run function rc:editor/frames/block/spawn/destroyed/summon