#Frames
data modify entity @e[tag=this_a,tag=frames,limit=1] data.Animation set from entity @e[type=item,nbt={Item:{tag:{Animation:{}}}},limit=1,sort=nearest,distance=..1] Item.tag.Animation
execute as @e[tag=this_a,tag=frames,limit=1] if data entity @s data.Animation{Loop:1} run data modify entity @s data.LoopAnimation set from entity @s data.Animation

#Info
data modify entity @e[tag=this_a,tag=info,limit=1] data.Info set from entity @e[tag=this_a,tag=frames,limit=1] data.Animation
data remove entity @e[tag=this_a,tag=info,limit=1] data.Info.Frames

kill @e[type=item,nbt={Item:{tag:{Animation:{}}}},limit=1,sort=nearest,distance=..1]
scoreboard players set @s animation -1