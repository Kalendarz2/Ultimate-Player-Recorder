#Page control
execute if score @s edit matches 150 run scoreboard players remove $editor_import rc_menu 25
execute if score @s edit matches 151 run scoreboard players remove $editor_import rc_menu 5
execute if score @s edit matches 152 run scoreboard players add $editor_import rc_menu 5
execute if score @s edit matches 153 run scoreboard players add $editor_import rc_menu 25

#Import
execute if score @s edit matches 160..170 run function rc:editor/frames/import