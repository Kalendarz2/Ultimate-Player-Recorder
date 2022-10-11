execute as @a[tag=this,tag=!rc_sound2] at @s run playsound minecraft:block.note_block.xylophone master @s ~ ~ ~ 1 0.75
tag @a[tag=this] add rc_sound2

#Get Pos
scoreboard players operation @s rc_click = @s rc_pos_x
scoreboard players operation @s rc_shift = @s rc_pos_y
scoreboard players operation @s rc_time = @s rc_pos_z

scoreboard players operation @s rc_click += @e[tag=this] rc_pos_x
scoreboard players operation @s rc_shift += @e[tag=this] rc_pos_y
scoreboard players operation @s rc_time += @e[tag=this] rc_pos_z

execute store result storage minecraft:animation TempFrame.TempBlock[0] int 1 run scoreboard players get @s rc_click
execute store result storage minecraft:animation TempFrame.TempBlock[1] int 1 run scoreboard players get @s rc_shift
execute store result storage minecraft:animation TempFrame.TempBlock[2] int 1 run scoreboard players get @s rc_time

#Save
data modify storage minecraft:animation TempFrame.Broken append from storage minecraft:animation TempFrame.TempBlock