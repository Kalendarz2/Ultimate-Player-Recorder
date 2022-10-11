#Summon block markers
execute unless entity @e[tag=rc_block] run function rc:record/blocks/spawn

#Prepare blocks
function rc:record/storage_slot/blocks/prepare
execute at @s align xyz run function rc:record/storage_slot/blocks/clone

#Summon main marker
execute at @s run summon minecraft:marker ~ ~ ~ {Tags:["rc_block_main","this_rc_block_main","rc_cancel"]}
scoreboard players operation @e[tag=this_rc_block_main] rc_id = @s rc_id
tag @e[tag=this_rc_block_main] remove this_rc_block_main