#Give pause frame item
execute if data entity @s Inventory[{Slot:7b}] at @s run summon minecraft:item ~ ~ ~ {PickupDelay:0,Item:{id:"minecraft:stick",Count:1},Tags:["replace_item"]}
data modify entity @e[tag=replace_item,limit=1] Item set from entity @s Inventory[{Slot:7b}]
tag @e[tag=replace_item] remove replace_item

item replace entity @s hotbar.7 with carrot_on_a_stick{display:{Name:'{"text":"Pause Recording","color":"green","italic":false}'},PauseRecording:1,Carrot:1}