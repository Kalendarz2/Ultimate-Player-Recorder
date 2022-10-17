#Negative or no id
execute unless score $id rc_id matches 1.. run function rc:internal_api/messages/positive_id

#No clipboard
execute if score $id rc_id matches 1.. unless data storage minecraft:animation Clipboard run tellraw @s ["",{"text":"<RC Debug> ","color":"dark_green","bold":true},{"text":"There is no animation in the clipboard.","color":"dark_red"}]

#Try to paste
execute if score $id rc_id matches 1.. if data storage minecraft:animation Clipboard run function rc:internal_api/paste_start