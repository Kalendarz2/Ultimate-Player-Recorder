#Move
execute if score @s edit matches 20 as @e[tag=selected_frames] at @s run tp @s ~-10 ~ ~
execute if score @s edit matches 21 as @e[tag=selected_frames] at @s run tp @s ~-1 ~ ~
execute if score @s edit matches 22 as @e[tag=selected_frames] at @s run tp @s ~-0.1 ~ ~
execute if score @s edit matches 23 as @e[tag=selected_frames] at @s run tp @s ~0.1 ~ ~
execute if score @s edit matches 24 as @e[tag=selected_frames] at @s run tp @s ~1 ~ ~
execute if score @s edit matches 25 as @e[tag=selected_frames] at @s run tp @s ~10 ~ ~

execute if score @s edit matches 26 as @e[tag=selected_frames] at @s run tp @s ~ ~-10 ~
execute if score @s edit matches 27 as @e[tag=selected_frames] at @s run tp @s ~ ~-1 ~
execute if score @s edit matches 28 as @e[tag=selected_frames] at @s run tp @s ~ ~-0.1 ~
execute if score @s edit matches 29 as @e[tag=selected_frames] at @s run tp @s ~ ~0.1 ~
execute if score @s edit matches 30 as @e[tag=selected_frames] at @s run tp @s ~ ~1 ~
execute if score @s edit matches 31 as @e[tag=selected_frames] at @s run tp @s ~ ~10 ~

execute if score @s edit matches 32 as @e[tag=selected_frames] at @s run tp @s ~ ~ ~-10
execute if score @s edit matches 33 as @e[tag=selected_frames] at @s run tp @s ~ ~ ~-1
execute if score @s edit matches 34 as @e[tag=selected_frames] at @s run tp @s ~ ~ ~-0.1
execute if score @s edit matches 35 as @e[tag=selected_frames] at @s run tp @s ~ ~ ~0.1
execute if score @s edit matches 36 as @e[tag=selected_frames] at @s run tp @s ~ ~ ~1
execute if score @s edit matches 37 as @e[tag=selected_frames] at @s run tp @s ~ ~ ~10

execute if score @s edit matches 38 at @s run tp @e[tag=selected_frames] ~ ~ ~ 
execute if score @s edit matches 39 at @e[tag=selected_frame,limit=1] run tp @s ~ ~ ~

#Copy/Paste frame
execute if score @s edit matches 40 run data modify storage minecraft:animation Edit.PosClipboard set from entity @e[tag=selected_frame,limit=1] Pos
execute if score @s edit matches 41 as @e[tag=selected_frames] run data modify entity @s Pos set from storage minecraft:animation Edit.PosClipboard 

#Store data
execute as @e[tag=selected_frames] run data modify entity @s data.Frame.Pos set from entity @s Pos