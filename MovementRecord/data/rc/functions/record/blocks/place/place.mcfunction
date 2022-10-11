execute as @a[tag=this,tag=!rc_sound] at @s run playsound minecraft:block.note_block.xylophone master @s ~ ~ ~ 1 1
tag @a[tag=this] add rc_sound

#Get Pos
data modify storage minecraft:animation TempBlock.Temp set value {Pos:[0,0,0]}
scoreboard players operation @s rc_click = @s rc_pos_x
scoreboard players operation @s rc_shift = @s rc_pos_y
scoreboard players operation @s rc_time = @s rc_pos_z

scoreboard players operation @s rc_click += @a[tag=this] rc_pos_x
scoreboard players operation @s rc_shift += @a[tag=this] rc_pos_y
scoreboard players operation @s rc_time += @a[tag=this] rc_pos_z

execute store result storage minecraft:animation TempBlock.Temp.Pos[0] int 1 run scoreboard players get @s rc_click
execute store result storage minecraft:animation TempBlock.Temp.Pos[1] int 1 run scoreboard players get @s rc_shift
execute store result storage minecraft:animation TempBlock.Temp.Pos[2] int 1 run scoreboard players get @s rc_time

#Button
execute if entity @s[tag=rc_button] run function rc:record/blocks/place/button_save
execute if block ~ ~ ~ #minecraft:buttons[powered=true] run function rc:record/blocks/place/button

#Get block
clone ~ ~ ~ ~ ~ ~ 12587358 1 12587360

execute unless entity @e[tag=rc_place_blocks] run summon marker 12587358 1 12587362 {Tags:["rc_place_blocks"]}
execute as @e[tag=rc_place_blocks] at @s run function rc:record/blocks/place/marker

data modify storage minecraft:animation TempBlock.Array append from storage minecraft:animation TempBlock.Temp
kill @s[tag=rc_button]