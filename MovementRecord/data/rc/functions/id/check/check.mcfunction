execute at @p run summon armor_stand ~ ~ ~ {Invisible:1,NoGravity:1,Silent:1,Marker:1,CustomName:'{"text":"$tag_insert"}'}
execute as @e[name="$tag_insert",limit=1] run function rc:id/check/as
scoreboard players operation $id rc_menu -= $id menu

kill @e[name="$tag_insert"]