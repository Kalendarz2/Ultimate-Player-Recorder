#Check id
function rc:id/check/check
execute as @e[tag=rc_data] if score @s rc_menu = $id rc_id run scoreboard players set $id rc_menu 0

#Cancel
execute if score $id rc_menu matches 0 run function rc:record/cancel
execute if score $id rc_menu matches 0 run scoreboard players set @s[tag=menu_open] rc_time 120
execute if score $id rc_menu matches 0 unless data storage minecraft:animation {APIMode:1} run tellraw @s ["",{"text":"Id ","color":"dark_red"},{"score":{"name":"@s","objective":"record"},"color":"dark_red"},{"text":" is already in use! Execute this command without any arguments, to generate id automaticly.","color":"dark_red"}]
execute if score $id rc_menu matches 0 at @s run tellraw @a[tag=rc_debug,distance=0.01..] ["",{"text":"<RC Debug> ","color":"dark_green","bold":true},{"text":"Id ","color":"dark_red"},{"score":{"name":"@s","objective":"record"},"color":"dark_red"},{"text":" is already in use! Remove it first by using /scoreboard players set $api score ","color":"dark_red"},{"score":{"name":"@s","objective":"record"},"color":"dark_red"},{"text":" and /function rc:api/delete","color":"dark_red"}]