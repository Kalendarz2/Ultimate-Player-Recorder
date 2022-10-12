execute as @a[tag=this,tag=!rc_sound] at @s run playsound minecraft:block.note_block.xylophone master @s ~ ~ ~ 1 1
tag @a[tag=this] add rc_sound

#Get Pos
scoreboard players operation $rc_block rc_pos_x = @s rc_pos_x
scoreboard players operation $rc_block rc_pos_y = @s rc_pos_y
scoreboard players operation $rc_block rc_pos_z = @s rc_pos_z

scoreboard players operation $rc_block rc_pos_x += @e[tag=this] rc_pos_x
scoreboard players operation $rc_block rc_pos_y += @e[tag=this] rc_pos_y
scoreboard players operation $rc_block rc_pos_z += @e[tag=this] rc_pos_z

#Button
execute if entity @s[tag=rc_button] run function rc:record/blocks/place/button_save
execute if block ~ ~ ~ #minecraft:buttons[powered=true] run function rc:record/blocks/place/button

#Get block
clone ~ ~ ~ ~ ~ ~ 12587358 1 12587360
execute unless entity @e[tag=rc_place_blocks] run summon marker 12587358 1 12587362 {Tags:["rc_place_blocks"]}
execute as @e[tag=rc_place_blocks] at @s run function rc:record/blocks/place/marker

kill @s[tag=rc_button]