#Book
execute if data storage minecraft:animation {Bukkit:0} run data modify storage minecraft:animation TempAnimation.Name set from entity @s Inventory[{id:"minecraft:written_book",tag:{Name:1}}].tag.title
execute if data storage minecraft:animation {Bukkit:1} run data modify storage minecraft:animation TempAnimation.Name set from entity @s Inventory[{id:"minecraft:written_book",tag:{pages:['{"text":"§2Sign this book with the name of your animation"}']}}].tag.title
clear @s minecraft:written_book{Name:1}
clear @s minecraft:written_book{Settings:1}
execute if data storage minecraft:animation {Bukkit:1} run clear @s minecraft:written_book

#Give stop item
execute if data entity @s Inventory[{Slot:8b}] at @s run summon minecraft:item ~ ~ ~ {PickupDelay:0,Item:{id:"minecraft:stick",Count:1},Tags:["replace_item"]}
data modify entity @e[tag=replace_item,limit=1] Item set from entity @s Inventory[{Slot:8b}]
tag @e[tag=replace_item] remove replace_item

item replace entity @s hotbar.8 with carrot_on_a_stick{display:{Name:'{"text":"Stop Recording","color":"green","italic":false}'},StopRecording:1,Carrot:1}

#Give next/previous frame item
execute if data storage minecraft:animation TempAnimation{Manual:1} run function rc:record/start/manual_frames
execute if data storage minecraft:animation TempAnimation{Manual:0} run function rc:record/start/pause

#Give event items
execute if data storage minecraft:animation Event.Event1 run give @s carrot_on_a_stick{display:{Name:'{"text":"Event 1","color":"yellow","italic":false}'},Event:1,Event1:1,Carrot:1}
execute if data storage minecraft:animation Event.Event2 run give @s carrot_on_a_stick{display:{Name:'{"text":"Event 2","color":"yellow","italic":false}'},Event:1,Event2:1,Carrot:1}
execute if data storage minecraft:animation Event.Event3 run give @s carrot_on_a_stick{display:{Name:'{"text":"Event 3","color":"yellow","italic":false}'},Event:1,Event3:1,Carrot:1}
execute if data storage minecraft:animation Event.Event4 run give @s carrot_on_a_stick{display:{Name:'{"text":"Event 4","color":"yellow","italic":false}'},Event:1,Event4:1,Carrot:1}