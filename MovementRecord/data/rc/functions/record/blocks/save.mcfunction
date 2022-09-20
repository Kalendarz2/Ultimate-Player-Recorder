#Get block type
execute as @e[tag=rc_block_check] run function rc:record/blocks/place/delay
data modify storage minecraft:animation TempAnimation.Frames[-1].Placed set from storage minecraft:animation TempBlock.List

data remove storage minecraft:animation TempBlock
data modify storage minecraft:animation TempBlock.Temp set value {Pos:[0.0,0.0,0.0],Name:"",Properties:{}}