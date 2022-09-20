#Summon block
summon minecraft:falling_block 12587360 2 12587360 {Time:1,Tags:["p_place","this_c"]}

#Get data
execute as @e[tag=p_place,tag=this_c] at @s run function p:events/place/as

#Remove data
data remove storage minecraft:play TempFrame.Placed[0]
execute if data storage minecraft:play TempFrame.Placed[0] run function p:events/place/loop