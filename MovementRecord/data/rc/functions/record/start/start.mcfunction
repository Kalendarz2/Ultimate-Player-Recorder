#Start
kill @e[tag=record_wait_move]
scoreboard players set @s rc_frames 0
tag @s remove record_get
tag @s remove rc_wait
tag @s add record_start
execute store result score $rc_tick rc_id run data get storage minecraft:animation TempAnimation.Frequency

#Book
data modify storage minecraft:animation TempAnimation.Name set from entity @s[nbt={SelectedItem:{tag:{Name:1}}}] SelectedItem.tag.title
clear @s minecraft:written_book{Name:1}
clear @s minecraft:written_book{Settings:1}
kill @e[tag=rc_minecart_group]

#Spawn block markers
execute if data storage minecraft:animation TempAnimation{Placed:1} run tag @s add spawn_blocks
execute if data storage minecraft:animation TempAnimation{Broken:1} run tag @s add spawn_blocks
execute if entity @s[tag=spawn_blocks] run function rc:record/blocks/spawn

#Give stop item
execute if data entity @s Inventory[{Slot:8b}] at @s run summon minecraft:item ~ ~ ~ {PickupDelay:0,Item:{id:"minecraft:stick",Count:1},Tags:["replace_item"]}
data modify entity @e[tag=replace_item,limit=1] Item set from entity @s Inventory[{Slot:8b}]
tag @e[tag=replace_item] remove replace_item

item replace entity @s hotbar.8 with carrot_on_a_stick{display:{Name:'{"text":"Stop Recording","color":"green","italic":false}'},StopRecording:1,Carrot:1}

#Give next/previous frame item
execute if data storage minecraft:animation TempAnimation{Manual:1} run function rc:record/start/manual_frames

#Give event items
execute if data storage minecraft:animation Event.Event1 run give @s carrot_on_a_stick{display:{Name:'{"text":"Event 1","color":"yellow","italic":false}'},Event:1,Event1:1,Carrot:1}
execute if data storage minecraft:animation Event.Event2 run give @s carrot_on_a_stick{display:{Name:'{"text":"Event 2","color":"yellow","italic":false}'},Event:1,Event2:1,Carrot:1}
execute if data storage minecraft:animation Event.Event3 run give @s carrot_on_a_stick{display:{Name:'{"text":"Event 3","color":"yellow","italic":false}'},Event:1,Event3:1,Carrot:1}
execute if data storage minecraft:animation Event.Event4 run give @s carrot_on_a_stick{display:{Name:'{"text":"Event 4","color":"yellow","italic":false}'},Event:1,Event4:1,Carrot:1}