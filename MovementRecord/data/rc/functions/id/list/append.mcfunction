#Spawn
execute at @p run summon armor_stand ~ ~ ~ {Invisible:1,NoGravity:1,Silent:1,Marker:1,CustomName:'{"text":"$tag_insert"}'}

#Add tag
execute as @e[name="$tag_insert"] run function rc:id/list/as