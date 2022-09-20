execute store result score $id rc_id run data get storage minecraft:animation DelAnimation.id

#Reset
function rc:delete/cancel

#Recreate main array
data modify storage minecraft:animation DelAnimation set from storage minecraft:animation Animation
data remove storage minecraft:animation Animation

execute at @p run summon armor_stand ~ ~ ~ {Invisible:1,NoGravity:1,Silent:1,Marker:1,CustomName:'{"text":"$tag_insert"}'}
execute as @e[name="$tag_insert"] run function rc:delete/delete_loop

#Save id list
execute unless data storage minecraft:animation Animation[0] run data modify storage minecraft:animation idList set value []
data modify storage minecraft:animation idList set from entity @e[name="$tag_insert",limit=1] Tags
kill @e[name="$tag_insert"]