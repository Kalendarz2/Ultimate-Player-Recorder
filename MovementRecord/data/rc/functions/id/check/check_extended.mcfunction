execute at @p run summon armor_stand ~ ~ ~ {Invisible:1,NoGravity:1,Silent:1,Marker:1,CustomName:'{"text":"$tag_insert"}'}
execute as @e[name="$tag_insert",limit=1] run function rc:id/check/as
scoreboard players operation $id_out rc_id -= $id rc_menu
scoreboard players add $id_out rc_id 1
execute as @e[tag=rc_data] if score @s rc_menu = $id rc_id run scoreboard players set $id_out rc_id 1

kill @e[name="$tag_insert"]