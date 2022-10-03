#Store data
scoreboard players operation @s rc_event = @e[tag=this_a,limit=1] rc_event
data modify entity @s Pos set from storage minecraft:animation Edit.EntityData[0].Pos
data modify entity @s crit set from storage minecraft:animation Edit.EntityData[0].crit
data modify entity @s damage set from storage minecraft:animation Edit.EntityData[0].damage

#Item
data modify entity @s Item set from storage minecraft:animation Edit.EntityData[0].Item
execute if entity @s[type=item] run function rc:editor/frames/entity/spawn/item

#Rotation
execute store result score @s rc_click run data get storage minecraft:animation Edit.EntityData[0].Rot[0] 10
execute store result score @s rc_shift run data get storage minecraft:animation Edit.EntityData[0].Rot[1] 10

#Projectile
execute store result score @s rc_pos_x run data get storage minecraft:animation Edit.EntityData[0].Motion[0] 100
execute store result score @s rc_pos_y run data get storage minecraft:animation Edit.EntityData[0].Motion[1] 100
execute store result score @s rc_pos_z run data get storage minecraft:animation Edit.EntityData[0].Motion[2] 100

#NBT
data modify storage minecraft:animation Edit.TempData set from storage minecraft:animation Edit.EntityData[0].NBT
execute if data storage minecraft:animation Edit.EntityData[0].NBT run function rc:editor/frames/entity/nbt

#Id
scoreboard players operation @s rc_id = @e[tag=this_a,limit=1] rc_id
tag @s remove this_b