#Paste data
execute as @e[tag=selected_frames] run data modify entity @s data.Frame.Placed set from storage minecraft:animation Edit.BlocksClipboard.Placed
execute as @e[tag=selected_frames] run data modify entity @s data.Frame.Broken set from storage minecraft:animation Edit.BlocksClipboard.Broken

#Update display
kill @e[tag=display_block]
execute as @e[tag=selected_frames] if data entity @s data.Frame.Placed[0] run function rc:editor/frames/block/spawn/placed/placed
execute as @e[tag=selected_frames] if data entity @s data.Frame.Broken[0] run function rc:editor/frames/block/spawn/destroyed/destroyed