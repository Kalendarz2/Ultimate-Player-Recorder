#Blocks, entity and event delay
tag @e[tag=pl_command] remove pl_command
tag @e[tag=rc_animation_trigger] remove rc_animation_trigger

execute at @e[tag=pl_temp_barrier] run setblock ~ ~ ~ air
kill @e[tag=pl_temp_barrier]
execute as @e[tag=p_place_marker] at @s run function p:events/place/delay/clone

scoreboard players add @e[tag=pl_entity] pl_id2 1
execute as @e[tag=pl_entity,scores={pl_id2=5..}] run function p:events/entity/load

#Listen
execute as @e[scores={animation=..0},tag=!anim_from_item,tag=started] run function p:end
tag @e[tag=animation_holder] add kill_a
execute as @e[scores={animation=1..},type=!#p:other,tag=!anim_from_item,tag=!part] at @s run function p:active
execute as @e[scores={animation=1..},type=#p:other] run tellraw @a[gamemode=creative] ["",{"text":"Animation cannot be executed on this entity.","color":"dark_red"}]
execute as @e[scores={animation=1..},tag=p_part] run tellraw @a[gamemode=creative] ["",{"text":"Animation cannot be executed on this body part. Use it on the main entity.","color":"dark_red"}]
scoreboard players set @e[type=#p:other] animation 0
scoreboard players set @e[tag=p_part] animation 0

#Start from item
scoreboard players add @e animation 0
execute at @e[type=item,nbt={Item:{tag:{Animation:{}}}}] run tag @e[scores={animation=..0},type=!#p:other,limit=1,sort=nearest,distance=0.01..1,tag=!p_part,tag=!animation_holder,tag=!editor] add anim_from_item
execute as @e[tag=anim_from_item] at @s run function p:active

#Kill
tag @e[tag=p_place_marker] add tick
kill @e[tag=animation_holder,tag=kill_a]
execute unless entity @e[tag=pl_entity] run kill @e[tag=pl_entity_data]
kill @e[tag=p_place_main_marker]

#Datapack compatibility
scoreboard players remove $dp_check animation 1
execute if score $dp_check animation matches -10 run function p:clear_dp