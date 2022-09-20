data modify storage minecraft:animation MenuData.1.Name set from storage minecraft:animation Menu[0].Name
data modify storage minecraft:animation MenuData.1.Length set from storage minecraft:animation Menu[0].Length
data modify storage minecraft:animation MenuData.1.Loop set from storage minecraft:animation Menu[0].Loop
data modify storage minecraft:animation MenuData.1.Relative set from storage minecraft:animation Menu[0].Relative

execute if data storage minecraft:animation MenuData.1{Loop:0} run data modify storage minecraft:animation MenuData.1.Loop set value "§8§lL "
execute if data storage minecraft:animation MenuData.1{Relative:0} run data modify storage minecraft:animation MenuData.1.Relative set value "§8§lR"
execute if data storage minecraft:animation MenuData.1{Loop:1} run data modify storage minecraft:animation MenuData.1.Loop set value "§e§lL "
execute if data storage minecraft:animation MenuData.1{Relative:1} run data modify storage minecraft:animation MenuData.1.Relative set value "§e§lR"