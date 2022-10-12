#Find spot and place block
execute as @e[tag=p_place_main_marker] at @s run function p:events/place/marker

#Remove data
data remove storage minecraft:play TempFrame.Placed[0]
execute if data storage minecraft:play TempFrame.Placed[0] run function p:events/place/loop