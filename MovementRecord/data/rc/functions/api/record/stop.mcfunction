#Is not recording
execute unless entity @s[tag=is_recording] run tellraw @a[tag=rc_debug] ["",{"text":"<RC Debug> ","color":"dark_green","bold":true},{"selector":"@s","color":"dark_red"},{"text":" is not recording an animation.","color":"dark_red"}]

#Select data marker
scoreboard players operation $slot_id rc_id = @s rc_id
execute if entity @s[tag=is_recording] as @e[tag=rc_data] if score @s rc_id = $slot_id rc_id run tag @s add this_rc_data
execute store result score $id_out rc_id run data get entity @e[tag=this_rc_data,limit=1] data.Info.id

#Stop
execute if entity @s[tag=is_recording] run function rc:record/stop