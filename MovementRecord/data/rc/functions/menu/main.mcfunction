#Save gamerule
execute unless entity @a[tag=menu_open] unless entity @a[tag=in_editor] store result score $feedback rc_time run gamerule sendCommandFeedback
execute unless entity @a[tag=menu_open] unless entity @a[tag=in_editor] run gamerule sendCommandFeedback false

#Open sound
execute at @s[tag=!menu_open] run playsound minecraft:block.note_block.bell master @s ~ ~ ~ 1 1

#Set scores
scoreboard players add @s rc_time 1
execute unless score @s rc_menu = @s menu run scoreboard players set @s rc_time 1
scoreboard players operation @s rc_menu = @s menu

#Change page sound
execute at @s[tag=menu_open,scores={rc_time=1}] run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 1 1.5
tag @s add menu_open

#Limit score
scoreboard players set @s[scores={rc_time=180..}] rc_time 1

#Page multiplier
scoreboard players remove @s menu 1
scoreboard players set $menu rc_menu 5
scoreboard players operation $menu rc_menu *= @s menu
scoreboard players add @s menu 1

#Multiply triggers
scoreboard players operation @s[scores={record=1..}] record += $menu rc_menu
scoreboard players set @s[scores={record=-1}] record 1
scoreboard players operation @s[scores={delete=1..}] delete += $menu rc_menu
scoreboard players operation @s[scores={copy=1..}] copy += $menu rc_menu
scoreboard players operation @s[scores={paste=1..}] paste += $menu rc_menu
scoreboard players operation @s[scores={item=1..}] item += $menu rc_menu
scoreboard players operation @s[scores={edit=1..}] edit += $menu rc_menu

#Show menu
execute if score @s rc_time matches 1 run function rc:menu/display
