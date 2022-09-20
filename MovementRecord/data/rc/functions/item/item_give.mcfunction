#Get animation id
function rc:id/get/get

#Too long animation
execute store result score $id rc_time run data get storage minecraft:animation GetAnimation.Length
execute if score $id rc_time matches 1001.. run tellraw @s ["",{"text":"This animation is too long and may overload player packets. Split it into parts no longer than 1000 frames using the editor.","color":"dark_red"}]

#Give item
execute store result score $id rc_frames run data get storage minecraft:animation GetAnimation.Relative
execute if score $id rc_time matches ..1000 if score $id rc_frames matches 0 run loot give @s loot rc:get_item
execute if score $id rc_time matches ..1000 if score $id rc_frames matches 1 run loot give @s loot rc:get_item_relative
execute if score $id rc_time matches ..1000 run tellraw @s ["",{"text":"You have received an item containing animation ","color":"yellow"},{"nbt":"GetAnimation.Name","storage":"minecraft:animation","bold":true,"color":"aqua"},{"text":". You can transfer it to another world using the save hotbar feature, or drop it on an entity to perform the animation.","color":"yellow"}]

#Reset
scoreboard players set @s[tag=menu_open] rc_time 1
data remove storage minecraft:animation GetAnimation