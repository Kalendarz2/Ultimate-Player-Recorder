execute unless entity @s[tag=has_score] run data modify storage minecraft:animation RecordSettings.EditorEventType set value '[{"text":"Score: ","color":"gold"},{"nbt":"data.TempEvent[0].Score","entity":"@s","color":"yellow"}]'
execute if entity @s[tag=has_score] run data modify storage minecraft:animation RecordSettings.EditorEventType set value '[{"text":"Score: ","color":"gold","strikethrough":true,"hoverEvent":{"action":"show_text","contents":[{"text":"You can use a score event only once per frame!","color":"red"}]}},{"nbt":"data.TempEvent[0].Score","entity":"@s","color":"yellow","strikethrough":true,"hoverEvent":{"action":"show_text","contents":[{"text":"You can use a score event only once per frame!","color":"red"}]}}]'
data modify storage minecraft:animation RecordSettings.EditorEventEdit set value '[{"text":"§8E "}]'
tag @s add has_score