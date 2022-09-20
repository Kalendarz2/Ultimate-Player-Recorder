#Move
execute if score @s edit matches 50 as @e[tag=selected_frames] at @s run tp @s ~ ~ ~ ~-90 ~
execute if score @s edit matches 51 as @e[tag=selected_frames] at @s run tp @s ~ ~ ~ ~-10 ~
execute if score @s edit matches 52 as @e[tag=selected_frames] at @s run tp @s ~ ~ ~ ~-1 ~
execute if score @s edit matches 53 as @e[tag=selected_frames] at @s run tp @s ~ ~ ~ ~1 ~
execute if score @s edit matches 54 as @e[tag=selected_frames] at @s run tp @s ~ ~ ~ ~10 ~
execute if score @s edit matches 55 as @e[tag=selected_frames] at @s run tp @s ~ ~ ~ ~90 ~

execute if score @s edit matches 56 as @e[tag=selected_frames] at @s run tp @s ~ ~ ~ ~ ~-90
execute if score @s edit matches 57 as @e[tag=selected_frames] at @s run tp @s ~ ~ ~ ~ ~-10
execute if score @s edit matches 58 as @e[tag=selected_frames] at @s run tp @s ~ ~ ~ ~ ~-1
execute if score @s edit matches 59 as @e[tag=selected_frames] at @s run tp @s ~ ~ ~ ~ ~1
execute if score @s edit matches 60 as @e[tag=selected_frames] at @s run tp @s ~ ~ ~ ~ ~10
execute if score @s edit matches 61 as @e[tag=selected_frames] at @s run tp @s ~ ~ ~ ~ ~90

execute if score @s edit matches 62 as @e[tag=selected_frames] at @s rotated as @p[tag=in_editor] run tp @s ~ ~ ~ ~ ~
execute if score @s edit matches 63 at @s rotated as @e[tag=selected_frame,limit=1] run tp @s ~ ~ ~ ~ ~

#Copy/Paste frame
execute if score @s edit matches 64 run data modify storage minecraft:animation Edit.RotClipboard set from entity @e[tag=selected_frame,limit=1] Rotation
execute if score @s edit matches 65 as @e[tag=selected_frames] run data modify entity @s Rotation set from storage minecraft:animation Edit.RotClipboard 

#Store data
execute as @e[tag=selected_frames] run data modify entity @s data.Frame.Rot set from entity @s Rotation