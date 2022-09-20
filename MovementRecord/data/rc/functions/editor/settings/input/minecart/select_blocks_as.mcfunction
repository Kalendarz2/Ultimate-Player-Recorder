data modify storage minecraft:animation Edit.TempData set from entity @e[tag=edit_minecart9,limit=1] Command
scoreboard players set @s rc_event 1
execute store success score @s rc_event run data modify storage minecraft:animation Edit.TempData set from entity @s BlockState.Name
execute if score @s rc_event matches 0 run tag @s add selected_block