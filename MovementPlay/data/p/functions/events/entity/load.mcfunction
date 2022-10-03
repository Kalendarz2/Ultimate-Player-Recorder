#Select holder by id
scoreboard players operation @e[tag=pl_entity_data] pl_id2 = @s pl_id
execute as @e[tag=pl_entity_data] if score @s pl_id = @s pl_id2 run tag @s add this_b

#Move data
data merge entity @s {NoGravity:0}
data modify entity @s {} merge from entity @e[tag=this_b,limit=1] data.Entity
data modify entity @s {} merge from entity @e[tag=this_b,limit=1] data.Entity.NBT

#Playsound
execute at @s[type=#p:snowball_sound] run playsound entity.snowball.throw master @a ~ ~ ~ 1 0.5
execute at @s[type=#p:arrow_sound] run playsound entity.arrow.shoot master @a ~ ~ ~ 1 1
execute at @s[type=trident] run playsound item.trident.throw master @a ~ ~ ~ 1 1

tag @s remove pl_entity
kill @e[tag=this_b]