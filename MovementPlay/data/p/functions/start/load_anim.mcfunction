#Get id
execute store result score $id animation run data get storage minecraft:play Animation[0].id

#Compare id
execute if score $id animation = @s animation run data modify entity @e[tag=this_a,tag=info,limit=1] data.Info set from storage minecraft:play Animation[0]
execute if score $id animation = @s animation run data remove entity @e[tag=this_a,tag=info,limit=1] data.Info.Frames
execute if score $id animation = @s animation run data modify entity @e[tag=this_a,tag=frames,limit=1] data.Animation set from storage minecraft:play Animation[0]

execute unless score $id animation = @s animation run data remove storage minecraft:play Animation[0]
execute if data storage minecraft:play Animation[0] unless score $id animation = @s animation run function p:start/load_anim