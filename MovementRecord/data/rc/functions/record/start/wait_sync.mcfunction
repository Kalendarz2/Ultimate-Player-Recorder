bossbar set minecraft:recording name ["",{"text":"● ","color":"red"},{"text":"Recording..."},{"text":" | ","color":"gray"},{"text":"Waiting for trigger","color":"gold"}]
data modify storage minecraft:animation TempAnimation.Name set from entity @s[tag=!rc_wait] SelectedItem.tag.title
tag @s add rc_wait
execute if entity @e[tag=rc_animation_trigger] run function rc:record/start/start