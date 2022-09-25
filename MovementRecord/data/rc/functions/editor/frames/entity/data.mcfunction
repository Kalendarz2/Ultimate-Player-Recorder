#Store data
scoreboard players operation @s rc_event = @e[tag=this_a,limit=1] rc_event
data modify entity @s Rotation set from storage minecraft:animation Edit.EntityData[0].Rot
data modify entity @s Pos set from storage minecraft:animation Edit.EntityData[0].Pos

#Projectile
#execute if data storage minecraft:animation Edit.EntityData[0].Motion[0] run summon marker ~ ~ ~ {Tags:["this_c","editor_entity_data","frame_general"]}
execute as @e[tag=this_c] run function rc:editor/frames/entity/projectile

#Id
scoreboard players operation @s rc_id = @e[tag=this_a,limit=1] rc_id
tag @s remove this_b