#Store data
scoreboard players operation @s rc_event = @e[tag=this_a,limit=1] rc_event
data modify entity @s Rotation set from storage minecraft:animation Edit.EntityData[0].Rot
data modify entity @s Pos set from storage minecraft:animation Edit.EntityData[0].Pos
data modify entity @s Item set from storage minecraft:animation Edit.EntityData[0].Item
data modify entity @s crit set from storage minecraft:animation Edit.EntityData[0].crit
data modify entity @s damage set from storage minecraft:animation Edit.EntityData[0].damage

#Projectile
execute store result score @s rc_pos_x run data get storage minecraft:animation Edit.EntityData[0].Motion[0] 100
execute store result score @s rc_pos_y run data get storage minecraft:animation Edit.EntityData[0].Motion[1] 100
execute store result score @s rc_pos_z run data get storage minecraft:animation Edit.EntityData[0].Motion[2] 100

#Id
scoreboard players operation @s rc_id = @e[tag=this_a,limit=1] rc_id
tag @s remove this_b