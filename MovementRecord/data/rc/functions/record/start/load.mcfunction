#Setup
tellraw @s {"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\nSign the book with the name of your animation to start or drop it in order to cancel","color":"yellow"}
data modify storage minecraft:animation TempAnimation set from storage minecraft:animation DefaultSettings
function rc:disable_triggers
execute store result storage minecraft:animation TempAnimation.id int 1 run scoreboard players get $id rc_id

#Prepare chunks
forceload add 12587359 12587360 12587279 12587360
fill 12587359 0 12587360 12587359 1 12587360 air
setblock 12587358 0 12587360 bedrock
setblock 12587359 1 12587360 barrier
setblock 12587358 1 12587361 barrier
setblock 12587357 1 12587360 barrier
setblock 12587358 1 12587359 barrier

#Bossbar
bossbar set minecraft:recording name ["",{"text":"● ","color":"red"},{"text":"Recording..."},{"text":" | ","color":"gray"},{"text":"Waiting for name","color":"gold"}]
bossbar set minecraft:recording players @s

#Drop item
execute if data entity @s[type=player] SelectedItem at @s run summon minecraft:item ~ ~ ~ {PickupDelay:0,Item:{id:"minecraft:stick",Count:1},Tags:["replace_item"]}
data modify entity @e[tag=replace_item,limit=1] Item set from entity @s SelectedItem
tag @e[tag=replace_item] remove replace_item

#Give settings book
execute if entity @s[type=player] run function rc:record/start/settings/update

#Give name book
give @s[type=player] writable_book{Name:1,pages:["§2Sign this book with the name of your animation"],display:{Name:'{"text":"Sign this book!","color":"light_purple","bold":true,"italic":false}'},Enchantments:[{id:"minecraft:asd",lvl:0}]}

tag @s[type=player] add record_get

#Skip settings
execute unless entity @s[type=player] run function rc:record/start/start