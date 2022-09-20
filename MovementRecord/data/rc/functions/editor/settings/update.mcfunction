#Score
execute if score @s settings matches 1 run data modify storage minecraft:animation Edit.Loop set value 0
execute if score @s settings matches 2 run data modify storage minecraft:animation Edit.Loop set value 1
execute if score @s settings matches 3 run data modify storage minecraft:animation Edit.Relative set value 0
execute if score @s settings matches 4 run data modify storage minecraft:animation Edit.Relative set value 1
execute if score @s settings matches 5 run data modify storage minecraft:animation Edit.Beginning set value 0
execute if score @s settings matches 6 run data modify storage minecraft:animation Edit.Beginning set value 1

execute if score @s settings matches 11 run data modify storage minecraft:animation Edit.Position set value 2
execute if score @s settings matches 12 run data modify storage minecraft:animation Edit.Position set value 1
execute if score @s settings matches 13 run data modify storage minecraft:animation Edit.Rotation set value 2
execute if score @s settings matches 14 run data modify storage minecraft:animation Edit.Rotation set value 1
execute if score @s settings matches 15 run data modify storage minecraft:animation Edit.Item set value 2
execute if score @s settings matches 16 run data modify storage minecraft:animation Edit.Item set value 1
execute if score @s settings matches 17 run data modify storage minecraft:animation Edit.Placed set value 2
execute if score @s settings matches 18 run data modify storage minecraft:animation Edit.Placed set value 1
execute if score @s settings matches 19 run data modify storage minecraft:animation Edit.Broken set value 2
execute if score @s settings matches 20 run data modify storage minecraft:animation Edit.Broken set value 1
execute if score @s settings matches 21 run data modify storage minecraft:animation Edit.Spawned set value 2
execute if score @s settings matches 22 run data modify storage minecraft:animation Edit.Spawned set value 1
execute if score @s settings matches 23 run data modify storage minecraft:animation Edit.Sneaking set value 2
execute if score @s settings matches 24 run data modify storage minecraft:animation Edit.Sneaking set value 1

execute if score @s settings matches 120 run data modify storage minecraft:animation Edit.Reverse set value 0
execute if score @s settings matches 121 run data modify storage minecraft:animation Edit.Reverse set value 1

execute if score @s settings matches 110 run data modify storage minecraft:animation Edit.Speed set value 4
execute if score @s settings matches 111 run data modify storage minecraft:animation Edit.Speed set value 3
execute if score @s settings matches 112 run data modify storage minecraft:animation Edit.Speed set value 2
execute if score @s settings matches 113 run data modify storage minecraft:animation Edit.Speed set value 1
execute if score @s settings matches 114 run data modify storage minecraft:animation Edit.Speed set value 0


playsound minecraft:ui.button.click master @s[tag=in_editor] ~ ~ ~ 1 1 1

#Display
execute if data storage minecraft:animation Edit{Loop:0} run data modify storage minecraft:animation RecordSettings.Loop set value '[{"text":"§8True §7| §cFalse","clickEvent":{"action":"run_command","value":"/trigger settings set 2"}}]'
execute if data storage minecraft:animation Edit{Loop:1} run data modify storage minecraft:animation RecordSettings.Loop set value '[{"text":"§aTrue §7| §8False","clickEvent":{"action":"run_command","value":"/trigger settings set 1"}}]'
execute if data storage minecraft:animation Edit{Relative:0} run data modify storage minecraft:animation RecordSettings.Relative set value '[{"text":"§8True §7| §cFalse","clickEvent":{"action":"run_command","value":"/trigger settings set 4"}}]'
execute if data storage minecraft:animation Edit{Relative:1} run data modify storage minecraft:animation RecordSettings.Relative set value '[{"text":"§aTrue §7| §8False","clickEvent":{"action":"run_command","value":"/trigger settings set 3"}}]'

execute if data storage minecraft:animation Edit{Beginning:0} run data modify storage minecraft:animation RecordSettings.Beginning set value '[{"text":"§8True §7| §cFalse","clickEvent":{"action":"run_command","value":"/trigger settings set 6"}}]'
execute if data storage minecraft:animation Edit{Beginning:1} run data modify storage minecraft:animation RecordSettings.Beginning set value '[{"text":"§aTrue §7| §8False","clickEvent":{"action":"run_command","value":"/trigger settings set 5"}}]'
execute if data storage minecraft:animation Edit{Loop:0} run data modify storage minecraft:animation RecordSettings.Beginning set value '[{"text":"§8Disabled"}]'
execute if data storage minecraft:animation Edit{Relative:0} run data modify storage minecraft:animation RecordSettings.Beginning set value '[{"text":"§8Disabled"}]'

execute if data storage minecraft:animation Edit{Position:0} run data modify storage minecraft:animation RecordSettings.Position set value '[{"text":"§8Disabled"}]'
execute if data storage minecraft:animation Edit{Position:2} run data modify storage minecraft:animation RecordSettings.Position set value '[{"text":"§8True §7| §cFalse","clickEvent":{"action":"run_command","value":"/trigger settings set 12"}}]'
execute if data storage minecraft:animation Edit{Position:1} run data modify storage minecraft:animation RecordSettings.Position set value '[{"text":"§aTrue §7| §8False","clickEvent":{"action":"run_command","value":"/trigger settings set 11"}}]'

execute if data storage minecraft:animation Edit{Rotation:0} run data modify storage minecraft:animation RecordSettings.Rotation set value '[{"text":"§8Disabled"}]'
execute if data storage minecraft:animation Edit{Rotation:2} run data modify storage minecraft:animation RecordSettings.Rotation set value '[{"text":"§8True §7| §cFalse","clickEvent":{"action":"run_command","value":"/trigger settings set 14"}}]'
execute if data storage minecraft:animation Edit{Rotation:1} run data modify storage minecraft:animation RecordSettings.Rotation set value '[{"text":"§aTrue §7| §8False","clickEvent":{"action":"run_command","value":"/trigger settings set 13"}}]'

execute if data storage minecraft:animation Edit{Item:0} run data modify storage minecraft:animation RecordSettings.Item set value '[{"text":"§8Disabled"}]'
execute if data storage minecraft:animation Edit{Item:2} run data modify storage minecraft:animation RecordSettings.Item set value '[{"text":"§8True §7| §cFalse","clickEvent":{"action":"run_command","value":"/trigger settings set 16"}}]'
execute if data storage minecraft:animation Edit{Item:1} run data modify storage minecraft:animation RecordSettings.Item set value '[{"text":"§aTrue §7| §8False","clickEvent":{"action":"run_command","value":"/trigger settings set 15"}}]'

execute if data storage minecraft:animation Edit{Placed:0} run data modify storage minecraft:animation RecordSettings.Placed set value '[{"text":"§8Disabled"}]'
execute if data storage minecraft:animation Edit{Placed:2} run data modify storage minecraft:animation RecordSettings.Placed set value '[{"text":"§8True §7| §cFalse","clickEvent":{"action":"run_command","value":"/trigger settings set 18"}}]'
execute if data storage minecraft:animation Edit{Placed:1} run data modify storage minecraft:animation RecordSettings.Placed set value '[{"text":"§aTrue §7| §8False","clickEvent":{"action":"run_command","value":"/trigger settings set 17"}}]'

execute if data storage minecraft:animation Edit{Broken:0} run data modify storage minecraft:animation RecordSettings.Broken set value '[{"text":"§8Disabled"}]'
execute if data storage minecraft:animation Edit{Broken:2} run data modify storage minecraft:animation RecordSettings.Broken set value '[{"text":"§8True §7| §cFalse","clickEvent":{"action":"run_command","value":"/trigger settings set 20"}}]'
execute if data storage minecraft:animation Edit{Broken:1} run data modify storage minecraft:animation RecordSettings.Broken set value '[{"text":"§aTrue §7| §8False","clickEvent":{"action":"run_command","value":"/trigger settings set 19"}}]'

execute if data storage minecraft:animation Edit{Spawned:0} run data modify storage minecraft:animation RecordSettings.Spawned set value '[{"text":"§8Disabled"}]'
execute if data storage minecraft:animation Edit{Spawned:2} run data modify storage minecraft:animation RecordSettings.Spawned set value '[{"text":"§8True §7| §cFalse","clickEvent":{"action":"run_command","value":"/trigger settings set 22"}}]'
execute if data storage minecraft:animation Edit{Spawned:1} run data modify storage minecraft:animation RecordSettings.Spawned set value '[{"text":"§aTrue §7| §8False","clickEvent":{"action":"run_command","value":"/trigger settings set 21"}}]'

execute if data storage minecraft:animation Edit{Sneaking:0} run data modify storage minecraft:animation RecordSettings.Sneaking set value '[{"text":"§8Disabled"}]'
execute if data storage minecraft:animation Edit{Sneaking:2} run data modify storage minecraft:animation RecordSettings.Sneaking set value '[{"text":"§8True §7| §cFalse","clickEvent":{"action":"run_command","value":"/trigger settings set 24"}}]'
execute if data storage minecraft:animation Edit{Sneaking:1} run data modify storage minecraft:animation RecordSettings.Sneaking set value '[{"text":"§aTrue §7| §8False","clickEvent":{"action":"run_command","value":"/trigger settings set 23"}}]'

execute if data storage minecraft:animation Edit{Reverse:0} run data modify storage minecraft:animation RecordSettings.Reverse set value '[{"text":"§8True §7| §cFalse","clickEvent":{"action":"run_command","value":"/trigger settings set 121"}}]'
execute if data storage minecraft:animation Edit{Reverse:1} run data modify storage minecraft:animation RecordSettings.Reverse set value '[{"text":"§aTrue §7| §8False","clickEvent":{"action":"run_command","value":"/trigger settings set 120"}}]'

execute if data storage minecraft:animation Edit{Speed:4} run data modify storage minecraft:animation RecordSettings.Speed set value '["",{"text":"§24x ","clickEvent":{"action":"run_command","value":"/trigger settings set 110"}},{"text":"§82x ","clickEvent":{"action":"run_command","value":"/trigger settings set 111"}},{"text":"§81x ","clickEvent":{"action":"run_command","value":"/trigger settings set 112"}},{"text":"§80.5x ","clickEvent":{"action":"run_command","value":"/trigger settings set 113"}},{"text":"§80.25x ","clickEvent":{"action":"run_command","value":"/trigger settings set 114"}}]'
execute if data storage minecraft:animation Edit{Speed:3} run data modify storage minecraft:animation RecordSettings.Speed set value '["",{"text":"§84x ","clickEvent":{"action":"run_command","value":"/trigger settings set 110"}},{"text":"§22x ","clickEvent":{"action":"run_command","value":"/trigger settings set 111"}},{"text":"§81x ","clickEvent":{"action":"run_command","value":"/trigger settings set 112"}},{"text":"§80.5x ","clickEvent":{"action":"run_command","value":"/trigger settings set 113"}},{"text":"§80.25x ","clickEvent":{"action":"run_command","value":"/trigger settings set 114"}}]'
execute if data storage minecraft:animation Edit{Speed:2} run data modify storage minecraft:animation RecordSettings.Speed set value '["",{"text":"§84x ","clickEvent":{"action":"run_command","value":"/trigger settings set 110"}},{"text":"§82x ","clickEvent":{"action":"run_command","value":"/trigger settings set 111"}},{"text":"§21x ","clickEvent":{"action":"run_command","value":"/trigger settings set 112"}},{"text":"§80.5x ","clickEvent":{"action":"run_command","value":"/trigger settings set 113"}},{"text":"§80.25x ","clickEvent":{"action":"run_command","value":"/trigger settings set 114"}}]'
execute if data storage minecraft:animation Edit{Speed:1} run data modify storage minecraft:animation RecordSettings.Speed set value '["",{"text":"§84x ","clickEvent":{"action":"run_command","value":"/trigger settings set 110"}},{"text":"§82x ","clickEvent":{"action":"run_command","value":"/trigger settings set 111"}},{"text":"§81x ","clickEvent":{"action":"run_command","value":"/trigger settings set 112"}},{"text":"§20.5x ","clickEvent":{"action":"run_command","value":"/trigger settings set 113"}},{"text":"§80.25x ","clickEvent":{"action":"run_command","value":"/trigger settings set 114"}}]'
execute if data storage minecraft:animation Edit{Speed:0} run data modify storage minecraft:animation RecordSettings.Speed set value '["",{"text":"§84x ","clickEvent":{"action":"run_command","value":"/trigger settings set 110"}},{"text":"§82x ","clickEvent":{"action":"run_command","value":"/trigger settings set 111"}},{"text":"§81x ","clickEvent":{"action":"run_command","value":"/trigger settings set 112"}},{"text":"§80.5x ","clickEvent":{"action":"run_command","value":"/trigger settings set 113"}},{"text":"§20.25x ","clickEvent":{"action":"run_command","value":"/trigger settings set 114"}}]'

#Book
clear @s written_book{Edit_Settings:1}
item replace entity @s weapon.mainhand with written_book{Edit_Settings:1,pages:["[\"\",{\"text\":\"Animation Settings\",\"bold\":true,\"underlined\":true,\"color\":\"red\"},\"\\n\",\"\\n\",{\"text\":\"Loop animation \",\"color\":\"light_purple\"},{\"text\":\"(?):\",\"color\":\"light_purple\",\"hoverEvent\":{\"action\":\"show_text\",\"contents\":[{\"text\":\"If true, the animation will loop until it is disabled\",\"color\":\"gold\"}]}},\"\\n\",{\"nbt\":\"RecordSettings.Loop\",\"storage\":\"minecraft:animation\",\"interpret\":true},\"\\n\",\"\\n\",{\"text\":\"Relative position \",\"color\":\"dark_purple\"},{\"text\":\"(?):\",\"color\":\"dark_purple\",\"hoverEvent\":{\"action\":\"show_text\",\"contents\":[{\"text\":\"If true, the animation will be played relative to the entity's initial position\",\"color\":\"gold\"}]}},\"\\n\",{\"nbt\":\"RecordSettings.Relative\",\"storage\":\"minecraft:animation\",\"interpret\":true},\"\\n\",\"\\n\",{\"text\":\"Loop from start \",\"color\":\"light_purple\"},{\"text\":\"(?):\",\"color\":\"light_purple\",\"hoverEvent\":{\"action\":\"show_text\",\"contents\":[{\"text\":\"Requires loop and relative position. If true, the animation will always loop from the initial position\",\"color\":\"gold\"}]}},\"\\n\",{\"nbt\":\"RecordSettings.Beginning\",\"storage\":\"minecraft:animation\",\"interpret\":true},\"\\n\",\"\\n\",{\"text\":\"Reverse animation \",\"color\":\"dark_purple\"},{\"text\":\"(?)\",\"color\":\"dark_purple\",\"hoverEvent\":{\"action\":\"show_text\",\"contents\":[{\"text\":\"Play the animation backwards\",\"color\":\"gold\"}]}},\"\\n\",{\"nbt\":\"RecordSettings.Reverse\",\"storage\":\"minecraft:animation\",\"interpret\":true},\"\\n\"]","[{\"text\":\"Playback speed \",\"color\":\"light_purple\"},{\"text\":\"(?)\",\"color\":\"light_purple\",\"hoverEvent\":{\"action\":\"show_text\",\"contents\":[{\"text\":\"Animation playback speed\",\"color\":\"gold\"}]}},\"\\n\",{\"nbt\":\"RecordSettings.Speed\",\"storage\":\"minecraft:animation\",\"interpret\":true},\"\\n\",\"\\n\"]","[\"\",{\"text\":\"Display Events \",\"bold\":true,\"underlined\":true,\"color\":\"red\"},{\"text\":\"(?)\",\"bold\":true,\"underlined\":true,\"color\":\"red\",\"hoverEvent\":{\"action\":\"show_text\",\"contents\":[{\"text\":\"Select the previously recorded actions to be displayed in the animation.\",\"color\":\"gold\"}]}},\"\\n\",\"\\n\",{\"text\":\"Position:\",\"color\":\"dark_purple\"},\"\\n\",{\"nbt\":\"RecordSettings.Position\",\"storage\":\"minecraft:animation\",\"interpret\":true},\"\\n\",\"\\n\",{\"text\":\"Rotation:\",\"color\":\"light_purple\"},\"\\n\",{\"nbt\":\"RecordSettings.Rotation\",\"storage\":\"minecraft:animation\",\"interpret\":true},\"\\n\",\"\\n\",{\"text\":\"Item in hand:\",\"color\":\"dark_purple\"},\"\\n\",{\"nbt\":\"RecordSettings.Item\",\"storage\":\"minecraft:animation\",\"interpret\":true},\"\\n\",\"\\n\",{\"text\":\"Placed blocks:\",\"color\":\"light_purple\"},\"\\n\",{\"nbt\":\"RecordSettings.Placed\",\"storage\":\"minecraft:animation\",\"interpret\":true}]","[\"\",{\"text\":\"Broken blocks:\",\"color\":\"dark_purple\"},\"\\n\",{\"nbt\":\"RecordSettings.Broken\",\"storage\":\"minecraft:animation\",\"interpret\":true},\"\\n\",\"\\n\",{\"text\":\"Spawned entities \",\"color\":\"light_purple\"},{\"text\":\"(?):\",\"color\":\"light_purple\",\"hoverEvent\":{\"action\":\"show_text\",\"contents\":[{\"text\":\"Records only entities without AI, such as snowballs, arrows, items or boats\",\"color\":\"gold\"}]}},\"\\n\",{\"nbt\":\"RecordSettings.Spawned\",\"storage\":\"minecraft:animation\",\"interpret\":true},\"\\n\",\"\\n\",{\"text\":\"Sneaking \",\"color\":\"dark_purple\"},{\"text\":\"(?):\",\"color\":\"dark_purple\",\"hoverEvent\":{\"action\":\"show_text\",\"contents\":[{\"text\":\"Only visible on NPCs from compatible datapacks\",\"color\":\"gold\"}]}},\"\\n\",{\"nbt\":\"RecordSettings.Sneaking\",\"storage\":\"minecraft:animation\",\"interpret\":true}]"],title:"§d§lSettings",author:""}