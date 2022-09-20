summon minecraft:falling_block 12587358 3 12587360 {NoGravity:1,Glowing:1,Time:-30000,Tags:["display_block","frame_general","this_b","selected_block"]}
execute as @e[tag=this_b,limit=1] at @s run function rc:editor/frames/block/spawn/placed/data

#Loop
data remove storage minecraft:animation Edit.PlacedData[0]
execute if data storage minecraft:animation Edit.PlacedData[0] run function rc:editor/frames/block/spawn/placed/summon