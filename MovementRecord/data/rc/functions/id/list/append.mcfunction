#Spawn
summon armor_stand 12587358 12 12587360 {Invisible:1,NoGravity:1,Silent:1,Marker:1,CustomName:'{"text":"$tag_insert"}'}

#Fail
execute unless entity @e[name="$tag_insert"] run schedule function rc:id/list/append 2t replace

#Add tag
execute as @e[name="$tag_insert"] run function rc:id/list/as