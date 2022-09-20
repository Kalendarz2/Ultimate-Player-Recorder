#Get animation id
execute unless entity @s[tag=delete_all] run function rc:id/get/get
execute unless entity @s[tag=delete_all] run data modify storage minecraft:animation DelAnimation set from storage minecraft:animation GetAnimation
data remove storage minecraft:animation GetAnimation

tag @s add del_confirm
scoreboard players set @s rc_time 0
function rc:disable_triggers