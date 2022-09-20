data modify storage minecraft:animation MenuData.4.Name set from storage minecraft:animation Menu[0].Name
data modify storage minecraft:animation MenuData.4.Length set from storage minecraft:animation Menu[0].Length
data modify storage minecraft:animation MenuData.4.Loop set from storage minecraft:animation Menu[0].Loop
data modify storage minecraft:animation MenuData.4.Relative set from storage minecraft:animation Menu[0].Relative

execute if data storage minecraft:animation MenuData.4{Loop:0} run data modify storage minecraft:animation MenuData.4.Loop set value "§8§lL "
execute if data storage minecraft:animation MenuData.4{Relative:0} run data modify storage minecraft:animation MenuData.4.Relative set value "§8§lR"
execute if data storage minecraft:animation MenuData.4{Loop:1} run data modify storage minecraft:animation MenuData.4.Loop set value "§e§lL "
execute if data storage minecraft:animation MenuData.4{Relative:1} run data modify storage minecraft:animation MenuData.4.Relative set value "§e§lR"