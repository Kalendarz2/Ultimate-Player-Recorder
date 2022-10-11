execute at @s run playsound minecraft:block.note_block.bit master @s
execute if data entity @s SelectedItem.tag.Event1 run scoreboard players set @e[tag=this_rc_data] rc_event 1
execute if data entity @s SelectedItem.tag.Event2 run scoreboard players set @e[tag=this_rc_data] rc_event 2
execute if data entity @s SelectedItem.tag.Event3 run scoreboard players set @e[tag=this_rc_data] rc_event 3
execute if data entity @s SelectedItem.tag.Event4 run scoreboard players set @e[tag=this_rc_data] rc_event 4