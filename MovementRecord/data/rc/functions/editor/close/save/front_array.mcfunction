data modify storage minecraft:animation Edit.Frames append from storage minecraft:animation Edit.FrontArray[0]

#loop
data remove storage minecraft:animation Edit.FrontArray[0]
execute if data storage minecraft:animation Edit.FrontArray[0] run function rc:editor/close/save/front_array