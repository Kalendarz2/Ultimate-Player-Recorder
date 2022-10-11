#Chat
tellraw @s {"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\nSign the book with the name of your animation to start or drop it in order to cancel","color":"yellow"}
function rc:disable_triggers

#Bossbar
bossbar set minecraft:recording name ["",{"text":"● ","color":"red"},{"text":"Recording..."},{"text":" | ","color":"gray"},{"text":"Waiting for name","color":"gold"}]
bossbar set minecraft:recording players @s

#Drop item
execute if data entity @s SelectedItem at @s run summon minecraft:item ~ ~ ~ {PickupDelay:0,Item:{id:"minecraft:stick",Count:1},Tags:["replace_item"]}
data modify entity @e[tag=replace_item,limit=1] Item set from entity @s SelectedItem
tag @e[tag=replace_item] remove replace_item

#Give settings book
function rc:record/start/settings/update

#Give name book
give @s writable_book{Name:1,pages:["§2Sign this book with the name of your animation"],display:{Name:'{"text":"Sign this book!","color":"light_purple","bold":true,"italic":false}'},Enchantments:[{id:"minecraft:asd",lvl:0}]}

tag @s add record_get