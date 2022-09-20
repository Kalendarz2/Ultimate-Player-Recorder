#Move
execute if score @s edit matches 200 as @e[tag=selected_block] at @s run tp @s ~-10 ~ ~
execute if score @s edit matches 201 as @e[tag=selected_block] at @s run tp @s ~-1 ~ ~
execute if score @s edit matches 202 as @e[tag=selected_block] at @s run tp @s ~1 ~ ~
execute if score @s edit matches 203 as @e[tag=selected_block] at @s run tp @s ~10 ~ ~

execute if score @s edit matches 204 as @e[tag=selected_block] at @s run tp @s ~ ~-10 ~
execute if score @s edit matches 205 as @e[tag=selected_block] at @s run tp @s ~ ~-1 ~
execute if score @s edit matches 206 as @e[tag=selected_block] at @s run tp @s ~ ~1 ~
execute if score @s edit matches 207 as @e[tag=selected_block] at @s run tp @s ~ ~10 ~

execute if score @s edit matches 208 as @e[tag=selected_block] at @s run tp @s ~ ~ ~-10
execute if score @s edit matches 209 as @e[tag=selected_block] at @s run tp @s ~ ~ ~-1
execute if score @s edit matches 210 as @e[tag=selected_block] at @s run tp @s ~ ~ ~1
execute if score @s edit matches 211 as @e[tag=selected_block] at @s run tp @s ~ ~ ~10

execute if score @s edit matches 222 at @s align xyz run tp @e[tag=selected_block] ~0.5 ~ ~0.5

#Copy/Paste blocks
execute if score @s edit matches 212 as @e[tag=selected_frame] run function rc:editor/frames/block/copy
execute if score @s edit matches 213 run function rc:editor/frames/block/paste

#Selection
execute if score @s edit matches 214 run tag @e[tag=display_block] add selected_block
execute if score @s edit matches 215 run scoreboard players operation $frame_edit rc_time = @e[tag=selected_frame,limit=1] rc_id
execute if score @s edit matches 215 as @e[tag=display_block] if score @s rc_id = $frame_edit rc_time run tag @s add selected_block
execute if score @s edit matches 216 at @s run tag @e[tag=display_block,limit=1,sort=nearest] add selected_block
execute if score @s edit matches 217 run tag @e[tag=display_block] remove selected_block

execute if score @s edit matches 226 at @s run summon minecraft:armor_stand ~ ~ ~ {Marker:1,Tags:["edit_minecart_stand","edit_minecart_group"],Invisible:1,Passengers:[{id:"command_block_minecart",Command:"minecraft:",Tags:["edit_minecart","edit_minecart_group","edit_minecart9"]}]}
execute if score @s edit matches 227 run tag @e[tag=destroy_block] add selected_block
execute if score @s edit matches 228 run function rc:editor/settings/input/selection/block_invert

execute as @e[tag=selected_block] run data modify entity @s Glowing set value 1
execute as @e[tag=display_block,tag=!selected_block] run data modify entity @s Glowing set value 0

#Add
execute if score @s edit matches 218 run function rc:editor/frames/block/new

#Block data
execute if score @s edit matches 219 at @s run summon minecraft:armor_stand ~ ~ ~ {Marker:1,Tags:["edit_minecart_stand","edit_minecart_group"],Invisible:1,Passengers:[{id:"command_block_minecart",Tags:["edit_minecart","edit_minecart_group","edit_minecart1"]}]}
execute if score @s edit matches 220..221 at @s run summon minecraft:armor_stand ~ ~ ~ {Marker:1,Tags:["edit_minecart_stand","edit_minecart_group"],Invisible:1,Passengers:[{id:"command_block_minecart",Command:"data modify storage minecraft:animation Edit.TempData set value {}",Tags:["edit_minecart","edit_minecart_group","edit_minecart2"]}]}
execute if score @s edit matches 221 at @s run tag @e[tag=edit_minecart2] add edit_minecart3

#Assign frame
execute if score @s edit matches 223 run function rc:editor/frames/block/assign

#Delete
execute if score @s edit matches 224 run kill @e[tag=selected_block]

#Duplicate
execute if score @s edit matches 225 as @e[tag=selected_block] at @s run function rc:editor/frames/block/duplicate