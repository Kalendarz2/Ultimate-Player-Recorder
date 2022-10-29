#1-5 id range
scoreboard players operation $id rc_id = @s edit
scoreboard players remove $id rc_id 160

#+ page * 5
scoreboard players operation $id rc_id += $editor_import rc_menu

#Get animation
data remove storage minecraft:animation GetAnimation
function rc:id/get/get

execute if data storage minecraft:animation GetAnimation run function rc:editor/frames/import_start