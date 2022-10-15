execute as @a[tag=in_editor] run function rc:editor/close/close
data modify storage minecraft:animation APIMode set value 1
execute as @a run function rc:disable_triggers
tellraw @a[tag=rc_debug] ["",{"text":"<RC Debug> ","color":"dark_green","bold":true},{"text":"API mode has been enabled. Trigger commands are no longer available. You can disable this mode by using /function rc:api/disable","color":"gray"}]