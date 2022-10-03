#Summon entity
execute store result score @s[tag=frame] rc_event run data get storage minecraft:animation Edit.EntityData[0].Type
execute if score @s rc_event matches 1 run summon arrow 12587358 -70 12587360 {NoGravity:1,Glowing:1,Tags:["this_b","display_entity","selected_entity","frame_general"]}
execute if score @s rc_event matches 2 run summon spectral_arrow 12587358 -70 12587360 {NoGravity:1,Glowing:1,Tags:["this_b","display_entity","selected_entity","frame_general"]}
execute if score @s rc_event matches 3 run summon trident 12587358 -70 12587360 {NoGravity:1,Glowing:1,Tags:["this_b","display_entity","selected_entity","frame_general"]}

execute if score @s rc_event matches 4 run summon snowball 12587358 -70 12587360 {NoGravity:1,Glowing:1,Tags:["this_b","display_entity","selected_entity","frame_general"]}
execute if score @s rc_event matches 5 run summon egg 12587358 -70 12587360 {NoGravity:1,Glowing:1,Tags:["this_b","display_entity","selected_entity","frame_general"]}
execute if score @s rc_event matches 6 run summon ender_pearl 12587358 -70 12587360 {NoGravity:1,Glowing:1,Tags:["this_b","display_entity","selected_entity","frame_general"]}
execute if score @s rc_event matches 7 run summon potion 12587358 -70 12587360 {NoGravity:1,Glowing:1,Tags:["this_b","display_entity","selected_entity","frame_general"]}
execute if score @s rc_event matches 8 run summon experience_bottle 12587358 -70 12587360 {NoGravity:1,Glowing:1,Tags:["this_b","display_entity","selected_entity","frame_general"]}

execute if score @s rc_event matches 9 run summon item 12587358 -70 12587360 {NoGravity:1,Glowing:1,Tags:["this_b","display_entity","selected_entity","frame_general"],Item:{id:"stick",Count:1b}}

execute if score @s rc_event matches 10 run summon tnt 12587358 -70 12587360 {NoGravity:1,Glowing:1,Tags:["this_b","display_entity","selected_entity","frame_general"]}
execute if score @s rc_event matches 11 run summon boat 12587358 -70 12587360 {NoGravity:1,Glowing:1,Tags:["this_b","display_entity","selected_entity","frame_general"]}
execute if score @s rc_event matches 12 run summon chest_boat 12587358 -70 12587360 {NoGravity:1,Glowing:1,Tags:["this_b","display_entity","selected_entity","frame_general"]}
execute if score @s rc_event matches 13 run summon minecart 12587358 -70 12587360 {NoGravity:1,Glowing:1,Tags:["this_b","display_entity","selected_entity","frame_general"]}
execute if score @s rc_event matches 14 run summon chest_minecart 12587358 -70 12587360 {NoGravity:1,Glowing:1,Tags:["this_b","display_entity","selected_entity","frame_general"]}
execute if score @s rc_event matches 15 run summon command_block_minecart 12587358 -70 12587360 {NoGravity:1,Glowing:1,Tags:["this_b","display_entity","selected_entity","frame_general"]}
execute if score @s rc_event matches 16 run summon furnace_minecart 12587358 -70 12587360 {NoGravity:1,Glowing:1,Tags:["this_b","display_entity","selected_entity","frame_general"]}
execute if score @s rc_event matches 17 run summon hopper_minecart 12587358 -70 12587360 {NoGravity:1,Glowing:1,Tags:["this_b","display_entity","selected_entity","frame_general"]}
execute if score @s rc_event matches 18 run summon spawner_minecart 12587358 -70 12587360 {NoGravity:1,Glowing:1,Tags:["this_b","display_entity","selected_entity","frame_general"]}
execute if score @s rc_event matches 19 run summon tnt_minecart 12587358 -70 12587360 {NoGravity:1,Glowing:1,Tags:["this_b","display_entity","selected_entity","frame_general"]}
execute if score @s rc_event matches 20 run summon end_crystal 12587358 -70 12587360 {NoGravity:1,Glowing:1,Tags:["this_b","display_entity","selected_entity","frame_general"]}
execute if score @s rc_event matches 21 run summon eye_of_ender 12587358 -70 12587360 {NoGravity:1,Glowing:1,Tags:["this_b","display_entity","selected_entity","frame_general"]}
execute if score @s rc_event matches 22 run summon firework_rocket 12587358 -70 12587360 {NoGravity:1,Glowing:1,Tags:["this_b","display_entity","selected_entity","frame_general"]}
execute if score @s rc_event matches 23 run summon item_frame 12587358 -70 12587360 {NoGravity:1,Glowing:1,Tags:["this_b","display_entity","selected_entity","frame_general"]}

#Store
execute if entity @s[tag=frame] as @e[tag=this_b,limit=1] at @s run function rc:editor/frames/entity/spawn/data
execute if entity @s[tag=display_entity] as @e[tag=this_b,limit=1] at @s run function rc:editor/frames/entity/duplicate_data

#Loop
execute if entity @s[tag=frame] run data remove storage minecraft:animation Edit.EntityData[0]
execute if entity @s[tag=frame] if data storage minecraft:animation Edit.EntityData[0] run function rc:editor/frames/entity/spawn/summon