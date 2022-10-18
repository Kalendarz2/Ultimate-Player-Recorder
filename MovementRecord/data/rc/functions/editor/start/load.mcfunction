#Get animation id
function rc:id/get/get
data modify storage minecraft:animation Edit set from storage minecraft:animation GetAnimation
data remove storage minecraft:animation GetAnimation

#Drop item
execute if data entity @s SelectedItem at @s run summon minecraft:item ~ ~ ~ {PickupDelay:0,Item:{id:"minecraft:stick",Count:1},Tags:["replace_item"]}
data modify entity @e[tag=replace_item,limit=1] Item set from entity @s SelectedItem
tag @e[tag=replace_item] remove replace_item

#Give settings book
function rc:editor/settings/update

#Give name book
loot give @s loot rc:get_book

#Prepare chunk
forceload add 12587359 12587360

#Save gamerule
execute unless entity @a[tag=menu_open] unless entity @a[tag=in_editor] store result score $feedback rc_time run gamerule sendCommandFeedback
execute unless entity @a[tag=menu_open] unless entity @a[tag=in_editor] run gamerule sendCommandFeedback false

#In editor
scoreboard players operation $editor rc_id = @s edit
tellraw @s {"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n","color":"yellow"}
function rc:disable_triggers
tag @s add in_editor

#Scores
execute store result score $editor rc_frames run data get storage minecraft:animation Edit.Length
scoreboard players set $editor rc_menu 0
scoreboard players set $editor rc_shift 0
scoreboard players set $frame_array rc_id 0
scoreboard players set $frame_id rc_id 0
scoreboard players set $frame_id rc_frames 0
scoreboard players set $frame_edit rc_id 1
scoreboard players set @s edit 167312

#Bossbar
bossbar set minecraft:editor players @s
execute store result bossbar minecraft:editor max run scoreboard players get $editor rc_frames

#Load frames
data modify storage minecraft:animation Edit.FrontArray set value []
data modify storage minecraft:animation Edit.BackArray set value []
execute at @s run function rc:editor/frames/load/load
tag @e[tag=frame,limit=1] add selected_frame
tag @e[tag=frame,limit=1] add selected_frames
execute as @e[tag=selected_frame] at @s run function rc:editor/start/forceload

execute at @s run summon minecraft:armor_stand ~ ~ ~ {Tags:["editor"],NoGravity:1,Invulnerable:1,ShowArms:1,NoBasePlate:1,Glowing:1}

#Summon blocks
execute as @e[tag=selected_frame] if data entity @s data.Frame.Placed[0] run function rc:editor/frames/block/spawn/placed/placed
execute as @e[tag=selected_frame] if data entity @s data.Frame.Broken[0] run function rc:editor/frames/block/spawn/destroyed/destroyed

#Summon entities
execute as @e[tag=selected_frame] if data entity @s data.Frame.Entity[0] run function rc:editor/frames/entity/spawn/load

#Menu
execute at @s run playsound minecraft:block.note_block.xylophone master @s ~ ~ ~ 1 1
scoreboard players set @s rc_time 0
