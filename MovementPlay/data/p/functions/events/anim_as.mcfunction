#Backup tags
data modify storage minecraft:play TempFrame.Tags_backup set from entity @s Tags

#Move tags
data modify storage minecraft:play TempFrame.Tags set from entity @s Tags

#Compare
data modify entity @s Tags append from storage minecraft:play TempFrame.Event[0].Anim.Condition
execute store success score $play_event pl_id run data modify storage minecraft:play TempFrame.Tags set from entity @s Tags

#Restore tags
data modify entity @s Tags set from storage minecraft:play TempFrame.Tags_backup