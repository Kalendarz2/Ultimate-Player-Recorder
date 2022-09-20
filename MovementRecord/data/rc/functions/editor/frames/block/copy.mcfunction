#Save block changes
function rc:editor/frames/block/save/selected_frame

#Clipboard
data modify storage minecraft:animation Edit.BlocksClipboard.Placed set from entity @s data.Frame.Placed
data modify storage minecraft:animation Edit.BlocksClipboard.Broken set from entity @s data.Frame.Broken