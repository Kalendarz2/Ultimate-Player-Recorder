#Error
execute unless data storage minecraft:animation Clipboard run tellraw @s ["",{"text":"There is no animation in the clipboard!","color":"dark_red"}]

#Paste
execute if data storage minecraft:animation Clipboard run function rc:clipboard/paste_start