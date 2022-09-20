data modify storage minecraft:animation Edit.BrokenData set from entity @s data.Frame.Broken
tag @s add remove_block

tag @s add this_a
function rc:editor/frames/block/spawn/destroyed/summon
tag @s remove this_a