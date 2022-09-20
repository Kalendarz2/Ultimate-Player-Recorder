execute unless entity @s[tag=has_sync] run data modify storage minecraft:animation RecordSettings.EditorEventType set value '[{"text":"Sync","color":"blue"}]'
execute if entity @s[tag=has_sync] run data modify storage minecraft:animation RecordSettings.EditorEventType set value '[{"text":"Sync","color":"blue","strikethrough":true,"hoverEvent":{"action":"show_text","contents":[{"text":"You can use a sync event only once per frame!","color":"red"}]}}]'
data modify storage minecraft:animation RecordSettings.EditorEventEdit set value '[{"text":"§8E "}]'
tag @s add has_sync
