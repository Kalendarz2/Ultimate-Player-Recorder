#Give next frame item
execute if data entity @s Inventory[{Slot:7b}] at @s run summon minecraft:item ~ ~ ~ {PickupDelay:0,Item:{id:"minecraft:stick",Count:1},Tags:["replace_item"]}
data modify entity @e[tag=replace_item,limit=1] Item set from entity @s Inventory[{Slot:7b}]
tag @e[tag=replace_item] remove replace_item

item replace entity @s hotbar.7 with carrot_on_a_stick{display:{Name:'{"text":"Next Frame","color":"green","italic":false}'},NextFrame:1,Carrot:1}

#Give previous frame item
execute if data entity @s Inventory[{Slot:6b}] at @s run summon minecraft:item ~ ~ ~ {PickupDelay:0,Item:{id:"minecraft:stick",Count:1},Tags:["replace_item"]}
data modify entity @e[tag=replace_item,limit=1] Item set from entity @s Inventory[{Slot:6b}]
tag @e[tag=replace_item] remove replace_item

item replace entity @s hotbar.6 with carrot_on_a_stick{display:{Name:'{"text":"Clear Last Frame","color":"green","italic":false}'},LastFrame:1,Carrot:1}