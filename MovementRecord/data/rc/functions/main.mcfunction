#Triggers
scoreboard players enable @a[tag=!del_confirm,tag=!is_recording,tag=!in_editor] menu
scoreboard players enable @a[tag=!del_confirm,tag=!in_editor] record
scoreboard players enable @a[tag=!del_confirm,tag=!is_recording,tag=!in_editor] copy
execute if data storage minecraft:animation Clipboard run scoreboard players enable @a[tag=!del_confirm,tag=!is_recording,tag=!in_editor] paste
execute unless data storage minecraft:animation Clipboard run scoreboard players reset @a paste
scoreboard players enable @a[tag=!del_confirm,tag=!is_recording,tag=!in_editor] item
scoreboard players enable @a[tag=!del_confirm,tag=!is_recording,tag=!in_editor] import
scoreboard players enable @a[tag=!del_confirm,tag=!is_recording] edit
scoreboard players enable @a[tag=!is_recording,tag=!in_editor] delete

#Menu
scoreboard players set @a[scores={menu=-100}] rc_time 0
execute as @a[scores={menu=-100}] run scoreboard players operation @s menu = @s rc_menu
execute as @a[scores={menu=1..},tag=!del_confirm,tag=!is_recording,tag=!in_editor] run function rc:menu/main
execute as @a[scores={menu=..0},tag=menu_open] run function rc:menu/close
scoreboard players set @a[scores={menu=..-1}] menu 0

#Editor
execute as @a[scores={edit=1..},tag=!in_editor] run function rc:editor/start/start
execute as @a[tag=in_editor] run function rc:editor/main

clear @a[tag=!in_editor] minecraft:written_book{Edit_Settings:1}
clear @a[tag=!in_editor] minecraft:writable_book{Edit_Name:1}
tellraw @a[scores={edit=..-1}] ["",{"text":"Id cannot be negative!","color":"dark_red"}]


#Get Item
execute as @a[scores={item=1..}] run function rc:item/item
tellraw @a[scores={item=..-1}] ["",{"text":"Id cannot be negative!","color":"dark_red"}]

#Import Item
execute as @a[scores={import=1..}] run function rc:import/import
tellraw @a[scores={import=..-1}] ["",{"text":"Id cannot be negative!","color":"dark_red"}]

#Copy
execute as @a[scores={copy=1..}] run function rc:clipboard/copy
tellraw @a[scores={copy=..-1}] ["",{"text":"Id cannot be negative!","color":"dark_red"}]

#Copy
execute as @a[scores={paste=1..}] run function rc:clipboard/paste
tellraw @a[scores={paste=..-1}] ["",{"text":"Id cannot be negative!","color":"dark_red"}]

#Record
execute as @a[scores={record=1..},tag=!is_recording] run function rc:record/start/pre_start
execute as @a[tag=record_get] run function rc:record/start/settings/get
execute as @a[tag=record_start] run function rc:record/main

clear @a[tag=!record_get] minecraft:written_book{Settings:1}
clear @a[tag=!record_get] minecraft:writable_book{Name:1}

tellraw @a[scores={record=..-1}] ["",{"text":"Id cannot be negative!","color":"dark_red"}]

#Delete animation
execute as @a[scores={delete=1..},tag=!del_confirm] run function rc:delete/delete
execute as @a[scores={delete=..-1},tag=!del_confirm] run function rc:delete/delete_all
execute as @a[tag=del_confirm] run function rc:delete/ask

#Datapack compatibility
scoreboard players set $dp_check animation 0

#Scores
scoreboard players set @a rc_shift 0
scoreboard players set @a rc_click 0
scoreboard players set @a record 0
scoreboard players set @a edit 0
scoreboard players set @a delete 0
scoreboard players set @a copy 0
scoreboard players set @a paste 0
scoreboard players set @a item 0
scoreboard players set @a import 0
scoreboard players set @a settings 0

#Welcome message
tellraw @a[tag=!rc_init] ["",{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\no===o","strikethrough":true,"color":"gray"},{"text":" Ultimate Player Recorder","bold":true,"color":"aqua"},{"text":" Alpha 0.7 ","color":"white"},{"text":"o===o","strikethrough":true,"color":"gray"},"\n\n",{"text":" Thank you for choosing my datapack. To start recording, use the "},{"text":"/trigger record","color":"gold"},{"text":" command or "},{"text":"/trigger menu","color":"gold"},{"text":" to access all the features of the datapack.\n\n To execute an animation, get it as an item and throw it at the selected entity, or give it an "},{"text":"\"animation\"","color":"gold"},{"text":" scoreboard equivalent to the id of your animation. An ongoing animation can be stopped by giving the "},{"text":"\"stop\"","color":"gold"},{"text":" tag, and ended by setting the scoreboard to 0. If you don't use features such as dynamic player recording, you should remove the MovementRecord datapack after completing your map. Detailed instructions on how to use all modules can be found on the github repository in the "},{"text":"wiki","color":"aqua","clickEvent":{"action":"open_url","value":"https://github.com/Kalendarz2/Ultimate-Player-Recorder/wiki"},"hoverEvent":{"action":"show_text","contents":[{"text":"https://github.com/Kalendarz2/Ultimate-Player-Recorder/wiki","color":"gold"}]}},{"text":" tab\n\n"},{"text":"o=============================================o","strikethrough":true,"color":"gray"}]
tag @a add rc_init

#Check for Bukkit
execute if data storage minecraft:animation {Bukkit:1} run tellraw @a[tag=!rc_bukkit_init] {"text":"You are using an unsupported server software! Some features such as recording placed blocks may not work properly. To ensure stable working of the datapack, please use a vanilla server for 1.19+","color":"red"}
execute if data storage minecraft:animation {Bukkit:1} run tag @a add rc_bukkit_init
execute if data storage minecraft:animation {Bukkit:0} run tag @a remove rc_bukkit_init