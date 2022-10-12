#Get block type
execute as @e[tag=this_rc_block_check] run function rc:record/blocks/place/delay
data modify entity @e[tag=this_rc_data,limit=1] data.Frames[-1].Placed set from storage minecraft:animation TempBlock.Array

#Clear array
data remove storage minecraft:animation TempBlock