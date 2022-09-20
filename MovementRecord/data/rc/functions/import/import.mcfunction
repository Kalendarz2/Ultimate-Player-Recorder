#Errors
execute unless data entity @s SelectedItem run tellraw @s ["",{"text":"You are not holding any item!","color":"dark_red"}]
execute if data entity @s SelectedItem unless data entity @s SelectedItem.tag.Animation run tellraw @s ["",{"text":"Item you are holding does not contain any animations.","color":"dark_red"}]

#Item
execute if data entity @s SelectedItem.tag.Animation run function rc:import/start