#Move
execute if score @s edit matches 300 as @e[tag=selected_entity] at @s run tp @s ~-10 ~ ~
execute if score @s edit matches 301 as @e[tag=selected_entity] at @s run tp @s ~-1 ~ ~
execute if score @s edit matches 302 as @e[tag=selected_entity] at @s run tp @s ~-0.1 ~ ~
execute if score @s edit matches 303 as @e[tag=selected_entity] at @s run tp @s ~0.1 ~ ~
execute if score @s edit matches 304 as @e[tag=selected_entity] at @s run tp @s ~1 ~ ~
execute if score @s edit matches 305 as @e[tag=selected_entity] at @s run tp @s ~10 ~ ~

execute if score @s edit matches 306 as @e[tag=selected_entity] at @s run tp @s ~ ~-10 ~
execute if score @s edit matches 307 as @e[tag=selected_entity] at @s run tp @s ~ ~-1 ~
execute if score @s edit matches 308 as @e[tag=selected_entity] at @s run tp @s ~ ~-0.1 ~
execute if score @s edit matches 309 as @e[tag=selected_entity] at @s run tp @s ~ ~0.1 ~
execute if score @s edit matches 310 as @e[tag=selected_entity] at @s run tp @s ~ ~1 ~
execute if score @s edit matches 311 as @e[tag=selected_entity] at @s run tp @s ~ ~10 ~

execute if score @s edit matches 312 as @e[tag=selected_entity] at @s run tp @s ~ ~ ~-10
execute if score @s edit matches 313 as @e[tag=selected_entity] at @s run tp @s ~ ~ ~-1
execute if score @s edit matches 314 as @e[tag=selected_entity] at @s run tp @s ~ ~ ~-0.1
execute if score @s edit matches 315 as @e[tag=selected_entity] at @s run tp @s ~ ~ ~0.1
execute if score @s edit matches 316 as @e[tag=selected_entity] at @s run tp @s ~ ~ ~1
execute if score @s edit matches 317 as @e[tag=selected_entity] at @s run tp @s ~ ~ ~10

execute if score @s edit matches 364 at @s run tp @e[tag=selected_entity] ~ ~ ~

#Motion
execute if score @s edit matches 318 run scoreboard players remove @e[tag=selected_entity] rc_pos_x 100
execute if score @s edit matches 319 run scoreboard players remove @e[tag=selected_entity] rc_pos_x 10
execute if score @s edit matches 320 run scoreboard players remove @e[tag=selected_entity] rc_pos_x 1
execute if score @s edit matches 321 run scoreboard players add @e[tag=selected_entity] rc_pos_x 1
execute if score @s edit matches 322 run scoreboard players add @e[tag=selected_entity] rc_pos_x 10
execute if score @s edit matches 323 run scoreboard players add @e[tag=selected_entity] rc_pos_x 100

execute if score @s edit matches 324 run scoreboard players remove @e[tag=selected_entity] rc_pos_y 100
execute if score @s edit matches 325 run scoreboard players remove @e[tag=selected_entity] rc_pos_y 10
execute if score @s edit matches 326 run scoreboard players remove @e[tag=selected_entity] rc_pos_y 1
execute if score @s edit matches 327 run scoreboard players add @e[tag=selected_entity] rc_pos_y 1
execute if score @s edit matches 328 run scoreboard players add @e[tag=selected_entity] rc_pos_y 10
execute if score @s edit matches 329 run scoreboard players add @e[tag=selected_entity] rc_pos_y 100

execute if score @s edit matches 330 run scoreboard players remove @e[tag=selected_entity] rc_pos_z 100
execute if score @s edit matches 331 run scoreboard players remove @e[tag=selected_entity] rc_pos_z 10
execute if score @s edit matches 332 run scoreboard players remove @e[tag=selected_entity] rc_pos_z 1
execute if score @s edit matches 333 run scoreboard players add @e[tag=selected_entity] rc_pos_z 1
execute if score @s edit matches 334 run scoreboard players add @e[tag=selected_entity] rc_pos_z 10
execute if score @s edit matches 335 run scoreboard players add @e[tag=selected_entity] rc_pos_z 100

#Rotation
execute if score @s edit matches 336 run scoreboard players remove @e[tag=selected_entity] rc_click 900
execute if score @s edit matches 337 run scoreboard players remove @e[tag=selected_entity] rc_click 100
execute if score @s edit matches 338 run scoreboard players remove @e[tag=selected_entity] rc_click 10
execute if score @s edit matches 339 run scoreboard players add @e[tag=selected_entity] rc_click 10
execute if score @s edit matches 340 run scoreboard players add @e[tag=selected_entity] rc_click 100
execute if score @s edit matches 341 run scoreboard players add @e[tag=selected_entity] rc_click 900

execute if score @s edit matches 342 run scoreboard players remove @e[tag=selected_entity] rc_shift 900
execute if score @s edit matches 343 run scoreboard players remove @e[tag=selected_entity] rc_shift 100
execute if score @s edit matches 344 run scoreboard players remove @e[tag=selected_entity] rc_shift 10
execute if score @s edit matches 345 run scoreboard players add @e[tag=selected_entity] rc_shift 10
execute if score @s edit matches 346 run scoreboard players add @e[tag=selected_entity] rc_shift 100
execute if score @s edit matches 347 run scoreboard players add @e[tag=selected_entity] rc_shift 900

#Selection
execute if score @s edit matches 350 run tag @e[tag=display_entity] add selected_entity
execute if score @s edit matches 351 run scoreboard players operation $frame_edit rc_time = @e[tag=selected_frame,limit=1] rc_id
execute if score @s edit matches 351 as @e[tag=display_entity] if score @s rc_id = $frame_edit rc_time run tag @s add selected_entity
execute if score @s edit matches 352 at @s run tag @e[tag=display_entity,limit=1,sort=nearest] add selected_entity
execute if score @s edit matches 353 run tag @e[tag=display_entity] remove selected_entity

execute as @e[tag=selected_entity] run data modify entity @s Glowing set value 1
execute as @e[tag=display_entity,tag=!selected_entity] run data modify entity @s Glowing set value 0

#Duplicate
execute if score @s edit matches 360 as @e[tag=selected_entity] at @s run function rc:editor/frames/entity/duplicate

#Delete
execute if score @s edit matches 361 run kill @e[tag=selected_entity]

#Entity data
execute if score @s edit matches 362 at @s run summon minecraft:armor_stand ~ ~ ~ {Marker:1,Tags:["edit_minecart_stand","edit_minecart_group"],Invisible:1,Passengers:[{id:"command_block_minecart",Command:'data modify storage minecraft:animation Edit.TempData set value {id:"minecraft:",Count:1b,tag:{}}',Tags:["edit_minecart","edit_minecart_group","edit_minecart10"]}]}
execute if score @s edit matches 363 at @s run summon minecraft:armor_stand ~ ~ ~ {Marker:1,Tags:["edit_minecart_stand","edit_minecart_group"],Invisible:1,Passengers:[{id:"command_block_minecart",Command:"minecraft:",Tags:["edit_minecart","edit_minecart_group","edit_minecart11"]}]}
execute if score @s edit matches 366 at @s run summon minecraft:armor_stand ~ ~ ~ {Marker:1,Tags:["edit_minecart_stand","edit_minecart_group"],Invisible:1,Passengers:[{id:"command_block_minecart",Command:"data modify storage minecraft:animation Edit.TempData set value {}",Tags:["edit_minecart","edit_minecart_group","edit_minecart12"]}]}

#Assign frame
execute if score @s edit matches 365 run scoreboard players operation @e[tag=selected_entity] rc_id = @e[tag=selected_frame,limit=1] rc_id
execute if score @s edit matches 365 run tag @e[tag=selected_frame] add has_entity

#Copy/Paste
execute if score @s edit matches 370 as @e[tag=selected_frame] run function rc:editor/frames/entity/copy
execute if score @s edit matches 371 run function rc:editor/frames/entity/paste