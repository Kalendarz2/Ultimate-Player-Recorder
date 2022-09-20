#Summon new
summon minecraft:falling_block 12587358 3 12587360 {NoGravity:1,Glowing:1,Time:-30000,Tags:["display_block","frame_general","this_b","selected_block"]}
execute if entity @s[tag=destroy_block] as @e[tag=this_b] run function rc:editor/settings/input/minecart/destroy_type
data modify entity @e[tag=this_b,limit=1] BlockState set from entity @s BlockState
data modify entity @e[tag=this_b,limit=1] TileEntityData set from entity @s TileEntityData
scoreboard players operation @e[tag=this_b,limit=1] rc_id = @s rc_id
tp @e[tag=this_b] @s

tag @s remove selected_block
tag @e remove this_b