#Check for Bukkit
data modify storage minecraft:animation Bukkit set value 0
execute as @e[tag=rc_bukkit_check] unless data entity @s inBlockState run data modify storage minecraft:animation Bukkit set value 1

kill @e[tag=rc_bukkit_check]