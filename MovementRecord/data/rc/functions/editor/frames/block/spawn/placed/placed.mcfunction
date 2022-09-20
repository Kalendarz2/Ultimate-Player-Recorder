data modify storage minecraft:animation Edit.PlacedData set from entity @s data.Frame.Placed
tag @s add has_block

tag @s add this_a
function rc:editor/frames/block/spawn/placed/summon
tag @s remove this_a