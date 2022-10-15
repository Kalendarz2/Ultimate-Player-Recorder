data modify storage minecraft:animation APIMode set value 0
tellraw @a[tag=rc_debug] ["",{"text":"<RC Debug> ","color":"dark_green","bold":true},{"text":"API mode is now disabled","color":"gray"}]