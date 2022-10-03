#Id
scoreboard players operation @s rc_menu > @e[tag=display_entity] rc_menu
scoreboard players add @s rc_menu 1

#Summon marker
summon marker 12587358 -70 12587360 {Tags:["frame_general","display_entity_nbt","display_entity_nbt_temp"]}
scoreboard players operation @e[tag=display_entity_nbt_temp] rc_menu = @s rc_menu
data modify entity @e[tag=display_entity_nbt_temp,limit=1] data.NBT set from storage minecraft:animation Edit.TempData
data merge entity @s {CustomNameVisible:1,CustomName:'"+NBT"'}

tag @e[tag=display_entity_nbt_temp] remove display_entity_nbt_temp