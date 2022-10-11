#Load from entity to storage
data modify storage minecraft:animation TempBlock.Array set from entity @e[tag=this_rc_data,limit=1] data.Blocks

#Get block type
execute as @e[tag=this_rc_block_check] run function rc:record/blocks/place/delay
data modify entity @e[tag=this_rc_data,limit=1] data.Frames[-1].Placed set from storage minecraft:animation TempBlock.FinalArray

#Clear array
data modify entity @e[tag=this_rc_data,limit=1] data.Blocks set value []
data remove storage minecraft:animation TempBlock