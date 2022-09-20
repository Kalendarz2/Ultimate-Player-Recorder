tag @s remove cancel_ask
tag @s remove save_ask
scoreboard players set @s rc_time 0
execute at @s run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 1 1.5

#Reset
clear @s minecraft:written_book{Edit_Settings:1}
clear @s minecraft:writable_book{Edit_Name:1}
kill @e[type=item,nbt={Item:{tag:{Edit_Settings:1}}}]
kill @e[type=item,nbt={Item:{tag:{Edit_Name:1}}}]
kill @e[tag=editor]

#New
function rc:editor/settings/update
loot give @s loot rc:get_book
execute at @e[tag=selected_frame] run summon minecraft:armor_stand ~ ~ ~ {Tags:["editor"],NoGravity:1,Invulnerable:1,ShowArms:1,NoBasePlate:1,Glowing:1}
tp @e[tag=editor] @e[tag=selected_frame,limit=1]