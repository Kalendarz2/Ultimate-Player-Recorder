execute if score @s rc_event matches 1 if data storage minecraft:animation Event.Event1{Type:1} run data modify storage minecraft:animation TempFrame.TempEvent.Command set from storage minecraft:animation Event.Event1.Action
execute if score @s rc_event matches 1 if data storage minecraft:animation Event.Event1{Type:2} run data modify storage minecraft:animation TempFrame.TempEvent.Sync set value 1
execute if score @s rc_event matches 1 if data storage minecraft:animation Event.Event1{Type:3} store result storage minecraft:animation TempFrame.TempEvent.Score int 1 run scoreboard players get $event1 score

execute if score @s rc_event matches 2 if data storage minecraft:animation Event.Event2{Type:1} run data modify storage minecraft:animation TempFrame.TempEvent.Command set from storage minecraft:animation Event.Event2.Action
execute if score @s rc_event matches 2 if data storage minecraft:animation Event.Event2{Type:2} run data modify storage minecraft:animation TempFrame.TempEvent.Sync set value 1
execute if score @s rc_event matches 2 if data storage minecraft:animation Event.Event2{Type:3} store result storage minecraft:animation TempFrame.TempEvent.Score int 1 run scoreboard players get $event2 score

execute if score @s rc_event matches 3 if data storage minecraft:animation Event.Event3{Type:1} run data modify storage minecraft:animation TempFrame.TempEvent.Command set from storage minecraft:animation Event.Event3.Action
execute if score @s rc_event matches 3 if data storage minecraft:animation Event.Event3{Type:2} run data modify storage minecraft:animation TempFrame.TempEvent.Sync set value 1
execute if score @s rc_event matches 3 if data storage minecraft:animation Event.Event3{Type:3} store result storage minecraft:animation TempFrame.TempEvent.Score int 1 run scoreboard players get $event3 score

execute if score @s rc_event matches 4 if data storage minecraft:animation Event.Event4{Type:1} run data modify storage minecraft:animation TempFrame.TempEvent.Command set from storage minecraft:animation Event.Event4.Action
execute if score @s rc_event matches 4 if data storage minecraft:animation Event.Event4{Type:2} run data modify storage minecraft:animation TempFrame.TempEvent.Sync set value 1
execute if score @s rc_event matches 4 if data storage minecraft:animation Event.Event4{Type:3} store result storage minecraft:animation TempFrame.TempEvent.Score int 1 run scoreboard players get $event4 score
data modify storage minecraft:animation TempFrame.Event append from storage minecraft:animation TempFrame.TempEvent
