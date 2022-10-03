#Frame modules
execute if data storage minecraft:animation Edit.PosClipboard run data modify storage minecraft:animation RecordSettings.EditorPosPaste set value '[{"text":"§5§lPaste","clickEvent":{"action":"run_command","value":"/trigger edit set 41"},"hoverEvent":{"action":"show_text","contents":[{"text":"Paste position data to all selected frames","color":"gold"}]}}]'
execute unless data storage minecraft:animation Edit.PosClipboard run data modify storage minecraft:animation RecordSettings.EditorPosPaste set value '[{"text":"§8§lPaste","hoverEvent":{"action":"show_text","contents":[{"text":"Paste position data to all selected frames","color":"gray"}]}}]'
execute if data storage minecraft:animation Edit.RotClipboard run data modify storage minecraft:animation RecordSettings.EditorRotPaste set value '[{"text":"§5§lPaste","clickEvent":{"action":"run_command","value":"/trigger edit set 65"},"hoverEvent":{"action":"show_text","contents":[{"text":"Paste rotation data to all selected frames","color":"gold"}]}}]'
execute unless data storage minecraft:animation Edit.RotClipboard run data modify storage minecraft:animation RecordSettings.EditorRotPaste set value '[{"text":"§8§lPaste","hoverEvent":{"action":"show_text","contents":[{"text":"Paste rotation data to all selected frames","color":"gray"}]}}]'
execute if data storage minecraft:animation Edit.ItemClipboard run data modify storage minecraft:animation RecordSettings.EditorItemPaste set value '[{"text":"§5§lPaste","clickEvent":{"action":"run_command","value":"/trigger edit set 46"},"hoverEvent":{"action":"show_text","contents":[{"text":"Paste item to all selected frames","color":"gold"}]}}]'
execute unless data storage minecraft:animation Edit.ItemClipboard run data modify storage minecraft:animation RecordSettings.EditorItemPaste set value '[{"text":"§8§lPaste","hoverEvent":{"action":"show_text","contents":[{"text":"Paste item to all selected frames","color":"gray"}]}}]'
execute if data storage minecraft:animation Edit.BlocksClipboard run data modify storage minecraft:animation RecordSettings.EditorBlocksPaste set value '[{"text":"§5§lPaste","clickEvent":{"action":"run_command","value":"/trigger edit set 213"},"hoverEvent":{"action":"show_text","contents":[{"text":"Paste blocks to all selected frames","color":"gold"}]}}]'
execute unless data storage minecraft:animation Edit.BlocksClipboard run data modify storage minecraft:animation RecordSettings.EditorBlocksPaste set value '[{"text":"§8§lPaste","hoverEvent":{"action":"show_text","contents":[{"text":"Paste blocks to all selected frames","color":"gray"}]}}]'
execute if data storage minecraft:animation Edit.EntityClipboard run data modify storage minecraft:animation RecordSettings.EditorEntityPaste set value '[{"text":"§5§lPaste","clickEvent":{"action":"run_command","value":"/trigger edit set 371"},"hoverEvent":{"action":"show_text","contents":[{"text":"Paste entities to all selected frames","color":"gold"}]}}]'
execute unless data storage minecraft:animation Edit.EntityClipboard run data modify storage minecraft:animation RecordSettings.EditorEntityPaste set value '[{"text":"§8§lPaste","hoverEvent":{"action":"show_text","contents":[{"text":"Paste entities to all selected frames","color":"gray"}]}}]'
execute if data storage minecraft:animation Edit.EventClipboard run data modify storage minecraft:animation RecordSettings.EditorEventPaste set value '[{"text":"§5§lPaste","clickEvent":{"action":"run_command","value":"/trigger edit set 402"},"hoverEvent":{"action":"show_text","contents":[{"text":"Paste custom events to all selected frames","color":"gold"}]}}]'
execute unless data storage minecraft:animation Edit.EventClipboard run data modify storage minecraft:animation RecordSettings.EditorEventPaste set value '[{"text":"§8§lPaste","hoverEvent":{"action":"show_text","contents":[{"text":"Paste custom events to all selected frames","color":"gray"}]}}]'

execute if data storage minecraft:animation Edit{Position:1} run tellraw @s ["",{"text":"Position:","color":"aqua","bold":true},"   ",{"text":"Edit","bold":true,"color":"dark_green","clickEvent":{"action":"run_command","value":"/trigger edit set 101"},"hoverEvent":{"action":"show_text","contents":[{"text":"Edit the position of selected frames","color":"gold"}]}},{"text":" | ","color":"gray"},{"text":"Copy","bold":true,"color":"dark_purple","clickEvent":{"action":"run_command","value":"/trigger edit set 40"},"hoverEvent":{"action":"show_text","contents":[{"text":"Copy position data from this frame","color":"gold"}]}},{"text":" | ","color":"gray"},{"nbt":"RecordSettings.EditorPosPaste","storage":"minecraft:animation","interpret":true}]
execute if data storage minecraft:animation Edit{Rotation:1} run tellraw @s ["",{"text":"Rotation:  ","color":"aqua","bold":true},"",{"text":"Edit","bold":true,"color":"dark_green","clickEvent":{"action":"run_command","value":"/trigger edit set 102"},"hoverEvent":{"action":"show_text","contents":[{"text":"Edit the rotation of selected frames","color":"gold"}]}},{"text":" | ","color":"gray"},{"text":"Copy","bold":true,"color":"dark_purple","clickEvent":{"action":"run_command","value":"/trigger edit set 64"},"hoverEvent":{"action":"show_text","contents":[{"text":"Copy rotation data from this frame","color":"gold"}]}},{"text":" | ","color":"gray"},{"nbt":"RecordSettings.EditorRotPaste","storage":"minecraft:animation","interpret":true}]
execute if data storage minecraft:animation Edit{Item:1} run tellraw @s ["",{"text":"Item:          ","color":"aqua","bold":true,"hoverEvent":{"action":"show_text","contents":[{"text":"To change an item, give it to the armor stand","color":"gold"}]}},"    ",{"text":"Copy","bold":true,"color":"dark_purple","clickEvent":{"action":"run_command","value":"/trigger edit set 45"},"hoverEvent":{"action":"show_text","contents":[{"text":"Copy item from this frame","color":"gold"}]}},{"text":" | ","color":"gray"},{"nbt":"RecordSettings.EditorItemPaste","storage":"minecraft:animation","interpret":true}]
execute if data storage minecraft:animation Edit{Placed:1} run tag @s add edit_blocks
execute if data storage minecraft:animation Edit{Broken:1} run tag @s add edit_blocks
tellraw @s[tag=edit_blocks] ["",{"text":"Blocks:    ","color":"aqua","bold":true},{"text":"Edit","bold":true,"color":"dark_green","clickEvent":{"action":"run_command","value":"/trigger edit set 103"},"hoverEvent":{"action":"show_text","contents":[{"text":"Edit blocks from selected frames","color":"gold"}]}},{"text":" | ","color":"gray"},{"text":"Copy","bold":true,"color":"dark_purple","clickEvent":{"action":"run_command","value":"/trigger edit set 212"},"hoverEvent":{"action":"show_text","contents":[{"text":"Copy all blocks broken or placed in this frame","color":"gold"}]}},{"text":" | ","color":"gray"},{"nbt":"RecordSettings.EditorBlocksPaste","storage":"minecraft:animation","interpret":true}]
tag @s remove edit_blocks
execute if data storage minecraft:animation Edit{Spawned:1} run tellraw @s ["",{"text":"Entity:    ","color":"aqua","bold":true}," ",{"text":"Edit","bold":true,"color":"dark_green","clickEvent":{"action":"run_command","value":"/trigger edit set 105"},"hoverEvent":{"action":"show_text","contents":[{"text":"Edit entities from selected frames","color":"gold"}]}},{"text":" | ","color":"gray"},{"text":"Copy","bold":true,"color":"dark_purple","clickEvent":{"action":"run_command","value":"/trigger edit set 370"},"hoverEvent":{"action":"show_text","contents":[{"text":"Copy all summoned entities in this frame","color":"gold"}]}},{"text":" | ","color":"gray"},{"nbt":"RecordSettings.EditorEntityPaste","storage":"minecraft:animation","color":"gray","interpret":true}]
tellraw @s ["",{"text":"Event:     ","color":"aqua","bold":true},{"text":"Edit","bold":true,"color":"dark_green","clickEvent":{"action":"run_command","value":"/trigger edit set 104"},"hoverEvent":{"action":"show_text","contents":[{"text":"Edit custom events of this frame","color":"gold"}]}},{"text":" | ","color":"gray"},{"text":"Copy","bold":true,"color":"dark_purple","clickEvent":{"action":"run_command","value":"/trigger edit set 401"},"hoverEvent":{"action":"show_text","contents":[{"text":"Copy custom events from this frame","color":"gold"}]}},{"text":" | ","color":"gray"},{"nbt":"RecordSettings.EditorEventPaste","storage":"minecraft:animation","color":"gray","interpret":true}]
