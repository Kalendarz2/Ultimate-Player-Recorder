#Summon entity
execute store result score @s pl_id2 run data get storage minecraft:play TempFrame.Entity[0].Type
execute if score @s pl_id2 matches 1 run summon item ~ -70 ~ {NoGravity:1,Tags:["pl_entity_temp","pl_entity"],Item:{id:"stick",Count:1b}}
execute if score @s pl_id2 matches 2 run summon tnt ~ -70 ~ {NoGravity:1,Tags:["pl_entity_temp","pl_entity"]}
execute if score @s pl_id2 matches 3 run summon boat ~ -70 ~ {NoGravity:1,Tags:["pl_entity_temp","pl_entity"]}
execute if score @s pl_id2 matches 4 run summon minecart ~ -70 ~ {NoGravity:1,Tags:["pl_entity_temp","pl_entity"]}
execute if score @s pl_id2 matches 5 run summon chest_minecart ~ -70 ~ {NoGravity:1,Tags:["pl_entity_temp","pl_entity"]}
execute if score @s pl_id2 matches 6 run summon command_block_minecart ~ -70 ~ {NoGravity:1,Tags:["pl_entity_temp","pl_entity"]}
execute if score @s pl_id2 matches 7 run summon furnace_minecart ~ -70 ~ {NoGravity:1,Tags:["pl_entity_temp","pl_entity"]}
execute if score @s pl_id2 matches 8 run summon hopper_minecart ~ -70 ~ {NoGravity:1,Tags:["pl_entity_temp","pl_entity"]}
execute if score @s pl_id2 matches 9 run summon spawner_minecart ~ -70 ~ {NoGravity:1,Tags:["pl_entity_temp","pl_entity"]}
execute if score @s pl_id2 matches 10 run summon tnt_minecart ~ -70 ~ {NoGravity:1,Tags:["pl_entity_temp","pl_entity"]}
execute if score @s pl_id2 matches 11 run summon snowball ~ -70 ~ {NoGravity:1,Tags:["pl_entity_temp","pl_entity"]}
execute if score @s pl_id2 matches 12 run summon egg ~ -70 ~ {NoGravity:1,Tags:["pl_entity_temp","pl_entity"]}
execute if score @s pl_id2 matches 13 run summon end_crystal ~ -70 ~ {NoGravity:1,Tags:["pl_entity_temp","pl_entity"]}
execute if score @s pl_id2 matches 14 run summon ender_pearl ~ -70 ~ {NoGravity:1,Tags:["pl_entity_temp","pl_entity"]}
execute if score @s pl_id2 matches 15 run summon experience_bottle ~ -70 ~ {NoGravity:1,Tags:["pl_entity_temp","pl_entity"]}
execute if score @s pl_id2 matches 16 run summon eye_of_ender ~ -70 ~ {NoGravity:1,Tags:["pl_entity_temp","pl_entity"]}
execute if score @s pl_id2 matches 17 run summon firework_rocket ~ -70 ~ {NoGravity:1,Tags:["pl_entity_temp","pl_entity"]}
execute if score @s pl_id2 matches 18 run summon item_frame ~ -70 ~ {NoGravity:1,Tags:["pl_entity_temp","pl_entity"]}
execute if score @s pl_id2 matches 19 run summon potion ~ -70 ~ {NoGravity:1,Tags:["pl_entity_temp","pl_entity"]}
execute if score @s pl_id2 matches 20 run summon trident ~ -70 ~ {NoGravity:1,Tags:["pl_entity_temp","pl_entity"]}
execute if score @s pl_id2 matches 21 run summon arrow ~ -70 ~ {NoGravity:1,Tags:["pl_entity_temp","pl_entity"]}
execute if score @s pl_id2 matches 22 run summon spectral_arrow ~ -70 ~ {NoGravity:1,Tags:["pl_entity_temp","pl_entity"]}
execute if score @s pl_id2 matches 23 run summon chest_boat ~ -70 ~ {NoGravity:1,Tags:["pl_entity_temp","pl_entity"]}

#Summon marker
summon marker ~ -70 ~ {Tags:["pl_entity_data","pl_entity_data_temp"]}
execute as @e[tag=pl_entity_temp] store result score @s pl_id run data get entity @s UUID[0]

#Save data on the marker
execute as @e[tag=pl_entity_data_temp] run function p:events/entity/temp_data
tag @e[tag=pl_entity_temp] remove pl_entity_temp

#Loop
data remove storage minecraft:play TempFrame.Entity[0]
execute if data storage minecraft:play TempFrame.Entity[0] run function p:events/entity/entity