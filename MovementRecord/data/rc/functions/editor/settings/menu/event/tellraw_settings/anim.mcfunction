execute store result score $frame_edit rc_event run data get entity @s data.TempEvent[0].Anim.Condition

execute if score $frame_edit rc_event matches 1.. run data modify storage minecraft:animation RecordSettings.EditorEventType set value '[{"text":"Anim: ","color":"light_purple"},{"nbt":"data.TempEvent[0].Anim.id","entity":"@s","color":"yellow"},{"text":" Tag: \\"","color":"gray"},{"nbt":"data.TempEvent[0].Anim.Condition","entity":"@s","color":"yellow"},{"text":"\\"","color":"gray"}]'
execute if score $frame_edit rc_event matches 0 run data modify storage minecraft:animation RecordSettings.EditorEventType set value '[{"text":"Anim: ","color":"light_purple"},{"nbt":"data.TempEvent[0].Anim.id","entity":"@s","color":"yellow"}]'
data modify storage minecraft:animation RecordSettings.EditorEventEdit set value '[{"text":"§8E "}]'
